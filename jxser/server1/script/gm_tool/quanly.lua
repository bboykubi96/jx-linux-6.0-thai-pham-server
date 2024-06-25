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
		local szTitle = "<npc><color=gold>GM: <color>Chµo mõng b¹n ®Õn víi vâ l©m TiÓu Sö <pic=0>  <color=red><color> volamtieusu.com <color=green><color> .\nNh÷ng chøc n¨ng bªn d­íi cã thÓ gióp b¹n kiÓm tra server\nHiÖn t¹i cã <color=red>"..GetPlayerCount().." <color>ng­êi ch¬i ®ang trùc tuyÕn.<color>"
		local Opt = 
		{
			{"Th«ng b¸o kªnh hÖ thèng dµnh cho GM",tbGM.Msg2World},
      --               {"Chøc N¨ng Hç Trî",ChucNangGM}, 
			{"KiÓm tra tªn tµi kho¶n cña nh©n vËt",tbGM.Option,{self,1}},
			{"KiÓm tra tin tøc (täa ®é,giíi tÝnh,®¼ng cÊp,m«n ph¸i) cña ng­êi ch¬i",tbGM.Option,{self,18}},
			{"TriÖu tËp tÊt c¶ c¸c nh©n vËt ®ang trùc tuyÕn",tbGM.CallAllPlayers},
			{"Kick tÊt c¶ ng­êi ch¬i hiÖn t¹i trong server (chèng Rollback)",kickroll},
		--	{"TÆng trang bÞ - vËt phÈm - ®¹o cô cho ng­êi ch¬i (nhËp sè l­îng)",tbGM.GetPlayerName},
			--{"[GM] NhËn danh hiÖu GM Tinh Hoa Vâ L©m",tbGM.NhanDanhHieuGM},
			{"Chøc n¨ng th«ng b¸o , triÖu tËp dµnh cho GM",tbGM.GMPower},
			{"Chøc n¨ng qu¶n lý kh¸c ...",tbGM.Option,{self,10}},
			{"Tho¸t",},
		}
		CreateNewSayEx(szTitle,Opt)
	--else
	--	Say("Chóc Mõng NhÉn SÜ §· Tham Gia Vâ L©m TruyÒn Kú")
	--end
	return 1	
