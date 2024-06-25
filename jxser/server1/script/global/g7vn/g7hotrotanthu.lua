IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\hotrothem.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
local tbGMAccount = {"volam1cham","","","","","",""} TENADMIN ={{"VLHKMP",99},{"",99},{"",99},{"",99},{"",99},{"",99},{"",99},{"",99}}
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function main()
	
	dofile("script/global/g7vn/g7hotrotanthu.lua")
	--if GetTask(5969)==3 and HaveMagic(1536)==-1 then ---- mo skill cl3
	--DelMagic(1534)
	--DelMagic(1535)
	--AddMagic(1536,20)
	--WriteLogPro("dulieu/themskill3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da thhem skill cl3\n");	
	--end
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
if (nDate >= 201903251635) and (nDate <= 202104241000) and (GetAccount()~="luuhuanvlv201902" ) then
Say("H·y Chê §Õn 10h00 Server Míi ChÝnh Thøc Khai Më NhÐ")
return 1;
end

	local playerG7Count = GetPlayerCount() + 1
	local szTitle = " Hoan nghªnh mäi ng­êi ®Õn víi <color=yellow>http://volamhoainiemus.com<color>"
	local Opt = 
	{
		--{"NhËp giftcode chia sÏ 5 b×nh tiªn th¶o lé.", nhapgifcodethem},
		--{"NhËn ®Òn bï 8 TTL ®Æc biÖt sù cè 26-12", g7denbu8TTL},	
	--	{"NhËn §å Test", tbhoangkimbk},
	--{"NhËn M¶nh Tµng B¶o §å", layevent},
--{"CÊp 200.", NhanDiemKinhNghiem},
	--	{"Hç Trî T©n Thñ Lªn CÊp 114 ( Gi¸ 299 Xu)", NhanDoLongDao},
	--	{"NhËn §å Hç Trî T©n Thñ", NhanHoTroTanThu},
	--	{"NhËn L¹i LÖnh Bµi T©n Thñ + Thæ §Þa Phï", lenhbaitanthu},
--		{"NhËn Set HKMP ", sethkmp},
--		{"NhËn Trang BÞ HKMP", doimanhrahkmp},
--		{"NhËn Hç Trî T©n Thñ", NhanHoTroThienKiem},
--		{"NhËn VËt PhÈm Hæ Trî", NhanDoHoTroTanThu},
	--	{"NhËn Tµi L·nh §¹o + Danh Väng + Phóc Duyªn",lanhdaophucduyen},
	--	{"NhËn C¸c Lo¹i Ngùa", nhancacloaingua},
	--{"NhËn TiÒn §ång Free", LayTienDOngtest},
--	{"NhËn Set HKMP ", sethkmp},
----------{"Mua Ho¸n Binh Phï (100 Xu)", muahoanbinh},
---------{"Dïng Ho¸n Binh Phï", testcodeadmin},
		{"§çi Tªn Nh©n VËt Game (100 Xu)", DoiTenNV},
	--	{"Thay §æi Mµu PK.", trangthai1},
		{"Thay §æi Giíi TÝnh (1000 Xu)", chuyen_gt},
	--	{"TÈy tñy Nh©n VËt + Gi¶m PK.",TayTuyFree},
	--	{"Chøc Hç Trî Kh¸c", MenuFree},
	--	{"NhËn Nguyªn LiÖu", tbtim1},
	--{"NhËn Ngùa Vip & Phi Phong (Open SÏ §ãng TÝnh N¨ng Nµy)", NhanNguaVip},
	--{"NhËn Phi Phong", NhanPhiPhong},
		--{"NhËn Sieu Quang Free", NhanPhienVu},

--	{"NhËn Set HKMP ", sethkmp},
		--{"NhËn Tói Tèng Kim", nhantuitongkim},
		--{"XuÊt s­ cÊp 60 + 5 v¹n l­îng ", xuatsu1},	
		--{"NhËn Phong V©n lÖnh bµi <free>", gmnhanphongvanlenhbai},	
		--{"Ngò Hoa LÔ Bao T©n Thñ", tuimautanthu},
		--{"NhËp CODE T©n Thñ mÆc ®Þnh <cò>.", nhapgifcodetanthumoi},
		--{"NhËp CODE T©n Thñ", CODEVIP},	---- code pha thien tram
		--{"NhËn th­ëng ®¹t mèc cÊp 30,40,50,60,90 ... ", gmnhanthuongdatmoc},
	--	{"§iÒu kiÖn thµnh lËp Bang Héi.", gmlapbanghoi},
		--{"Hñy trang bÞ khãa", DisposeItem},	
		--{"Mµu PK", doimau},	
	--	{"NhËn ®iÓm KiÕn ThiÕt (Dµnh Cho Bang Chñ).", kienthiet},
		{"KÕt thóc ®èi tho¹i. ", End},
	}

	local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
			tinsert(Opt, 1, {"Chøc N¨ng Qu¶n Lý GM", ChucNangGM}) 
			break
		end
	end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure == TONG_MASTER) then
		tinsert(Opt, 1, {"NhËn ®iÓm KiÕn ThiÕt (Dµnh Cho Bang Chñ).", kienthiet}) 
	end;
	CreateNewSayEx(szTitle,Opt)
end

