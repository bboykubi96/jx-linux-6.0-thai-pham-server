Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\shuizei\\shuizei.lua");
Include("\\script\\event\\change_destiny\\mission.lua");	-- ÄæÌì¸ÄÃü
Include("\\script\\global\\g7vn\\g7configall.lua")
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
		{nExp_tl=2e9},
		{szName="Xu ",tbProp={4,417,1,1,0,0},nCount = 300 },
	    -- {szName="knb",tbProp={4,1496,1,1,0,0},nCount=50},
		-- {szName = "Tinh Ngäc",tbProp={6,1,4807,1,1},nCount=200},
            --{szName="even fee",tbProp={6,1,30335,1,0,0},nCount=10,nExpiredTime=20220729},

	},
	[2] = {

		--{szName="B¶o R­¬ng Tinh S­¬ng ¸o",tbProp={6,1,6025,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nRate=0.1,CallBack= _Message},
		--{szName="B¶o R­¬ng Tinh S­¬ng Vò KhÝ",tbProp={6,1,6026,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nRate=0.1,CallBack= _Message},
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
	for i = 1, maxcount do
		local nItemIdx = DropItem(world, x, y, PlayerIndex, 6, 1, 1094, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		SetSpecItemParam(nItemIdx, 1, nCurtime);
		SetSpecItemParam(nItemIdx, 2, nYear)
		SetSpecItemParam(nItemIdx, 3, nMonth)
		SetSpecItemParam(nItemIdx, 4, nDay)
		SyncItem(nItemIdx);
	end;
	

	if (jf0904_shuizei_IsActtime() == 1) then
		local nItemIdx = DropItem(world, x, y, PlayerIndex, 6,1,2015, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		
		local nCurtime = tonumber(GetLocalDate("%H%M"));
		local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		ITEM_SetExpiredTime(nItemIdx, nRestMin);
		SyncItem(nItemIdx);
		
		--local nRate = 0.005;
		--local nCurRate	= random(10000000)
		--if (nCurRate <= 10000000 * nRate) then		
			--local x, y, world = GetNpcPos(nNpcIndex);
			--local nItemIdx = DropItem(world, x, y, PlayerIndex, 6,1,2115, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		--end
	end
	
	-- ÄæÌì¸ÄÃü
	tbChangeDestiny:completeMission_WaterThief();
		local W,X,Y = GetWorldPos();
	local nMapId = W;	
if ( nMapId == 337 ) then
	-- Earn(20000000)
end
if ( nMapId == 338 ) then
	-- Earn(15000000)
end
if ( nMapId == 339 ) then
	-- Earn(15000000)
end
	--tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "NhËn PhÇn Th­ëng Tiªu DiÖt Boss Thñy TÆc §Çu LÜnh"})	
	-- tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbAward,format("killed_%s",GetNpcName(nNpcIndex)))
	TieuDietThuyTac()
		local a=random(1,400)
	if a==200 then
	-- tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,49006,1,1},nCount=1,},}, "test", 1);--B¸ch LuyÖn Thµnh C­¬ng
	end;

	local a1=random(1,400)
	if a1==200 then
		--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4817,1,1},nCount=1,},}, "test", 1);--NguyÖt KhuyÕt Tinh Th¹ch
	end;
	
	local a2=random(1,400)
	if a2==200 then
		--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4912,1,1},nCount=1,},}, "test", 1);--Ngäc Linh Hån
	end;


	local a3=random(1,400)
	if a3==200 then
			--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4913,1,1},nCount=1,},}, "test", 1);--Ngäc C­êng Hãa Nguyªn LiÖu
	end;
	
	local bltc=random(1,90)
	if bltc==50 then
		--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4906,1,1},nCount=1,},}, "test", 1);--B¸ch LuyÖn Thµnh C­¬ng
	end
	
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
				if nDate <= TimeKetThucEventFree then
			--tbAwardTemplet:GiveAwardByList({{szName = "Event Free", tbProp ={ 6, 1, ideventfree, 1, 0, 0}, nCount=20, nExpiredTime=TimeHetHanEventFree}},  "test", 1)
			end
	
				if nDate <= 202002132359 then
			--tbAwardTemplet:GiveAwardByList({{szName = "ThiÖp chóc TÕt", tbProp ={ 6,1,1346,1,0,0}, nCount=1, nExpiredTime=2*24*60}},  "test", 1)
			end
	Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· nhËn ®­îc phÇn th­ëng NhiÒu PhÇn Th­ëng Cã Gi¸ TrÞ khi Tiªu diÖt Thñy TÆc §Çu LÜnh!")	

--------------------them exp thuy tac dau linh
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if ( nMapId == 337 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 2000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc §éc C« CÇu B¹i bÞ tiªu diÖt"));
	end
end
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if ( nMapId == 338 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
		for i=1,nCount do
			doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 2000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc §éc C« CÇu B¹i bÞ tiªu diÖt"));
		end
	end
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if ( nMapId == 339 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 2000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc §éc C« CÇu B¹i bÞ tiªu diÖt"));
	end
end
end


function TieuDietThuyTac()
	tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1,0},nCount=1000,},}, "test", 1);

	-- tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngäc",tbProp={6,1,4983,1,0},nCount=100,},}, "test", 1);
	-- tbAwardTemplet:GiveAwardByList({{szName = "Hµnh HiÖp LÖnh",tbProp={6,1,4981,1,0},nCount=100,},}, "test", 1);
	-- tbAwardTemplet:GiveAwardByList({{szName = "Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,4982,1,0},nCount=100,},}, "test", 1);
		-- tbAwardTemplet:GiveAwardByList({{szName = "Tói nguyªn liÖu",tbProp={6,1,4998,1,0},nCount=100},}, "test", 1);
	-- -- -- tbAwardTemplet:GiveAwardByList({{szName = "B¨ng Thiªm T¬",tbProp={6,1,4633,1,1},nCount=1,nRate=10},}, "test", 1);
	-- -- -- tbAwardTemplet:GiveAwardByList({{szName = "M¶nh ngäc lung linh",tbProp={6,1,4634,1,1},nCount=1,nRate=10},}, "test", 1);
	-- -- -- tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn ThiÕt kho¸ng",tbProp={6,1,4635,1,1},nCount=1,nRate=10},}, "test", 1);
	-- -- -- tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Trai",tbProp={6,1,4636,1,1},nCount=1,nRate=10},}, "test", 1);
		-- tbAwardTemplet:GiveAwardByList({{szName = "R­¬ng M¶nh HKMP",tbProp={6,1,4638,1,1},nCount=3,nRate=50},}, "test", 1);
	-- tbAwardTemplet:GiveAwardByList({{szName = "R­¬ng M¶nh HKMP",tbProp={6,1,4637,1,1},nCount=3,nRate=20},}, "test", 1);

	
	StackExp(2000000000);
	-- local szNews = format("Chóc mõng cao thñ <color=red>"..GetName().." <color=wood>®· nhËn ®­îc phÇn th­ëng Tiªu diÖt Thñy TÆc §Çu LÜnh => Phong L¨ng §é.");
	-- AddGlobalNews(szNews);
	-- LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end