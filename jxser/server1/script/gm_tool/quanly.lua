IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\gm_tool\\libgm.lua")
Include("\\script\\gm_tool\\hotrogm.lua")
--------------------------------------------------------------
tbGM = {}
tbGM.gmlist = 
{
	["admin1"]=VoLamHoangKim,
	["livechym"]=LiveChym,	
	[""]=1,	
	[""]=1,	
}

tbGM.szFile = "\\dulieu\\bandbygm.dat"
server_loadfile(tbGM.szFile)
	
function tbGM:_SetTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID)
end

function tbGM:_GetTask(nTaskID)
	return GetTask(nTaskID)
end

function tbGM:MainSay()
self:_SetTask(3010,0)
	--if self.gmlist[GetAccount()] then 
		local szTitle = "<npc><color=gold>GM: <color>Ch�o m�ng b�n ��n v�i v� l�m Ti�u S� <pic=0>  <color=red><color> volamtieusu.com <color=green><color> .\nNh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra server\nHi�n t�i c� <color=red>"..GetPlayerCount().." <color>ng��i ch�i �ang tr�c tuy�n.<color>"
		local Opt = 
		{
			{"Th�ng b�o k�nh h� th�ng d�nh cho GM",tbGM.Msg2World},
      --               {"Ch�c N�ng H� Tr�",ChucNangGM}, 
			{"Ki�m tra t�n t�i kho�n c�a nh�n v�t",tbGM.Option,{self,1}},
			{"Ki�m tra tin t�c (t�a ��,gi�i t�nh,��ng c�p,m�n ph�i) c�a ng��i ch�i",tbGM.Option,{self,18}},
			{"Tri�u t�p t�t c� c�c nh�n v�t �ang tr�c tuy�n",tbGM.CallAllPlayers},
			{"Kick t�t c� ng��i ch�i hi�n t�i trong server (ch�ng Rollback)",kickroll},
		--	{"T�ng trang b� - v�t ph�m - ��o c� cho ng��i ch�i (nh�p s� l��ng)",tbGM.GetPlayerName},
			--{"[GM] Nh�n danh hi�u GM Tinh Hoa V� L�m",tbGM.NhanDanhHieuGM},
			{"Ch�c n�ng th�ng b�o , tri�u t�p d�nh cho GM",tbGM.GMPower},
			{"Ch�c n�ng qu�n l� kh�c ...",tbGM.Option,{self,10}},
			{"Tho�t",},
		}
		CreateNewSayEx(szTitle,Opt)
	--else
	--	Say("Ch�c M�ng Nh�n S� �� Tham Gia V� L�m Truy�n K�")
	--end
	return 1	