function layvatpham() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)
local nItemIndex = AddGoldItem(0, ""..idgq.."")  SyncItem(nItemIndex) 
end
function testcodeadmin_ok()
	local nItemIdx = GetGiveItemUnit(1)
	local nMaCodeItem = ITEM_GetItemRandSeed(nItemIdx);
	local nMaCodeItem2 = ITEM_GetImmediaItemIndex(nItemIdx);
	local nMaCodeItem3 = ITEM_GetItemVersion(nItemIdx);
	local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( nItemIdx );
	local nQuality = GetItemQuality( nItemIdx );
	local arynMagLvl = GetItemAllParams( nItemIdx );
	local nStackCount = GetItemStackCount( nItemIdx );
	local nCurItemQuality	= GetItemQuality(nItemIdx);
	local bindState = GetItemBindState(nItemIdx)
	local nG, nD,nP,nLevel,nHe,nDong2 = GetItemProp(nItemIdx)
	local timeitem = ITEM_GetExpiredTime(nItemIdx)
	local nIdHKMP = GetGlodEqIndex(nItemIdx)
    local nTen=GetItemName(nItemIdx)
	local nRestCount = GetItemAllParams(nItemIdx)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ Ðp")
		return
	end
	
        if  timeitem > 0	then
		Talk(1,"", "Trang bÞ ®ang cã h¹n sö dông, kh«ng thÓ Ðp")
		return
		end	
		if nG == 4 or nG == 6 then
			Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ",0);
			return
		end
		if nQuality ~= 0 then
					Say("chØ ®Æt vµo trang bÞ xanh",0);
			return
		end
		if nDetailType ~= 0 and nDetailType  ~= 1 then
				Say("chØ ®Æt vµo vò khÝ",0);
			return
		end

	local nDetailTypeR = random(0,1)
		local nParticularR = random(0,5)
				if 	nDetailTypeR == nDetailType and nParticularR == nParticular then
			Say("LÇn ho¸n ®æi nµy thÊt b¹i mÊt hÕt nguyªn liÖu xin ®õng n¶n chÝ..",0)
			return
		end
		if 	nDetailTypeR == 1 and nParticularR > 2  then
		Say("LÇn ho¸n ®æi nµy thÊt b¹i mÊt hÕt nguyªn liÖu xin ®õng n¶n chÝ..",0)
		return
		end
		
		AddItemEx(4,nMaCodeItem,nQuality,nGenre,nDetailTypeR,nParticularR,nLevel,nSeries,nLuck,arynMagLvl[1],arynMagLvl[2],arynMagLvl[3],arynMagLvl[4],arynMagLvl[5],arynMagLvl[6],nStackCount)
		local szNews = format("Chóc mõng   <color=green>"..GetName().."<color> ho¸n ®æi trang bÞ xanh<color=cyan> "..nTen.."<color> thµnh c«ng.")
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
function lenhbaitanthu()
	if CalcFreeItemCellCount()<5 then
		Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
		return
	end
	local Index = AddItem(6,1,4261,1,0,0) SetItemBindState(Index, -2)
	local Index = AddItem(6,1,438,1,0,0) SetItemBindState(Index, -2)
end
function doimanhrahkmp()
	local tbSay = {
	"ThiÕu L©m./#doimanhhkmpthieulam()",
"Thiªn V­¬ng./#doimanhhkmpthienvuong()",
"Nga My./#doimanhhkmpngamy()",
"Thuý Yªn./#doimanhhkmpthuyyen()",
"§­êng M«n./#doimanhhkmpduongmon()",
"Trang sau./#doimanhrahkmp2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhrahkmp2()
	local tbSay = {
	"Ngò §éc./#doimanhhkmpngudoc()",
"C¸i Bang./#doimanhhkmpcaibang()",
"Thiªn NhÉn./#doimanhhkmpthiennhan()",
"C«n L«n./#doimanhhkmpconlon()",
"Vâ §ang./#doimanhhkmpvodang()",
"Trang tr­íc./#doimanhrahkmp()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam()
	local tbSay = {
	"Méng Long ChÝnh Hång T¨ng M·o./#doimanhhkmpthieulam_ok(1)",
"Méng Long PhËt Ph¸p HuyÒn Béi./#doimanhhkmpthieulam_ok(4)",
"Méng Long HuyÒn Ti Ph¸t ®¸i./#doimanhhkmpthieulam_ok(3)",
"Méng Long §¹t Ma T¨ng hµi./#doimanhhkmpthieulam_ok(5)",
"Phôc Ma HuyÒn Hoµng Cµ Sa./#doimanhhkmpthieulam_ok(7)",
"Phôc Ma ¤ Kim NhuyÔn §iÒu./#doimanhhkmpthieulam_ok(8)",
"Phôc Ma PhËt T©m NhuyÔn KhÊu./#doimanhhkmpthieulam_ok(9)",
"Phôc Ma Phæ §é T¨ng hµi./#doimanhhkmpthieulam_ok(10)",
"Tø Kh«ng Tö Kim Cµ Sa./#doimanhhkmpthieulam_ok(12)",
"Tø Kh«ng Hé ph¸p Yªu ®¸i./#doimanhhkmpthieulam_ok(13)",
"Tø Kh«ng NhuyÔn B× Hé UyÓn./#doimanhhkmpthieulam_ok(14)",
"Tø Kh«ng Giíi LuËt Ph¸p giíi./#doimanhhkmpthieulam_ok(15)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthienvuong()
	local tbSay = {
	"H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p./#doimanhhkmpthieulam_ok(17)",
"H¸m Thiªn Uy Vò Thóc yªu ®¸i./#doimanhhkmpthieulam_ok(18)",
"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn./#doimanhhkmpthieulam_ok(19)",
"H¸m Thiªn Thõa Long ChiÕn Ngoa./#doimanhhkmpthieulam_ok(20)",
"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i./#doimanhhkmpthieulam_ok(22)",
"KÕ NghiÖp B¹ch Hæ V« Song khÊu./#doimanhhkmpthieulam_ok(23)",
"KÕ NghiÖp HáaV©n Kú L©n Thñ ./#doimanhhkmpthieulam_ok(24)",
"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa./#doimanhhkmpthieulam_ok(25)",
"Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p./#doimanhhkmpthieulam_ok(27)",
"Ngù Long Thiªn M«n Thóc Yªu hoµn./#doimanhhkmpthieulam_ok(28)",
"Ngù Long TÊn Phong Hé yÓn./#doimanhhkmpthieulam_ok(29)",
"Ngù Long TuyÖt MÖnh ChØ hoµn./#doimanhhkmpthieulam_ok(30)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function tinhsuongmax21()
local tab_Content = {
"§­êng M«n Phi Tiªu/#setinhsuongmax1(15)",
"C¸i Bang Rång/#setinhsuongmax1(16)",
"C¸i Bang Bçng/#setinhsuongmax1(17)",
"Thiªn NhÉn KÝch/#setinhsuongmax1(18)",
"Thiªn NhÉn §ao/#setinhsuongmax1(19)",
"Vâ §ang KiÕm/#setinhsuongmax1(21)",
"Vâ §ang QuyÒn/#setinhsuongmax1(20)",
"C«n L«n §ao/#setinhsuongmax1(22)",
"C«n L«n KiÕm/#setinhsuongmax1(23)",
"Hoa S¬n KhÝ T«ng/#setinhsuongmax1(25)",
"Hoa S¬n KiÕm T«ng/#setinhsuongmax1(24)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function setinhsuongmax1(nId)
for i = 6481, 6490 do
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,10*nId+i-10},nQuality=1,nExpiredTime=2*60,nBindState = -2},}, "test", 1);
end
end

function SetNK1Ngay()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#setnguyetkhuyet1(1)",
"ThiÕu L©m Bçng/#setnguyetkhuyet1(2)",
"ThiÕu L©m §ao/#setnguyetkhuyet1(3)",
"Thiªn V­¬ng Chïy/#setnguyetkhuyet1(4)",
"Thiªn V­¬ng Th­¬ng/#setnguyetkhuyet1(5)",
"Thiªn V­¬ng §ao/#setnguyetkhuyet1(6)",
"Nga Mi KiÕm/#setnguyetkhuyet1(7)",
"Nga Mi Ch­ëng/#setnguyetkhuyet1(8)",
"Thóy Yªn §ao/#setnguyetkhuyet1(9)",
"Thóy Yªn Song §ao/#setnguyetkhuyet1(10)",
"Ngò §éc Ch­ëng/#setnguyetkhuyet1(11)",
"Ngò §éc §ao/#setnguyetkhuyet1(12)",
"§­êng M«n Phi §ao/#setnguyetkhuyet1(13)",
"§­êng M«n Ná/#setnguyetkhuyet1(14)",
"Trang sau/nguyetkhuyet2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function nguyetkhuyet2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#setnguyetkhuyet1(15)",
"C¸i Bang Rång/#setnguyetkhuyet1(16)",
"C¸i Bang Bçng/#setnguyetkhuyet1(17)",
"Thiªn NhÉn KÝch/#setnguyetkhuyet1(18)",
"Thiªn NhÉn §ao/#setnguyetkhuyet1(19)",
"Vâ §ang QuyÒn/#setnguyetkhuyet1(20)",
"Vâ §ang KiÕm/#setnguyetkhuyet1(21)",
"C«n L«n §ao/#setnguyetkhuyet1(22)",
"C«n L«n KiÕm/#setnguyetkhuyet1(23)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function setnguyetkhuyet1(nId)
	if CalcFreeItemCellCount() <=20 then
			Talk(1,"","<color=green>§· NhËn Th­ëng hoÆc H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng...!")
			return 1;
		end
for i = 3655, 3664 do
	--local Index = AddGoldItem(0,10*nId+i-10)  ITEM_SetExpiredTime(Index,1*24*60) SyncItem(Index) SetItemBindState(Index, -2)
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,10*nId+i-10},nQuality=1,nExpiredTime=1*24*60,nBindState = -2},}, "test", 1);
end
end

