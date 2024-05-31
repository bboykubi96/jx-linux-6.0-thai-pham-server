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
KILLBOSSEXPAWARD = 200000	--Tæ §éi GiÕt NhËn §­îc Kinh NghiÖm
KILLBOSSNEAREXPAWARD = 50000	--Ng­êi Xung Quanh §øng GÇn Boss NhËn §­îc Kinh NghiÖm

--PhÇn Th­ëng R¬i Ra Tõ Boss Hoµng Kim
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Boss Hoµng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local tbVnNewItemDropAward = {
	[1] = {
	--	{szName="Ng©n L­îng",nJxb=500000,nCount=1},
--		{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=25},
	--	{szName="Lam Thuû Tinh",tbProp={4,238,1,1,0,0},nCount=1},
--		{szName="Lôc Thuû Tinh",tbProp={4,239,1,1,0,0},nCount=1},
--		{szName="Tö Thuû Tinh",tbProp={4,240,1,1,0,0},nCount=1},
--		{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nCount=1},
	--	{szName="KNB",tbProp={4,343,1,1,0,0},nCount=2},
--	{szName="HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,2,0},nCount=4},
	

	--	{szName="M¶nh Ph«i TÝm",tbProp={4,1622,1,1},nCount=10},
--			{szName="M¶nh GhÐp R­¬ng An Bang",tbProp={4,1624,1,1},nCount=5},
	--	{szName="PhiÕu Bang Héi",tbProp={4,1621,1,1},nCount=10},
		--	{szName="M¶nh ¸o Nhu T×nh",tbProp={4,1619,1,1,0,0},nCount=2},
		--		{szName="R­¬ng M¶nh Thiªn Th¹ch",tbProp={6,1,4455,1,1,0},nCount=10},
--{szName="PhiÕu Bang Héi",tbProp={4,1623,1,1},nCount=2},
--		{szName="Tinh Ngäc",tbProp={6,1,4409,1,1,0},nCount=3},
--		{szName="Bã Cá",tbProp={6,1,4415,1,1,0},nCount=3},
	
	},
	[2] = {
--	{szName="Phóc Duyªn TiÓu",tbProp={6,1,122,1,1,0},nCount=1,nRate=20},
--		{szName="Phóc Duyªn Trung",tbProp={6,1,123,1,1,0},nCount=2,nRate=10},
--		{szName="Thuû Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=5},

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
 	--SetTask(2501,GetTask(2501)+30) -- thªm 30 ®iÓm vinh dù	
	--tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1},nCount=100},}, "test", 1);
	--Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· 10® Vinh Dù tõ boss HKMP")
--	end
	
	
---------------------------------------------PhÇn Th­ëng Tæ §éi GiÕt Boss--------------------------------------------------------------------------------------------------------------------
	local nTeamSize = GetTeamSize();
	local szName;

	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm Tæ §éi GiÕt BOSS hoµng kim"));
		end
	else
		szName = GetName();
		local tbnvboss = {
		--	{szName="Hµnh HiÖp LÖnh",tbProp={6,1,2566,1,0,0},nCount=20},
		--	{szName="TiÒn §ång Khãa",tbProp={4,1495,1,1,0,0},nCount=20,nBindState = -2},
	}
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i BOSS hoµng kim"));
		--tbAwardTemplet:GiveAwardByList(tbnvboss, "PhÇn th­ëng Tiªu DiÖt Boss C¸ Nh©n")
	end
-----------------------------------------------------------------------------------------------PhÇn Th­ëng Ng­êi Xung Quanh §øng GÇn Boss--------------------------------------------------------
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm §øng Xung Quanh Lóc BOSS Hoµng Kim BÞ Tiªu DiÖt"));
	end

end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
