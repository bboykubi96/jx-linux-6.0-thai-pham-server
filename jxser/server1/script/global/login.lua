Include("\\script\\worldrank\\vngglobalvar.lua")
Include("\\script\\worldrank\\vngtop10.lua")
Include("\\script\\worldrank\\xephang.lua")
IncludeLib("TIMER")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\lib\\objbuffer_head.lua") 
Include("\\script\\global\\login_head.lua")
Include("\\script\\activitysys\\config\\1008\\extend.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\gm_tool\\quanly.lua")
--================================================================
Include("\\script\\script_protocol\\protocol_def_c.lua")
IncludeLib("TONG")
--------test
IncludeLib("RELAYLADDER");
IncludeLib("FILESYS")
Include("\\script\\vng_lib\\files_lib.lua")
--Include("\\script\\global\\jxprivate\\xephang\\top.lua") 
--Include("\\script\\global\\jxprivate\\xephang\\bangxephang.lua") 
-----------------------

Include("\\script\\global\\login_old.lua")	
Include("\\script\\missions\\leaguematch\\wlls_login.lua")	--WLLSÎäÁÖÁªÈü
Include("\\script\\misc\\extpoint_loginmsg\\login_msg.lua")
Include("\\script\\global\\offline_login.lua")	
Include("\\script\\global\\recordplayerinfo.lua")
Include("\\script\\nationalwar\\login.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_resetbase.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include ("\\script\\global\\login_hint.lua")	
--================================================================
Include("\\script\\global\\topall.lua")
Include("\\script\\activitysys\\g_activity.lua")	
Include("\\script\\global\\g7vn\\g7quanly.lua")
Include("\\script\\global\\g7vn\\g7tichluyvip.lua")
Include("\\script\\miniskill\\init_miniskill.lua")	

IncludeLib("TITLE");
if (GetProductRegion() ~= "vn") then
	Include("\\script\\global\\chuangong_login.lua")
	Include("\\script\\task\\lv120skill\\head.lua")	
	
	Include("\\script\\battles\\battle_login.lua")	
end

if (GetProductRegion() == "cn_ib") then
	Include("\\script\\misc\\spreader\\emigration.lua")
	Include("\\script\\misc\\lost_item\\takelostitem.lua")
	Include([[\script\item\ib\tishenzhiren.lua]])	
	Include("\\script\\item\\ib\\zimudai.lua");
end

Include("\\script\\tong\\tong_login.lua");
Include("\\script\\item\\tianziyuxi.lua");	
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\misc\\eventsys\\type\\player.lua")

--tinhpn 20100817: Online Award
Include("\\script\\bonus_onlinetime\\head.lua")

--tinhpn 20110223:Reset pass ruong
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\vng_feature\\top10\\vngtop10.lua");

Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\global\\g7vn\\limitaccountperip.lua");
--Include("\\script\\t9team\\t9_hwid_head.lua");

function main(bExchangeIn)

--dofile("script/global/login.lua")

--XepHang:LuuDSNhanVat(GetName(),ST_GetTransLifeCount(),GetLevel(),GetExtPoint(),GetExpPercent(),check_faction2(),GetAccount())
--XepHang:SapXepTopToanServer()
--XepHang:LuuDSXepHangToanServer()
--XepHang:Top10Server()
--XepHang:TinhLucXH(GetName()) --Cap Nhat Tinh Luc 1 Ngay 1 Lan
--XepHang:TaiDanhSachTopToanServer()
--anti check chong gia client
--if GetAccount()=="boquyx123" then
	--TM_SetTimer( 3 * 18,116,1,0);
	--local handle = OB_Create()
	--ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, 1)
	--ScriptProtocol:SendData("emSCRIPT_PROTOCOL_KICHCLIENT", handle)
	--OB_Release(handle)
--	PlayerList:AddPlayer(PlayerIndex)
	--NewWorld(53,200*8,200*16)
--end
--SetTask(5333,0)
--check event tren 500 moi hien danh sach an event


	--	if (LimitAccountPerIP:Login() == 1) then
--OfflineLive(PlayerIndex)
		--	KickOutSelf();
		--	return
	--	end;
		local szTongName, nTongID = GetTongName();