function HoTroTinVat1Ngay()
	if CalcFreeItemCellCount() <=5 then
			Talk(1,"","<color=green>§· NhËn Th­ëng hoÆc H·y §Ó Trèng 5 ¤ Råi NhËn Th­ëng...!")
			return 1;
		end
		tbAwardTemplet:GiveAwardByList({{szName = "TÝn VËt MP",tbProp={6,1,1670,1,1},nCount=1,nExpiredTime=1*24*60},}, "test", 1);
end
function NhanKinhNghiemDuoi194()
local nCureLevel = GetLevel()
local nAddLevel = 194 - nCureLevel
if nCureLevel <194 and GetTask(5969)==1 and GetTask(task_nhankinhnghiem194)==0 then
	ST_LevelUp(nAddLevel)
	SetTask(task_nhankinhnghiem194,1)
	else Say("B¹n §· CÊp 194  hoÆc ®· nhËn råi")
	end
end


function mattichnhanlai()
local nFaction = GetLastFactionNumber()
 if nFaction == 5 then
	 local szTitlezs = "<color=green>Câi Giang Hå MÝnh Ta §éc B­íc<color>\n<color=violet>* * * * <color=fire>§«ng Phuong Gi¸o Chñ<color> * * * * <color>\n<color=yellow> SÏ Gióp Ta Cã §­îc TÊt C¶ <color>"
		local tbOpt =
	{
		{"Thóy yªn Kh«ng Nªn Häc, V× sÏ lµm mÊt kh¶ n¨ng chiÕn ®Êu"},
	}
            CreateNewSayEx(szTitlezs, tbOpt)		
else
if nFaction == 11 then
	 local szTitlezs = "<color=green>Câi Giang Hå MÝnh Ta §éc B­íc<color>\n<color=violet>* * * * <color=fire>§«ng Phuong Gi¸o Chñ<color> * * * * <color>\n<color=yellow> SÏ Gióp Ta Cã §­îc TÊt C¶ <color>"
		local tbOpt =
	{
		{"Ta lµ Vò Hån §¹i §Ó Tö",NhanKyNang1801},
	       {"KÕt thóc ®èi tho¹i."},

	}
            CreateNewSayEx(szTitlezs, tbOpt)		
else

               local szTitlezs = "<color=green>Câi Giang Hå MÝnh Ta §éc B­íc<color>\n<color=violet>* * * * <color=fire>§«ng Phuong Gi¸o Chñ<color> * * * * <color>\n<color=yellow> SÏ Gióp Ta Cã §­îc TÊt C¶ <color>"
		local tbOpt =
	{
		{"NhËn Fee 180 Nµo",NhanKyNang180},
             	{"KÕt thóc ®èi tho¹i."},

	}
            CreateNewSayEx(szTitlezs, tbOpt)
end	
end
end

function NhanKyNang1801()
AddMagic(1986,20) 
end

-----------------------------------------------------------------------------------------------
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370,1986}
function NhanKyNang180()
	local nFaction = GetLastFactionNumber() +1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ Sö Dông MËt TÞch ThÊt TruyÒn")
		return 1;
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20) 
					Talk(1,"","<color=green>"..myplayersex().." §· Häc §­îc Kü N¨ng ThÊt TruyÒn<color> <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Kh«ng ThÓ Häc N÷a")
					return 1;
				end
			end
		end
	end
end
--------------------------------------------------------------------------------------------





function NhanHoTroLaiRuong()

