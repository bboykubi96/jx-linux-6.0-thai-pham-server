IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1220,80,4,959,1613,2953,0,"Lång §Ìn Bang Héi",0,"\\script\\update_feature\\longdenbanghoi\\longden.lua","main", 0},  
       
     
    
 
}
function add_npc_click4()
	call_npc(NPC_Clickdb)
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

			end; 
	end; 
end


local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr¹ng th¸i hiÖn t¹i kh«ng thÓ ®¸nh Trèng!.")
		return
	end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 200) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 200) then
		nGetSeedLevel = 3;
	end
	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch­a gia nhËp <color=yellow>Bang Héi<color>, hoÆc kh«ng ph¶i lµ <color=yellow>Bang Chñ<color> kh«ng thÓ tham gia R­íc §Ìn!");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=wood>ChØ cã <color=yellow>Bang Chñ<color> míi cã ®ñ t­ c¸ch H¹ Lång §Ìn.<color>");
		return
	end;

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
	
	DelNpc(nNpcIdx)

	local tkctItem ={
    	{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=9999},
	--{szName="Xu",tbProp={4,417,1,1,0,0},nCount=10000},
		}

	tbAwardTemplet:GiveAwardByList(tkctItem, "");
	tbAwardTemplet:Give(tbrandom_baothachruong, 1, {"PHANTHUONGBAOTHACHRUONG", "DanhThanhCongTrong"})
	RestoreOwnFeature()
	--SetPKFlag(0);
	--ForbidChangePK(0)
	Msg2SubWorld("<color=fire>Bang Héi <color=wood>["..GetTong().."]<color> ®· ®¸nh thµnh c«ng Lång §Ìn Bang Héi mang vÒ nh÷ng vËt phÈm quý gi¸ cho bæn bang!")
end


local _OnBreak = function()
	--SetFightState(0)
	RestoreOwnFeature()
	--SetPKFlag(1);
	--ForbidChangePK(0)
	--SetFightState(1)
	Msg2Player("B¹n bÞ träng th­¬ng hoÆc ®· cö ®éng kh«ng thÓ ®¸nh trèng")
                    	--Msg2SubWorld("<color=gold>Bang Chñ <color=wood>["..GetName().."]<color> cña bang héi <color=wood>["..GetTong().."]<color> ®ang ®¸nh trèng bÞ träng th­¬ng!")
end

function main()
	local nHour = tonumber(GetLocalDate("%H%M"))
	if( nHour >= 2010 and nHour < 2030) then
else
	Say("Ch­a tíi thêi gian Th¾p §Ìn h·y mau tËp trung binh lùc ®Ó b¶o vÖ Lång §Ìn Bang Héi.",0);
	return 1;
end
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--¿ªÆô½ø¶ÈÌõ
	--SetPKFlag(2);
	--ForbidChangePK(1)
	ChangeOwnFeature(0,0,526);
	tbProgressBar:OpenByConfig(20, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak) --L­u ý thay ®æi thµnh sè 23
	Msg2SubWorld("Bang Héi <color=yellow>["..GetTong().."]<color> ®ang tiÕn hµnh H¹ Lång §Ìn h·y mau ng¨n c¶n!")
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end