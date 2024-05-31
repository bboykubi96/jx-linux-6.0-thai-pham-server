IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1556,80,4,37,1576,3454,0,"Tr�ng Kh�i Ho�n Bang H�i",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\trongbanghoi\\trongbanghoi.lua","main", 0},   
	--{1556,80,4,37,1585,3247,0,"Tr�ng Bang H�i",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\trongbanghoi\\trongbanghoi.lua","main", 0},   
	--{1556,80,4,37,1569,3251,0,"Tr�ng Bang H�i",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\trongbanghoi\\trongbanghoi.lua","main", 0},   

}
function add_npc_click()
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
		Msg2Player("Ch� c� bang ch� m�i �� t� c�ch.")
		return
	end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 120) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 120) then
		nGetSeedLevel = 3;
	end
	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch�a gia nh�p bang h�i, ho�c kh�ng ph�i l� bang ch� kh�ng th� THAM GIA.");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=green>Ch� c� bang ch� m�i c� �� t� c�ch ��nh tr�ng.");
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
		{szName="Tr�ng Kh�i Ho�n", tbProp={6,1,2309,1,0,0}, nCount = 1},
	--	{szName="T�i ti�n ��ng", tbProp={6,1,4718,1,0,0}, nCount = 20},
	--	{szName="Th�n H�nh Ph�", tbProp={6,1,1266,1,0,0}, nCount = 1 , nExpiredTime = 10080},
	--	{szName="Ti�n Th�o L� (8h)", tbProp={6,1,1181,0,0}, nCount = 10},
	--	{szName="T�y T�y Kinh", tbProp={6,1,22,0,0}, nCount = 3},
	--	{szName="V� L�m M�t T�ch", tbProp={6,1,26,0,0}, nCount = 3},
	--	{szName="Th�y Tinh",tbProp={4,238,1,1,0,0,0},nCount=1},
	--	{szName="Th�y Tinh",tbProp={4,239,1,1,0,0,0},nCount=1},
	--	{szName="Th�y Tinh",tbProp={4,240,1,1,0,0,0},nCount=1},
	--	{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0,0},nCount=6},
	}
	tbAwardTemplet:GiveAwardByList(tkctItem, "");
RestoreOwnFeature()
	Msg2SubWorld("<color=cyan>Huynh ��i <color=green>"..GetName().." ��nh th�ng tr�ng nh�n ���c nhi�u chi�n l�i ph�m.")	
end


local _OnBreak = function()
	RestoreOwnFeature()
	Msg2Player("b�n b� tr�ng ��n ho�c c� ��ng kh�ng th� ��nh tr�ng")
                 Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> b� ��nh tr�ng th��ng<color=green> kh�ng th� ��nh tr�ng!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--����������
	ChangeOwnFeature(0,0,526);
	tbProgressBar:OpenByConfig(23, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