if GetTask(3904)==0 then
local nhanthuong={
--{szName="B¶o R­¬ng Tinh S­¬ng H¹ Giíi",tbProp={6,1,4705,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nBindState = -2},
{szName="Phi phong Ngù Phong",tbProp={0,6036},nQuality=1,nCount=1},
}
tbAwardTemplet:GiveAwardByList(nhanthuong,"PhÇn Th­ëng GiftCode")
SetTask(3904,1)

else Say("Nhµ Ng­¬i §· NhËn Th­ëng Råi")

end


end

function NhanLaiLenhBaiTanThu()

		if CalcFreeItemCellCount() >= 20 then
		
	local Index = AddItem(6,1,4265,1,0,0) SetItemBindState(Index, -2) --Lenh Bai Tan Thu
--	local Index = AddGoldItem(0,3940)  SetItemBindState(Index, -2)
	local Index = AddGoldItem(0,6129)  SetItemBindState(Index, -2)--XÝch Long C©u TruyÒn ThuyÕt

		local Index = AddGoldItem(0,3953)  SetItemBindState(Index, -2)
		local Index = AddGoldItem(0,3991)  SetItemBindState(Index, -2)
		else
			Talk(1,"","<color=green> H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng...!")
		end

end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function nhanhotrotest1()

		if CalcFreeItemCellCount() <=20 then
			Talk(1,"","<color=green>§· NhËn Th­ëng hoÆc H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng...!")
			return 1;
		end

	local tbOpt =
	{
		{"MÆt N¹ 3 CÊp.",nhanmatna3cap},
		{"NhËn 1 Set NguyÖt KhuyÕt Max (24h).",nguyetkhuyetmax24h},
		--{"Trang BÞ Tinh S­¬ng.",tinhsuongtest},
		--{"Trang BÞ DiÖu D­¬ng.",DieuDuongTest},
		--{"Trang BÞ DiÖu D­¬ng Tinh ChÕ.",DieuDuongTest_TinhChe},
	--	{"Level 200.",HoTroLevel},
		{"NhËn BÝ KÝp 21-22-23.",HoTroNhanBiKip2x},
		{"500 tiÒn ®ång. ", laytiendong},
		{"10 ngµn v¹n.", laytienvan},
	 	{"NhËn Ngùa Vip.", LayNguaVip},
	        {"NhËn Ên + Trang Søc Vip.", LayPhiPhongVip},
		{"NhËn 500 Ngäc Linh Hån.", Nhan500NgocLinhHon},
		{"NhËn 500 Ngäc C­êng Hãa Nguyªn LiÖu.", Nhan500NgocCuongHoa},
		{"NhËn 500 B¸ch LuyÖn Thµnh C­¬ng.", Nhan500BachLuyenThanhCuong},
		{"NhËn Tói LÔ Bao Phi Phong CÊp 8 (10 Sao)", LayPhiPhong7},
	--	{"NhËn Nguyªn LiÖu Ðp Tinh S­¬ng.", LayNguyenLieuEp},
		{"NhËn 300k §iÓm HuyÕt ChiÕn.", Nhan300kdiemhuyetchien},
		{"8 R­¬ng NguyÖt KhuyÕt (ThiÕu ¸o + Vò KhÝ)", NhanRuongNKTanThu},	
		{"Tho¸t.",no},
		
	}
       CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------------------------------------

function NhanRuongNKTanThu()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng NguyÖt KhuyÕt H¹ng Liªn",tbProp={6,1,4516,1,1,0},nCount=1,tbParam={1,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng NguyÖt KhuyÕt Kh«i",tbProp={6,1,4517,1,1,0},nCount=1,tbParam={2,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng NguyÖt KhuyÕt Th­îng Giíi",tbProp={6,1,4518,1,1,0},nCount=1,tbParam={3,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng NguyÖt KhuyÕt Hé UyÓn",tbProp={6,1,4519,1,1,0},nCount=1,tbParam={4,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng NguyÖt KhuyÕt Yªu §¸i",tbProp={6,1,4520,1,1,0},nCount=1,tbParam={5,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng NguyÖt KhuyÕt Hµi",tbProp={6,1,4523,1,1,0},nCount=1,tbParam={8,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng NguyÖt KhuyÕt Béi",tbProp={6,1,4524,1,1,0},nCount=1,tbParam={9,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng NguyÖt KhuyÕt H¹ Giíi",tbProp={6,1,4525,1,1,0},nCount=1,tbParam={10,0,0,0,0,0}},}, "test", 1);

end
	function Nhan500BachLuyenThanhCuong()

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4906,1,1},nCount=500,},}, "test", 1);--B¸ch LuyÖn Thµnh C­¬ng


end
function Nhan500NgocLinhHon()

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
		return 1;
	end
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4912,1,1},nCount=500,},}, "test", 1);--Ngäc Linh Hån


end

function Nhan500NgocCuongHoa()

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
		return 1;
	end

			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4913,1,1},nCount=500,},}, "test", 1);--Ngäc C­êng Hãa Nguyªn LiÖu

end

function nhanmatna3cap()

local Index = AddItem(0,11,840,1,0,0) ITEM_SetExpiredTime(Index,24*60*1) SyncItem(Index)
end
function LayPhiPhong7()

tbAwardTemplet:GiveAwardByList({{szName = "Tói LÔ Bao Phi Phong CÊp 8 (10 Sao)",tbProp={6,1,4941,1,1},nCount=1,},}, "test", 1);
end
function Nhan300kdiemhuyetchien()
SetTask(3002, GetTask(3002) + 300000) --150k diem huyet chienn
Say("Ok §· nhËn thªm 300k ®iÓm huyÕt chiÕn, §iÓm hiÖn t¹i lµ "..GetTask(3002).."!")
end
function HoTroNhanBiKip2x()

	tbAwardTemplet:GiveAwardByList({{szName = "MËt TÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4369,1,1},nCount=1,},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "MËt TÞch Kü N¨ng 150 CÊp 22",tbProp={6,1,4370,1,1},nCount=1,},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "MËt TÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
	
end

function LayNguyenLieuEp()
local tbAward ={
	{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=5},
	{szName="LÖnh bµi Tinh S­¬ng",tbProp={6,1,4882,1,0,0},nCount=5},
	{szName="§å Phæ Tinh S­¬ng Y",tbProp={6,1,4883,1,0,0},nCount=5},
	{szName="§å Phæ Tinh S­¬ng KhÝ Giíi",tbProp={6,1,4884,1,0,0},nCount=5},
	{szName="Tö Tinh Kho¸ng Th¹ch ",tbProp={6,1,4885,1,0,0},nCount=1000},
}
		if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 1000")
		else
			Talk(1,"","<color=green> H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng...!")
		end
end

function LayNguaVip()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end
local Index = AddGoldItem(0,3964)
local Index = AddGoldItem(0,3965)
local Index = AddGoldItem(0,3966)
local Index = AddGoldItem(0,6049)
end

function LayPhiPhongVip()
--for i=6058,6071 do

--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6058},nQuality=1,nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6059},nQuality=1,nCount=1},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6060},nQuality=1,nCount=1},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6065},nQuality=1,nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6066},nQuality=1,nCount=1},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6067},nQuality=1,nCount=1},}, "test", 1);
--end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AdminGame()
	for i = 1,getn(TENADMIN) do
		if GetName() == TENADMIN[i][1] and TENADMIN[i][2] == 99 then
		return 1
		end
	end
end

function ChucNangGM()
player = GetPlayerCount()
if AdminGame() == 1 then
MoChucNangGM()
else
Msg2Player("ChØ Cã <color=pink>Ban Qu¶n TrÞ <color>Míi Cã QuyÒn Sö Dông Chøc N¨ng Nµy")
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoChucNangGM()
	local tbOpt = {
		{"NhËn LÖnh Bµi Admin", LBAdmin},
		{"Kªt Thóc §èi Tho¹i."},
	}
	CreateNewSayEx("<npc>L·o Phu Cã Mét Sè Man Cùc PhÈm, Ng­êi CÇn Mãn Nµo", tbOpt)