if szTongName~=nil and szTongName~="" then
	if TONG_GetMoney(nTongID)>0 then
	
--	TONG_ApplyAddMoney(nTongID, -(TONG_GetMoney(nTongID)))
	end
end
		SetTask(5076,1) -- out ra vao lai k cho danh
		SetTask(5077,0) -- set danh chan ve gia tri 0
		SetTask(5078,0) -- set danh le ve gia tri 0
--Msg2SubWorld("<color=green>Cao thñ <color=yellow>"..GetName().."<color> ®· online")	
SetTask(3077,0)
	--dofile("script/global/login.lua")
--	SetPunish(0);
	ForbidEnmity(0)
		--	DisabledStall(0)
--LoadScript("\\script\\global\\judgeoffline.lua")
	--LoadScript("\\script\\global\\logout.lua")
	--player2hwidin()
	--SetEnergy(0)
	if GetLevel() == 1 and nMapId ~= 53 then
		--NewWorld(53, 1623, 3179)
	end
--if GetLevel()>=80 then
		--	if GetSkillState(1512)>=1 then
	--	RemoveSkillState(1512,20,3,559872000,1) 
	--	RemoveSkillState(1679,20,3,559872000,1) 
	--	end
--	end
	
	
	-----SETTASK EVENT----------
	--SetTask(4993,0)
--SetTask(4994,0)
--SetTask(4998,0)
--SetTask(4999,0)
--	SetTask(4995,0)
	--SetTask(4996,0)
	--SetTask(4997,0)
	
--SetPKFlag(1)
if HaveMagic(361)~=-1 then
	--Msg2Player("aaaaaaaa"..GetSkillState(1078).."")
--	DelMagic(361) 
	end
--	if GetLevel()<150 then
--	local nAddLevel =150 - GetLevel()
--	ST_LevelUp(nAddLevel)
	--end
