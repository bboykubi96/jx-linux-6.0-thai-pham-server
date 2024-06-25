-- kevin109
IncludeLib("TASKSYS")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
-----------------------------------------------------------------------------
DROPRATE_BOSS_HONOURRATE = {
		["V��ng T�"] = {350, 136},--739
		["Huy�n Gi�c ��i S�"] = {350, 134},--740
		["���ng B�t Nhi�m"] = {350, 149},--741
		["B�ch Doanh Doanh"] = {350, 138},--742
		["Thanh Tuy�t S� Th�i"] = {350, 137},--743
		["Y�n Hi�u Tr�i"] = {350, 168},--744
		["H� Nh�n Ng�"] = {350, 171},--745
		["T� ��i Nh�c"] = {350, 171},--1367
		["Tuy�n C� T�"] = {350, 144},--747
		["Gia Lu�t T� Ly"] = {350, 130},--563
		["Huy�n Nan ��i S�"] = {400, 130},--1365
		["�oan M�c Du�"] = {400, 127},--565
		["C� B�ch"] = {350, 141},--566
		["��o Thanh Ch�n Nh�n"] = {300, 130},--562
		["Chung Linh T�"] = {400, 130},--567
		["H� Linh Phi�u"] = {400, 130},--568
		["Lam Y Y"] = {250, 176},--582
		["M�nh Th��ng L��ng"] = {300, 180},--583
		["���ng Phi Y�n"] = {300, 180},--1366
		["Thanh Li�n T�"] = {300, 180},--1368
}

TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 2000000000
KILLBOSSNEAREXPAWARD =1000000000
-------------------------------------
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>V�t ph�m <color=yellow><%s><color=green><enter> v�a r�i t� <color=yellow>Boss Ho�ng Kim<color>" ,GetItemName(nItemIndex))
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
		{szName="Ng�n L��ng",nJxb=500000,nCount=1},
        
               -- {szName="even fee",tbProp={6,1,30335,1,0,0},nCount=10,nExpiredTime=20220729},
		--{szName="H�nh Hi�p L�nh",tbProp={6,1,4807,1,0,0},nCount=100},
		--{szName="Xu",tbProp={4,417,1,1,0,0},nCount=100},

	},
	[2] = {
               
		{szName = "M�t T�ch K� N�ng 150 C�p 21",tbProp={6,1,4345,1,0,0},nCount=1,nRate=1,CallBack= _Message},  
		{szName = "M�t T�ch K� N�ng 150 C�p 22",tbProp={6,1,4346,1,0,0},nCount=1,nRate=1,CallBack= _Message},   
             	{szName="Can Khon Song",tbProp={6,1,2119,1,0,0},nCount=1,nRate=1,CallBack= _Message},
		{szName="Nhat Ky",tbProp={6,1,2126,1,0,0},nCount=1,nRate=1,CallBack= _Message},
		--{szName="B�ch Ngh� Thi�n Th�ch",tbProp={6,1,49004,1,0,0},nCount=10,nRate=1,CallBack= _Message},
		--{szName="B�ch Ngh� Tinh Ng�c",tbProp={6,1,30355,1,0,0},nCount=10,nRate=1,CallBack= _Message},
             --   {szName="B�o R��ng Tinh S��ng H�ng Li�n",tbProp={6,1,6020,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=0.1,CallBack= _Message},
		--{szName="B�o R��ng Tinh S��ng Kh�i",tbProp={6,1,6021,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nRate=7,CallBack= _Message},
		--{szName="B�o R��ng Tinh S��ng Th��ng Gi�i",tbProp={6,1,6022,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.2,CallBack= _Message},
		--{szName="B�o R��ng Tinh S��ng H� Uy�n",tbProp={6,1,6023,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.3,CallBack= _Message},
		--{szName="B�o R��ng Tinh S��ng Y�u ��i",tbProp={6,1,6024,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=2,CallBack= _Message},
		--{szName="B�o R��ng Tinh S��ng H�i",tbProp={6,1,6027,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=7,CallBack= _Message},
		--{szName="B�o R��ng Tinh S��ng B�i",tbProp={6,1,6028,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nRate=0.1,CallBack= _Message},
		--{szName="B�o R��ng Tinh S��ng H� Gi�i",tbProp={6,1,6029,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=0.1,CallBack= _Message},
		
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
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m T� ��i Gi�t BOSS ho�ng kim"));
		end
	else
		szName = GetName();
		
		tbAwardTemplet:GiveAwardByList(tbnvboss, "Ph�n th��ng Ti�u Di�t Boss C� Nh�n")
	end

	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng Xung Quanh L�c BOSS Ho�ng Kim B� Ti�u Di�t"));
	end
	
	local szNews = format("<color=green>Ch�c M�ng <color=yellow>%s<color> T�i <color=yellow>%s<color> �� Ti�u Di�t Th�nh C�ng <color=yellow>%s<color> Nh�n ���c  Nhieu NL Hot<color>", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1,"","","\\script\\event\\msg2allworld.lua","battle_msg2allworld", szNews , "", "");
	-- tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbDropAward,format("killed_%s",GetNpcName(nNpcIndex)))
	 tbAwardTemplet:GiveAwardByList({{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=10000,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="T� Tinh Kho�ng Th�ch",tbProp={6,1,8000,1,0},nCount=200,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (V� kh�)",tbProp={6,1,8001,1,0},nCount=1,nRate=0.02},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (Nh�n)",tbProp={6,1,8002,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (Y)",tbProp={6,1,8003,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (B�i)",tbProp={6,1,8004,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (H� Uy�n)",tbProp={6,1,8005,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (Gi�y)",tbProp={6,1,8006,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (D�y Chuy�n)",tbProp={6,1,8007,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (�ai)",tbProp={6,1,8008,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (N�n)",tbProp={6,1,8009,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Thu�n th� quy�n",tbProp={6,1,8010,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Trang S�c",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� �n",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Phi Phong",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Th�y Tinh",tbProp={4,random(238,240),1,1,0,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="X� L�i kim ��n",tbProp={6,1,2620,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="T�y T�y Kinh",tbProp={6,1,22,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="B�n Nh��c T�m Kinh",tbProp={6,1,12,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Nh�t K� C�n Kh�n Ph�",tbProp={6,1,2126,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="H�n Thi�t Ng�n N�m",tbProp={6,1,8014,1,0},nCount=1,nRate=5},}, "test", 1);	


       SetTask(5129,GetTask(5129)+1)  
	----------------------BOSS ��c C� Xu�t Hi�n-------------------------------------
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