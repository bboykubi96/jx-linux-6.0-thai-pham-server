Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\shuizei\\shuizei.lua");
Include("\\script\\event\\change_destiny\\mission.lua");	-- ÄæÌì¸ÄÃü
Include("\\script\\lib\\awardtemplet.lua")
SIGNET_DROPCOUNT = 2

local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Boss Thñy TÆc<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
		local tbAward = {
	[1] = {	
	---{nExp_tl=500000},	
	--	{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=15},
	--	{szName="HuyÒn tinh Kho¸ng Th¹ch",tbProp={6,1,147,2,0},nCount=1},
	--	{szName="Bã Cá",tbProp={6,1,4415,1,1,0},nCount=5},
	--		{szName="M¶nh GhÐp R­¬ng An Bang",tbProp={4,1624,1,1},nCount=5},
	{szName="LÖnh bµi gäi boss",tbProp={6,1,4489,1,1,0},nCount=8},
	{szName="Truy C«ng LÖnh",tbProp={6,1,2015,1,1},nCount=5},
	{szName="Tiªn Th¶o Lé",tbProp={6,1,71,1,1},nCount=1},
	{szName="Thiªn S¬n B¶o Lé",tbProp={6,1,72,1,1},nCount=1},
	{szName="B¸ch Qu¶ Lé",tbProp={6,1,73,1,1},nCount=1},
	{szName="Phóc Duyªn",tbProp={6,1,123,1,1},nCount=1},
	{szName="Phóc Duyªn",tbProp={6,1,124,1,1},nCount=1},
		
	},
	[2] = {
	
	{szName="M· Bµi GhÐp Thó C­ìi",tbProp={6,1,random(4529,4533),1,1},nCount=1,nRate=40},
	{szName="Tiªn Th¶o Lé §Æc BiÖt",tbProp={6,1,1181,1,1},nCount=1,nRate=20},
--	{szName="M¶nh HiÖp Cèt",tbProp={4,random(1629,1632)},nCount=1,nRate=5,CallBack= _Message},
	--{szName="M¶nh §Þnh Quèc",tbProp={4,random(1637,1641)},nCount=1,nRate=5,CallBack= _Message},
--		{szName="Ngò Hµnh Ên",tbProp={0,5946},nCount=1,nQuality=1,nRate=10,nExpiredTime=7*24*60},
	--	{szName="HiÖp Cèt T×nh ý KÕt",tbProp={0,189},nCount=1,nQuality=1,nRate=50},
	},
	}

		local tbAward22 = {
	[1] = {	
	{nExp_tl=3000000},	
	--	{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=15},
	--	{szName="HuyÒn tinh Kho¸ng Th¹ch",tbProp={6,1,147,2,0},nCount=1},

	--	{szName="Phóc Duyªn §¹i",tbProp={6,1,124,1,1,0},nCount=1},
				{szName="Phóc Duyªn TiÓu",tbProp={6,1,122,1,1,0},nCount=1},
						{szName="Phóc Duyªn Trung",tbProp={6,1,123,1,1,0},nCount=1},
				{szName="ThiÕt La H¸n",tbProp={6,1,23,1,1,0},nCount=1},
	--			{szName="PhiÕu Bang Héi",tbProp={4,1621,1,1},nCount=15},
--		{szName="M¶nh Ph«i TÝm",tbProp={4,1622,1,1},nCount=5},
		
	},
	[2] = {
						{szName = "Phóc Duyªn §¹i",tbProp={6,1,124,1,0,0},nCount=1,nRate=15},
			{szName = "Tiªn Th¶o Lé",tbProp={6,1,71,1,0,0},nCount=1,nRate=15},
			{szName = "Thiªn S¬n B¶o Lé",tbProp={6,1,72,1,0,0},nCount=1,nRate=15},
			{szName = "ThiÕt La H¸n",tbProp={6,1,23,1,0,0},nCount=1,nRate=15},
			{szName = "Thuû Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=5},
			{szName = "Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1},nCount=1,nRate=5},
					{szName="HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,3,0},nCount=1,nRate=15},
		{szName="HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,4,0},nCount=1,nRate=15},
	
--		{szName="Ngò Hµnh Ên",tbProp={0,5946},nCount=1,nQuality=1,nRate=10,nExpiredTime=7*24*60},
	--	{szName="HiÖp Cèt T×nh ý KÕt",tbProp={0,189},nCount=1,nQuality=1,nRate=50},
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

	

	--if (jf0904_shuizei_IsActtime() == 1) then
	--	local nItemIdx = DropItem(world, x, y, PlayerIndex, 6,1,2015, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		
	--	local nCurtime = tonumber(GetLocalDate("%H%M"));
	--	local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
	--	ITEM_SetExpiredTime(nItemIdx, nRestMin);
	--	SyncItem(nItemIdx);
		
		--local nRate = 0.005;
		--local nCurRate	= random(10000000)
		--if (nCurRate <= 10000000 * nRate) then		
			--local x, y, world = GetNpcPos(nNpcIndex);
			--local nItemIdx = DropItem(world, x, y, PlayerIndex, 6,1,2115, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		--end
	--end


	-- ÄæÌì¸ÄÃü
	tbChangeDestiny:completeMission_WaterThief();
	--tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "NhËn PhÇn Th­ëng Tiªu DiÖt Boss Thñy TÆc §Çu LÜnh"})	
--AddOwnExp(10e6)
	local nhour = tonumber(GetLocalDate("%H"))
--	if nhour==23  then
		tbAwardTemplet:GiveAwardByList({{nExp_tl=5000000},}, "test", 1);
			tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbAward,format("killed_%s",GetNpcName(nNpcIndex)))
	--end
		--	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbAward,format("killed_%s",GetNpcName(nNpcIndex)))
	--		tbAwardTemplet:GiveAwardByList(tbAward, "PhÇn Th­ëng")
--	Add120SkillExp(5000000)
--	Clear120SkillExpLimit ()
--	Earn(2000000)
	Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().." <color=green>®· nhËn ®­îc phÇn th­ëng Tiªu diÖt Thñy TÆc §Çu LÜnh => Phong L¨ng §é.")	

--------------------them exp thuy tac dau linh
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if ( nMapId == 337 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 1e6, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc BossbÞ tiªu diÖt"));
	end
end
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if ( nMapId == 338 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 1e6, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc BossbÞ tiªu diÖt"));
	end
end
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if ( nMapId == 339 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
	doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 1e6, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc BossbÞ tiªu diÖt"));
	end
end
end