if GetTask(4990)<1 then
		local nAddLevel =30 - GetLevel()
		ST_LevelUp(nAddLevel)
		SetTask(4990,1)
		local tbAwardgift = {


	--	{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60,nBindState = -2},
	
		{szName="ThÇn Hµnh Phï", tbProp={6,1,1266,1,1},nCount = 1,nBindState = -2,nExpiredTime=7*24*60},
		{szName="Thæ §×a Phï", tbProp={6,1,438,1,0,0},nCount = 1,nBindState = -2,nExpiredTime=7*24*60},
--		{szName="Vò KhÝ T©n Thñ", tbProp={6,1,4460,1,0,0},nCount = 1,nBindState = -2},
--		{szName="Vâ L©m MËt TÞch", tbProp={6,1,26,1,0,0},nCount = 1,nBindState = -2},
		{szName="Tiªn Th¶o Lé ", tbProp={6,1,71,1,0,0},nCount = 5,nBindState = -2},
		{szName="Tiªn Th¶o Lé ", tbProp={6,1,1181,1,0,0},nCount = 2,nBindState = -2},
		{szName="cÈm nang t©n thñ ", tbProp={6,1,4261,1,0,0},nCount = 1,nBindState = -2},
		{szName="Ngùa 6x", tbProp={0,10,2,9,0,0,0},nCount = 1,nBindState = -2},
	--	{szName="Chuyªn dïng cho Phong V©n Háa phßng hoµn", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
--		{szName="mau tk", tbProp={6,1,215,1,0,0},nCount = 2000,nBindState = -2},
--	{szName="KÝch C«ng Trî Lùc Hoµn", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},
	--	{szName="¢m D­¬ng Ho¹t HuyÕt §¬n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},			
	}
	tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng")
	for i = 1,9 do local Index = AddGoldItem(0,176+i) ITEM_SetExpiredTime(Index,60*24*14)  SyncItem(Index) SetItemBindState(Index, -2) end --Kim Phong
		--NewWorld(53, 1626, 3178)
	--	ClearBag()
	--	FuYuan_Start();
			--FuYuan_Add(10000);
		--	AddLeadExp(90000000)
		--	AddRepute(450)
end	
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if GetTask(3907)==1 and nMapId ~= 968 then
	SetFightState(0)
	DisabledUseTownP(0);
	NewWorld(968,1586,3172)
	end
	if  ( nMapId == 162 ) then
			Msg2Player("N¬i ®©y ®å th­îng tuyÕn s¾p trë vÒ thµnh...");
			SetRevPos(19);		
			UseTownPortal();        
	end

	--if nMapId == 53 then
	--	ForbidChangePK(0);
	--	DisabledUseTownP(0)
	--	DisabledStall(0);
	--	ForbidEnmity(0);
	--	ForbitTrade(0);
	--end

	if (GetLevel() < 10 and GetTask(4000) == 0 and CalcFreeItemCellCount() >= 30) then
		local tbAwardTanThu = 
	{	
		
		--{szName = "Ngua tuc suong", tbProp={0,10,2,9,0,0}, nCount=1,nBindState=-2,nExpiredTime=30*24*60},
	--	{szName = "Than hanh phu", tbProp={6,1,1266,1,0,0,0}, nCount=1,nBindState = -2,nExpiredTime=60*24*14},
	--	{szName = "Hoi thanh phu ", tbProp={6,1,438,0,0,0,0}, nCount=1,nExpiredTime=60*24*14,nBindState=-2},
		--{szName = "Lenh Bai Tan Thu", tbProp={6,1,4261,0,0,0,0}, nCount=1,nBindState=-2},
		--{szName = "Tiªn Th¶o Lé", tbProp={6,1,1181,1,0,0,0}, nCount=20,nBindState=-2},
		--{szName = "Vo lam mat tich", tbProp = {6,1,22,1,0,0}, nCount = 5, nBindState = -2},
		--{szName = "Tay tuy kin", tbProp = {6,1,26,1,0,0}, nCount = 5, nBindState = -2},
		--{szName = "Tui mau tan thu", tbProp = {6,1,4335,1,0,0}, nCount = 1, nBindState = -2},
		--{szName = "Dai thanh bi kip", tbProp = {6,1,2424,1,0,0}, nCount = 1, nBindState = -2},
		--{szName="Thñy Tinh",tbProp={4,238,1,1,0,0,0},nCount=1,nBindState = -2},
		--{szName="Thñy Tinh",tbProp={4,239,1,1,0,0,0},nCount=1,nBindState = -2},
		--{szName="Thñy Tinh",tbProp={4,240,1,1,0,0,0},nCount=1,nBindState = -2},
		--{szName="Tóc S­¬ng",tbProp={0,10,2,9,0,0,0},nCount=1,nBindState = -2},
		--{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0,0},nCount=6,nBindState = -2},


	}
	tbAwardTemplet:Give(tbAwardTanThu, 1, {"NhanHoTroTanThu", "NhanHoTroTanThu"})
	--SetTask(4000,1)
--	AddLeadExp(999999999)
	end
	if GetLevel() < 10 then
		n = 10 - GetLevel()
		for i=1,n do
			AddOwnExp(1000000)
		end
AddRepute(500)

end

    --   kickaccount()


	--XHDauHoi()

	--UseSilver(1,1,1)
	--SaveNow();
	--local check = checkjointk()
	--if check == 0 then
		--Say("0")
	--else 
		--Say("1")
	--end
	-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
		--Msg2SubWorld("<color=yellow>®¹i hiÖp<color><color=green> "..GetName().."<color> ®· online !.")
		 local tiendong =CalcItemCount(3,4,417,1,1) +  CalcItemCount(4,4,417,1,1) + CalcItemCount(9,4,417,1,1) + CalcItemCount(10,4,417,1,1)
		 local kimnguyenbao =CalcItemCount(3,4,343,1,1) +  CalcItemCount(4,4,343,1,1) + CalcItemCount(9,4,343,1,1) + CalcItemCount(10,4,343,1,1)
	logplayer("dulieu/thongtintaikhoan-nhanvat.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] - TiÒn §ång : [%s] - KNB : [%s]        ®¨ng nhËp thµnh c«ng ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),tiendong,kimnguyenbao))
	
	server_loadfile("\\dulieu\\bandbygm.dat");
	local IsBandForever = server_getdata("\\dulieu\\bandbygm.dat","ACCOUNT_BAND_FORVER",GetAccount())
	if IsBandForver ~= nil or IsBandForever ~= "" then 
		OfflineLive(PlayerIndex)
		KickOutSelf();
		return
	end
	tbGM:RemoveInfo(GetName())
	tbGM:KickYourAss(GetAccount())
	tbGM:GetInfoPlayer(GetName());--luu info by gm

	-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--	if OnlineAward_Check_TransferLife() == 0 then
		FuYuan_Start();
		Msg2Player("Ngµi cã thÓ nhËn lÊy phÇn th­ëng online mçi ngµy!")
		OnlineAward_ResetDaily()
		OnlineAward_SummaryOnlineTime()
		OnlineAward_StartTime()
	--end
	PlayerList:AddPlayer(PlayerIndex)
	
	if (TB_LOGIN_FUN[0]) then
		for i = 1, getn(TB_LOGIN_FUN[0]) do
			local func = TB_LOGIN_FUN[0][i]
			if (func) then
				func(bExchangeIn)
			end
		end
	end
	
	EventSys:GetType("OnLogin"):OnPlayerEvent(0, PlayerIndex, bExchangeIn)
	G_ACTIVITY:OnMessage("OnLogin", PlayerIndex)
	
	for i = 1, getn(TB_LOGIN_FILEFUN) do
		local reg = TB_LOGIN_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex, bExchangeIn)
	end
	TaskManager:ResetUseGroup()
	LoginDelaySync(1)  -- 1 ±íÊ¾ÐèÒªÑÓÊ±Í¬²½Êý¾Ý, 0 ±íÊ¾²»ÐèÒª
	
	if HaveCommonItem(6,1,16)<1 then
		AddItem(6,1,16,1,0,0,0)
	--if GetLevel()>=60 then
	--RemoveSkillState(1512,20,3,559872000,1) 
	--RemoveSkillState(1679,20,3,559872000,1) 
	end
	
		if GetSkillState(1682)>=1 then
		 local ntime2 = 18*60*60*24*10
		Title_AddTitle(236, 2, ntime2)
		Title_ActiveTitle(236)
	elseif GetSkillState(1683)>=1 then
		 local ntime2 = 18*60*60*24*10
		Title_AddTitle(237, 2, ntime2)
		Title_ActiveTitle(237)
	elseif GetSkillState(1684)>=1 then
		 local ntime2 = 18*60*60*24*10
		Title_AddTitle(238, 2, ntime2)
		Title_ActiveTitle(238)
	elseif GetSkillState(1685)>=1 then
		 local ntime2 = 18*60*60*24*10
		Title_AddTitle(239, 2, ntime2)
		Title_ActiveTitle(239)
	end
	SetTask(806, 10)--dang online

		ResetBox:AnnounceResetBoxDate()
	XepHang11();
	
	tbTop10:SapXepDSXepHang() --bat
	tbTop10:LuuDSNhanVat() --bat
	for i=708,717 do
		if (HaveMagic(i) >=1) then -- script viet hoa By http://tranhba.com  nhÊt ®Þnh ph¶i kh«ng cã kü n¨ng ®Ých míi cho kü n¨ng 
			if GetCurrentMagicLevel(i)<10 then
			--	AddMagic(i,10) -- script viet hoa By http://tranhba.com  t¸n hoa phiªu [341]#60 cÊp # 
			end
		end 
	end
	--	if (GetInfo("hwidcount") > 8) then
	--		OfflineLive(PlayerIndex)
	--		KickOutSelf()
	--		return
	--	end
	--	if (GetInfo("iplan") > 16) then
	--		OfflineLive(PlayerIndex)
	--		KickOutSelf()
	--		return
	--	end
	--end
	add_timer_mns()
end
-------------------------------------------

function main_delaysync(nStep)	
	if (nStep < 1 or nStep > getn(TB_LOGIN_FUN)) then
		print("main_delaysync error: "..nStep.." funccount:"..getn(TB_LOGIN_FUN));
		return 1;
	end
	
	--ÔËÐÐµÚnStep´ÎÑÓÊ±Í¬²½µÄËùÓÐº¯Êý
	if (TB_LOGIN_FUN[nStep]) then
		for i = 1, getn(TB_LOGIN_FUN[nStep]) do
			if (TB_LOGIN_FUN[nStep][i]) then TB_LOGIN_FUN[nStep][i]() end
		end
	end



	if (nStep < getn(TB_LOGIN_FUN)) then
		return 0
	else
		return 1
	end
end
tbItemBag = {
	["LÖnh bµi GM"] = 1,
	["LÖnh Bµi T©n Thñ"] = 1,
	["Tói M¸u T©n Thñ"] = 1,
	["ThÇn Hµnh Phï"] = 1,
	["Håi thµnh phï (lín) "] = 1,
	["Håi thµnh phï (nhá) "] = 1,
	["Thæ ®Þa phï (sö dông v« h¹n) "] = 1,
	["Kim Nguyªn B¶o"] = 1,
	["TiÒn ®ång"] = 1,
	
}
function ClearBag()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		local szName = GetItemName(tbRoomItems[i])
		if not tbItemBag[szName] or tbItemBag[szName] ~= 1 then
			RemoveItemByIndex(tbRoomItems[i])
		end
	end
end
function no()
	if chuangong_login ~= nil then
		chuangong_login()
	end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return 1
	end
	return 0
end

function check_faction2() 
if (GetTask(7) >= 10*256) and (GetTask(7) ~= 75*256) then -- script viet hoa By http://tranhba.com  ThiÕu L©m hoÆc m«n ph¸i nµy xuÊt s­ 
return 0 
elseif (GetTask(3) >= 10*256) and (GetTask(3) ~= 75*256) then -- script viet hoa By http://tranhba.com  Thiªn v­¬ng hoÆc m«n ph¸i nµy xuÊt s­ 
return 1
elseif (GetTask(10) >= 10*256) and (GetTask(10) ~= 75*256) then -- script viet hoa By http://tranhba.com  n¨m ®éc hoÆc m«n ph¸i nµy xuÊt s­ 
return 3
elseif (GetTask(2) >= 10*256) and (GetTask(2) ~= 75*256) then -- script viet hoa By http://tranhba.com  §­êng m«n hoÆc m«n ph¸i nµy xuÊt s­ 
return 2
elseif (GetTask(6) >= 10*256) and (GetTask(6) ~= 75*256) then -- script viet hoa By http://tranhba.com  thóy khãi hoÆc m«n ph¸i nµy xuÊt s­ 
return 5
elseif (GetTask(1) >= 10*256) and (GetTask(1) ~= 75*256) then -- script viet hoa By http://tranhba.com  Nga Mi hoÆc m«n ph¸i nµy xuÊt s­ 
return 4
elseif (GetTask(8) >= 10*256) and (GetTask(8) ~= 75*256) then -- script viet hoa By http://tranhba.com  C¸i Bang hoÆc m«n ph¸i nµy xuÊt s­ 
return 6 
elseif (GetTask(4) >= 10*256) and (GetTask(4) ~= 75*256) then -- script viet hoa By http://tranhba.com  ngµy nhÉn hoÆc m«n ph¸i nµy xuÊt s­ 
return 7
elseif (GetTask(9) >= 10*256) and (GetTask(9) ~= 75*256) then -- script viet hoa By http://tranhba.com  C«n L«n hoÆc m«n ph¸i nµy xuÊt s­ 
return 9 
-----------------------Hoa Son
elseif (GetTask(11) >= 10*256) and (GetTask(9) ~= 75*256) then -- script viet hoa By http://tranhba.com  C«n L«n hoÆc m«n ph¸i nµy xuÊt s­ 
return 11 
----------------------------------
elseif (GetTask(5) >= 10*256) and (GetTask(5) ~= 75*256) then -- script viet hoa By http://tranhba.com  Vâ §­¬ng hoÆc m«n ph¸i nµy xuÊt s­ 
return 8
else -- script viet hoa By http://tranhba.com  b¹ch tªn ®Ých , kh«ng cÇn ®æi míi 
SetLastFactionNumber(-1) 
return 20 
end 
end; 
function XoaXepHang()
	--for i=10277,10288 do
	for i=10001,10300 do
		Ladder_ClearLadder(i)
		--print(i)
	end
	Ladder_ClearLadder(10119)
	Ladder_ClearLadder(10250)
	Ladder_ClearLadder(10279)
end

