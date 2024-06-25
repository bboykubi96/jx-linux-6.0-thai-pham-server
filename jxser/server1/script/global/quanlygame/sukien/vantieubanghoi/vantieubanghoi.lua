IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{625,80,4,37,1995,3100,0,"Nh�n Ti�u Bang H�i",0,"\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua","main", 0},   
}
function AddTieuBang()
	local nHour = tonumber(GetLocalDate("%H%M"))
		if( nHour >= 1900 and nHour <= 2000) then
		call_npc(NPC_Clickdb)
		end
end


local W,nx,ny = GetWorldPos();
NPC_Clickdb1 = {
	{625,80,4,W,nx,ny,0,"Nh�n Ti�u Bang H�i",0,"\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua","main", 0},   
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
				local szNews = format("<color=yellow>Nghe n�i <color=green>Ti�u Bang h�i<color=yellow> �� xu�t hi�n t�i  ��u Tr��ng Sinh T� bang h�i n�o �� b�n l�nh �p ti�u bang v� C�ng th�nh s� ���c tri�u ��nh tr�ng th��ng.");
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
	  	nNpcIndex = AddNpc(625, 1, SId, nPosX16 * 32, nPosY16 * 32, 1, "Ti�p Nh�n Ti�u Bang H�i");
		AddTimer(1800* 18, "OnTimeout", nNpcIndex);
	  	if nNpcIndex > 0 then
	  		SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua");

	  	end
end
end


local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
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
		Msg2Player("Ng��i ch�i ph�i t� c�p 120 tr� l�n m�i c� th� tham gia ")
		return
                      end			  


	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("<color=green>Ch� c� bang ch� m�i ���c nh�n ti�u bang..");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=green>Ch� c� bang ch� m�i ���c nh�n ti�u bang..");
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
	
 local szNewsnew = format("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> �o�t th�nh c�ng b�t ��u di chuy�n ti�u Bang v� C�ng Th�nh c�c bang h�i kh�c h�y ra s�c �o�t l�y ti�u bang n�y!");
 Msg2SubWorld(szNewsnew)	
 AddGlobalNews(szNewsnew);
end


local _OnBreak = function()
	Msg2Player("b�n b� tr�ng ��n � �")
                      Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> b� tr�ng ��n<color=green> kh�ng th� nh�n ti�u bang.!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	if (GetFightState() == 0 or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr�ng th�i d� th��ng phi chi�n ��u kh�ng th� tham gia.")
		return
	end
		local nHour = tonumber(GetLocalDate("%H%M"))
			if( nHour >= 1900 and nHour <= 2000) then
					tbProgressBar:OpenByConfig(24, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
						else 
						Msg2Player("�� h�t gi� quy ��nh, kh�ng th� nh�n ti�u.")
						
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
Msg2SubWorld("<color=cyan>Ti�u Bang c�a Bang Ch� <color=green>"..GetName().."<color=yellow> B� h� th� ho�n to�n ti�u m�i �� xu�t hi�n l�i . .!")	
end


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
Msg2SubWorld("<color=white>h�t th�i gian Ti�u bang h�i �� bi�n m�t!")
end
