----------------***Heart*Doldly***----------------------
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
-----------------------------------------------------------------------------


HONOURID = {3022, 3022}
SIGNET_DROPCOUNT = 20
TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 200000	--T� ��i Gi�t Nh�n ���c Kinh Nghi�m
KILLBOSSNEAREXPAWARD = 50000	--Ng��i Xung Quanh ��ng G�n Boss Nh�n ���c Kinh Nghi�m

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
	--	{szName="Ng�n L��ng",nJxb=500000,nCount=1},
--		{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=25},
	--	{szName="Lam Thu� Tinh",tbProp={4,238,1,1,0,0},nCount=1},
--		{szName="L�c Thu� Tinh",tbProp={4,239,1,1,0,0},nCount=1},
--		{szName="T� Thu� Tinh",tbProp={4,240,1,1,0,0},nCount=1},
--		{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nCount=1},
	--	{szName="KNB",tbProp={4,343,1,1,0,0},nCount=2},
--	{szName="Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,2,0},nCount=4},
	

	--	{szName="M�nh Ph�i T�m",tbProp={4,1622,1,1},nCount=10},
--			{szName="M�nh Gh�p R��ng An Bang",tbProp={4,1624,1,1},nCount=5},
	--	{szName="Phi�u Bang H�i",tbProp={4,1621,1,1},nCount=10},
		--	{szName="M�nh �o Nhu T�nh",tbProp={4,1619,1,1,0,0},nCount=2},
		--		{szName="R��ng M�nh Thi�n Th�ch",tbProp={6,1,4455,1,1,0},nCount=10},
--{szName="Phi�u Bang H�i",tbProp={4,1623,1,1},nCount=2},
--		{szName="Tinh Ng�c",tbProp={6,1,4409,1,1,0},nCount=3},
--		{szName="B� C�",tbProp={6,1,4415,1,1,0},nCount=3},
	
	},
	[2] = {
--	{szName="Ph�c Duy�n Ti�u",tbProp={6,1,122,1,1,0},nCount=1,nRate=20},
--		{szName="Ph�c Duy�n Trung",tbProp={6,1,123,1,1,0},nCount=2,nRate=10},
--		{szName="Thu� Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=5},

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
 --tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbVnNewItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))

--local a1=random(1,3)
--if a1==2 then 
 	--SetTask(2501,GetTask(2501)+30) -- th�m 30 �i�m vinh d�	
	--tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1},nCount=100},}, "test", 1);
	--Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� 10� Vinh D� t� boss HKMP")
--	end
	
	
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

end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
