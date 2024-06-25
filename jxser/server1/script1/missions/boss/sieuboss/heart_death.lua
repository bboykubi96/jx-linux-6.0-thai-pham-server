IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")
local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>Si�u Boss<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

SIGNET_DROPCOUNT = 20
TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 200000000	--T� ��i Gi�t Nh�n ���c Kinh Nghi�m
KILLBOSSNEAREXPAWARD = 50000000	--Ng��i Xung Quanh ��ng G�n Boss Nh�n ���c Kinh Nghi�m
-------------------------------------------------------------------------Vat Pham Thong Dung----------------------------------------------------------------------------------------------------------
local tbItemNewBossDropAward={

	[1] = {
		--{szName="Ng�n L��ng",nJxb=20000000,nCount=1},
	--	{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=25},
	--{szName="Thien Linh Don",tbProp={6,1,3022,1,1,0},nCount=20},
	{szName="KNB",tbProp={4,343,1,1,0,0},nCount=2},
	{szName="le bao  xu",tbProp={6,1,4513,1,0,0},nCount=5},
--		{szName="Lam Thu� Tinh",tbProp={4,238,1,1,0,0},nCount=2},
--		{szName="T� Thu� Tinh",tbProp={4,239,1,1,0,0},nCount=2},
--		{szName="L�c Thu� Tinh",tbProp={4,240,1,1,0,0},nCount=2},
--		{szName="Phi�u Bang H�i",tbProp={4,1623,1,1},nCount=30},
	--	{szName="H�p trang b� xanh th��ng",tbProp={6,1,4476,1,1,0},nCount=50},
--		{szName="H�p trang b� xanh hi�m",tbProp={6,1,4478,1,1,0},nCount=random(1,5)},
--		{szName="Nh�t K� C�n Kh�n Ph� 15 Ng�y",tbProp={6,1,4364,1,1,0},nCount=1,nExpiredTime=15*24*60},
	--		{szName="M�nh Gh�p R��ng An Bang",tbProp={4,1624,1,1},nCount=50},
	--	{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nCount=1},
	--	{szName="KNB",tbProp={4,343,1,1,0,0},nCount=2},
--	{szName="Thi�t La H�n",tbProp={6,1,23,1,1,0},nCount=3},
--	{szName="B�n Nh��c T�m Kinh",tbProp={6,1,12,1,1,0},nCount=1},
--	{szName="B�ch Qu� L�",tbProp={6,1,73,1,1,0},nCount=1},
--	{szName="Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,2,0},nCount=4},
--		{szName="Ph�c Duy�n Ti�u",tbProp={6,1,122,1,1,0},nCount=3},
--		{szName="Ph�c Duy�n Trung",tbProp={6,1,123,1,1,0},nCount=2},
--		{szName="Ph�c Duy�n ��i",tbProp={6,1,124,1,1,0},nCount=1},
--		{szName="Thi�n S�n B�o L�",tbProp={6,1,72,1,1,0},nCount=3},
	--	{szName="Phi�u Bang H�i",tbProp={4,1621,1,1},nCount=10},
		--	{szName="M�nh �o Nhu T�nh",tbProp={4,1619,1,1,0,0},nCount=2},
		--		{szName="R��ng M�nh Thi�n Th�ch",tbProp={6,1,4455,1,1,0},nCount=10},

	
	},
	[2] = {
	--	{szName="Lam Thu� Tinh",tbProp={4,238,1,1,0,0},nCount=1,nRate=15},
	--	{szName="T� Thu� Tinh",tbProp={4,239,1,1,0,0},nCount=1,nRate=15},
		
	--	{szName="ruong do xanh",tbProp={6,1,4517,1,0,0},nCount=1,nRate=80},
--		{szName="K� N�ng B� K�p 90",tbProp={6,1,2426,1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="��i Th�nh B� K�p 90",tbProp={6,1,2424,1,1},nCount=1,nRate=10,CallBack= _Message},
--		{szName="Ng�a 8x",tbProp={0,10,5,random(5,9),0,0,0},nCount=1,nRate=25,nExpiredTime=7*60*24,CallBack= _Message},
	--	{szName="M�nh An Bang",tbProp={4,random(747,770),1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="M�nh ��nh Qu�c",tbProp={4,random(927,946),1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="M�nh Hi�p C�t",tbProp={4,random(771,776),1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="M�nh Hi�p C�t",tbProp={4,random(903,914),1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="M�nh Nhu T�nh",tbProp={4,random(777,782),1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="Thu� Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=10,CallBack= _Message},
--		{szName="Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,1,0},nCount=1,nRate=15,CallBack= _Message},
--		{szName="Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,2,0},nCount=1,nRate=10,CallBack= _Message},
	--	{szName="Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,3,0},nCount=1,nRate=5,CallBack= _Message},
	},
	}


function OnDeath(nNpcIndex)
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
--Earn(20000000)
tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbItemNewBossDropAward,format("killed_%s",GetNpcName(nNpcIndex)))

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
			--	DropItem(world, x, y, PlayerIndex, 6, 1, HONOURID[i], 1, 0, 0, 0, 0, 0, 0, 0, 0);
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
	
		szNews = format("��i Hi�p <color=green>"..GetName().."<color> �� ��nh b�i <color=Cyan>��c C� C�u B�i<color>, t�n tu�i s� vang v�ng giang h� !");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- BOSS Xu�t Hi�n
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30
		
	--	RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "ReduceGoldBossCount", 0);
	end

end

