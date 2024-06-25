IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{625,80,4,37,1995,3100,0,"NhËn Tiªu Bang Héi",0,"\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua","main", 0},   
}
function AddTieuBang()
	local nHour = tonumber(GetLocalDate("%H%M"))
		if( nHour >= 1900 and nHour <= 2000) then
		call_npc(NPC_Clickdb)
		end
end


local W,nx,ny = GetWorldPos();
NPC_Clickdb1 = {
	{625,80,4,W,nx,ny,0,"NhËn Tiªu Bang Héi",0,"\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua","main", 0},   
}
function AddTieuBang1()
local chim = GetSkillState(464)
local vongxanh = GetSkillState(739)
	if chim>=1 and vongxanh>=1 then
		local nHour = tonumber(GetLocalDate("%H%M"))
			if( nHour >= 1900 and nHour <= 2000) then
			call_npc1(NPC_Clickdb1)
				end
	end
end


function call_npc(tbnpc) 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
			if (Mid >= 0 ) then 
				TabValue5 = tbnpc[i][5] * 32; 
				TabValue6 = tbnpc[i][6] * 32; 
				local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
				AddTimer(1800* 18, "OnTimeout", nNpcIdx);
				local szNews = format("<color=yellow>Nghe nãi <color=green>Tiªu Bang héi<color=yellow> ®· xuÊt hiÖn t¹i  §Êu Tr­êng Sinh Tö bang héi nµo ®ñ b¶n lÜnh ¸p tiªu bang vÒ Cæng thµnh sÏ ®­îc triÒu ®×nh träng th­ëng.");
		AddGlobalNews(szNews);
		LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
			end; 
	end; 
end

function call_npc1() 
  local nMapId, nPosX16, nPosY16 = GetWorldPos();
  local SId = SubWorldID2Idx(nMapId);
  local nNpcIndex;
  if (SId >= 0) then
	  	nNpcIndex = AddNpc(625, 1, SId, nPosX16 * 32, nPosY16 * 32, 1, "TiÕp NhËn Tiªu Bang Héi");
		AddTimer(1800* 18, "OnTimeout", nNpcIndex);
	  	if nNpcIndex > 0 then
	  		SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua");

	  	end
end
end


local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 91) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 92) then
		nGetSeedLevel = 3;
	end

	if (nGetSeedLevel ~= 3) then 
		Msg2Player("Ng­êi ch¬i ph¶i tõ cÊp 120 trë lªn míi cã thÓ tham gia ")
		return
                      end			  


	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("<color=green>ChØ cã bang chñ míi ®­îc nhËn tiªu bang..");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=green>ChØ cã bang chñ míi ®­îc nhËn tiªu bang..");
		return
	end;
	if GetTask(5859) > 0 then
	SetTask(5859,0)
	end

	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return 0
	end
	DoiSangTieu()
	DelNpc(nNpcIdx)
	
 local szNewsnew = format("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> ®o¹t thµnh c«ng b¾t ®Çu di chuyÓn tiªu Bang vÒ Cæng Thµnh c¸c bang héi kh¸c h·y ra søc ®o¹t lÊy tiªu bang nµy!");
 Msg2SubWorld(szNewsnew)	
 AddGlobalNews(szNewsnew);
end


local _OnBreak = function()
	Msg2Player("b¹n bÞ tróng ®ßn ø ø")
                      Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> bÞ tróng ®ßn<color=green> kh«ng thÓ nhËn tiªu bang.!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	if (GetFightState() == 0 or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr¹ng th¸i dÞ th­êng phi chiÕn ®Êu kh«ng thÓ tham gia.")
		return
	end
		local nHour = tonumber(GetLocalDate("%H%M"))
			if( nHour >= 1900 and nHour <= 2000) then
					tbProgressBar:OpenByConfig(24, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
						else 
						Msg2Player("§· hÕt giê quy ®Þnh, kh«ng thÓ nhËn tiªu.")
						
						end
end;

function DoiSangTieu()
SetTask(5859,1)
ChangeOwnFeature( 1, 18*60*20, 524,  0, 0, 0, 0)
SetTaskTemp(200,1); 
ForbidEnmity(1);
SetPKFlag(1)
DisabledUseTownP(1);
ForbitSkill(1);
ForbitTrade(1); 
ForbidChangePK(1);
SetMoveSpeed(6);
AddSkillState(464, 50, 0,18*60*20);
AddSkillState(739, 1, 0, 18*60*20); --CHIM
AddSkillState(731, 1, 0, 18*60*20); --VONG XANH
AddSkillState(313, 60, 0, 18*60*20); --TANHINH
AddSkillState(458, 60, 0, 18*60*20); --TANHINH
AddSkillState(874, 1, 0, 18*60*20); --BAYMAU
SetDeathScript("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua");
end


function OnDeath(nPlayerIndex)
AddTieuBang1()
SetTask(5859,0)
ForbidEnmity(0);
SetPKFlag(0)
DisabledUseTownP(0);
ForbitTrade(0); 
ForbitSkill(0);
ForbidChangePK(0);
SetMoveSpeed(-1);
RestoreOwnFeature();
RemoveSkillState(464);
RemoveSkillState(739);--CHIM
RemoveSkillState(731);--VONG XANH
RemoveSkillState(313);--TANHINH
RemoveSkillState(458);--TANHINH
RemoveSkillState(874);--BAYMAU
SetDeathScript("");
--KickOutSelf()
Msg2SubWorld("<color=cyan>Tiªu Bang cña Bang Chñ <color=green>"..GetName().."<color=yellow> BÞ h¹ thñ hoµn toµn tiªu míi ®· xuÊt hiÖn l¹i . .!")	
end


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
Msg2SubWorld("<color=white>hÕt thêi gian Tiªu bang héi ®· biÕn mÊt!")
end
