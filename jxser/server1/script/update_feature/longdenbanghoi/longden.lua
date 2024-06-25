IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1220,80,4,959,1613,2953,0,"L�ng ��n Bang H�i",0,"\\script\\update_feature\\longdenbanghoi\\longden.lua","main", 0},  
       
     
    
 
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
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr�ng th�i hi�n t�i kh�ng th� ��nh Tr�ng!.")
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
		Msg2Player("Ch�a gia nh�p <color=yellow>Bang H�i<color>, ho�c kh�ng ph�i l� <color=yellow>Bang Ch�<color> kh�ng th� tham gia R��c ��n!");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=wood>Ch� c� <color=yellow>Bang Ch�<color> m�i c� �� t� c�ch H� L�ng ��n.<color>");
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
	Msg2SubWorld("<color=fire>Bang H�i <color=wood>["..GetTong().."]<color> �� ��nh th�nh c�ng L�ng ��n Bang H�i mang v� nh�ng v�t ph�m qu� gi� cho b�n bang!")
end


local _OnBreak = function()
	--SetFightState(0)
	RestoreOwnFeature()
	--SetPKFlag(1);
	--ForbidChangePK(0)
	--SetFightState(1)
	Msg2Player("B�n b� tr�ng th��ng ho�c �� c� ��ng kh�ng th� ��nh tr�ng")
                    	--Msg2SubWorld("<color=gold>Bang Ch� <color=wood>["..GetName().."]<color> c�a bang h�i <color=wood>["..GetTong().."]<color> �ang ��nh tr�ng b� tr�ng th��ng!")
end

function main()
	local nHour = tonumber(GetLocalDate("%H%M"))
	if( nHour >= 2010 and nHour < 2030) then
else
	Say("Ch�a t�i th�i gian Th�p ��n h�y mau t�p trung binh l�c �� b�o v� L�ng ��n Bang H�i.",0);
	return 1;
end
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--����������
	--SetPKFlag(2);
	--ForbidChangePK(1)
	ChangeOwnFeature(0,0,526);
	tbProgressBar:OpenByConfig(20, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak) --L�u � thay ��i th�nh s� 23
	Msg2SubWorld("Bang H�i <color=yellow>["..GetTong().."]<color> �ang ti�n h�nh H� L�ng ��n h�y mau ng�n c�n!")
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end