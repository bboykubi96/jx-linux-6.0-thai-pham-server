----------------***Heart*Doldly***----------------------
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
-----------------------------------------------------------------------------

DROPRATE_BOSS_HONOURRATE = {
		["V��ng T� "] = {350, 136},--739
		["Huy�n Gi�c ��i S� "] = {350, 134},--740
		["���ng B�t Nhi�m"] = {350, 149},--741
		["B�ch Doanh Doanh"] = {350, 138},--742
		["Thanh Tuy�t S� Th�i"] = {350, 137},--743
		["Y�n Hi�u Tr�i"] = {350, 168},--744
		["H� Nh�n Ng� "] = {350, 171},--
		["��n T� Nam"] = {350, 171},--746745
		["Tuy�n C� T� "] = {350, 144},--747
		["��i M� H� "] = {0, 250},
		["Gia Lu�t T� Ly"] = {350, 130},--563
		["Ho�n Nhan Tuy�t Y"] = {400, 130},--564
		["�oan M�c Du� "] = {400, 127},--565
		["C� B�ch"] = {350, 141},--566
		["��o Thanh Ch�n Nh�n"] = {300, 130},--562
		["Chung Linh T� "] = {400, 130},--567
		["H� Linh Phi�u"] = {400, 130},--568
		["Lam Y Y"] = {250, 176},--582
		["M�nh Th��ng L��ng"] = {300, 180},--583
}

HONOURID = {3022, 3022}
SIGNET_DROPCOUNT = 20
TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 20000000	--T� ��i Gi�t Nh�n ���c Kinh Nghi�m
KILLBOSSNEAREXPAWARD = 5000000	--Ng��i Xung Quanh ��ng G�n Boss Nh�n ���c Kinh Nghi�m

--Ph�n Th��ng R�i Ra T� Boss Ho�ng Kim
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>Boss Ho�ng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local tbVnNewItemDropAward = {
	[1] = {
--		{szName="Ng�n L��ng",nJxb=2000000,nCount=1},
	--	{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=30},

	--	{szName="Qu� Hoa T�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.5},	
			--		{szName="Thi�n S�n B�o L�",tbProp={6,1,72,1,0,0},nCount=1,nRate=1},	
					{szName="L� Bao B� K�p",tbProp={6,1,4347,1,0,0},nCount=1,nRate=30},
					{szName="Th�y Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=30},	
					{szName="THBT",tbProp={4,353,1,1},nCount=1,nRate=10},	
					{szName="M� B�i Gh�p Th� C��i",tbProp={6,1,random(4529,4533),1,1},nCount=1,nRate=30},
	},
	[2] = {
			{szName="��i L�c Ho�n",tbProp={6,0,3,1,1},nCount=1},
	{szName="Phi T�c Ho�n",tbProp={6,0,6,1,1},nCount=1},
	},
	}
function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	local maxcount = SIGNET_DROPCOUNT;
	local _, nTongID = GetTongName();
	if (nTongID > 0) then
		if (IsDoubledMoneyBox(nTongID)) then
			maxcount = getSignetDropRate(SIGNET_DROPCOUNT);
		end;
	end;
	local nCurtime = GetCurServerTime() + 7 * 24 *60 * 60
	local nYear = tonumber(FormatTime2String("%Y", nCurtime))
	local nMonth = tonumber(FormatTime2String("%m", nCurtime))
	local nDay = tonumber(FormatTime2String("%d", nCurtime))
	local tenboss=GetNpcName(nNpcIndex)
--Earn(2000000)
 tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbVnNewItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))
 --	tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1},nCount=200},}, "test", 1);
	
	
--local a1=random(1,3)
--if a1==2 then 
 	--SetTask(2501,GetTask(2501)+30) -- th�m 30 �i�m vinh d�	
--	tbAwardTemplet:GiveAwardByList({{szName = "Lb 10 �i�m vinh d�",tbProp={6,1,1257,1,1},nCount=1,nExpiredTime=3*24*60},}, "test", 1);
	--Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� 10� Vinh D� t� boss HKMP")
--	end
	
	if (GetProductRegion() == "cn" or GetProductRegion() == "cn_ib") then
		local szNpcName = GetNpcName(nNpcIndex);
		if (DROPRATE_BOSS_HONOURRATE[szNpcName]) then
			for i = 1, getn(DROPRATE_BOSS_HONOURRATE[szNpcName]) do
				local nrate = random(1, 10000);
				if (nrate < DROPRATE_BOSS_HONOURRATE[szNpcName][i]) then
				DropItem(world, x, y, PlayerIndex, 6, 1, HONOURID[i], 1, 0, 0, 0, 0, 0, 0, 0, 0);
				end;
			end;
		end;
	end;
	
---------------------------------------------Ph�n Th��ng T� ��i Gi�t Boss--------------------------------------------------------------------------------------------------------------------
	local nTeamSize = GetTeamSize();
	local szName;

	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m T� ��i Gi�t BOSS ho�ng kim"));
		end
	else
		szName = GetName();
		local tbnvboss = {
		--	{szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=20},
		--	{szName="Ti�n ��ng Kh�a",tbProp={4,1495,1,1,0,0},nCount=20,nBindState = -2},
	}
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m �� b�i BOSS ho�ng kim"));
		--tbAwardTemplet:GiveAwardByList(tbnvboss, "Ph�n th��ng Ti�u Di�t Boss C� Nh�n")
	end
-----------------------------------------------------------------------------------------------Ph�n Th��ng Ng��i Xung Quanh ��ng G�n Boss--------------------------------------------------------
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng Xung Quanh L�c BOSS Ho�ng Kim B� Ti�u Di�t"));
	end
	
	local szNews = format("<color=green>��i Hi�p <color><color=yellow>%s<color> t�i <color=yellow>%s<color> <color=blue> �� ti�u di�t th�nh c�ng <color><color=yellow>%s<color> ", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- BOSS Xu�t Hi�n
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30
		
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "ReduceGoldBossCount", 0);
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