end
-----------------------------------------------------------------------------------------------------------------------------------
function LBAdmin()
AddMagic(732, 50) --Skill GM
AddMagic(1209, 50) --Skill GM
AddSkillState(314,5,1,600*60*18)
AddSkillState(86,50,1,600*60*18)
local index = AddItem(6,1,4257,0,0,0,0); SetItemBindState(index,-2)
--local index = AddItem(6,1,4358,0,0,0,0); SetItemBindState(index,-2)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=yellow>LÖnh Bµi <color> <color=pink>ADMIN <color>")
end



function tbhoangkimbk()

	local tbOpt =
	{
		{"NhËn Trang BÞ", dohoangkim},	
		--{"Hç Trî Trïng Sinh 5", level_up_to},
		{"THç Trî C¶i L·o 3- Chän Skill §¹i DiÖp KhÝ Tr¸o", TienHanhCaiLao_tanthu_ddkt},
		{"THç Trî C¶i L·o 3- Chän Skill X¸c XuÊt Träng KÝch", TienHanhCaiLao_tanthu_xstk},
	--	{"THç Trî C¶i L·o 2", HoTroChuyenSinh1},
		{"NhËn §iÓm Hç Trî.",testgame1},


		{"Tho¸t.",no},
		
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
end
function HoTroLevel()
local nCureLevel = GetLevel()
local nAddLevel = 200 - nCureLevel
if nCureLevel <200 then
	ST_LevelUp(nAddLevel)
	else Say("Ban da cap 200 roi")
	end
end
-----------------------------------------------------------------------------------------------------------------------
function TienHanhCaiLao_tanthu_ddkt()
local n_solan = GetTask(5969);
local nTransLife = ST_GetTransLifeCount();
local nCurLevel = GetLevel();
	if CalcFreeItemCellCount() >= 20 then
		if (nTransLife >= 5 and nCurLevel >= 200 and n_solan==0) then
			nAddLevel = 170 - nCurLevel; ST_LevelUp(nAddLevel); AddMagicPoint(4)
			AddProp(681) SetTask(5969,3); do_clear_prop(); TaySkill();-- VongSangCaiLao()
			DelMagic(1534)
			DelMagic(1535)
			AddMagic(993,20)
			AddMagic(1718,20)
			PlayerFunLib:AddSkillState(1727,1,3,18*60*60*24*300,1)
		else
			Talk(1, "", "<bclr=violet>Xin Chµo <bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: §¼ng CÊp Tu LuyÖn §¹t 200+ Trïng Sinh 5+ Ch­a C¶i L·o...\n<bclr>")
		end
	else
		Talk(1,"","<color=red>H·y §Ó Trèng 20 ¤ Trèng Råi TiÕp Tôc C¶i Tö Håi Sinh")
	end
end
function TienHanhCaiLao_tanthu_xstk()
local n_solan = GetTask(5969);
local nTransLife = ST_GetTransLifeCount();
local nCurLevel = GetLevel();
	if CalcFreeItemCellCount() >= 20 then
		if (nTransLife >= 5 and nCurLevel >= 200 and n_solan==0) then
			nAddLevel = 170 - nCurLevel; ST_LevelUp(nAddLevel); AddMagicPoint(4)
			AddProp(681) SetTask(5969,3); do_clear_prop(); TaySkill();-- VongSangCaiLao()
		--	ConsumeEquiproomItem(60,4,417,1,1)
		--	if n_solan ==1 then
			DelMagic(1534)
			DelMagic(1535)
			AddMagic(998,20)
                        AddMagic(1715,20)
			PlayerFunLib:AddSkillState(1718,1,3,18*60*60*24*300,1)
		else
			Talk(1, "", "<bclr=violet>Xin Chµo <bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: §¼ng CÊp Tu LuyÖn §¹t 200+ Trïng Sinh 5+ Ch­a C¶i L·o...\n<bclr>")
		end
	else
		Talk(1,"","<color=red>H·y §Ó Trèng 20 ¤ Trèng Råi TiÕp Tôc C¶i Tö Håi Sinh")
	end
end

function doimau()

	if check_faction() == 0 then
		Talk(1, "", "§¹i hiÖp ch­a ®· gia nhËp m«n ph¸i.")
		return 1
	end


	local tbOpt =
	{
	--	{"Mµu Tr¾ng", mautrang},
		{"ChÝnh ph¸i", mauvang},
		{"Tµ ph¸i", mautim},
		{"Trung lËp", mauxanh},
		{"S¸t Thñ", maudo},
		{"Trë l¹i", dialog_main},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän mµu", tbOpt)
end

function mautrang()
SetCurCamp(0)
SetCamp(0)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		Say("§æi mµu PK ChÝnh Ph¸i thµnh c«ng.")
		Pay(50000)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
		Say("§æi mµu PK Tµ Ph¸i thµnh c«ng.")
		Pay(50000)
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
		Say("§æi mµu PK Trung LËp thµnh c«ng.")
		Pay(50000)
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
		Say("§æi mµu PK S¸t Thñ thµnh c«ng.")	
		Pay(50000)
end
function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return 1
	end
	return 0
end

	IncludeLib("TONG")
	Include("\\script\\tong\\tong_header.lua")
	
function kienthiet()
		local nBuildFund = 10000000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch­a gia nhËp bang héi, kh«ng thÓ sö dông ®¹o cô nµy.");
		return 1
	end
	local figure = TONGM_GetFigure(nTongID, GetName())

	if (figure == TONG_MASTER)then
		TONG_ApplyAddBuildFund(nTongID,nBuildFund)
		Msg2Player(format("N¹p thµnh c«ng %d ®iÓm KiÕn thiÕt", nBuildFund))
		%tbLog:PlayerAwardLog("KienThietLebao", "SuDungVatPhamNhanDuoc5000000diemKienThiet")
		return 0;
	end
end

-----------------------------------------------------------------------------------------------------------------------
function testgame1()
	local tbOpt =
	{
		{"1. NhËn ®iÓm Danh Väng. ", diemdanhvong},
	--	{"2. NhËn ®iÓm Phóc duyªn. ", diemphucduyen},
	--	{"3. NhËn ®iÓm Cèng hiÕn. ", conghien},
		{"4. NhËn ®iÓm tµi l·nh ®¹o. ", lanhdao},
		{"5. Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
end
---------------------------------------------------------------------------------------------------------------------
function level_up_to()
local nCureLevel = GetLevel()
local nTransLife = ST_GetTransLifeCount()
	if (nTransLife < 5) then
		Say("C¸c H¹ Cã Muèn N©ng CÊp Trïng Sinh 5 + C¶i L·o 1 Kh«ng",2,"Ta Muèn N©ng CÊp/Up_Level_200","Hñy Bá/No")
	else
		Say("§· §¹t CÊp Trïng Sinh 5 Råi")
	end
end

function Up_Level_200()
local nCureLevel = GetLevel()
local nTransLife = ST_GetTransLifeCount()
local nAddLevel = 200 - nCureLevel
for w = 1,5 do
ST_LevelUp(nAddLevel)
ST_DoTransLife()
end
ST_LevelUp(nAddLevel)
end

------------------------------------------------
function laytiendong()
	if (CalcEquiproomItemCount(4,417,1,-1)>=5000) then
		Talk(1, "", "TiÒn ®ång trong tói ng­¬i dïng ch­a hÕt th× lÊy lµm g× cho nhiÒu.")
	else
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		Msg2Player("NhËn ®­îc 5000 tiÒn ®ång.");
	end
end;

function laytienvan()
	if (GetCash() >= 50000000000) then 	--  50 ngµn v¹n
		Talk(1, "", "Ng©n l­îng trong tói ng­¬i dïng ch­a hÕt th× lÊy lµm g× cho nhiÒu.")
	else
		Earn(500000000000)
		Msg2Player("NhËn ®­îc 500000000000 v¹n l­îng.");
	end
end

function lanhdao()
	for i=1,20 do
AddLeadExp(10000000)
end
end

function diemdanhvong()
	AddRepute(1000);
	Msg2Player("NhËn ®­îc 1000 ®iÓm danh väng.");
end

function diemphucduyen()
	FuYuan_Start();
	FuYuan_Add(1000);
end

function conghien()
AddContribution(100000)
Msg2Player("NhËn ®­îc 1000 ®iÓm Cong Hien.");
end

-------------------------------code cua quy ----------------------------------
function NhanHoTroTanThu()


		if CalcFreeItemCellCount() >= 20 and GetTask(3903)== 0 then
		
			--local Index = AddItem(6,1,4825,1,0,0) SetItemBindState(Index, -2)--Mau Tan Thu
			local Index = AddItem(6,1,1266,1,0,0) ITEM_SetExpiredTime(Index,40320) SyncItem(Index) SetItemBindState(Index, -2) --Thanh Hanh Phu
			local Index = AddItem(6,1,438,1,0,0) ITEM_SetExpiredTime(Index,40320)  SyncItem(Index) SetItemBindState(Index, -2)--Tho Dia Phu
			local Index = AddItem(6,1,4265,1,0,0) SetItemBindState(Index, -2) --Lenh Bai Tan Thu
			--local Index = AddItem(6,1,4804,1,0,0) SetItemBindState(Index, -2) --MT 180
			local Index = AddItem(6,1,4875,1,0,0) ITEM_SetExpiredTime(Index,20160) SyncItem(Index) SetItemBindState(Index, -2) --Hanh Hiep Ky
			local Index = AddItem(6,1,4825,1,0,0) ITEM_SetExpiredTime(Index,10080) SyncItem(Index) SetItemBindState(Index, -2) --Hoi Thien 900
			SetTask(3903,1)
			--Earn(50000)
		else
			Talk(1,"","<color=green>§· NhËn Th­ëng hoÆc H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng...!")
		end
end

----------------------------DOI TEN------------------------
function DoiTenNV()
	Say("Ng­¬i t×m ta cã viÖc g×?",3,
		"Mua 1 lÇn ®æi tªn nh©n vËt/dangkydoiten",
		"§Æt tªn cho nh©n vËt/about_rename_role",
		"Nh©n tiÖn ghÐ qua th«i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B¹n vÉn cßn 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end

	Say("Mçi lÇn ®æi tªn nh©n vËt cÇn <color=red>50 TiÒn §ång<color>, ng­êi chuÈn bÞ xong ch­a?",
		2,
		"Ta ®· chuÈn bÞ xong/#buy_addibox_yes(10)",
		"Khi nµo ®ñ tiÒn ta sÏ quay l¹i sau!/cancel");
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;

	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 50) then
		Say("<color=yellow>Kh¸ch quan ch­a ®ñ 30 tiÒn! Khi nµo cã ®ñ tiÒn h·y quay l¹i.",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end
	ConsumeEquiproomItem(50, 4, 417, 1, 1)
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	SaveNow();
	Talk(1, "", "<color=yellow>B¹n nhËn ®­îc 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt");
end
function about_rename_role()
	local strInfo = "Chµo b¹n! V× tªn nh©n vËt cña b¹n vµ ng­êi ch¬i kh¸c gièng nhau, cho nªn hÖ thèng ®· gióp b¹n ®æi tªn, b¹n cã thÓ söa tªn nh©n vËt cña b¹n tr­íc ®©y, cã thÓ kiÓm tra xem tªn ®ã cã dïng ®­îc kh«ng. Chó ý! B¹n chØ cã 1 c¬ héi duy nhÊt ®Ó ®æi tªn, xin h·y cÈn thËn tõng b­íc.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"Ta muèn kiÓm tra xem tªn nh©n vËt dïng ®­îc kh«ng/query_rolename",
			"TiÕn hµnh thay ®æi tªn nh©n vËt cña m×nh/change_rolename",
			"§Ó lÇn sau ta thay ®æi vËy/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt cÇn t×m hiÓu");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C¸c b­íc cô thÓ: Rêi Bang Héi nÕu cã, ®èi tho¹i víi NPC, nhËp tªn nh©n vËt cÇn thay ®æi vµo, b¹n sÏ tù ®éng rêi m¹ng. Sau 3 phót ®¨ng nhËp l¹i, nÕu tªn nh©n vËt ®· thay ®æi th× ®­îc xem ®æi tªn thµnh c«ng; nÕu ch­a thay ®æi, mêi b¹n thùc hiÖn l¹i c¸c b­íc trªn. NÕu xuÊt hiÖn mét sè hiÖn t­îng l¹ xin liªn hÖ GM gi¶i quyÕt.",
		2,
		"B¾t ®Çu thay ®æi tªn nh©n vËt/change_rolename2",
		"§Ó ta suy nghÜ l¹i/cancel")
end
function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>§¹i hiÖp ®· cã Bang Héi kh«ng thÓ tiÕn hµnh thao t¸c nµy!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt míi vµo");
end
function on_change_rolename(new_name)
--Msg2SubWorld( "§¹i hiÖp <color=yellow>"..GetName().."<color> ®· ®æi tªn thµnh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B¹n muèn ®æi tªn g×?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin lçi! B¹n ph¶i mua lÇn ®æi tªn nh©n vËt råi h·y chän chøc n¨ng nµy!<color>",
		1,
		"BiÕt råi!/cancel")
end

sbook_150skill_list = {
		[0] = {318 ,319 ,321, 1055, 1056, 1057},
		[1] = {322 ,323 ,325, 1058, 1059, 1060},
		[2] = {339 ,302 ,342, 1069, 1070, 1071, 1110},
		[3] = {1066, 1067},
		[4] = {1061, 1062, 1114},
		[5] = {1063, 1065},
		[6] = {1073, 1074},
		[7] = {1075, 1076},
		[8] = {1078, 1079},
		[9] = {1080, 1081},
		[10] = {1368, 1384},
}

sbook_factstep_list = {
		[5] = 6,
		[2] = 7,
		[4] = 7,
		[3] = 5,
		[6] = 9,
		[7] = 9,
		[0] = 6,
		[8] = 5,
		[1] = 4,
		[9] = 5,
		[10] = 5,
	}

function fixskill150()
	
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
		Msg2Player("<color=yellow>Ng­¬i vÉn ch­a gia nhËp m«n ph¸i nµo, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	end
	
	if GetLevel() < 150 then
		Msg2Player("<color=yellow>§¼ng cÊp cña ng­¬i thÊp h¬n 150, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	end
	
	local tb150Skill = sbook_150skill_list[nFact]
	
	for i = 1, getn(tb150Skill) do
		local nSkillId = tb150Skill[i]
		if (HaveMagic(nSkillId) == 20) then
			SetTask(3000,0)
		end

		if (HaveMagic(nSkillId) == 21) then
			SetTask(3000,2)
		end
		if (HaveMagic(nSkillId) == 22) then
			SetTask(3000,4)
		end
		if (HaveMagic(nSkillId) == 23) then
			SetTask(3000,6)
		end
		if (HaveMagic(nSkillId) == 24) then
			SetTask(3000,8)
		end


	end
end



function vukhihoangkimmax()
if (CalcFreeItemCellCount() < 40) then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
end
local tab_Content =
{
--"Trang BÞ Kim ¤./kimomax",
--"Trang BÞ B¹ch Hæ./bachhomax",
--"Trang BÞ XÝch L©n./xichlanmax",
--"Trang BÞ Minh Ph­îng./minhphuongmax",
"Trang BÞ §»ng Long/danglongmax",
--"Trang BÞ Tinh S­¬ng/tinhsuongmax",
--"Trang BÞ NguyÖt KhuyÕt/nguyetkhuyetmax",
"Tho¸t./no",
"Trë l¹i"
}


Say(" Muèn lÊy trang bÞ g× ? ", getn(tab_Content), tab_Content);
end


-------------------------------------------------------------------------------------------------------------------------------
function nguyetkhuyetmax24h()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#senguyetkhuyetmax(1)",
"ThiÕu L©m Bçng/#senguyetkhuyetmax(2)",
"ThiÕu L©m §ao/#senguyetkhuyetmax(3)",
"Thiªn V­¬ng Chïy/#senguyetkhuyetmax(4)",
"Thiªn V­¬ng Th­¬ng/#senguyetkhuyetmax(5)",
"Thiªn V­¬ng §ao/#senguyetkhuyetmax(6)",
"Nga Mi KiÕm/#senguyetkhuyetmax(7)",
"Nga Mi Ch­ëng/#senguyetkhuyetmax(8)",
"Thóy Yªn §ao/#senguyetkhuyetmax(9)",
"Thóy Yªn Song §ao/#senguyetkhuyetmax(10)",
"Ngò §éc Ch­ëng/#senguyetkhuyetmax(11)",
"Ngò §éc §ao/#senguyetkhuyetmax(12)",
"§­êng M«n Phi §ao/#senguyetkhuyetmax(13)",
"§­êng M«n Ná/#senguyetkhuyetmax(14)",
"Trang sau/nguyetkhuyetmax2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function nguyetkhuyetmax2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#senguyetkhuyetmax(15)",
"C¸i Bang Rång/#senguyetkhuyetmax(16)",
"C¸i Bang Bçng/#senguyetkhuyetmax(17)",
"Thiªn NhÉn KÝch/#senguyetkhuyetmax(18)",
"Thiªn NhÉn §ao/#senguyetkhuyetmax(19)",
"Vâ §ang KiÕm/#senguyetkhuyetmax(21)",
"Vâ §ang QuyÒn/#senguyetkhuyetmax(20)",
"C«n L«n §ao/#senguyetkhuyetmax(22)",
"C«n L«n KiÕm/#senguyetkhuyetmax(23)",
"Hoa S¬n KhÝ T«ng/#senguyetkhuyetmax(25)",
"Hoa S¬n KiÕm T«ng/#senguyetkhuyetmax(24)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function senguyetkhuyetmax(nId)
if (CalcFreeItemCellCount() < 40) then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang 40 ¤ Trèng")
end

for i = 5650, 5659 do
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
local idcan=10*nId+i-10
	tbAwardTemplet:GiveAwardByList({{szName = "NguyÖt KhuyÕt",tbProp={0,idcan},nQuality=1,nExpiredTime=nRestMin,nBindState = -2}}, "test", 1);
end
end
function nhanff710sao()
local tab_Content = {

"Phßng Thñ VËt Lý/#nhanff710sao_ok(6088)",
"Kh¸ng B¨ng/#nhanff710sao_ok(6093)",
"Kh¸ng L«i/#nhanff710sao_ok(6098)",
"Kh¸ng Háa/#nhanff710sao_ok(6103)",
"Kh¸ng §éc/#nhanff710sao_ok(6109)",
"X¸c XuÊt Träng KÝch/#nhanff710sao_ok(6113)",
"Rêi khái/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon Phi Phong PhÖ Quang", getn(tab_Content), tab_Content);

end
function nhanff710sao_ok(nId)
if (CalcFreeItemCellCount() < 10) then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang 10 ¤ Trèng")
end

local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));

	tbAwardTemplet:GiveAwardByList({{szName = "NguyÖt KhuyÕt",tbProp={0,nId},nQuality=1,nExpiredTime=nRestMin,nBindState = -2}}, "test", 1);

end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function do_clear_prop()
	local base_str = {35,20,25,30,20}			
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end
------------------------------------------------------------------------
function TaySkill()
	local i = HaveMagic(210)		
	local j = HaveMagic(400)		
	local h = HaveMagic(732)		
	local k = HaveMagic(733)		
	local n = RollbackSkill()		
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		
	if (j ~= -1) then x = x + j end
	if (h ~= -1) then x = x + h end
	if (k ~= -1) then x = x + k end
	local rollback_point = n - x			
	if (rollback_point + GetMagicPoint() < 0) then		
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			
	if (j ~= -1) then AddMagic(400, j) end			
	if (h ~= -1) then AddMagic(732, h) end
	if (k ~= -1) then AddMagic(733, k) end
	KickOutSelf()
end

function tinhsuongtest()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#setinhsuong(1)",
"ThiÕu L©m Bçng/#setinhsuong(2)",
"ThiÕu L©m §ao/#setinhsuong(3)",
"Thiªn V­¬ng Chïy/#setinhsuong(4)",
"Thiªn V­¬ng Th­¬ng/#setinhsuong(5)",
"Thiªn V­¬ng §ao/#setinhsuong(6)",
"Nga Mi KiÕm/#setinhsuong(7)",
"Nga Mi Ch­ëng/#setinhsuong(8)",
"Thóy Yªn §ao/#setinhsuong(9)",
"Thóy Yªn Song §ao/#setinhsuong(10)",
"Ngò §éc Ch­ëng/#setinhsuong(11)",
"Ngò §éc §ao/#setinhsuong(12)",
"§­êng M«n Phi §ao/#setinhsuong(13)",
"§­êng M«n Ná/#setinhsuong(14)",
"Trang sau/tinhsuong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function tinhsuong2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#setinhsuong(15)",
"C¸i Bang Rång/#setinhsuong(16)",
"C¸i Bang Bçng/#setinhsuong(17)",
"Thiªn NhÉn KÝch/#setinhsuong(18)",
"Thiªn NhÉn §ao/#setinhsuong(19)",
"Vâ §ang QuyÒn/#setinhsuong(20)",
"Vâ §ang KiÕm/#setinhsuong(21)",
"C«n L«n §ao/#setinhsuong(22)",
"C«n L«n KiÕm/#setinhsuong(23)",
"Hoa S¬n KiÕm T«ng/#setinhsuong(24)",
"Hoa S¬n KhÝ T«ng/#setinhsuong(25)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function setinhsuong(nId)
for i = 3405, 3414 do
AddGoldItem(0,10*nId+i-10)
end
end


function DieuDuongTest()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#SetDieuDuong(1)",
"ThiÕu L©m Bçng/#SetDieuDuong(2)",
"ThiÕu L©m §ao/#SetDieuDuong(3)",
"Thiªn V­¬ng Chïy/#SetDieuDuong(4)",
"Thiªn V­¬ng Th­¬ng/#SetDieuDuong(5)",
"Thiªn V­¬ng §ao/#SetDieuDuong(6)",
"Nga Mi KiÕm/#SetDieuDuong(7)",
"Nga Mi Ch­ëng/#SetDieuDuong(8)",
"Thóy Yªn §ao/#SetDieuDuong(9)",
"Thóy Yªn Song §ao/#SetDieuDuong(10)",
"Ngò §éc Ch­ëng/#SetDieuDuong(11)",
"Ngò §éc §ao/#SetDieuDuong(12)",
"§­êng M«n Phi §ao/#SetDieuDuong(13)",
"§­êng M«n Ná/#SetDieuDuong(14)",
"Trang sau/DieuDuong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function DieuDuong2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#SetDieuDuong(15)",
"C¸i Bang Rång/#SetDieuDuong(16)",
"C¸i Bang Bçng/#SetDieuDuong(17)",
"Thiªn NhÉn KÝch/#SetDieuDuong(18)",
"Thiªn NhÉn §ao/#SetDieuDuong(19)",
"Vâ §ang QuyÒn/#SetDieuDuong(20)",
"Vâ §ang KiÕm/#SetDieuDuong(21)",
"C«n L«n §ao/#SetDieuDuong(22)",
"C«n L«n KiÕm/#SetDieuDuong(23)",
"Hoa S¬n KiÕm T«ng/#SetDieuDuong(24)",
"Hoa S¬n KhÝ T«ng/#SetDieuDuong(25)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function SetDieuDuong(nId)
for i = 7093, 7102 do
AddGoldItem(0,10*nId+i-10)
end
end


function DieuDuongTest_TinhChe()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#SetDieuDuong_TinhChe(1)",
"ThiÕu L©m Bçng/#SetDieuDuong_TinhChe(2)",
"ThiÕu L©m §ao/#SetDieuDuong_TinhChe(3)",
"Thiªn V­¬ng Chïy/#SetDieuDuong_TinhChe(4)",
"Thiªn V­¬ng Th­¬ng/#SetDieuDuong_TinhChe(5)",
"Thiªn V­¬ng §ao/#SetDieuDuong_TinhChe(6)",
"Nga Mi KiÕm/#SetDieuDuong_TinhChe(7)",
"Nga Mi Ch­ëng/#SetDieuDuong_TinhChe(8)",
"Thóy Yªn §ao/#SetDieuDuong_TinhChe(9)",
"Thóy Yªn Song §ao/#SetDieuDuong_TinhChe(10)",
"Ngò §éc Ch­ëng/#SetDieuDuong_TinhChe(11)",
"Ngò §éc §ao/#SetDieuDuong_TinhChe(12)",
"§­êng M«n Phi §ao/#SetDieuDuong_TinhChe(13)",
"§­êng M«n Ná/#SetDieuDuong_TinhChe(14)",
"Trang sau/DieuDuong2_TinhChe",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function DieuDuong2_TinhChe()
local tab_Content = {
"§­êng M«n Phi Tiªu/#SetDieuDuong_TinhChe(15)",
"C¸i Bang Rång/#SetDieuDuong_TinhChe(16)",
"C¸i Bang Bçng/#SetDieuDuong_TinhChe(17)",
"Thiªn NhÉn KÝch/#SetDieuDuong_TinhChe(18)",
"Thiªn NhÉn §ao/#SetDieuDuong_TinhChe(19)",
"Vâ §ang QuyÒn/#SetDieuDuong_TinhChe(20)",
"Vâ §ang KiÕm/#SetDieuDuong_TinhChe(21)",
"C«n L«n §ao/#SetDieuDuong_TinhChe(22)",
"C«n L«n KiÕm/#SetDieuDuong_TinhChe(23)",
"Hoa S¬n KiÕm T«ng/#SetDieuDuong_TinhChe(24)",
"Hoa S¬n KhÝ T«ng/#SetDieuDuong_TinhChe(25)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function SetDieuDuong(nId)
for i = 7343, 7352 do
AddGoldItem(0,10*nId+i-10)
end
end