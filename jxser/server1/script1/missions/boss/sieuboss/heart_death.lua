IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")
local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Siªu Boss<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

SIGNET_DROPCOUNT = 20
TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 200000000	--Tæ §éi GiÕt NhËn §­îc Kinh NghiÖm
KILLBOSSNEAREXPAWARD = 50000000	--Ng­êi Xung Quanh §øng GÇn Boss NhËn §­îc Kinh NghiÖm
-------------------------------------------------------------------------Vat Pham Thong Dung----------------------------------------------------------------------------------------------------------
local tbItemNewBossDropAward={

	[1] = {
		--{szName="Ng©n L­îng",nJxb=20000000,nCount=1},
	--	{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=25},
	--{szName="Thien Linh Don",tbProp={6,1,3022,1,1,0},nCount=20},
	{szName="KNB",tbProp={4,343,1,1,0,0},nCount=2},
	{szName="le bao  xu",tbProp={6,1,4513,1,0,0},nCount=5},
--		{szName="Lam Thuû Tinh",tbProp={4,238,1,1,0,0},nCount=2},
--		{szName="Tö Thuû Tinh",tbProp={4,239,1,1,0,0},nCount=2},
--		{szName="Lôc Thuû Tinh",tbProp={4,240,1,1,0,0},nCount=2},
--		{szName="PhiÕu Bang Héi",tbProp={4,1623,1,1},nCount=30},
	--	{szName="Hép trang bÞ xanh th­êng",tbProp={6,1,4476,1,1,0},nCount=50},
--		{szName="Hép trang bÞ xanh hiªm",tbProp={6,1,4478,1,1,0},nCount=random(1,5)},
--		{szName="NhÊt Kû Cµn Kh«n Phï 15 Ngµy",tbProp={6,1,4364,1,1,0},nCount=1,nExpiredTime=15*24*60},
	--		{szName="M¶nh GhÐp R­¬ng An Bang",tbProp={4,1624,1,1},nCount=50},
	--	{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nCount=1},
	--	{szName="KNB",tbProp={4,343,1,1,0,0},nCount=2},
--	{szName="ThiÕt La H¸n",tbProp={6,1,23,1,1,0},nCount=3},
--	{szName="Bµn Nh­îc T©m Kinh",tbProp={6,1,12,1,1,0},nCount=1},
--	{szName="B¸ch Qu¶ Lé",tbProp={6,1,73,1,1,0},nCount=1},
--	{szName="HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,2,0},nCount=4},
--		{szName="Phóc Duyªn TiÓu",tbProp={6,1,122,1,1,0},nCount=3},
--		{szName="Phóc Duyªn Trung",tbProp={6,1,123,1,1,0},nCount=2},
--		{szName="Phóc Duyªn §¹i",tbProp={6,1,124,1,1,0},nCount=1},
--		{szName="Thiªn S¬n B¶o Lé",tbProp={6,1,72,1,1,0},nCount=3},
	--	{szName="PhiÕu Bang Héi",tbProp={4,1621,1,1},nCount=10},
		--	{szName="M¶nh ¸o Nhu T×nh",tbProp={4,1619,1,1,0,0},nCount=2},
		--		{szName="R­¬ng M¶nh Thiªn Th¹ch",tbProp={6,1,4455,1,1,0},nCount=10},

	
	},
	[2] = {
	--	{szName="Lam Thuû Tinh",tbProp={4,238,1,1,0,0},nCount=1,nRate=15},
	--	{szName="Tö Thuû Tinh",tbProp={4,239,1,1,0,0},nCount=1,nRate=15},
		
	--	{szName="ruong do xanh",tbProp={6,1,4517,1,0,0},nCount=1,nRate=80},
--		{szName="Kü N¨ng BÝ KÝp 90",tbProp={6,1,2426,1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="§¹i Thµnh BÝ KÝp 90",tbProp={6,1,2424,1,1},nCount=1,nRate=10,CallBack= _Message},
--		{szName="Ngùa 8x",tbProp={0,10,5,random(5,9),0,0,0},nCount=1,nRate=25,nExpiredTime=7*60*24,CallBack= _Message},
	--	{szName="M¶nh An Bang",tbProp={4,random(747,770),1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="M¶nh §Þnh Quèc",tbProp={4,random(927,946),1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="M¶nh HiÖp Cèt",tbProp={4,random(771,776),1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="M¶nh HiÖp Cèt",tbProp={4,random(903,914),1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="M¶nh Nhu T×nh",tbProp={4,random(777,782),1,1},nCount=1,nRate=5,CallBack= _Message},
	--	{szName="Thuû Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=10,CallBack= _Message},
--		{szName="HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,1,0},nCount=1,nRate=15,CallBack= _Message},
--		{szName="HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,2,0},nCount=1,nRate=10,CallBack= _Message},
	--	{szName="HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,3,0},nCount=1,nRate=5,CallBack= _Message},
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
 	--SetTask(2501,GetTask(2501)+30) -- thªm 30 ®iÓm vinh dù	
--	tbAwardTemplet:GiveAwardByList({{szName = "Lb 10 ®iÓm vinh dù",tbProp={6,1,1257,1,1},nCount=1,nExpiredTime=3*24*60},}, "test", 1);
	--Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· 10® Vinh Dù tõ boss HKMP")
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
	
		szNews = format("§¹i HiÖp <color=green>"..GetName().."<color> ®· ®¸nh b¹i <color=Cyan>§éc C« CÇu B¹i<color>, tªn tuæi sÏ vang väng giang hå !");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- BOSS XuÊt HiÖn
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30
		
	--	RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "ReduceGoldBossCount", 0);
	end

end