end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanDanhHieuGM()
local szTitle = "<npc>L�a ch�n danh hi�u"
	local tbOpt =
	{
		{"Danh hi�u GM Ti�u Ng�o V� L�m", abcxyz,{234}},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
----------------------------------------------------------------------------------------
function abcxyz(nindex)
Title_AddTitle(nindex, 2,  4302359);
Title_ActiveTitle(nindex);
SetTask(3011, nindex);
end
----------------------------------------------------------------------------
function TrangTiepTheo()
local szTitle = "<npc><color=gold>GM: <color>Ch�o m�ng b�n ��n v�i v� l�m Ti�u S� <pic=0>  <color=red><color> <color=green>volamtieusu.com<color> .\nNh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra server\nHi�n t�i c� <color=red>"..GetPlayerCount().." <color>ng��i ch�i �ang tr�c tuy�n.<color>"
	local Opt = {
		{"Kh�a nh�n v�t t�m th�i (click kh�i game)",tbGM.Option,{self,2}},
		{"M� kh�a cho nh�n v�t t�m th�i (unband)",tbGM.Option,{self,5}},
		{"Kh�a t�i kho�n nh�n v�t v�nh vi�n (nh�p t�n nh�n v�t)",tbGM.Option,{self,8}},
		{"M� kh�a cho t�i kho�n b� block v�nh vi�n (nh�p t�n t�i kho�n)",tbGM.Option,{self,11}},
		{"K�o nh�n v�t ��n t�a �� c�a GM",tbGM.Option,{self,3}},
		{"��a GM ��n n�i �n tr�n c�a nh�n v�t",tbGM.Option,{self,7}},
		{"C�m chat nh�n v�t (t�m th�i)",tbGM.Option,{self,4}},
		{"Cho ph�p nh�n v�t chat b�nh th��ng (unlock chat)",tbGM.Option,{self,6}},
		{"C�m chat nh�n v�t v�nh vi�n",tbGM.Option,{self,9}},
		{"Cho ph�p nh�n v�t chat b�nh th��ng v�nh vi�n (unlock chat)",tbGM.Option,{self,12}},
		--{"Nh�n c�c lo�i trang b�, v� kh�, trang s�c xanh theo h�",tbGM.Option,{self,20}},
		--{"Tr� l�i trang ��u ti�n",tbGM.MainSay},
		{"K�t th�c ��i tho�i "},
	}
	CreateNewSayEx(szTitle,Opt)
end
------------------------------------------------------------------------------------------------------------------------------------------------
function tbGM:GMPower()
local szTitle = "<npc><color=gold>GM: <color>Ch�o m�ng b�n ��n v�i v� l�m Ti�u S� <pic=0>  <color=red><color> <color=green>volamtieusu.com<color> .\nNh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra server\nHi�n t�i c� <color=red>"..GetPlayerCount().." <color>ng��i ch�i �ang tr�c tuy�n.<color>"
		local opt = 
	{
		{"Th�ng b�o k�nh h� th�ng d�nh cho GM",tbGM.Msg2World}, 
		{"Tri�u t�p t�t c� c�c nh�n v�t �ang tr�c tuy�n",tbGM.CallAllPlayers},
		{"K�t th�c ��i tho�i "},
	}
	CreateNewSayEx(szTitle,opt)
end
--------------------------------------------------------------------------------------------
function tbGM:Msg2World()
	tbGM:SendMsgToPlayer()
end

function tbGM:CallAllPlayers()
	---self.ListIdxKichOut
	local gmrole = PlayerIndex;
	local MapId,nX,nY = GetWorldPos();
	local count = GetPlayerCount();
	if count > 0 then 
		for i=1,count do 
			PlayerIndex = i;
			if PlayerIndex > 0 then 
				NewWorld(MapId,nX,nY);
				Msg2Player("B�n ���c <color=orange>GM<color> tri�u t�p.")
			else
				break
			end
		end
		PlayerIndex = gmrole;
		Msg2Player(format("B�n �� tri�u t�p th�nh c�ng :<color=red> [%d]<color>  ng��i ch�i v� MAP :<color=pink> [%d]<color>  t�a ��:<color=Green> [%d.%d]",count,MapId,nX,nY))
	end
end

function tbGM:Option(nId)
		tbGM:_SetTask(3010,nId)
		if (nId == 10) then 
				TrangTiepTheo()
			return
		end
		
		if (nId == 11) then
				Unlock()
			return
		end
		
		if (nId == 20) then
				Nhandoxanhadmin()
			return
		end
		
		goiclient()
end

function Nhandoxanhadmin()
if (CalcFreeItemCellCount() < 30) then 
Say("C�n �t nh�t <color=red>30 ch� tr�ng h�nh trang<color> m�i c� th� nh�n trang b�. H�y s�p x�p l�i h�nh trang ! ") 
return 
end 
	local TAB_HE = {
		"Nh�n trang b� H� Kim/hevukhi",
		"Nh�n trang b� H� M�c/hevukhi",
		"Nh�n trang b� H� Th�y/hevukhi",
		"Nh�n trang b� H� H�a/hevukhi",
		"Nh�n trang b� H� Th�/hevukhi",
		"K�t th�c ��i tho�i/no",}
	Say("Ch�n h�  : ",6,TAB_HE[1],TAB_HE[2],TAB_HE[3],TAB_HE[4],TAB_HE[5],TAB_HE[6])
end
function hevukhi(sel)
	local TAB_DO = {
		"Nh�n v� kh�/vukhi",
		"Nh�n �� N�/dobonu",
		"Nh�n �� Nam/dobonam",
		"Nh�n trang s�c/nhandaychuyen",
		"K�t th�c ��i tho�i/no",}
	local aHeo = sel
	SetTask(211,aHeo)
	Say("a b c",5,TAB_DO[1],TAB_DO[2],TAB_DO[3],TAB_DO[4],TAB_DO[5])
end
function nhandaychuyen()
	local eHeo = GetTask(211)
	for i=1,6 do AddItem(0,4,1,10,eHeo,200,10) end
	for i=1,6 do AddItem(0,4,0,10,eHeo,200,10) end
	for i=1,6 do AddItem(0,9,0,10,eHeo,200,10) end
	for i=1,6 do AddItem(0,9,1,10,eHeo,200,10) end
	for i=1,6 do AddItem(0,3,0,10,eHeo,200,10) end
end
function vukhi()
	local TAB_DOXANH = {
		"Nh�n v� kh� Ki�m/laydoxanh",
		"Nh�n v� kh� �ao/laydoxanh",
		"Nh�n v� kh� B�ng/laydoxanh",
		"Nh�n v� kh� Th��ng/laydoxanh",
		"Nh�n v� kh� Ch�y/laydoxanh",
		"Nh�n v� kh� Song �ao/laydoxanh",
		"Nh�n v� kh� Phi Ti�u/laydoxanh",
		"Nh�n v� kh� Phi �ao/laydoxanh",
		"Nh�n v� kh� T� Ti�n/laydoxanh",
		"K�t th�c ��i tho�i/no",}
	Say("Nh�n �� v� kh� ",11,TAB_DOXANH[1],TAB_DOXANH[2],TAB_DOXANH[3],TAB_DOXANH[4],TAB_DOXANH[5],TAB_DOXANH[6],TAB_DOXANH[7],TAB_DOXANH[8],TAB_DOXANH[9],TAB_DOXANH[10])
end
function laydoxanh(sel)
	local aHeo = sel
	local aHeo1 = sel - 6
	local eHeo = GetTask(211)
	if (aHeo < 6) then
	for i=1,5 do AddItem(0,0,aHeo,10,eHeo,200,10) end
	else
	for i=1,5 do AddItem(0,1,aHeo1,10,eHeo,200,10) end
	end
end
function dobonu()
	local TAB_DOBONU = {{2,9,2},{7,9,2},{6,0,0},{5,3,1},{8,0,1}}
	local eHeo = GetTask(211)
	for i=1,5 do
		AddItem(0,TAB_DOBONU[i][1],TAB_DOBONU[i][2],10,eHeo,200,10)
	end
end
function dobonam()
	local TAB_DOBONU = {{2,8,4},{7,9,2},{6,0,0},{5,3,1},{8,0,1}}
	local eHeo = GetTask(211)
	for i=1,5 do
		AddItem(0,TAB_DOBONU[i][1],TAB_DOBONU[i][3],10,eHeo,200,10)
	end
end

function Unlock()
	AskClientForString("UnlockPlayer","",1,999999999,"T�n T�i Kho�n")
end


function tbGM:SendMsgToPlayer()
	AskClientForString("Input_String","",1,9999999999,"Th�ng b�o mu�n nh�n")
end

function Input_String(nVal)
	Msg2SubWorld(format("<color=yellow>%s<color>",nVal))
end


function UnlockPlayer(zVar)
	local IsBand = server_getdata(tbGM.szFile,"ACCOUNT_BAND_FORVER",zVar);
	if not IsBand or IsBand == "" then 
		Msg2Player("Account n�y ko b� band v�nh vi�n")
		return
	end
	server_setdata(tbGM.szFile,"ACCOUNT_BAND_FORVER",zVar,"")
	server_savedata(tbGM.szFile);
	Msg2Player("B�n �� m� kh�a band v�nh vi�n cho account:<color=orange> "..zVar.."")
end

function goiclient()
		AskClientForString("InputNamePlayer", "", 1, 999999999, "T�n Nh�n V�t");
end

function InputNamePlayer(nVar)
	local gmrole = PlayerIndex
	local nId = tbGM:_GetTask(3010);
	if nId == 5 then 
		if not tbGM.ListName[nVar] then 
			Msg2Player("Account n�y ko b� band.");
			return
		end
		
		if not tbGM.ListBand[tbGM.ListName[nVar]] then 
			Msg2Player("Account n�y ko b� band.");
			return
		end
		
		tbGM.ListBand[tbGM.ListName[nVar]] = nil
		Msg2Player(format("B�n �� m� kh�a band cho account:<color=orange> %s",tbGM.ListName[nVar]))
		return
	end
	
	if not tbGM.ListPlayer[nVar] then 
		Msg2Player("T�n n�y ko t�n t�i trong h� th�ng c�a<color=orange> GM.");
		return
	end
	
	local nMapId,nX,nY = GetWorldPos();	
	local szAccount = tbGM.ListPlayer[nVar].szAccount;
	if nId == 1 then ---account
		local szMsg = format("T�n nh�n v�t: <color=orange>[%s]<color> - T�n Account: <color=green>%s<color>",nVar,tbGM.ListPlayer[nVar].szAccount);
		Msg2Player(szMsg);
	elseif nId == 2 then --band nh�n v�t
		tbGM:BandLoginServer(nVar);
	elseif nId ==  3 then --di chuy�n nh�n v�t.
		Msg2Player(format("B�n �� tri�u h�i nh�n v�t: <color=orange>%s",nVar))
		PlayerIndex = tbGM.ListPlayer[nVar].PlayerIdx;
			local szName = GetName()
			NewWorld(nMapId,nX,nY);
			Msg2Player("B�n �� ���c<color=orange> GM<color> tri�u h�i.")
	elseif nId == 4 then --ch�a biet
		Msg2Player(format("<color=green>B�n �� c�m nh�n v�t:<color=orange> %s <color>nai chuy�n.",nVar));
		PlayerIndex =  tbGM.ListPlayer[nVar].PlayerIdx;
			local szName = GetName();
			SetChatFlag(1);
			Msg2Player("<color=orange>GM <color>�� c�m tr�ng th�i nai chuy�n c�a b�n.")
			tbGM.MuteChat[szName] = 1;
	elseif nId == 6 then 
		Msg2Player(format("B�n �� m� kh�a ch�t cho nh�n v�t:<color=orange> %s",nVar))
		PlayerIndex = tbGM.ListPlayer[nVar].PlayerIdx;
		if tbGM.MuteChat[nVar] then 
				SetChatFlag(0);
				Msg2Player("<color=orange>GM <color> �� m� kh�a c�m ch�t cho b�n.");
				tbGM.MuteChat[nVar] = nil
		end
	elseif nId == 7 then 	
		PlayerIndex = tbGM.ListPlayer[nVar].PlayerIdx;
		local Map,nX,nY = GetWorldPos();
		PlayerIndex = gmrole;
		NewWorld(Map,nX,nY)
	elseif nId == 8 then 
		tbGM:BandLoginForver(nVar);
	elseif nId == 9 then 
		PlayerIndex = tbGM.ListPlayer[nVar].PlayerIdx;
		if PlayerIndex > 0 then 
			server_setdata(tbGM.szFile,"ACCOUNT_BAND_CHAT",nVar,1)
			server_savedata(tbGM.szFile);
			local Name = GetName()
			SetChatFlag(1);
			Msg2Player("B�n b� <color=orange>GM <color> c�m chat m�i m�i")
			PlayerIndex = gmrole;
			Msg2Player(format("B�n �� c�m chat nh�n v�t<color=orange> %s <color>v�nh vi�n.",Name))
		else
			PlayerIndex = gmrole;
			Msg2Player("T�n nh�n v�t kh�ng t�n t�i.");
		end
	elseif nId == 12 then 
		server_loadfile(tbGM.szFile);
		local IsBand = server_getdata(tbGM.szFile,"ACCOUNT_BAND_CHAT",nVar);
		if not IsBand or IsBand == "" then 
			Msg2Player("<color=green>Nh�n v�t (t�i kho�n) n�y kh�ng b~ kh�a.")
			return
		end
		
		PlayerIndex = tbGM.ListPlayer[nVar].PlayerIdx;
		if PlayerIndex > 0 then 
				server_setdata(tbGM.szFile,"ACCOUNT_BAND_CHAT",nVar,"");
				server_savedata(tbGM.szFile);
				SetChatFlag(0);
				Msg2Player("B�n �� ���c <color=orange>GM <color> m� kh�a ch�t v�nh vi�n")
				PlayerIndex = gmrole;
				Msg2Player("B�n �� m� kh�a ch�t v�nh vi�n cho nh�n v�t:<color=orange> "..nVar.."");
		end
	elseif nId == 13 then 
		tbGM:SendMsgToPlayer()
	elseif nId == 14 then 
		local countplayers = GetPlayerCount();
		for i=1,countplayers do 
			PlayerIndex = i;
			if PlayerIndex > 0 then 
				KickOutSelf();  
			else
				break;
			end
		end
	elseif nId == 18 then -- thong tin nhan vat
		local gmrole = PlayerIndex
		local playeridx = SearchPlayer(nVar);
		if playeridx > 0 then 
			PlayerIndex = playeridx;
			local sex = GetSex();
			local Faction = GetLastFactionNumber();
			local nMap,nX,nY = GetWorldPos();
			local CurLevel = GetLevel();
			local zAccount = GetAccount();
			local zFaction = "Ch�a gia nh�p m�n ph�i"
			if sex == 0 then sex = "Nam" else sex = "N�" end --ktra lai khi test ko nho 0 la nam hay 1 la nam
			if Faction == 0 then zFaction = "Thi�u L�m" 
			elseif Faction == 1 then zFaction = "Thi�n V��ng"
			elseif Faction == 2 then zFaction = "���ng M�n" 
			elseif Faction == 3 then zFaction = "Ng� ��c" 
			elseif Faction == 4 then zFaction = "Nga My" 
			elseif Faction == 5 then zFaction = "Th�y Y�n" 
			elseif Faction == 6 then zFaction = "C�i Bang" 
			elseif Faction == 7 then zFaction = "Thi�n Nh�n" 
			elseif Faction == 8 then zFaction = "V� �ang" 
			elseif Faction == 9 then zFaction = "C�n L�n" 
			elseif Faction == 10 then zFaction = "Hoa S�n"
			end
			PlayerIndex = gmrole;
			local zMsgTalk = format("<color=Green>Th�ng tin nh�n v�t<color> :T�n nh�n v�t :<color=orange> %s<color> --- ID T�i kho�n : <color=red>( %s ) <color>\nGi�i t�nh:<color=Red> %s <color>- M�n Ph�i :<color=Yellow> %s<color>\nC�p ��: <color=red>%d<color>\nMap:<color=orange> %d <color>- t�a ��:<color=green> [%d,%d] ",nVar,zAccount,sex,zFaction,CurLevel,nMap,floor(nX/8),floor(nY/16));
			if zMsgTalk ~= "" then 
				Say(zMsgTalk,0);
			else
				Msg2Player("<color=orange>GM<color> : B�n vui l�ng ki�m tra l�i th�ng tin nh�p v�o c�a nh�n v�t<color=orange> "..nVar.." player ")
			end
		else
			PlayerIndex = gmrole;
			Msg2Player(format("<color=orange>GM<color>: C� th� b�n �� nh�m t�n nh�n v�t :<color=orange>[%s]<color> kh�ng c� trong server.",nVar))
		end
		
	end
end

--kick nv out
function tbGM:BandLoginServer(nVar)
	Msg2Player(format("B�n �� b�n nh�n v�t<color=orange> %s<color> account:<color=red> %s<color> ra kh�i server.",self.ListPlayer[nVar].szName,self.ListPlayer[nVar].szAccount));
	PlayerIndex = self.ListPlayer[nVar].PlayerIdx
	--print(format("ten: %s - nhan: %s - Index: ",nVar,GetName(),PlayerIndex))
	if nVar == GetName() then 
		local szAccount = GetAccount();
		local szName = GetName();
		self.ListBand[szAccount] = 1
		self.ListName[szName] = szAccount;
		KickOutSelf()
	end
end

--band forever 
function tbGM:BandLoginForver(nVar)
	Msg2Player(format("B�n �� b�n nh�n v�t<color=orange> %s <color>account:<color=orange> %s <color>ra kh�i server.",self.ListPlayer[nVar].szName,self.ListPlayer[nVar].szAccount));
	PlayerIndex = self.ListPlayer[nVar].PlayerIdx
	if nVar == GetName() then 
		local szAccount = GetAccount();
		server_setdata(self.szFile,"ACCOUNT_BAND_FORVER",szAccount,1);
		server_savedata(self.szFile);
		KickOutSelf()
	end
end

--logout 
function tbGM:RemoveInfo(szName)
	if self.ListPlayer[szName] then 
		tremove(self.ListIdxKichOut,self.ListPlayer[szName].nID);
		self.ListPlayer[szName] = nil
	end
end

--b? band 
function tbGM:KickYourAss(szAccount)
	if self.ListBand[szAccount] then 
		local OldPlayer = PlayerIndex
		PlayerIndex = OldPlayer
		OfflineLive(PlayerIndex)
		KickOutSelf();
		return
	end
end

function tbGM:LimitAccount(zIp)
	if type(zIp) == "string" then
		local ip1,ip2,ip3,ip4 = strfind(zIp,"(%d+).(%d+).(%d+).(%d+)");
		local strIp = format("%s%s%s%s",ip1, ip2,ip3,ip4)
		if self.LimitAccount[strIp] then 
			local countlogin = self.LimitAccount[strIp].CounLogin;
			if countlogin > 5 then 
			
			else
				self.LimitAccount[strIp].CountLogin = countlogin + 1;
			end
		end
		
		
		
	end
end

--save info player
function tbGM:GetInfoPlayer(szName)
	if not self.ListPlayer[szName] then 
		local CountList = getn(self.ListIdxKichOut) + 1
		self.ListIdxKichOut[CountList] = PlayerIndex;
		self.ListPlayer[szName] = {PlayerIdx = PlayerIndex,szAccount = GetAccount(),nLevel = GetLevel(),szName = GetName(),nID = CountList};
		print(format("Thong tin nhan vat: %s da duoc luu vao, indexid : %d",self.ListPlayer[szName].szAccount,CountList)) --thu lai minh xem
		
	end
end


-----------------------

function tbGM:GetPlayerName()
	tbGM:askStringInput("GetNamePlayer","�i�n T�n Nh�n V�t");
end

function GetNamePlayer(szVar)
	if not tbGM.ListPlayer[szVar] then 
		Msg2Player("<color=orange>Nh�n v�t n�y kh�ng c� trong server ho�c kh�ng t�n t�i trong h� th�ng d� li�u.")
		return
	end
	
	tbGM.ListGift[1] = szVar;
	tbGM.ListGift[2] = tbGM.ListPlayer[szVar].PlayerIdx;
	tbGM:Show()
end

function tbGM:Show()
	SetTaskTemp(1,0)
	if not self.ListVar or self.ListVar then 
		self.ListVar = nil;
		self.ListVar = {};
	end
	
	local szTitle = "<npc><color=gold>GM: <color>Ch�o m�ng b�n ��n v�i h� th�ng <color=red>V� L�m Truy�n K�<color> <color=green>C�u Ni�n T��ng Ph�ng<color> .\nNh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra server\nHi�n t�i c� <color=red>"..GetPlayerCount().." <color>ng��i ch�i �ang tr�c tuy�n.<color>"
		local Opt = {};
	tinsert(Opt,{"T�ng ti�n v�n l��ng cho nh�n v�t",self.option,{self,1}});
	tinsert(Opt,{"T�ng trang b� (GoldItem) cho nh�n v�t (10)",self.option,{self,2}});
	tinsert(Opt,{"T�ng v�t ph�m (questkey) cho nh�n v�t (4 417 - ti�n ��ng)",self.option,{self,3}})
	tinsert(Opt,{"T�ng v�t ph�m (magicscript) cho nh�n v�t (6 1 13)",self.option,{self,4}})
	tinsert(Opt,{"K�t th�c ��i tho�i."});
	CreateNewSayEx(szTitle,Opt)
end



function tbGM:option(nSel)
	SetTaskTemp(1,nSel)
	self:_SetTask(3012,nSel)
	SetTaskTemp(2,0)
	if (nSel == 1) then --t�ng ti?n.
		self:askStringInput("GiveMoneyToPlayer","S� Ti�n cho");
	elseif (nSel == 2) then -- t�ng trang b~
		self:askNumberInput("GiveTrangBi","Id Trang B�");
	elseif (nSel == 3 or nSel == 4) then -- t�ng v�t ph�m
		self:askNumberInput("GiveVatPham","Id V�t Ph�m");
	end
end

--ti?n
function GiveMoneyToPlayer(nMoney)
	local gmrole = PlayerIndex;
	local IsMoney = tonumber(nMoney);
	local Money = GetTaskTemp(3)
	if IsMoney and GetTaskTemp(2) == 0 then 
		SetTaskTemp(2,1)
		SetTaskTemp(3,IsMoney)
		Say("B�n c� ch�c l� mu�n cho nh�n v�t<color=orange> "..IsMoney.."<color> l��ng",2,"Ta ch�c ch�n/#GiveMoneyToPlayer(IsMoney)","�� ta suy ngh� l�i/#cancel(count)")
	elseif GetTaskTemp(3) > 0 and GetTaskTemp(2)  == 1 then 
		PlayerIndex = tbGM.ListPlayer[tbGM.ListGift[1]].PlayerIdx;
		local Name = GetName()
		Earn(Money)
		Msg2Player("B�n ���c<color=green> GM<color> t�ng :<color=orange> "..Money.." <color>l��ng ")
		PlayerIndex = gmrole;
		Msg2Player("B�n t�ng ti�n cho nh�n v�t<color=orange> "..Name.."<color> l�<color=yellow> "..Money.."<color> l��ng")
		tbGM.ListGift[1] = nil;
		SetTaskTemp(2,0)
		SetTaskTemp(3,0)
	end
end

function cancel(ns)
end

--trang bi
function GiveTrangBi(szVar)
	local gmrole = PlayerIndex;
	szVar = tonumber(szVar);
	 ItemName,Id,ItemId = tbGM:getProp(szVar);
	 PlayerIndex = tbGM.ListGift[2];
	local IndexS = AddGoldItem(Id,ItemId+1);
	SetItemBindState(IndexS,-2)
	Msg2Player(format("B�n nh�n ���c trang b�: <color=orange>%s <color>do<color=green> GM<color> t�ng.",ItemName))
	PlayerIndex = gmrole;
	Msg2Player(format("B�n �� t�ng trang b�:<color=orange> %s<color> cho nh�n v�t :<color=green> %s",ItemName,tbGM.ListGift[1]))
	SetTaskTemp(2,0) 
	tbGM.ListVar[1] = nil;
	tbGM:_SetTask(3012,0)
end

--V�t Ph�m
function GiveVatPham(szVar)
	local gmrole = PlayerIndex;
	szVar = tonumber(szVar)
	g_AskClientNumberEx(0,2000,"Nh�p s� l��ng",{tbGM.AddItemByAmount,{tbGM,gmrole,tbGM.ListGift[2],szVar}})
end

function tbGM:AddItemByAmount(gmrole,playeridx,szVar,nAmount)
	ItemName,Genre,Detail,Particular,id2,id3,id4 = self:getProp(szVar);
	PlayerIndex = playeridx;
	if (CalcFreeItemCellCount() < nAmount + 1) then 
		PlayerName = GetName()
		Talk(1,"",format("B�n kh�ng c� ��<color=yellow>  [%d] <color> � tr�ng trong h�nh trang.",nAmount + 1))
		PlayerIndex = gmrole;
		Msg2Player(format("Nh�n v�t<color=orange> %s <color>kh�ng c� �� <color=yellow> [%d]<color> � tr�ng trong h�nh trang.",PlayerName,nAmount + 1))
		return
	end

	if nAmount > 0 then 
		for i=1,nAmount do 
			AddItem(Genre,Detail,Particular,id2,id3,id4);	
		end
		Msg2Player(format("B�n nh�n ���c V�t Ph�m:<color=orange> %s <color>s� l��ng:<color=yellow> %d <color>t� <color=green> GM<color> t�ng.",ItemName,nAmount))
		PlayerIndex = gmrole;
		Msg2Player(format("B�n �� t�ng v�t ph�m :<color=orange> %s <color>s� l��ng :<color=yellow> %d<color> cho nh�n v�t : <color=green>%s",ItemName,nAmount,self.ListGift[1]))
		SetTaskTemp(2,0) 
		self.ListVar[1] = nil
		self:_SetTask(3012,0)	
	end
end

function tbGM:askStringInput(szFunct,szStr)
	AskClientForString(szFunct,"",1,999999999,szStr);
end

function tbGM:askNumberInput(szFunct,szStr)
	AskClientForNumber(szFunct,0,9999999,szStr)
end

function tbGM:_init()
	self.ListPlayer = {};
	self.ListBand = {};
	self.MuteChat = {};
	self.PlayerId = {};
	self.ListName = {};
	self.ListGift = {};
	self.Item = {{}};
	self.ListIdxKichOut = {};
end


 local QUESTKEY = TabFile_Load("\\settings\\item\\004\\questkey.txt","QUESTKEY");
local MAGIC = TabFile_Load("\\settings\\item\\004\\magicscript.txt","MAGIC");
local ITEM = TabFile_Load("\\settings\\item\\004\\goldequip.txt","ITEM")

 function tbGM:getProp(nNum)
	if %QUESTKEY ~= 1 or %MAGIC ~= 1 or %ITEM ~= 1 then 
		print(foramt("File ko ton tai: %d %d %d",%QUESTKEY,%MAGIC,%ITEM))
		return
	end
	local zType = self:_GetTask(3012);
	print(zType)
	if zType == 3 then 
		--QUESTKEY 
		for nRow = 2,TabFile_GetRowCount("QUESTKEY") do 
			 szName = TabFile_GetCell("QUESTKEY",nRow,"����");
			 Genre = tonumber(TabFile_GetCell("QUESTKEY",nRow,"ItemGenre"));
			 Detail = tonumber(TabFile_GetCell("QUESTKEY",nRow,"DetailType"));
			 Index = self:ReturnIndex(Genre,Detail)
			if (Index == nNum) then 
				return szName,Genre,Detail,1,1,0,0
			end
		end
	elseif zType == 4 then 
		--MAGIC
		for nRow =2,TabFile_GetRowCount("MAGIC") do 
			 szName = TabFile_GetCell("MAGIC",nRow,"����");
			 Genre = tonumber(TabFile_GetCell("MAGIC",nRow,"ItemGenre"));
			 Detail = tonumber(TabFile_GetCell("MAGIC",nRow,"DetailType"));
			 Particular = tonumber(TabFile_GetCell("MAGIC",nRow,"ParticularType"));
			 Index = self:ReturnIndex(Genre,Detail,Particular);
			if (Index == nNum) then 
				return szName,Genre,Detail,Particular,1,0,0
			end
		end
	else
		--ITEM
		for nRow = 2,TabFile_GetRowCount("ITEM") do
			szName = TabFile_GetCell("ITEM",nRow,"����");
			 Id = nRow - 2;
			 if (Id == nNum - 2) then 
				return szName,0,Id
			end
		end
	end

end

function tbGM:ReturnIndex(...)
	local Count 
	--print(arg[1],arg[2],arg[3])
	if getn(arg) == 2 then 
		if arg[2] == 0 then 
			Count = (arg[1]*10)
			return Count
		elseif arg[2] < 10 then 
			Count = (arg[1]*10) + arg[2]
			return Count
		elseif arg[2] >= 10 and arg[2] < 100 then 
			Count = (arg[1]*100) + arg[2]
			return Count
		elseif arg[2] >= 100 and arg[2] < 1000 then 
			Count = (arg[1]*1000) + arg[2]
			return Count
		elseif arg[2] >= 1000  and arg[2] < 10000 then 
			Count = (arg[1] *10000) + arg[2]
			return Count
		end
	else
		if (arg[2] == 0) then 
			Count = (arg[1]*100) + arg[3]
			return Count
		elseif (arg[2] == 1) then 
			if arg[3] < 10 then 
				Count = (arg[1]*100) + 10 + arg[3]
				return Count
			elseif (arg[3] >= 10 and  arg[3] < 100) then 
				Count = (arg[1]*1000) + 100 + arg[3]
				return Count
			elseif arg[3] >= 100 and arg[3] < 1000 then 
				Count = (arg[1]*10000) + 1000 + arg[3]
				return Count
			elseif arg[3] >= 1000  and arg[3] < 10000 then 
				Count = (arg[1] *100000) + 10000 + arg[3]
				return Count
			elseif arg[3] >= 10000 and arg[3] < 1000000 then 
				Count = (arg[1] *1000000) + 100000 + arg[3]
				return Count
			end
		elseif (arg[2] == 2) then 
			if arg[3] < 10 then 
				Count = (arg[1]*100) + 20 + arg[3]
				return Count
			elseif (arg[3] >= 10 and  arg[3] < 100) then 
				Count = (arg[1]*1000) + 200 + arg[3]
				return Count
			elseif arg[3] >= 100 and arg[3] < 1000 then 
				Count = (arg[1]*10000) + 2000 + arg[3]
				return Count
			elseif arg[3] >= 1000  and arg[3] < 10000 then 
				Count = (arg[1] *100000) + 20000 + arg[3]
				return Count
			end
		end
	end
end
function kickroll()
local countplayers = GetPlayerCount();
		for i=1,countplayers+1000 do 
			PlayerIndex = i;
			if PlayerIndex > 0 then 
				KickOutSelf();  
			else
				break;
			end
		end
end

function tbGM:new()
	local tb = {}
	for k,v in self do 
		tb[k] = v
	end
	tb:_init()
	return tb
end
tbGM:_init()
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
