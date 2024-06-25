-- kevin109
IncludeLib("TASKSYS")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
-----------------------------------------------------------------------------
DROPRATE_BOSS_HONOURRATE = {
		["V­¬ng T¸"] = {350, 136},--739
		["HuyÒn Gi¸c §¹i S­"] = {350, 134},--740
		["§­êng BÊt NhiÔm"] = {350, 149},--741
		["B¹ch Doanh Doanh"] = {350, 138},--742
		["Thanh TuyÖt S­ Th¸i"] = {350, 137},--743
		["Yªn HiÓu Tr¸i"] = {350, 168},--744
		["Hµ Nh©n Ng·"] = {350, 171},--745
		["Tõ §¹i Nh¹c"] = {350, 171},--1367
		["TuyÒn C¬ Tö"] = {350, 144},--747
		["Gia LuËt TÞ Ly"] = {350, 130},--563
		["HuyÒn Nan §¹i S­"] = {400, 130},--1365
		["§oan Méc DuÖ"] = {400, 127},--565
		["Cæ B¸ch"] = {350, 141},--566
		["§¹o Thanh Ch©n Nh©n"] = {300, 130},--562
		["Chung Linh Tó"] = {400, 130},--567
		["Hµ Linh Phiªu"] = {400, 130},--568
		["Lam Y Y"] = {250, 176},--582
		["M¹nh Th­¬ng L­¬ng"] = {300, 180},--583
		["§­êng Phi YÕn"] = {300, 180},--1366
		["Thanh Liªn Tö"] = {300, 180},--1368
}

TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 2000000000
KILLBOSSNEAREXPAWARD =1000000000
-------------------------------------
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>VËt phÈm <color=yellow><%s><color=green><enter> võa r¬i tõ <color=yellow>Boss Hoµng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
tk=random(1,2)
if tk==1 then
	vlmt=22
	else vlmt=26
end


----------------------------
local tbDropAward = {
	[1] = {
		{nExp_tl=10e8},
		{szName="Ng©n L­îng",nJxb=500000,nCount=1},
        
               -- {szName="even fee",tbProp={6,1,30335,1,0,0},nCount=10,nExpiredTime=20220729},
		--{szName="Hµnh HiÖp LÖnh",tbProp={6,1,4807,1,0,0},nCount=100},
		--{szName="Xu",tbProp={4,417,1,1,0,0},nCount=100},

	},
	[2] = {
               
		{szName = "MËt TÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4345,1,0,0},nCount=1,nRate=1,CallBack= _Message},  
		{szName = "MËt TÞch Kü N¨ng 150 CÊp 22",tbProp={6,1,4346,1,0,0},nCount=1,nRate=1,CallBack= _Message},   
             	{szName="Can Khon Song",tbProp={6,1,2119,1,0,0},nCount=1,nRate=1,CallBack= _Message},
		{szName="Nhat Ky",tbProp={6,1,2126,1,0,0},nCount=1,nRate=1,CallBack= _Message},
		--{szName="B¸ch NghÖ Thiªn Th¹ch",tbProp={6,1,49004,1,0,0},nCount=10,nRate=1,CallBack= _Message},
		--{szName="B¸ch NghÖ Tinh Ngäc",tbProp={6,1,30355,1,0,0},nCount=10,nRate=1,CallBack= _Message},
             --   {szName="B¶o R­¬ng Tinh S­¬ng H¹ng Liªn",tbProp={6,1,6020,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=0.1,CallBack= _Message},
		--{szName="B¶o R­¬ng Tinh S­¬ng Kh«i",tbProp={6,1,6021,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nRate=7,CallBack= _Message},
		--{szName="B¶o R­¬ng Tinh S­¬ng Th­îng Giíi",tbProp={6,1,6022,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.2,CallBack= _Message},
		--{szName="B¶o R­¬ng Tinh S­¬ng Hé UyÓn",tbProp={6,1,6023,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.3,CallBack= _Message},
		--{szName="B¶o R­¬ng Tinh S­¬ng Yªu §¸i",tbProp={6,1,6024,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=2,CallBack= _Message},
		--{szName="B¶o R­¬ng Tinh S­¬ng Hµi",tbProp={6,1,6027,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=7,CallBack= _Message},
		--{szName="B¶o R­¬ng Tinh S­¬ng Béi",tbProp={6,1,6028,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nRate=0.1,CallBack= _Message},
		--{szName="B¶o R­¬ng Tinh S­¬ng H¹ Giíi",tbProp={6,1,6029,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=0.1,CallBack= _Message},
		
	},
	
}

function OnDeath(nNpcIndex)
	local szNpcName = GetNpcName(nNpcIndex)
	local nTeamSize = GetTeamSize();
	local szName;
	if (nTeamSize > 1) then
		for i = 1, nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain) == 1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm Tæ §éi GiÕt BOSS hoµng kim"));
		end
	else
		szName = GetName();
		
		tbAwardTemplet:GiveAwardByList(tbnvboss, "PhÇn th­ëng Tiªu DiÖt Boss C¸ Nh©n")
	end

	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm §øng Xung Quanh Lóc BOSS Hoµng Kim BÞ Tiªu DiÖt"));
	end
	
	local szNews = format("<color=green>Chóc Mõng <color=yellow>%s<color> T¹i <color=yellow>%s<color> §· Tiªu DiÖt Thµnh C«ng <color=yellow>%s<color> NhËn §­îc  Nhieu NL Hot<color>", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1,"","","\\script\\event\\msg2allworld.lua","battle_msg2allworld", szNews , "", "");
	-- tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbDropAward,format("killed_%s",GetNpcName(nNpcIndex)))
	 tbAwardTemplet:GiveAwardByList({{szName="TiÒn ®ång",tbProp={4,417,1,1,0,0},nCount=10000,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,8000,1,0},nCount=200,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Vò khÝ)",tbProp={6,1,8001,1,0},nCount=1,nRate=0.02},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (NhÉn)",tbProp={6,1,8002,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Y)",tbProp={6,1,8003,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Béi)",tbProp={6,1,8004,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Hé UyÓn)",tbProp={6,1,8005,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Giµy)",tbProp={6,1,8006,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (D©y ChuyÒn)",tbProp={6,1,8007,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (§ai)",tbProp={6,1,8008,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Nãn)",tbProp={6,1,8009,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="ThuÇn thó quyÓn",tbProp={6,1,8010,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Trang Søc",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Ên",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Phi Phong",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Thñy Tinh",tbProp={4,random(238,240),1,1,0,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Tinh Hång B¶o Th¹ch", tbProp={4,353,1,1,0,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="X¸ Lîi kim ®¬n",tbProp={6,1,2620,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="TÈy Tñy Kinh",tbProp={6,1,22,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Vâ L©m MËt TÞch",tbProp={6,1,26,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Bµn Nh­îc T©m Kinh",tbProp={6,1,12,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="NhÊt Kû Cµn Kh«n Phï",tbProp={6,1,2126,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Hµn ThiÕt Ngµn N¨m",tbProp={6,1,8014,1,0},nCount=1,nRate=5},}, "test", 1);	


       SetTask(5129,GetTask(5129)+1)  
	----------------------BOSS §éc C« XuÊt HiÖn-------------------------------------
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua","ReduceGoldBossCount",0);
	end
end;

function OnTimer(npcindex, nTimeOut) 
	DelNpc(npcindex);
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------