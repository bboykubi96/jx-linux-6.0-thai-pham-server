----------------***Heart*Doldly***----------------------
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
-----------------------------------------------------------------------------

DROPRATE_BOSS_HONOURRATE = {
		["V­¬ng T¸ "] = {350, 136},--739
		["HuyÒn Gi¸c §¹i S­ "] = {350, 134},--740
		["§­êng BÊt NhiÔm"] = {350, 149},--741
		["B¹ch Doanh Doanh"] = {350, 138},--742
		["Thanh TuyÖt S­ Th¸i"] = {350, 137},--743
		["Yªn HiÓu Tr¸i"] = {350, 168},--744
		["Hµ Nh©n Ng· "] = {350, 171},--
		["§¬n T­ Nam"] = {350, 171},--746745
		["TuyÒn C¬ Tö "] = {350, 144},--747
		["§¹i M· Hæ "] = {0, 250},
		["Gia LuËt TÞ Ly"] = {350, 130},--563
		["Hoµn Nhan TuyÕt Y"] = {400, 130},--564
		["§oan Méc DuÖ "] = {400, 127},--565
		["Cæ B¸ch"] = {350, 141},--566
		["§¹o Thanh Ch©n Nh©n"] = {300, 130},--562
		["Chung Linh Tó "] = {400, 130},--567
		["Hµ Linh Phiªu"] = {400, 130},--568
		["Lam Y Y"] = {250, 176},--582
		["M¹nh Th­¬ng L­¬ng"] = {300, 180},--583
}

HONOURID = {3022, 3022}
SIGNET_DROPCOUNT = 20
TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 20000000	--Tæ §éi GiÕt NhËn §­îc Kinh NghiÖm
KILLBOSSNEAREXPAWARD = 5000000	--Ng­êi Xung Quanh §øng GÇn Boss NhËn §­îc Kinh NghiÖm

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
--		{szName="Ng©n L­îng",nJxb=2000000,nCount=1},
	--	{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=30},

	--	{szName="QuÕ Hoa Töu",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.5},	
			--		{szName="Thiªn S¬n B¶o Lé",tbProp={6,1,72,1,0,0},nCount=1,nRate=1},	
					{szName="LÔ Bao BÝ KÝp",tbProp={6,1,4347,1,0,0},nCount=1,nRate=30},
					{szName="Thñy Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=30},	
					{szName="THBT",tbProp={4,353,1,1},nCount=1,nRate=10},	
					{szName="M· Bµi GhÐp Thó C­ìi",tbProp={6,1,random(4529,4533),1,1},nCount=1,nRate=30},
	},
	[2] = {
			{szName="§¹i Lùc Hoµn",tbProp={6,0,3,1,1},nCount=1},
	{szName="Phi Tèc Hoµn",tbProp={6,0,6,1,1},nCount=1},
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
				DropItem(world, x, y, PlayerIndex, 6, 1, HONOURID[i], 1, 0, 0, 0, 0, 0, 0, 0, 0);
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
	
	local szNews = format("<color=green>§¹i HiÖp <color><color=yellow>%s<color> t¹i <color=yellow>%s<color> <color=blue> ®· tiªu diÖt thµnh c«ng <color><color=yellow>%s<color> ", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- BOSS XuÊt HiÖn
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30
		
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "ReduceGoldBossCount", 0);
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