end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanDanhHieuGM()
local szTitle = "<npc>Lùa chän danh hiÖu"
	local tbOpt =
	{
		{"Danh hiÖu GM TiÕu Ng¹o Vâ L©m", abcxyz,{234}},
		{"KÕt thóc ®èi tho¹i"},
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
local szTitle = "<npc><color=gold>GM: <color>Chµo mõng b¹n ®Õn víi vâ l©m TiÓu Sö <pic=0>  <color=red><color> <color=green>volamtieusu.com<color> .\nNh÷ng chøc n¨ng bªn d­íi cã thÓ gióp b¹n kiÓm tra server\nHiÖn t¹i cã <color=red>"..GetPlayerCount().." <color>ng­êi ch¬i ®ang trùc tuyÕn.<color>"
	local Opt = {
		{"Khãa nh©n vËt t¹m thêi (click khái game)",tbGM.Option,{self,2}},
		{"Më khãa cho nh©n vËt t¹m thêi (unband)",tbGM.Option,{self,5}},
		{"Khãa tµi kho¶n nh©n vËt vÜnh viÔn (nhËp tªn nh©n vËt)",tbGM.Option,{self,8}},
		{"Më khãa cho tµi kho¶n bÞ block vÜnh viÔn (nhËp tªn tµi kho¶n)",tbGM.Option,{self,11}},
		{"KÐo nh©n vËt ®Õn täa ®é cña GM",tbGM.Option,{self,3}},
		{"§­a GM ®Õn n¬i Èn trèn cña nh©n vËt",tbGM.Option,{self,7}},
		{"CÊm chat nh©n vËt (t¹m thêi)",tbGM.Option,{self,4}},
		{"Cho phÐp nh©n vËt chat b×nh th­êng (unlock chat)",tbGM.Option,{self,6}},
		{"CÊm chat nh©n vËt vÜnh viÔn",tbGM.Option,{self,9}},
		{"Cho phÐp nh©n vËt chat b×nh th­ëng vÜnh viÔn (unlock chat)",tbGM.Option,{self,12}},
		--{"NhËn c¸c lo¹i trang bÞ, vµ khÝ, trang søc xanh theo hÖ",tbGM.Option,{self,20}},
		--{"Trë l¹i trang ®Çu tiªn",tbGM.MainSay},
		{"KÕt thóc ®èi tho¹i "},
	}
	CreateNewSayEx(szTitle,Opt)
end
------------------------------------------------------------------------------------------------------------------------------------------------
function tbGM:GMPower()
local szTitle = "<npc><color=gold>GM: <color>Chµo mõng b¹n ®Õn víi vâ l©m TiÓu Sö <pic=0>  <color=red><color> <color=green>volamtieusu.com<color> .\nNh÷ng chøc n¨ng bªn d­íi cã thÓ gióp b¹n kiÓm tra server\nHiÖn t¹i cã <color=red>"..GetPlayerCount().." <color>ng­êi ch¬i ®ang trùc tuyÕn.<color>"
		local opt = 
	{
		{"Th«ng b¸o kªnh hÖ thèng dµnh cho GM",tbGM.Msg2World}, 
		{"TriÖu tËp tÊt c¶ c¸c nh©n vËt ®ang trùc tuyÕn",tbGM.CallAllPlayers},
		{"KÕt thóc ®èi tho¹i "},
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
				Msg2Player("B¹n ®­îc <color=orange>GM<color> triÖu tËp.")
			else
				break
			end
		end
		PlayerIndex = gmrole;
		Msg2Player(format("B¹n ®· triÖu tËp thµnh c«ng :<color=red> [%d]<color>  ng­êi ch¬i vÒ MAP :<color=pink> [%d]<color>  täa ®é:<color=Green> [%d.%d]",count,MapId,nX,nY))
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
Say("CÇn Ýt nhÊt <color=red>30 chç trèng hµnh trang<color> míi cã thÓ nhËn trang bÞ. H·y s¾p xÕp l¹i hµnh trang ! ") 
return 
end 
	local TAB_HE = {
		"NhËn trang bÞ HÖ Kim/hevukhi",
		"NhËn trang bÞ HÖ Méc/hevukhi",
		"NhËn trang bÞ HÖ Thñy/hevukhi",
		"NhËn trang bÞ HÖ Háa/hevukhi",
		"NhËn trang bÞ HÖ Thæ/hevukhi",
		"KÕt thóc ®æi tho¹i/no",}
	Say("Chän hÖ  : ",6,TAB_HE[1],TAB_HE[2],TAB_HE[3],TAB_HE[4],TAB_HE[5],TAB_HE[6])
end
function hevukhi(sel)
	local TAB_DO = {
		"NhËn vò khÝ/vukhi",
		"NhËn §å N÷/dobonu",
		"NhËn §å Nam/dobonam",
		"NhËn trang søc/nhandaychuyen",
		"KÕt thóc ®æi tho¹i/no",}
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
		"NhËn vò khÝ KiÕm/laydoxanh",
		"NhËn vò khÝ §ao/laydoxanh",
		"NhËn vò khÝ Bæng/laydoxanh",
		"NhËn vò khÝ Th­¬ng/laydoxanh",
		"NhËn vò khÝ Chïy/laydoxanh",
		"NhËn vò khÝ Song §ao/laydoxanh",
		"NhËn vò khÝ Phi Tiªu/laydoxanh",
		"NhËn vò khÝ Phi §ao/laydoxanh",
		"NhËn vò khÝ Tô TiÔn/laydoxanh",
		"KÕt thóc ®æi tho¹i/no",}
	Say("NhËn ®å vò khÝ ",11,TAB_DOXANH[1],TAB_DOXANH[2],TAB_DOXANH[3],TAB_DOXANH[4],TAB_DOXANH[5],TAB_DOXANH[6],TAB_DOXANH[7],TAB_DOXANH[8],TAB_DOXANH[9],TAB_DOXANH[10])
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
	AskClientForString("UnlockPlayer","",1,999999999,"Tªn Tµi Kho¶n")
end


function tbGM:SendMsgToPlayer()
	AskClientForString("Input_String","",1,9999999999,"Th«ng b¸o muèn nh¾n")
end

function Input_String(nVal)
	Msg2SubWorld(format("<color=yellow>%s<color>",nVal))
end


function UnlockPlayer(zVar)
	local IsBand = server_getdata(tbGM.szFile,"ACCOUNT_BAND_FORVER",zVar);
	if not IsBand or IsBand == "" then 
		Msg2Player("Account nµy ko bÞ band vÜnh viÔn")
		return
	end
	server_setdata(tbGM.szFile,"ACCOUNT_BAND_FORVER",zVar,"")
	server_savedata(tbGM.szFile);
	Msg2Player("B¹n ®· më kháa band vÜnh viÔn cho account:<color=orange> "..zVar.."")
end

function goiclient()
		AskClientForString("InputNamePlayer", "", 1, 999999999, "Tªn Nh©n VËt");
end

function InputNamePlayer(nVar)
	local gmrole = PlayerIndex
	local nId = tbGM:_GetTask(3010);
	if nId == 5 then 
		if not tbGM.ListName[nVar] then 
			Msg2Player("Account nµy ko bÞ band.");
			return
		end
		
		if not tbGM.ListBand[tbGM.ListName[nVar]] then 
			Msg2Player("Account nµy ko bÞ band.");
			return
		end
		
		tbGM.ListBand[tbGM.ListName[nVar]] = nil
		Msg2Player(format("B¹n ®· më kháa band cho account:<color=orange> %s",tbGM.ListName[nVar]))
		return
	end
	
	if not tbGM.ListPlayer[nVar] then 
		Msg2Player("Tªn nµy ko tån t¹i trong hÖ thèng cña<color=orange> GM.");
		return
	end
	
	local nMapId,nX,nY = GetWorldPos();	
	local szAccount = tbGM.ListPlayer[nVar].szAccount;
	if nId == 1 then ---account
		local szMsg = format("Tªn nh©n vËt: <color=orange>[%s]<color> - Tªn Account: <color=green>%s<color>",nVar,tbGM.ListPlayer[nVar].szAccount);
		Msg2Player(szMsg);
	elseif nId == 2 then --band nh©n vËt
		tbGM:BandLoginServer(nVar);
	elseif nId ==  3 then --di chuyÓn nh©n vËt.
		Msg2Player(format("B¹n ®· triÖu håi nhËn vËt: <color=orange>%s",nVar))
		PlayerIndex = tbGM.ListPlayer[nVar].PlayerIdx;
			local szName = GetName()
			NewWorld(nMapId,nX,nY);
			Msg2Player("B¹n ®· ®­îc<color=orange> GM<color> triÖu håi.")
	elseif nId == 4 then --ch­a biet
		Msg2Player(format("<color=green>B¹n ®· cÊm nh©n vËt:<color=orange> %s <color>nai chuyÖn.",nVar));
		PlayerIndex =  tbGM.ListPlayer[nVar].PlayerIdx;
			local szName = GetName();
			SetChatFlag(1);
			Msg2Player("<color=orange>GM <color>®· cÊm tr¹ng th¸i nai chuyÖn cña b¹n.")
			tbGM.MuteChat[szName] = 1;
	elseif nId == 6 then 
		Msg2Player(format("B¹n ®· më khãa ch¸t cho nh©n vËt:<color=orange> %s",nVar))
		PlayerIndex = tbGM.ListPlayer[nVar].PlayerIdx;
		if tbGM.MuteChat[nVar] then 
				SetChatFlag(0);
				Msg2Player("<color=orange>GM <color> ®· më khãa cÊm ch¸t cho b¹n.");
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
			Msg2Player("B¹n bÞ <color=orange>GM <color> cÊm chat m·i m·i")
			PlayerIndex = gmrole;
			Msg2Player(format("B¹n ®· cÊm chat nh©n vËt<color=orange> %s <color>vÜnh viÔn.",Name))
		else
			PlayerIndex = gmrole;
			Msg2Player("Tªn nh©n vËt kh«ng tån t¹i.");
		end
	elseif nId == 12 then 
		server_loadfile(tbGM.szFile);
		local IsBand = server_getdata(tbGM.szFile,"ACCOUNT_BAND_CHAT",nVar);
		if not IsBand or IsBand == "" then 
			Msg2Player("<color=green>Nh©n vËt (tµi kho¶n) nµy kh«ng b~ khãa.")
			return
		end
		
		PlayerIndex = tbGM.ListPlayer[nVar].PlayerIdx;
		if PlayerIndex > 0 then 
				server_setdata(tbGM.szFile,"ACCOUNT_BAND_CHAT",nVar,"");
				server_savedata(tbGM.szFile);
				SetChatFlag(0);
				Msg2Player("B¹n ®· ®­îc <color=orange>GM <color> më khãa ch¸t vÜnh viÔn")
				PlayerIndex = gmrole;
				Msg2Player("B¹n ®· më khãa ch¸t vÜnh viÔn cho nh©n vËt:<color=orange> "..nVar.."");
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
			local zFaction = "Ch­a gia nhËp m«n ph¸i"
			if sex == 0 then sex = "Nam" else sex = "N÷" end --ktra lai khi test ko nho 0 la nam hay 1 la nam
			if Faction == 0 then zFaction = "ThiÕu L©m" 
			elseif Faction == 1 then zFaction = "Thiªn V­¬ng"
			elseif Faction == 2 then zFaction = "§­êng M«n" 
			elseif Faction == 3 then zFaction = "Ngò §éc" 
			elseif Faction == 4 then zFaction = "Nga My" 
			elseif Faction == 5 then zFaction = "Thóy Yªn" 
			elseif Faction == 6 then zFaction = "C¸i Bang" 
			elseif Faction == 7 then zFaction = "Thiªn NhÉn" 
			elseif Faction == 8 then zFaction = "Vâ §ang" 
			elseif Faction == 9 then zFaction = "C«n L«n" 
			elseif Faction == 10 then zFaction = "Hoa S¬n"
			end
			PlayerIndex = gmrole;
			local zMsgTalk = format("<color=Green>Th«ng tin nh©n vËt<color> :Tªn nh©n vËt :<color=orange> %s<color> --- ID Tµi kho¶n : <color=red>( %s ) <color>\nGiíi tÝnh:<color=Red> %s <color>- M«n Ph¸i :<color=Yellow> %s<color>\nCÊp ®é: <color=red>%d<color>\nMap:<color=orange> %d <color>- täa ®é:<color=green> [%d,%d] ",nVar,zAccount,sex,zFaction,CurLevel,nMap,floor(nX/8),floor(nY/16));
			if zMsgTalk ~= "" then 
				Say(zMsgTalk,0);
			else
				Msg2Player("<color=orange>GM<color> : B¹n vui lßng kiÓm tra l¹i th«ng tin nhËp vµo cña nh©n vËt<color=orange> "..nVar.." player ")
			end
		else
			PlayerIndex = gmrole;
			Msg2Player(format("<color=orange>GM<color>: Cã thÓ b¹n ®· nhÇm tªn nh©n vËt :<color=orange>[%s]<color> kh«ng cã trong server.",nVar))
		end
		
	end
end

--kick nv out
function tbGM:BandLoginServer(nVar)
	Msg2Player(format("B¹n ®· b¾n nh©n vËt<color=orange> %s<color> account:<color=red> %s<color> ra khái server.",self.ListPlayer[nVar].szName,self.ListPlayer[nVar].szAccount));
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
	Msg2Player(format("B¹n ®· b¾n nh©n vËt<color=orange> %s <color>account:<color=orange> %s <color>ra khái server.",self.ListPlayer[nVar].szName,self.ListPlayer[nVar].szAccount));
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
	tbGM:askStringInput("GetNamePlayer","§iÒn Tªn Nh©n VËt");
end

function GetNamePlayer(szVar)
	if not tbGM.ListPlayer[szVar] then 
		Msg2Player("<color=orange>Nh©n vËt nµy kh«ng cã trong server hoÆc kh«ng tån t¹i trong hÖ thèng d÷ liÖu.")
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
	
	local szTitle = "<npc><color=gold>GM: <color>Chµo mõng b¹n ®Õn víi hÖ thèng <color=red>Vâ L©m TruyÒn Kú<color> <color=green>Cöu Niªn T­¬ng Phïng<color> .\nNh÷ng chøc n¨ng bªn d­íi cã thÓ gióp b¹n kiÓm tra server\nHiÖn t¹i cã <color=red>"..GetPlayerCount().." <color>ng­êi ch¬i ®ang trùc tuyÕn.<color>"
		local Opt = {};
	tinsert(Opt,{"TÆng tiÒn v¹n l­îng cho nh©n vËt",self.option,{self,1}});
	tinsert(Opt,{"TÆng trang bÞ (GoldItem) cho nh©n vËt (10)",self.option,{self,2}});
	tinsert(Opt,{"TÆng vËt phÈm (questkey) cho nh©n vËt (4 417 - tiÒn ®ång)",self.option,{self,3}})
	tinsert(Opt,{"TÆng vËt phÈm (magicscript) cho nh©n vËt (6 1 13)",self.option,{self,4}})
	tinsert(Opt,{"KÕt thóc ®èi tho¹i."});
	CreateNewSayEx(szTitle,Opt)
end



function tbGM:option(nSel)
	SetTaskTemp(1,nSel)
	self:_SetTask(3012,nSel)
	SetTaskTemp(2,0)
	if (nSel == 1) then --tÆng ti?n.
		self:askStringInput("GiveMoneyToPlayer","Sè TiÒn cho");
	elseif (nSel == 2) then -- tÆng trang b~
		self:askNumberInput("GiveTrangBi","Id Trang BÞ");
	elseif (nSel == 3 or nSel == 4) then -- tÆng vËt phÈm
		self:askNumberInput("GiveVatPham","Id VËt PhÈm");
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
		Say("B¹n cã ch¾c lµ muèn cho nh©n vËt<color=orange> "..IsMoney.."<color> l­îng",2,"Ta ch¾c ch¾n/#GiveMoneyToPlayer(IsMoney)","§Ó ta suy nghÜ l¹i/#cancel(count)")
	elseif GetTaskTemp(3) > 0 and GetTaskTemp(2)  == 1 then 
		PlayerIndex = tbGM.ListPlayer[tbGM.ListGift[1]].PlayerIdx;
		local Name = GetName()
		Earn(Money)
		Msg2Player("B¹n ®­îc<color=green> GM<color> tÆng :<color=orange> "..Money.." <color>l­îng ")
		PlayerIndex = gmrole;
		Msg2Player("B¹n tÆng tiÒn cho nh©n vËt<color=orange> "..Name.."<color> lµ<color=yellow> "..Money.."<color> l­îng")
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
	Msg2Player(format("B¹n nhËn ®­îc trang bÞ: <color=orange>%s <color>do<color=green> GM<color> tÆng.",ItemName))
	PlayerIndex = gmrole;
	Msg2Player(format("B¹n ®· tÆng trang bÞ:<color=orange> %s<color> cho nh©n vËt :<color=green> %s",ItemName,tbGM.ListGift[1]))
	SetTaskTemp(2,0) 
	tbGM.ListVar[1] = nil;
	tbGM:_SetTask(3012,0)
end

--VËt PhÈm
function GiveVatPham(szVar)
	local gmrole = PlayerIndex;
	szVar = tonumber(szVar)
	g_AskClientNumberEx(0,2000,"NhËp sè l­îng",{tbGM.AddItemByAmount,{tbGM,gmrole,tbGM.ListGift[2],szVar}})
end

function tbGM:AddItemByAmount(gmrole,playeridx,szVar,nAmount)
	ItemName,Genre,Detail,Particular,id2,id3,id4 = self:getProp(szVar);
	PlayerIndex = playeridx;
	if (CalcFreeItemCellCount() < nAmount + 1) then 
		PlayerName = GetName()
		Talk(1,"",format("B¹n kh«ng cã ®ñ<color=yellow>  [%d] <color> « trèng trong hµnh trang.",nAmount + 1))
		PlayerIndex = gmrole;
		Msg2Player(format("Nh©n vËt<color=orange> %s <color>kh«ng cã ®ñ <color=yellow> [%d]<color> « trèng trong hµnh trang.",PlayerName,nAmount + 1))
		return
	end

	if nAmount > 0 then 
		for i=1,nAmount do 
			AddItem(Genre,Detail,Particular,id2,id3,id4);	
		end
		Msg2Player(format("B¹n nhËn ®­îc VËt PhÈm:<color=orange> %s <color>sè l­îng:<color=yellow> %d <color>tõ <color=green> GM<color> tÆng.",ItemName,nAmount))
		PlayerIndex = gmrole;
		Msg2Player(format("B¹n ®· tÆng vËt phÈm :<color=orange> %s <color>sè l­îng :<color=yellow> %d<color> cho nh©n vËt : <color=green>%s",ItemName,nAmount,self.ListGift[1]))
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
			 szName = TabFile_GetCell("QUESTKEY",nRow,"Ãû³Æ");
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
			 szName = TabFile_GetCell("MAGIC",nRow,"Ãû³Æ");
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
			szName = TabFile_GetCell("ITEM",nRow,"Ãû³Æ");
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
