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
KILLBOSSEXPAWARD = 10000000	--T� ��i Gi�t Nh�n ���c Kinh Nghi�m
KILLBOSSNEAREXPAWARD = 5000000	--Ng��i Xung Quanh ��ng G�n Boss Nh�n ���c Kinh Nghi�m

--Ph�n Th��ng R�i Ra T� Boss Ho�ng Kim
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>Boss Ti�u<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local tbVnNewItemDropAward = {
	[1] = {
	{szName="L� Bao B� K�p",tbProp={6,1,4347,1,0,0},nCount=1,nRate=10},
					{szName="Th�y Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=20},	
					{szName="THBT",tbProp={4,353,1,1},nCount=1,nRate=20},	
					{szName="M� B�i Gh�p Th� C��i",tbProp={6,1,random(4529,4533),1,1},nCount=1,nRate=15},
			--		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nRate=10},	
					{szName="B�ch Qu� L�",tbProp={6,1,73,1,0,0},nCount=1,nRate=15},	
					{szName="Qu� hoa T�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=15},	
					{szName="R��ng Kim Phong",tbProp={6,1,4535,1,0,0},nCount=1,nExpiredTime=14*24*60,nRate=5},	
			--			{szName="M�nh Hi�p C�t",tbProp={4,random(1629,1632),1,1},nCount=1,nRate=10},	
		--			{szName="M�nh ��nh Qu�c",tbProp={4,random(1637,1641),1,1},nCount=1,nRate=10},	
	--{szName="Gi�m Tr� �i�m PK",tbProp={6,1,30353,1,0,0},nCount=1,nRate=10},	
					
				
	},
	[2] = {
{szName="��i L�c Ho�n",tbProp={6,0,3,1,1},nCount=1},
	{szName="Phi T�c Ho�n",tbProp={6,0,6,1,1},nCount=1},
	{szName="L�nh B�i G�i Boss",tbProp={6,1,4489,1,0,0},nCount=8},
	{szName="R��ng Trang B� Thi�n Ho�ng",tbProp={6,1,4536,1,0,0},nCount=random(2,3),nExpiredTime=7*24*60},
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
 tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbVnNewItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))

--local a1=random(1,3)
--if a1==2 then 
 	--SetTask(2501,GetTask(2501)+30) -- th�m 30 �i�m vinh d�	
--	tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1},nCount=100},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� ti�u di�t th�nh c�ng boss Ti�u Ho�ng Kim")
local szNews="<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� ti�u di�t th�nh c�ng boss <color=blue>"..tenboss.."<color>"
AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
--	end
	--------------------------------------------Ph�n Th��ng T� ��i Gi�t Boss--------------------------------------------------------------------------------------------------------------------
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
	
---------------------------------------------Ph�n Th��ng T� ��i Gi�t Boss--------------------------------------------------------------------------------------------------------------------


end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
