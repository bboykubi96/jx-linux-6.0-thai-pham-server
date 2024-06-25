------------------------***Create*By*Heart*Doldly***----------------------------------
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\hotrothem.lua")
Include("\\script\\gm_tool\\dohoangkimmax.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\gm_tool\\baotri.lua")
Include("\\script\\lib\\log.lua")
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370}; DIEMVIP = 5995
--------------------------------------------------------------------------------------
LENHBAI_ADMIN = "<#><link=image[0]:\\spr\\item\\sprADMIN.spr>LÖnh Bµi GM: <link>"
------------------------------------------------------------------------------------------------------------------------------------------
local tbGMAccount = {"admin1", "t","","","","",""} TENADMIN ={{"VoLamHoangKim",99},{"S",99},{"Ar",99},{"Bl",99},{"",99},{"",99},{"",99},{"",99}}
-------------------------------------------------------------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
---------------------------------------------------------------------------------
function main()
local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
			local szTitle = LENHBAI_ADMIN.."Xin Chµo:<color=violet> "..GetName().." ...!\n<color><color=green>§· Tham Gia T¹i ThÕ Giíi Vâ L©m TruyÒn Kú...!\n                                                     <bclr=violet> * * * * * * * * Vâ * L©m * TruyÒn * Kú * * * * * * * * \n* * * * * * * * * * <bclr>Chóc<color=yellow> "..myplayersex().." <color>Ch¬i Games Vui VÎ...!<color>\n<color=blue>Chøc N¨ng Qu¶n Lý <color=yellow>SERVER<color> ChØ Cã <color=pink>ADMIN<color> Míi §­îc Sö Dông<color>"
			local tbOpt = {
					{"Qu¶n Lý Chøc N¨ng GM", ChucNang_Admin},
					{"KÕt Thóc §èi Tho¹i",},
				}
				CreateNewSayEx(szTitle, tbOpt)
			return 1;
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AdminGame()
	for i = 1,getn(TENADMIN) do
		if GetName() == TENADMIN[i][1] and TENADMIN[i][2] == 99 then
		return 1
		end
	end
end

function ChucNang_Admin()
player = GetPlayerCount()
if AdminGame() == 1 then
CheckPassGM()
else
Say("<bclr=violet>ChØ Cã<bclr> <color=pink>Ban Qu¶n TrÞ <color><bclr=violet>Míi Cã QuyÒn Sö Dông Chøc N¨ng Nµy<bclr>")
end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CheckPassGM()
	if GetTaskTemp(57) == 1 then
		ChucNangGM()
	else
		AskClientForString("MOCHUCNANGGM","",1,999999999,"NhËp MËt KhÈu")
	end
end
function MOCHUCNANGGM(nVar)
	for i = 1,getn(CheckPassGMA) do
		if nVar == CheckPassGMA[i][1] then
			Talk(1,"ChucNangGM","<bclr=violet>Chóc Mõng "..myplayersex().." §· Më §­îc Chøc N¨ng Thµnh C«ng") SetTaskTemp(57,1)
		else
			Talk(1,"finish","<bclr=violet>"..myplayersex().." NhËp MËt KhÈu Kh«ng ChÝnh X¸c<bclr>")
		end
	end
end
function finish()
KickOutSelf()
end
------------------------------------------------------------------------------------------------------------------------------------------------
function ChucNangGM()
	local tbOpt = {
		{"Hñy VËt PhÈm",DisposeItem},
		{"LÊy VËt PhÈm.....", layvatpham},
		{"Chøc N¨ng Bang Héi",BangHoi},
		{"Qu¶n Lý Gamer", thongtingamer},
		{"N©ng §iÓm Kinh NghiÖm", diemexp},
		{"NhËn §iÓm - TiÒn - Vßng S¸ng", hotro},
		{"NhËn Trang BÞ", dohoangkim},
		{"NhËn Trang BÞ Maxop", dohoangkimmax},
		{"Thó C­ìi - Ngo¹i Trang", fifong},
		{"Ta Muèn LÊy VËt PhÈm - Giíi ChØ", show_item},
		{"Thay §æi Tr¹ng Th¸i", trangthai},
		{"NhËn Skill", nhanskill},
		{"Trang BÞ H¾c ThÇn - Long T­¬ng",TrangBiHiem},
		{"LÊy Nguyªn LiÖu Kho¸ng Th¹ch",khoangth},
		{"Hoµng Kim M«n Ph¸i - §å Xanh - §å TÝm", hkmpdoxanh},
		{"Tho¸t",},
	}
	CreateNewSayEx("<bclr=violet>Xin Mêi "..myplayersex().." Chän Chøc N¨ng CÇn Hç Trî<bclr>", tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function layvatpham()
	local tbOpt = {
		{"LÊy VËt PhÈm Theo..ID..", TaoItem},
		{"LÊy VËt PhÈm Goldequip..", Glodequip},
	}
	CreateNewSayEx("<npc>Xin Mêi Chän Chøc N¨ng", tbOpt)
end

function TaoItem() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Item Code:",{TaoItemID}) 
end

function TaoItemID(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item Code. ThiÕu tr­êng yªu cÇu <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item Code. Qu¸ nhiÒu tr­êng d÷ liÖu <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("CÊp ®é man ®å kh«ng ®­îc thÊp qu¸ <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("ChØ hæ trî ®Õn cÊp 10. HiÖn t¹i nhËp vµo <color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end
function Glodequip() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)
AddGoldItem(0, ""..idgq.."")
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function thongtingamer() 
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local nGio = tonumber(GetLocalDate("%H")); 
local nPhut = tonumber(GetLocalDate("%M")); 
local nGiay = tonumber(GetLocalDate("%S")); 
local nW, nX, nY = GetWorldPos() 
local nIdPlay = PlayerIndex 
local tbSay = {}
	tinsert(tbSay,"ADM Move=>CTC.../vitri_congthanh")
	tinsert(tbSay,"Th«ng tin ng­êi ch¬i./Show")
	tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i./luachonid1")
	tinsert(tbSay,"HÖ Thèng Pet/Pet")
	tinsert(tbSay,"LÊy Täa §é/toado1")
	tinsert(tbSay,"Th«ng B¸o B¶o Tr×/OnTimer")
	tinsert(tbSay,"LÊy ID Vßng S¸ng/kiemtra_spr")
	tinsert(tbSay,"Chat ADM....!/Admin")
	tinsert(tbSay,"Chat GM....!/Gm")
	tinsert(tbSay,"Tho¸t/no")
	tinsert(tbSay,"Trë l¹i")
	Say("Xin Chµo <color=red>"..GetName().."<color>!\nTäa ®é hiÖn t¹i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nSè SHXT: <color=green>        "..GetTask(T_SonHaXaTac).."<color> m¶nh.\nHiÖn §ang Cã:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng­êi ch¬i trong game.\n", getn(tbSay), tbSay)
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vitri_congthanh()
local tab_Content = {
		"L©m An/goto_lam_an",
		"BiÖn Kinh/goto_bien_kinh",		
		"Thµnh §«/goto_thanh_do",
		"T­¬ng D­¬ng/goto_tuong_duong",
		"Ph­îng T­êng/goto_phuong_tuong",
		"D­¬ng Ch©u/goto_duong_chau",
		"§¹i Lý/goto_dai_ly",
		"VÜnh L¹c TrÊn/goto_ba_lang",
		"§ua Ngùa/goto_dua_ngua",	
		"Tèng - Kim/goto_tong_kim",	
		"Loi dai/goto_loidai",
		"Lien dau/goto_liendau",
		"Tong -Kim/goto_tongkim",
		"NguyÖt Ca §¶o/goto_ca_dao",
		"KÕt thóc..!/No"
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end
---------------------------------------------------------------------------------------------------
function goto_dua_ngua()
local tbDialog = { 
"<dec><npc>Di chuyÓn ®Õn täa ®é cÇn ®Õn?<color>", 
"Ba L¨ng HuyÖn 1x/xem_blh1",
"Ba L¨ng HuyÖn 2 /xem_blh2",
"VÜnh L¹c TrÊn 1 /xem_vlt1",
"VÜnh L¹c TrÊn 2 /xem_vlt2",
"Long M«n TrÊn 1 /xem_lmt1",
"Long M«n TrÊn 2 /xem_lmt2",
"Chu Tiªn TrÊn 1 /xem_ctt1",
"Chu Tiªn TrÊn 2 x /xem_ctt2",
"Trang tiÕp theo /xem_tt_n",
"KÕt thóc ®èi tho¹i /No", 
} 
CreateTaskSay(tbDialog) 
end
--------------------------------------------------------------------------------------
function xem_tt_n()
local tbDialog = { 
"<dec><npc>Di chuyÓn ®Õn täa ®é cÇn ®Õn<color>", 
"§¹o H­ng Th«n 1 /xem_dht1",
"§¹o H­ng Th«n 2 /xem_dht2",
"Long TuyÒn Th«n 1 /xem_ltt1",
"Long TuyÒn Th«n 2 x /xem_ltt2",
"Giang T©n Th«n 1 /xem_gtt1",
"Giang T©n Th«n 2 /xem_gtt2",
"Th¹ch Cæ TrÊn1 /xem_tct1",
"Th¹ch Cæ TrÊn1 /xem_tc2",
"KÕt thóc ®èi tho¹i /No", 
} 
CreateTaskSay(tbDialog) 
end
-----------------------------------------------------------------------------
function goto_tong_kim()----------
NewWorld(900,180*8,208*16)
end
function xem_blh1()----------
NewWorld(53,220*8,200*16)
end
function xem_blh2()----------
NewWorld(53,207*8,182*16)
end
function xem_vlt1()----------
NewWorld(99,189*8,223*16)
end
function xem_vlt2()----------
NewWorld(99,224*8,206*16)
end
function xem_lmt1()----------
NewWorld(121,226*8,275*16)
end
function xem_lmt2()----------
NewWorld(121,276*8,282*16)
end
function xem_ctt1()----------
NewWorld(100,183*8,203*16)
end
function xem_ctt2()----------
NewWorld(100,229*8,190*16)
end
function xem_dht1()----------
NewWorld(101,171*8,198*16)
end
function xem_dht2()----------
NewWorld(101,232*8,205*16)
end
function xem_ltt1()----------
NewWorld(174,218*8,192*16)
end
function xem_ltt2()----------
NewWorld(174,183*8,211*16)
end
function xem_gtt1()----------
NewWorld(20,432*8,359*16)
end
function xem_gtt2()----------
NewWorld(20,438*8,396*16)
end
function xem_tct1()----------
NewWorld(153,232*8,180*16)
end
function xem_tct2()----------
NewWorld(153,189*8,223*16)
end
-------------------------------------------------------------------------------------
function goto_lam_an()
SetFightState(1)
NewWorld(930,1750,3394)
end
function goto_bien_kinh()
SetFightState(1)
NewWorld(927,1749,3388)
end
function goto_thanh_do()
SetFightState(1)
NewWorld(926,1712,3300)
end
function goto_tuong_duong()
SetFightState(1)
NewWorld(931,1710,3303)
end
function goto_phuong_tuong()
SetFightState(1)
NewWorld(929,1764,3513)
end
function goto_duong_chau()
SetFightState(1)
NewWorld(932,1728,3302)
end
function goto_dai_ly()
SetFightState(1)
NewWorld(928,1727,3295)
end
function goto_ba_lang()
SetFightState(0)
NewWorld(99,1627,3201)
end
function goto_loidai()
SetFightState(0)
NewWorld(209,1612,3197)
end
function goto_tongkim()
SetFightState(1)
NewWorld(380,1568,3195)
end
function goto_liendau()
SetFightState(0)
NewWorld(380,1568,3195)
end

function goto_ca_dao()
SetFightState(1)
NewWorld(968,1586,3172)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Show() 
AskClientForNumber("ShowRoom",1,1180,"NhËp Sè ID Ng­¬i Ch¬i") 
end 

function ShowRoom(num) 
local nNum = num + 100
	for i = num,nNum do 
		gmidx = PlayerIndex
		PlayerIndex = i
		TarName = GetName()
		nExp = GetExp()
		nCurLevel = 0
		if (TarName > "") then
		nCurLevel = GetLevel()
		end
		PlayerIndex = gmidx 
		Msg2Player("Sè ID: <color=green>"..i.."<color> - Tªn: <color=green>"..TarName.."<color> - CÊp: <color=green>"..nCurLevel.."<color> - Kinh NghiÖm: <color=green>"..nExp.."<color>"); 
	end 
end
-----------------------------------------------------------------Chän Chøc N¨ng GM------------------------------------------------------------------
function luachonid1() 
	AskClientForNumber("one",0,5000,"NhËp ID ng­êi ch¬i") 
end 

function one(num) 
	if ((num) > GetPlayerCount()) then 
		Msg2Player("Kh«ng cã nh©n vËt víi ID: <color=green>"..num.."<color> ®­îc chän !!"); 
	else 
		SetTaskTemp(200,num) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1) 
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color>"); 
		local tbSay =  {}
		tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
		tinsert(tbSay,"N¹p Kim Nguyªn B¶o/NapThe")
		tinsert(tbSay,"ChuyÓn Kho¶n Kim Nguyªn B¶o/ChuyenKhoan")
		--tinsert(tbSay,"Hæ Trî KNB/AddKNB")
		tinsert(tbSay,"Hæ trî tiÒn ®ång./bufskillsgm1")
		tinsert(tbSay,"Hæ trî tiÒn v¹n./themtienvan1")
		tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
		tinsert(tbSay,"Add ®iÓm cho ng­êi ch¬i../buffpoint")
		tinsert(tbSay,"Më Chøc N¨ng Hç Trî Ng­êi Ch¬i/MoChucNang")
		tinsert(tbSay,"KÝch nh©n vËt./kicknv")
		tinsert(tbSay,"CÊm Ch¸t./camchat")
		tinsert(tbSay,"Më Ch¸t./mochat")
		tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            
		Say("Tµi Kho¶n:<color=green> "..tk.."<color> - Nh©n VËt   :<color=green> "..ObjName.."<color>\nCÊp ®é   :<color=green> "..lev.."<color>           - Kinh nghiÖm: <color=green>"..xp.."%<color>\nMµu      :<color=green> "..cam.."<color>             - M«n ph¸i   :<color=green>"..fac.."<color>\nTiÒn V¹n :<color=green> "..(cash/10000).." v¹n<color> - TiÒn §ång  :<color=green>"..lif.." ®ång<color>\nVÞ trÝ   : <color=blue>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>", getn(tbSay), tbSay)
		Msg2Player("Ng­êi ch¬i <color=cyan>"..xinxi) 
	end 
end
---------------------------LÊt TiÒn V¹n--------------------------------------------
function themtienvan1() 
AskClientForNumber("themtienvan",0,999999999,"NhËp sè tiÒn cÇn chuyÓn") 
end 
function themtienvan(num) 
nNum = num/999999999 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..nNum.."<color> V¹n L­îng Thµnh C«ng")
Earn(num) 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Trao TÆng <color=metal>"..nNum.."<color> V¹n L­îng Thµnh C«ng"); 
end
-----------------------LÊy KNB---------------------------------------
function AddKNB() 
AskClientForNumber("buffknbgm",0,40,"Sã L­îng KNB") 
end 
function buffknbgm(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng");
AddExtPoint(1,num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Trao TÆng <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 
end;
---------------------------LÊy TiÒn §ång---------------------------------------------------
function bufskillsgm1() 
AskClientForNumber("buffskillsgm",0,500,"sè l­îng tiÒn ®ång") 
end 
function buffskillsgm(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
AddStackItem(num,4,417,1,1,0,0) 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Trao TÆng <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
end;
----------------------------T¨ng §iÓm------------------------------------------------------------
function buffpoint() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· T¨ng §iÓm Theo Yªu CÇu"); 

PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM T¨ng §iÓm Theo Yªu CÇu Thµnh C«ng"); 
end; 
-----------------------------------------------------------------------------------------
function CapDo() 
AskClientForNumber("Level",0,200,"NhËp CÊp §é") 
end 
function Level(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· §iÒu ChØnh <color=metal>"..num.."<color> CÊp §é Cho B¹n"); 
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp §é") 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §îc GM T¨ng <color=metal>"..num.."<color> CÊp §é Thµnh C«ng"); 
end; 
--------------------------VÒ Ba L¨ng HuyÖn-------------------------------------------------
function move() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
w,x,y=GetWorldPos() 
if (w~=53) then 
SetFightState(0) 
NewWorld(53,200*8,200*16) 
else 
SetPos(1630, 3255) 
end 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Di ChuyÓn B¹n VÒ Ba L¨ng HuyÖn"); 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> ®­îc GM Di ChuyÓn VÒ Ba L¨ng HuyÖn Thµnh C«ng"); 
end 
--------------------------------------------------------------------
function kicknv() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· KÝch Nh©n VËt Chèng KÑt Acc Thµnh C«ng"); 
KickOutSelf() 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM KÝch kÑt Tµi Kho¶n Thµnh C«ng"); 
end; 
---------------------------Më Chøc N¨ng Cho Ng­êi Ch¬i Kh¸c---------------------------------
function MoChucNang() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)  
ChucNangGM()
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §· Trao QuyÒn H¹n Cho B¹n H·y Lùa Chän Chøc N¨ng"); 
end;
------------------------------------------------------------------------------
function camchat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(1) 
Msg2Player("B¹n bÞ khãa Ch¸t trªn mäi tÇn sè") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh©n VËt:<color=red> "..ObjName.."<color> §· BÞ CÊm Chat Trªn Mäi TÇn Sè !",1) 
end 
----------------------------------------------------------------------------------
function mochat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(0) 
Msg2Player("B¹n ®­îc më khãa Ch¸t trªn mäi tÇn sè") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh©n VËt:<color=green> "..ObjName.."<color> §­îc Më Chat Trªn Mäi TÇn Sè !",1)  
end
-------------------------------LÊy Täa §é-----------------------------------------
function toado1() 
local w,x,y = GetWorldPos(); 
Msg2Player("M¸p sè <color=Green>"..w.."<color> täa ®é <color=Yellow>"..x..", "..y) 
Msg2Player("M¸p sè <color=Green>"..w.."<color> täa ®é <color=Yellow>"..floor(x/32)..", "..floor(y/32)) 
end
--------------------------------------------Ch¸t Admin----------------------------------------------------------------------
function Admin()
AskClientForString("MsgGlbByAM","",1,9999999,"AM:Mêi nhËp néi dung!")
end

function MsgGlbByAM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbAM_Input","NhËp néi dung.!!")
return
end
local MapId
if (zVar == "reset") then
for i=1,GetPlayerCount() do
PlayerIndex = i
MapId,_,_ = GetWorldPos()
if (MapId > 0) then
KickOutSelf()
end
end
end
Msg2SubWorld("<bclr=white>Qu¶n Lý GM: <bclr><color=yellow>"..zVar.."")
AddGlobalCountNews(" GM Xin Th«ng B¸o §Õn C¸c Nh©n SÜ <bclr=blue>Vâ L©m TruyÒn Kú H·y L¾ng Nghe Th«ng B¸o Víi Néi Dung Nh­ Sau: "..zVar.."<bclr>")
end
---------------------------------------------Ch¸t GM-----------------------------------------------------------
function Gm()
AskClientForString("MsgGlbByGM","",1,9999999,"GM:Mêi nhËp néi dung!")
end
function MsgGlbByGM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbGM_Input","NhËp néi dung.!!")
return
end
local MapId
if (zVar == "reset") then
for i=1,GetPlayerCount() do
PlayerIndex = i
MapId,_,_ = GetWorldPos()
if (MapId > 0) then
KickOutSelf()
end
end
end
Msg2SubWorld("<bclr=white>Qu¶n Lý GM: <bclr><color=yellow>"..zVar.."")
AddGlobalCountNews(" GM Xin Th«ng B¸o §Õn C¸c Nh©n SÜ <bclr=blue>Vâ L©m TruyÒn Kú H·y L¾ng Nghe Th«ng B¸o Víi Néi Dung Nh­ Sau: "..zVar.."<bclr>")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Pet()
local szTitle = "H·y Lùa Chän Pet"
	local tbOpt = {
		{"Chän Lo¹i Pet",ChonPet},
		{"Xem Tr¹ng Th¸i",XemTrangThai},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-------------------------------------------------------------------------
function ChonPet()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 0) then
		Say("Lùa Chän Pet",6,"Chu T­íc/ChuTuoc","Háa Kú L©n/HoaKyLan","Thanh Long/ThanhLong","HuyÒn Vò/HuyenVu","LiÖt DiÔm S­/LietDiemSu","Hñy Bá/No")
	else
		Talk(1,"","C¸c H¹ §· Cã Pet Råi H·y Sö Dông Chøc N¨ng Gäi Ra...!")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function ChuTuoc()
 local partneridex = PARTNER_AddFightPartner(4,4,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function HoaKyLan()
 local partneridex = PARTNER_AddFightPartner(1,1,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function ThanhLong()
 local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function HuyenVu()
 local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function LietDiemSu()
 local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------
function XemTrangThai()
local partnerindex, partnerstate = PARTNER_GetCurPartner()
if partnerstate == 1 then
Say("§ång Hµnh Cña C¸c H¹ §ang Trong Tr¹ng Th¸i XuÊt ChiÕn",2,"Muèn Thu Håi/ThuHoi","Hñy Bá")
else
Say("§ång Hµnh Cña C¸c H¹ §ang Trong Tr¹ng Th¸i NghØ Ng¬i",2,"Muèn XuÊt ChiÕn/XuatChien","Hñy Bá")
end
end

function ThuHoi()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(0)
	else
		Talk(1,"","C¸c H¹ §· Ch­a Cã Thó C­ng Kh«ng ThÓ Thu Håi...!")
	end
end

function XuatChien()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(1)
	else
		Talk(1,"","C¸c H¹ §· Ch­a Cã Thó C­ng Kh«ng ThÓ XuÊt ChiÕn Ra...!")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function kiemtra_spr()
	local tbOpt = {
		{"Vßng S¸ng ChuyÓn Sinh 1",VSCS1},
		{"Vßng S¸ng ChuyÓn Sinh 2",VSCS2},
		{"Vßng S¸ng ChuyÓn Sinh 3",VSCS3},
		{"Vßng S¸ng ChuyÓn Sinh 4",VSCS4},
		{"Vßng S¸ng ChuyÓn Sinh 5",VSCS5},
		{"Vßng S¸ng C¶i L·o Hoµn §ång",VSCLHD},
		{"Th«i",No},
	}
	CreateNewSayEx("<bclr=violet>Lùa Chän Vßng S¸ng Muèn KiÓm Tra<bclr>", tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VSCS1()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip359.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng ChuyÓn Sinh 1 ID<bclr> <bclr=red>359<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS2()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip361.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng ChuyÓn Sinh 2 ID<bclr> <bclr=red>361<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS3()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip366.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng ChuyÓn Sinh 3 ID<bclr> <bclr=red>366<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS4()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip365.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng ChuyÓn Sinh 4 ID<bclr> <bclr=red>365<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS5()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip360.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng ChuyÓn Sinh 5 ID<bclr> <bclr=red>360<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCLHD()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip364.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng Thø NhÊt ID<bclr> <bclr=red>364<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function IDVS4()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip362.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng Thø NhÊt ID<bclr> <bclr=red>362<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function IDVS5()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip363.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng Thø NhÊt ID<bclr> <bclr=red>363<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function diemexp()
local tbSay = {}
	tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDoNV")
	tinsert(tbSay,"N©ng Kinh NghiÖm/kinhnghiem")
	tinsert(tbSay,"N©ng CÊp 200/Up_Level")
	tinsert(tbSay,"Tho¸t/no")
	Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y cÊp ®é mµ b¹n muèn !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function CapDoNV()
AskClientForNumber("level",1,200,"NhËp CÊp §é:") 
end
function level(num)
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp ®é.") 
end

function kinhnghiem()
AskClientForNumber("kinhnghiem1",0,9999999999999999,"NhËp EXP") 
end
function kinhnghiem1(nNum)
tl_addPlayerExp(nNum)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..nNum.."<color> kinh nghiÖm.") 
end

function Up_Level()
local nCureLevel = GetLevel()
	if (nCureLevel < 200) then
		Say("C¸c H¹ Cã Muèn N©ng CÊp Kh«ng",2,"Ta Muèn N©ng CÊp/Up_Level_200","Hñy Bá/No")
	else
		Say("§· §¹t CÊp 200",2,"TiÕp Tôc ChuyÓn Sinh/TrungSinh","Hñy Bá/No")
	end
end
function Up_Level_200()
local nCureLevel = GetLevel()
local nAddLevel = 200 - nCureLevel
ST_LevelUp(nAddLevel)
Up_Level()
end

function TrungSinh()
local nTransLife = ST_GetTransLifeCount()
	if (nTransLife < 5) then
		ST_DoTransLife()
	else
		Talk(1,"","<color=yellow>Giíi H¹n Trïng Sinh 6 VÉn Ch­a Më")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function hotro()
	local tab_Content = {
		"Vßng s¸ng danh hiÖu/DanhHieu",
		"NhËn 10 viªn KNB/knb",
		"LÊy TiÒn §ång/tiendong",
		"LÊy Ng©n L­îng/tienvan",
		"Danh väng - Phóc duyªn/DVPD",
		"Tµi L·nh §¹o/lanhdao",
		"§iÓm Cèng HiÕn/conghien",
		"§iÓm Tèng Kim/TongKim",
		"KiÕn ThiÕt LÔ Bao/kienthiet",
		"NhËn LB Gäi Boss HKMP/bosshk",
		"§iÓm Thuéc TÝnh/ThuocTinh",
		"TÈy §iÓm/clear_attibute_point",
		"Th«i./no",
		"Trë l¹i"
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
end
------------------------------NhËn Kim Nguyªn B¶o----------------------------------------------------------------------------------------------------------------------------------------
function knb()
AskClientForNumber("layknb",0,60,"NhËp Sè L­îng:") 
end
function layknb(slknb)
for i=1, slknb do
AddEventItem(343)
end
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..slknb.." <color>KNB.")
end
-------------------------------NhËn TiÒn §ång----------------------------------------------------------
function tiendong()
AskClientForNumber("tiendong1",0,2000,"NhËp Sè L­îng:") 
end;
function tiendong1(sltiendong)
for i = 1, sltiendong do
AddStackItem(1,4,417,1,1,0,0,0)
end
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..sltiendong.." <color>tiÒn ®ång.")
end
---------------------------------NhËn Ng©n L­îng------------------------------------------------------------------------
function tienvan()
AskClientForNumber("nhantienvan",0,999999999,"Xin NhËp Sè L­îng")
end
function nhantienvan(num)
Earn(num,999999999)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=metal>"..num.."<color> Ng©n L­îng Thµnh C«ng");
end
-------------------NhËn Phóc Duyªn - Danh Väng----------------------------------------------------------
function DVPD()
local tab_Content =
{
"NhËn Danh Väng/danhvong",
"NhËn Phóc Duyªn/phucduyen",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y Chän Chøc N¨ng", getn(tab_Content), tab_Content)
end
----------------------------NhËn Danh Väng------------------------------------------------------------------------------------
function danhvong()
AskClientForNumber("danhvongINPUT",0,1000000,"NhËp Sè L­îng:") 
end
function danhvongINPUT(nNum)
AddRepute(nNum);
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Danh Väng...!<color>")
end
----------------------------NhËn Phóc Duyªn----------------------------------------------------------------------------------
function phucduyen()
AskClientForNumber("phucduyenINPUT",0,1000000,"NhËp Sè L­îng:") 
end
function phucduyenINPUT(nNum)
FuYuan_Start();
FuYuan_Add(nNum);
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Phóc Duyªn...!<color>")
end
------------------------------Tµi L·nh §¹o----------------------------------------------------------------------------------------------
function lanhdao()
AskClientForNumber("tailanhdao",0,20000000,"NhËp Sè L­îng:") 
end;
function tailanhdao(nNum)
AddLeadExp(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Tµi L·nh §¹o...!<color>")
end
------------------------------Cèng HiÕn---------------------------------------------------------------------------------
function conghien()
AskClientForNumber("diemconghien",0,100000000,"NhËp Sè L­îng:") 
end;
function diemconghien(nNum)
AddContribution(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Cèng HiÕn...!<color>")
end
------------------------------------§iÓm Tèng Kim----------------------------------------------------------------------------------------
function TongKim()
PlayerPoint = 747
	AskClientForNumber("DiemTongKim",0,1000000000,"NhËp Sè L­îng:")
end
function DiemTongKim(nNum)
SetTask(PlayerPoint,nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Tèng Kim...!<color>")
end
--------------------------------KiÕn ThiÕt-----------------------------------------------------------------------------------
function kienthiet()
local tbItem = {
	{szName="KiÕn ThiÕt LÔ Bao", tbProp={6,1,30217,1,0,0},nCount = 10},
	{szName="ChiÕn BÞ LÔ Bao", tbProp={6,1,30219,1,0,0},nCount = 10},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc KiÕn ThiÕt LÔ Bao...!<color>")
end
--------------------------------LÖnh Bµi Boss TiÓu------------------------------------------------------------------------------
function bosshk()
local tab_Content =
{
"NhËn LÖnh Bµi Boss TiÓu/bosstieu",
"NhËn LÖnh Bµi Boss §¹i/bossdai",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
end
-------------------------------------Boss TiÓu-------------------------------------------------------------------------------
function bosstieu()
for i =1,5 do
AddItem(6,1,1022,0,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Hoµng Kim <color>")
end
end
----------------------------------LÖnh Bµi-Boss §¹i---------------------------------------------------------------------------
function bossdai()
local tab_Content =
{
"LÖnh Bµi Tr­¬ng Tuyªn/truongtuyen",
"LÖnh Bµi Boss Kim ThÝ L­îng/kimthiluong",
"LÖnh Bµi Boss Mé Dung Toµn/modungtoan",
"Trë L¹i/bosshk",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn", getn(tab_Content), tab_Content)
end
-----------------------------------------Boss §¹i------------------------------------------------------------------------------------------
function truongtuyen()
AddItem(6,1,3083,1,1,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Tr­¬ng Tuyªn <color>")
end

function kimthiluong()
AddItem(6,1,3084,1,1,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Kim ThÝ L­îng <color>")
end

function modungtoan()
AddItem(6,1,3085,1,1,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Mé Dung Toµn <color>")
end
----------------------------§iÓm Thuéc TÝnh--------------------------------------------------------------------------------------------------
function ThuocTinh()
local tab_Content =
{
"§iÓm Kü N¨ng/pointkynang",
"§iÓm TiÒm N¨ng/pointtiemnang",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y Chän Chøc N¨ng", getn(tab_Content), tab_Content)
end
-----------------------------Point Kü N¨ng---------------------------------------------------------------------------------
function pointkynang()
AskClientForNumber("pointkynang1",0,100000,"NhËp Sè L­îng:") 
end;
function pointkynang1(nNum)
AddMagicPoint(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Kü N¨ng...!<color>")
end
---------------------------Point TiÒm N¨ng-------------------------------------------------------------------------------
function pointtiemnang()
AskClientForNumber("pointtiemnang1",0,10000,"NhËp Sè L­îng:") 
end;
function pointtiemnang1(nNum)
AddProp(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm TiÒm N¨ng...!<color>")
end
---------------------------------TÈy §iÓm Thuéc TÝnh---------------------------------------------------------------------------------------
function clear_attibute_point()
	local tbOpt = {
		{"TÈy ®iÓm kü n¨ng.", clear_skill},
		{"TÈy ®iÓm tiÒm n¨ng.", clear_prop},
		{"Trë vÒ", main},
		{"Tho¸t."},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------
function clear_skill()
local tbOpt = {
{"X¸c nhËn", do_clear_skill},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy", tbOpt)
end

function do_clear_skill()
local i = HaveMagic(210)
local j = HaveMagic(400)
local n = RollbackSkill()
local x = 0
if (i ~= -1) then i = 1; x = x + i end
if (j ~= -1) then x = x + j end
local rollback_point = n - x
if (rollback_point + GetMagicPoint() < 0) then
rollback_point = -1 * GetMagicPoint()
end
AddMagicPoint(rollback_point)
if (i ~= -1) then AddMagic(210, i) end
if (j ~= -1) then AddMagic(400, j) end 
Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i cã "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
KickOutSelf()
end
--------------------------------------------------------------------------------------------------
function clear_prop()
local tbOpt = {
{"X¸c nhËn", do_clear_prop},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end

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
----------------------------------------------------------------------------------------------------------------
function fifong()
	local tab_Content = {
		"Phi phong/PhiPhong",
		"Ngò Hµnh Ên/NguHanhAn",
		"Trang søc/TrangSuc",
		"LÊy Ngùa/Ngua",
		"Tho¸t./no",
		"Trë l¹i"
	}
	Say("Xin mêi chän", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------------------
function PhiPhong()
for i = 3905,3939 do
AddGoldItem(0,i)
end
end

function NguHanhAn()
for i=3950,3962 do
AddGoldItem(0, i)
end
end

function TrangSuc()
for i=3988,3997 do
AddGoldItem(0, i)
end
end

function Ngua()
local tab_Content =
{
"Ngùa nhãm 1./vip1",
"Ngùa nhãm 2./vip2",
"Ngùa nhãm 3./vip3",
"Ngùa nhãm 4./vip4",
"Ngùa nhãm 5./vip5",
"S­ tö hoµng kim./sutu",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Ngùa mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function vip1()
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)
AddItem(0,10,9,10,0,0,0)
AddItem(0,10,10,10,0,0,0)

end
function vip2()
AddItem(0,10,11,10,0,0,0)
AddItem(0,10,12,10,0,0,0)
AddItem(0,10,13,10,0,0,0)
AddItem(0,10,14,10,0,0,0)
AddItem(0,10,15,10,0,0,0)

end
function vip3()
AddItem(0,10,16,10,0,0,0)
AddItem(0,10,17,10,0,0,0)
AddItem(0,10,18,10,0,0,0)
AddItem(0,10,19,10,0,0,0)
AddItem(0,10,20,10,0,0,0)

end
function vip4()
AddItem(0,10,21,10,0,0,0)
AddItem(0,10,22,10,0,0,0)
AddItem(0,10,23,10,0,0,0)
AddItem(0,10,24,10,0,0,0)
AddItem(0,10,25,10,0,0,0)
end

function vip5()
for i=3963,3966 do
AddGoldItem(0, i)
end
end

function sutu()
AddGoldItem(0, 3967)
end
------------------------------------------------------------------------------------------------
local tbFreeItem = {
	{szName="Håi Thiªn T¸i T¹o CÈm Nang.", tbProp={6,1,1781,1,0,0}, tbParam={60}},
	{szName="Cµn Kh«n Song TuyÖt Béi.", tbProp={6,1,2219,0,0,0}},
	{szName="Nh¹c V­¬ng KiÕm.", tbProp={6,1,2340,0,0,0}},
	{szName="Qu¶ Huy Hoµng Cao CÊp.", tbProp={6,1,1075,1,0,0}},
	{szName="ThËp Toµn §¹i Bæ.", tbProp={6,1,1399,1,0,0}},
	{szName="Viªm §ª §å B¶o.", tbProp={6,1,2805,1,0,0}},
	{szName="Tèng Kim BÝ B¶o.", tbProp={6,1,2741,1,0,0}},
	{szName="§¹i Lùc Hoµn LÔ Hép.", tbProp={6,1,2517,1,0,0}},
	{szName="H·n HuyÕt Long C©u.", tbProp={0,10,18,1,0,0}, nWidth=2, nHeigth=3},
}

function show_item()
local tbOpt = {}
local nCount = getn(%tbFreeItem)
local szOption = ""
for i=1, nCount-1 do
szOption = format("NhËn %s", %tbFreeItem[i].szName)
tinsert(tbOpt, {szOption, get_item, {i}})
end
szOption = format("NhËn %s", %tbFreeItem[nCount].szName)
tinsert(tbOpt, {szOption, get_single_item, {nCount}})
tinsert(tbOpt, {"NhËn cùc phÈm giíi chØ...", get_normal_item})
tinsert(tbOpt, {"Trë vª.", main})
tinsert(tbOpt, {"Tho¸t."})
CreateNewSayEx("<npc>H·y chän vËt phÈm!", tbOpt)
end

function get_item(nIndex)
local nMaxCount = CalcFreeItemCellCount()
g_AskClientNumberEx(0, nMaxCount, "Xin mêi ®­a vµo nhËn lÊy", {get_item_back, {nIndex}})
end

function get_item_back(nIndex, nCount)
if nCount <= 0 then
return
end

if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("CÇn Ýt nhÊt <color=yellow>%d<color> tói kh«ng gian...", nCount))
return
end

local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
end

function get_single_item(nIndex)
local tbItem = %tbFreeItem[nIndex]
if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
Talk(1, "", format("CÇn Ýt nhÊt 1 %dx%d µÄ±³°ü¿O¼ä", tbItem.nWidth, tbItem.nHeigth))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", tbItem.szName)
tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle)
end
-----------------------------------------------------------------------------
function get_normal_item()
local i = random(1,15)
	if (i == 1) then
		AddGoldItem(0,4120)
	elseif (i == 2) then
		AddGoldItem(0,4121)
	elseif (i == 3) then
		AddGoldItem(0,4122)
	elseif (i == 4) then
		AddGoldItem(0,4123)
	elseif (i == 5) then
		AddGoldItem(0,4124)
	elseif (i == 6) then
		AddGoldItem(0,4125)
	elseif (i == 7) then
		AddGoldItem(0,4126)
	elseif (i == 8) then
		AddGoldItem(0,4127)
	elseif (i == 9) then
		AddGoldItem(0,4128)
	elseif (i == 10) then
		AddGoldItem(0,4129)
	elseif (i == 11) then
		AddGoldItem(0,4130)
	elseif (i == 12) then
		AddGoldItem(0,4131)
	elseif (i == 13) then
		AddGoldItem(0,4132)
	elseif (i == 14) then
		AddGoldItem(0,4133)
	elseif (i == 15) then
		AddGoldItem(0,4134)
	end
end
---------------------------------------------------------------------------------------------------------------
function trangthai()
local tbSay = {}
tinsert(tbSay,"Hç Trî ChiÕn §Êu/GMSkill")
tinsert(tbSay,"GM Èn Th©n.../GManthan")
tinsert(tbSay,"GM HiÖn Th©n.../XoaSkillGM")
tinsert(tbSay,"ChÝnh Ph¸i./mauvang")
tinsert(tbSay,"Tµ Ph¸i./mautim")
tinsert(tbSay,"Trung LËp./mauxanh")
tinsert(tbSay,"S¸t Thñ./maudo")
tinsert(tbSay,"Nh©n VËt Ch÷ Tr¾ng./mautrang")
tinsert(tbSay,"ChiÕn §Êu/ChienDau")
tinsert(tbSay,"Phi ChiÕn §Êu/PhiChienDau")
tinsert(tbSay,"Admin./mauadmin")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän tr¹ng th¸i mµ b¹n muèn !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------
function GMSkill()
AddMagic(1003,20)
AddMagic(1310,20)
end

function GManthan()
AddMagic(732,20)
AddMagic(733,20)
Msg2Player("<color=pink>Chóc Mõng B¹n §· Häc §­îc Skill GM...")
end

function XoaSkillGM()
DelMagic(732,20)
DelMagic(733,20)
DelMagic(1003.20)
DelMagic(1310.20)
Msg2Player("B¹n §· Xãa Kü N¨ng GM Thµnh C«ng")
end

function mautrang()
SetCurCamp(0)
SetCamp(0)
end

function ChienDau()
SetFightState(1)
end

function PhiChienDau()
SetFightState(0)
end

function mauvang()
SetCurCamp(1)
SetCamp(1)
end
function mautim()
SetCurCamp(2)
SetCamp(2) 
end
function mauxanh()
SetCurCamp(3)
SetCamp(3) 
end
function maudo()
SetCurCamp(4)
SetCamp(4) 
end

function mauadmin()
SetCurCamp(5)
SetCamp(5) 
end
---------------------------------------------------------------------
function nhanskill()
local tbSay = {}
tinsert(tbSay,"Vµo Ph¸i Häc full Skill/choose_faction")
tinsert(tbSay,"Vµo Ph¸i Hoa S¬n/PhaiHoaSon")
tinsert(tbSay,"NhËn Skill 180/nhanskill180")
tinsert(tbSay,"Kü N¨ng 120/kynang120")
tinsert(tbSay,"Kü N¨ng 90/kynang90")
tinsert(tbSay,"NhËn Skill/addskill")
tinsert(tbSay,"Xãa Skill/delskill")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Skill  !", getn(tbSay), tbSay)
end
--------------------------------------------------------------------------------------------------------
function nhanskill180()
local nFaction = GetLastFactionNumber() + 1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ Sö Dông MËt TÞch ThÊt TruyÒn")
		return 1;
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					SetTask(KyNangThatTruyen,1)
					Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc §­îc Kü N¨ng ThÊt TruyÒn<bclr><bclr=red> "..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Kh«ng ThÓ Häc N÷a")
					return 1;
				end
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------------------------
function kynang90()
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
end
function kynang120()
AddItem(6,1,2425,0,0,0,0)
AddItem(6,1,1125,0,0,0,0)
end
------------------------------------------------------
function addskill()
if check_faction() == 1 then
	Talk(1, "", "Ch­a gia nhËp m«n ph¸i kh«ng thÓ nhËn Skill ®­îc.")
	return
end
mp = GetFaction()
if GetLevel() >= 150 then	
if GetTask(5007) == 0 then
if mp == "shaolin" then
AddMagic(1055,20)
AddMagic(1056,20)
AddMagic(1057,20)
AddMagic(318,20)
AddMagic(319,20)
AddMagic(321,20)
AddMagic(709,20)
AddMagic(1220,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña ThiÕu L©m. ")
elseif mp == "tianwang" then
AddMagic(1058,20)
AddMagic(1059,20)
AddMagic(1060,20)
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(1221,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn V­¬ng. ")
elseif mp == "tangmen" then
AddMagic(1069,20)
AddMagic(1070,20)
AddMagic(1071,20)
AddMagic(1110,20)
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(351,0)
AddMagic(710,20)
AddMagic(1223,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña §­êng M«n. ")
elseif mp == "wudu" then
AddMagic(1066,20)
AddMagic(1067,20)
AddMagic(353,20)
AddMagic(355,20)
AddMagic(390,0)
AddMagic(711,20)
AddMagic(1222,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Ngò §éc.")
elseif mp == "emei" then
AddMagic(1061,20)
AddMagic(1062,20)
AddMagic(1114,20)
AddMagic(328,20)
AddMagic(380,20)
AddMagic(332,0)
AddMagic(712,20)
AddMagic(1224,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Nga My.")
elseif mp == "cuiyan" then
AddMagic(1063,20)
AddMagic(1065,20)
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(1225,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thóy Yªn.")
elseif mp == "gaibang" then
AddMagic(1073,20)
AddMagic(1074,20)
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(1227,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C¸i Bang.")
elseif mp == "tianren" then
AddMagic(1075,20)
AddMagic(1076,20)
AddMagic(362,20)
AddMagic(361,20)
AddMagic(391,0)
AddMagic(715,20)
AddMagic(1226,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn NhÉn.")
elseif mp == "wudang" then
AddMagic(1078,20)
AddMagic(1079,20)
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(1228,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Vâ §ang.")
elseif mp == "kunlun" then
AddMagic(1080,20)
AddMagic(1081,20)
AddMagic(372,20)
AddMagic(375,20)
AddMagic(394,0)
AddMagic(717,20)
AddMagic(1229,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña C«n L«n.")
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
end
end
------------------------------------------------------------------------------------------------------------------------
function delskill()
if check_faction() == 1 then
	Talk(1, "", "Ch­a tíi cÊp 150 ch­a thÓ xãa Skill ®­îc...!")
	return
end
mp = GetFaction()
if GetLevel() >= 150 then	
if GetTask(5007) == 0 then
if mp == "shaolin" then
DelMagic(1055,20)
DelMagic(1056,20)
DelMagic(1057,20)
DelMagic(318,20)
DelMagic(319,20)
DelMagic(321,20)
DelMagic(709,20)
DelMagic(1220,20)
Talk(1,"","Chóc mõng b¹n ®· xãa  thµnh c«ng tuyÖt kü cña ThiÕu L©m. ")
elseif mp == "tianwang" then
DelMagic(1058,20)
DelMagic(1059,20)
DelMagic(1060,20)
DelMagic(322,20)
DelMagic(325,20)
DelMagic(323,20)
DelMagic(708,20)
DelMagic(1221,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Thiªn V­¬ng. ")
elseif mp == "tangmen" then
DelMagic(1069,20)
DelMagic(1070,20)
DelMagic(1071,20)
DelMagic(1110,20)
DelMagic(302,20)
DelMagic(342,20)
DelMagic(339,20)
DelMagic(710,20)
DelMagic(1223,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña §­êng M«n. ")
elseif mp == "wudu" then
DelMagic(1066,20)
DelMagic(1067,20)
DelMagic(353,20)
DelMagic(355,20)
DelMagic(711,20)
DelMagic(1222,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Ngò §éc.")

elseif mp == "emei" then
DelMagic(1061,20)
DelMagic(1062,20)
DelMagic(1114,20)
DelMagic(328,20)
DelMagic(380,20)
DelMagic(712,20)
DelMagic(1224,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Nga My.")

elseif mp == "cuiyan" then
DelMagic(1063,20)
DelMagic(1065,20)
DelMagic(336,20)
DelMagic(337,20)
DelMagic(713,20)
DelMagic(1225,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Thóy Yªn.")

elseif mp == "gaibang" then
DelMagic(1073,20)
DelMagic(1074,20)
DelMagic(359,20)
DelMagic(357,20)
DelMagic(714,20)
DelMagic(1227,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña C¸i Bang.")
elseif mp == "tianren" then
DelMagic(1075,20)
DelMagic(1076,20)
DelMagic(362,20)
DelMagic(361,20)
DelMagic(715,20)
DelMagic(1226,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Thiªn NhÉn.")
elseif mp == "wudang" then
DelMagic(1078,20)
DelMagic(1079,20)
DelMagic(365,20)
DelMagic(368,20)
DelMagic(716,20)
DelMagic(1228,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Vâ §ang.")
elseif mp == "kunlun" then
DelMagic(1080,20)
DelMagic(1081,20)
DelMagic(372,20)
DelMagic(375,20)
DelMagic(717,20)
DelMagic(1229,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü 150 cña C«n L«n.")
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
end
end

function PhaiHoaSon()
	if GetCurCamp() == 0 then
		SetFaction("huashan")
		SetLastFactionNumber(10)
		SetTask(11,10*256)
		SetCamp(3) SetCurCamp(3)
		SetRank(89) SetSeries(2)
		KickOutSelf() addskill()
	else
		Talk(1,"","Ng­¬i §· Gia NhËp Ph¸i Råi")
	end
end

function addskill()
AddMagic(1347)
AddMagic(1372)
AddMagic(1349)
AddMagic(1350)
AddMagic(1374)
AddMagic(1375)
AddMagic(1351)
AddMagic(1376)
AddMagic(1354)
AddMagic(1378)
AddMagic(1355)
AddMagic(1379)
AddMagic(1358)
AddMagic(1360)
AddMagic(1380)
AddMagic(1364,20)
AddMagic(1382,20)
AddMagic(1365,20)
AddMagic(1370,20)
AddMagic(1368,20)
AddMagic(1384,20) 
end
--------------------------------------------------------------------------------------------------------------
function TrangBiHiem()
local tab_Content = {
	"Trang BÞ H¾c ThÇn/hacthan",
	"Trang BÞ Long T­¬ng/longtuong",
	"Tho¸t./no",
}
Say("Xin mêi chän !", getn(tab_Content), tab_Content);
end

function hacthan()
for i = 3998,4002 do
AddGoldItem(0,i)
end
end

function longtuong()
for i = 4018,4026 do
AddGoldItem(0,i)
end
end
----------------------------------------------------------------------------------------------
function hkmpdoxanh()
local tab_Content = {
	"Trang BÞ Hoµng Kim M«n Ph¸i./sethkmp",
	"Vò KhÝ HKMP./bachkim",
	"LÊy §å Xanh./laydoxanh",
	"LÊy §å TÝm./dotim1",
	"Bé An Bang./anbang",
	"[Cùc PhÈm] An Bang./anbang1",
	"[Hoµn Mü] An Bang./anbang2",
	"[Liªn §Êu] An Bang./anbang3",
	"Th«i./no",
	"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän trang bÞ mµ b¹n muèn !", getn(tab_Content), tab_Content)

end
--------------------------------------------------------------------------------------------------------------------------------
tbDoXanh =
{
[1]=
{
szName = "D©y chuyÒn",
tbEquip =
{
{"Toµn th¹ch h¹ng liªn",0,4,0},
{"Lôc PhØ Thóy Hé Th©n phï ",0,4,1},
}
},
[2]=
{
szName = "¸o gi¸p",
tbEquip =
{
{"ThÊt B¶o Cµ Sa",0,2,0},
{"Ch©n Vò Th¸nh Y",0,2,1},
{"Thiªn NhÉn MËt Trang",0,2,2},
{"Gi¸ng Sa Bµo",0,2,3},
{"§­êng Nghª gi¸p",0,2,4},
{"V¹n L­u Quy T«ng Y",0,2,5},
{"TuyÒn Long bµo",0,2,6},
{"Long Tiªu ®¹o Y",0,2,8},
{"Cöu VÜ B¹ch Hå trang",0,2,9},
{"TrÇm H­¬ng sam",0,2,10},
{"TÝch LÞch Kim Phông gi¸p",0,2,11},
{"V¹n Chóng TÒ T©m Y",0,2,12},
{"L­u Tiªn QuÇn",0,2,13},
}
},
[3]=
{
szName = "§ai l­ng",
tbEquip =
{
{"Thiªn Tµm Yªu §¸i",0,6,0},
{"B¹ch Kim Yªu §¸i",0,6,1},
}
},
[4]=
{
szName = "Giµy",
tbEquip =
{
{"Cöu TiÕt X­¬ng VÜ Ngoa",0,5,0},
{"Thiªn Tµm Ngoa",0,5,1},
{"Kim Lò hµi",0,5,2},
{"Phi Phông Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Phông HuyÕt Ngäc Tr¹c",0,8,0},
{"Thiªn Tµm Hé UyÓn",0,8,1},
}
},
[6]=
{
szName = "Nãn",
tbEquip =
{
{"Tú L« m·o",0,7,0},
{"Ngò l·o qu¸n",0,7,1},
{"Tu La Ph¸t kÕt",0,7,2},
{"Th«ng Thiªn Ph¸t Qu¸n",0,7,3},
{"YÓm NhËt kh«i",0,7,4},
{"TrÝch Tinh hoµn",0,7,5},
{"¤ Tµm M·o",0,7,6},
{"Quan ¢m Ph¸t Qu¸n",0,7,7},
{"¢m D­¬ng V« Cùc qu¸n",0,7,8},
{"HuyÒn Tª DiÖn Tr¸o",0,7,9},
{"Long HuyÕt §Çu hoµn",0,7,10},
{"Long L©n Kh«i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Phông TriÓn SÝ ",0,7,13},
}
},
[7]=
{
szName = "Vò khÝ c©n chiÕn",
tbEquip =
{
{"HuyÒn ThiÕt KiÕm",0,0,0},
{"§¹i Phong §ao",0,0,1},
{"Kim C« Bæng",0,0,2},
{"Ph¸ Thiªn KÝch",0,0,3},
{"Ph¸ Thiªn chïy",0,0,4},
{"Th«n NhËt Tr·m",0,0,5},
}
},
[8]=
{
szName = "Ngäc béi",
tbEquip =
{
{"Long Tiªn H­¬ng Nang",0,9,0},
{"D­¬ng Chi B¹ch Ngäc",0,9,1},
}
},
[9]=
{
szName = "Vò khÝ tÇm xa",
tbEquip =
{
{"B¸ V­¬ng Tiªu",0,1,0},
{"To¸i NguyÖt §ao",0,1,1},
{"Khæng T­íc Linh",0,1,2},
}
},
[10]=
{
szName = "NhÉn",
tbEquip =
{
{"Toµn Th¹ch Giíi ChØ ",0,3,0},
}
},
}
function laydoxanh()
local tbOpt = {}

for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"Tho¸t."})
CreateNewSayEx("<npc>Xin mêi lùa chän trang bÞ:", tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"Tho¸t."})
local szTitle = format("<npc>Xin mêi lùa chän trang bÞ:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"Méc", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Thñy", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"Háa", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Thæ ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"Tho¸t."})
local szTitle = format("<npc>Chän hÖ:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 60, "Sè l­îng:", {laydoxanh4, {nIndex, nType, nSeries}})
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
for i=1,nCount do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 200, 10) end
end
-----------------------------------------------------------------------------------------------------------------------------------------------
function anbang()
for i=216,219 do
AddGoldItem(0, i)
end
end

function anbang1()
for i=408,411  do
AddGoldItem(0, i)
end
end

function anbang2()
for i=210,213  do
AddGoldItem(0, i)
end
end

function anbang3()
for i=394,397  do
AddGoldItem(0, i)
end
end
-----------------------------------------------------------------------------------------
function dotim1()
local	tab_Content = {
"Vò KhÝ/weapon",
"Y Phôc/shirt",
"§Ønh M¹o/hat",
"Hæ UyÓn/glove",
"Yªu §¸i/belt",
"Hµi Tö/shoe",
"Th«i./no",
"Trë l¹i"
}
Say(" Xin mêi chän  ? ", getn(tab_Content), tab_Content);
end
------------------------------------------------------------------------------
function weapon()
local tab_Content = {
"KiÕm/kiem",
"§ao/dao",
"Bæng/bong",
"Th­¬ng/kick",
"Chïy/chuy",
"Song §ao/songdao",
"Phi Tiªu/phitieu",
"Phi §ao/phidao",
"Tô TiÔn/tutien",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo", getn(tab_Content), tab_Content);
end;
--------------------------------------------------------------------------------
function kiem()
AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function dao()
AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function bong()
AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function kick()
AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function chuy()
AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function songdao()
AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function phitieu()
AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function phidao()
AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function tutien()
AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end
-------------------------------------------------------------------
function shirt()
local tab_Content = {
"ThÊt B¶o Cµ Sa/aothieulam",
"Ch©n Vò Th¸nh Y/aovodang",
"Thiªn NhÉn MËt Trang/aothiennhan",
"Gi¸ng Sa Bµo/sabao",
"§­êng Nghª Gi¸p/dng",
"V¹n L­u Quy T«ng Y/aocaibang",
"TuyÒn Long Bµo/longbao",
"Long Tiªu §¹o Y/daoy",
"Cöu VÜ B¹ch Hå Trang/hotrang",
"TrÇm H­¬ng Sam/huongsam",
"TÝch LÞch Kim Phông Gi¸p/kimphung",
"V¹n Chóng TÒ T©m Y/tamy",
"L­u Tiªn QuÇn/tienquan",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
---------------------------------
function aothieulam()
AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aovodang()
AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aothiennhan()
AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function sabao()
AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function dng()
AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aocaibang()
AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end

function longbao()
AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end

function daoy()
AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end

function hotrang()
AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end

function huongsam()
AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end

function kimphung()
AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tamy()
AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tienquan()
AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end
--------------------------------------------------------------------
function hat()
local tab_Content = {
"Tú L« M·o/lomao",
"Ngò L·o Qu¸n/laoquan",
"Tu La Ph¸t KÕt/phatket",
"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
"YÓm NhËt Kh«i/nhatkhoi",
"TrÝch Tinh Hoµn/tinhhoan",
"¤ Tµm M·o/tammao",
"Quan ¢m Ph¸t Qu¸n/quanam",
"¢m D­¬ng V« Cùc Qu¸n/amduong",
"HuyÒn Tª DiÖn Tr¸o/dientrao",
"Long HuyÕt §Çu Hoµn/longhuyet",
"Long L©n Kh«i/lankhoi",
"Thanh Tinh Thoa/tinhthoa",
"Kim Phông TriÓn SÝ/triensi",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
--------------------------
function lomao()
AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function laoquan()
AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phatket()
AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phatquan()
AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function nhatkhoi()
AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tinhhoan()
AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tammao()
AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end

function quanam()
AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end

function amduong()
AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end

function dientrao()
AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end

function longhuyet()
AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end

function lankhoi()
AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tinhthoa()
AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end

function triensi()
AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end
---------------------------------------------------------------
function glove()
local tab_Content = {
"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
"Thiªn Tµm Hé UyÓn/houyen",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
----------------------
function ngoctrac()
AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function houyen()
AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end
-------------------------------------------------------------------
function belt()
local tab_Content = {
"Thiªn Tµm Yªu §¸i/thientamyeu",
"B¹ch Kim Yªu §¸i/bachkimyeudai",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
-----------------------
function thientamyeu()
AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function bachkimyeudai()
AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end
----------------------------------------------------------------------------
function shoe()
local tab_Content = {
"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
"Thiªn Tµm Ngoa/thientam",
"Kim Lò Hµi/kimlu",
"Phi Phông Ngoa/phiphung",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
--------------------------
function cuutien()
AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function thientam()
AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function kimlu()
AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phiphung()
AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end
---------------------------------------------------------------
function khoangth()
local tab_Content = {
"HuyÒn tinh/huytin",
"Kho¸ng th¹ch/kdb",
"S¸t thñ gi¶n 80./stg80",
"S¸t thñ gi¶n 90./stg90",
"Thñy tinh/thuyti",
"Phóc duyªn/phucd",
"Tho¸t./no",
"Trë l¹i."
}
Say(" Ng­¬i muèn lÊy g× nµo? ", getn(tab_Content), tab_Content);
end;
-----------------------------------------------------------------------------
function huytin() 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
end

function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,0,0,0)
AddItem(6,1,154,1,1,0,0) 
AddItem(6,1,154,1,2,0,0) 
AddItem(6,1,154,1,3,0,0) 
AddItem(6,1,154,1,4,0,0) 
end


function stg80()
AddItem(6,1,400,80,0,0,0) 
AddItem(6,1,400,80,1,0,0) 
AddItem(6,1,400,80,2,0,0) 
AddItem(6,1,400,80,3,0,0) 
AddItem(6,1,400,80,4,0,0) 
end

function stg90()
AddItem(6,1,400,90,0,0,0) 
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 
AddItem(6,1,400,90,3,0,0) 
AddItem(6,1,400,90,4,0,0) 
end

function thuyti()
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end
------------------------------------------Danh HiÖu--------------------------------------------------------------------------------------------------
function DanhHieu()
local tab_Content =
{
"Vßng s¸ng Admin./vsadmin",
"Vâ L©m KiÖt XuÊt./vlkx",
"Vâ L©m Minh Chñ 1./vlmc1",
"Vâ L©m Minh Chñ 2./vlmc2",
"Ngù Long Cuång §ao./ngulongcd",
"§¹i Héi Server./daihoisv",
"Thiªn H¹ §Ö NhÊt Bang./thdnb",
"TuyÖt ThÕ Cao Thñ./tuyetthect",
"M·nh Long Tranh B¸./manhlongtb",
"Th«i./no",
"Trë l¹i"
}
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Danh HiÖu !", getn(tab_Content), tab_Content);
end
----------------------------------------------------------------------------------------------------------------------------
function vsadmin()
n_title = 228---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function vlkx()
n_title = 85 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function vlmc2()
n_title = 3000 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function vlmc1()
n_title = 188 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function ngulongcd()
n_title = 165 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function daihoisv()
n_title = 150 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function thdnb()
n_title = 189 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function tuyetthect()
n_title = 235 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function manhlongtb()
n_title = 263 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function xunghieu()
local tbSay = {}

tinsert(tbSay,"ThiÕu L©m ./xunghieu1")
tinsert(tbSay,"Thiªn V­¬ng./xunghieu2")
tinsert(tbSay,"Ngò §éc./xunghieu3")
tinsert(tbSay,"§­êng M«n./xunghieu4")
tinsert(tbSay,"Nga Mi./xunghieu5")
tinsert(tbSay,"Thóy Yªn./xunghieu6")
tinsert(tbSay,"C¸i Bang./xunghieu7")
tinsert(tbSay,"Thiªn NhÉn./xunghieu8")
tinsert(tbSay,"Vâ §ang./xunghieu9")
tinsert(tbSay,"C«n L«n./xunghieu10")
tinsert(tbSay,"Hoa S¬n./xunghieu11")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän M«n Ph¸i  !", getn(tbSay), tbSay)
end

function xunghieu1()
SetRank(72)
Msg2Player("B¹n ®­îc x­ng hiÖu: Hé Ph¸p Tr­ëng L·o.")
end
function xunghieu2()
SetRank(69)
Msg2Player("B¹n ®­îc x­ng hiÖu: K×nh Thiªn Nguyªn So¸i.")
end
function xunghieu3()
SetRank(80)
Msg2Player("B¹n ®­îc x­ng hiÖu: U Minh Quû V­¬ng.")
end
function xunghieu4()
SetRank(76)
Msg2Player("B¹n ®­îc x­ng hiÖu: Lôc C¸c Tr­ëng L·o.")
end
function xunghieu5()
SetRank(64)
Msg2Player("B¹n ®­îc x­ng hiÖu: Kim §Ønh Th¸nh N÷.")
end
function xunghieu6()
SetRank(67)
Msg2Player("B¹n ®­îc x­ng hiÖu: Hoa ThÇn.")
end
function xunghieu7()
SetRank(78)
Msg2Player("B¹n ®­îc x­ng hiÖu: Cöu §¹i Tr­ëng L·o.")
end
function xunghieu8()
SetRank(81)
Msg2Player("B¹n ®­îc x­ng hiÖu: Th¸nh Gi¸o Tr­ëng L·o.")
end
function xunghieu9()
SetRank(73)
Msg2Player("B¹n ®­îc x­ng hiÖu: HuyÒn Vâ Ch©n Nh©n.")
end
function xunghieu10()
SetRank(75)
Msg2Player("B¹n ®­îc x­ng hiÖu: Hé Ph¸i Ch©n Qu©n.")
end
function xunghieu11()
SetRank(89)
Msg2Player("B¹n ®­îc x­ng hiÖu: V« L­îng Thiªn T«n.")
end
-----------------------------------------------------------------------------------------------
local tbFaction =
{
	[1] =
	{
		szShowName = "ThiÕu L©m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
		tbEquip =
		{
			{
				szFaction = "ThiÕu L©m QuyÒn",
				nFirstEquipId = 4863,
				tbEquipName =
				{
					" Minh Ph­îng ch©u liªn", " Minh Ph­îng t¨ng m·o", " Minh Ph­îng th­îng giíi", " Minh Ph­îng hé uyÓn", " Minh Ph­îng yªu ®¸i",
					" Minh Ph­îng cµ sa ", " Minh Ph­îng triÒn thñ ", " Minh Ph­îng t¨ng hµi ", " Minh Ph­îng yªu trôy ", " Minh Ph­îng h¹ giíi ",
				},
			},
			{
				szFaction = "ThiÕu L©m C«n",
				nFirstEquipId = 4873,
				tbEquipName =
				{
					"Minh Ph­îng ch©u liªn", "Minh Ph­îng t¨ng m·o", "Minh Ph­îng th­îng giíi", "Minh Ph­îng hé uyÓn", "Minh Ph­îng yªu ®¸i",
					"Minh Ph­îng cµ sa", "Minh Ph­îng c«n", "Minh Ph­îng t¨ng hµi", "Minh Ph­îng yªu trôy", "Minh Ph­îng h¹ giíi", 
				},
			},
			{
				szFaction = "ThiÕu L©m §ao",
				nFirstEquipId = 4883,
				tbEquipName =
				{
					"Minh Ph­îng ch©u liªn", "Minh Ph­îng t¨ng m·o", "Minh Ph­îng th­îng giíi", "Minh Ph­îng hé uyÓn", "Minh Ph­îng yªu ®¸i",
					"Minh Ph­îng cµ sa", "Minh Ph­îng ®ao", "Minh Ph­îng t¨ng hµi", "Minh Ph­îng yªu trôy", "Minh Ph­îng h¹ giíi",
				},
			},
		},
	},
	[2] =
	{
		szShowName = "Thiªn V­¬ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
		tbEquip =
		{
			{
				szFaction = "Thiªn V­¬ng Chïy",
				nFirstEquipId = 4893,
				tbEquipName =
				{
					"Minh Ph­îng ®Þnh quang liªn", "Minh Ph­îng ®Þnh quang kh«i", "Minh Ph­îng ®Þnh quang th­îng giíi", "Minh Ph­îng ®Þnh quang thóc o¶n", "Minh Ph­îng ®Þnh quang yªu ®¸i",
					"Minh Ph­îng ®Þnh quang kh¶i", "Minh Ph­îng ®Þnh quang chïy", "Minh Ph­îng ®Þnh quang ngoa", "Minh Ph­îng ®Þnh quang béi", "Minh Ph­îng ®Þnh quang h¹ giíi",
				},
			},
			{
				szFaction = "Thiªn V­¬ng Th­¬ng",
				nFirstEquipId = 4903,
				tbEquipName =
				{
					"Minh Ph­îng ngù phong liªn", "Minh Ph­îng ngù phong kh«i", "Minh Ph­îng ngù phong th­îng giíi", "Minh Ph­îng ngù phong thóc o¶n", "Minh Ph­îng ngù phong yªu ®¸i",
					"Minh Ph­îng ngù phong kh¶i", "Minh Ph­îng ngù phong th­¬ng", "Minh Ph­îng ngù phong ngoa", "Minh Ph­îng ngù phong béi", "Minh Ph­îng ngù phong h¹ giíi",
				},
			},
			{
				szFaction = "Thiªn V­¬ng §ao",
				nFirstEquipId = 4913,
				tbEquipName =
				{
					"Minh Ph­îng biÓu phong liªn", "Minh Ph­îng biÓu phong kh«i", "Minh Ph­îng biÓu phong th­îng giíi", "Minh Ph­îng biÓu phong thóc o¶n", "Minh Ph­îng biÓu phong yªu ®¸i",
					"Minh Ph­îng biÓu phong kh¶i", "Minh Ph­îng biÓu phong ®ao", "Minh Ph­îng biÓu phong ngoa", "Minh Ph­îng biÓu phong béi", "Minh Ph­îng biÓu phong h¹ giíi",
				},
			},
		},
	},
	[3] =
	{
		szShowName = "§­êng M«n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
		tbEquip =
		{
			{
				szFaction = "Phi §ao §­êng M«n",
				nFirstEquipId = 4983,
				tbEquipName =
				{
					"Minh Ph­îng nÆc ¶nh h¹ng liªn", "Minh Ph­îng nÆc ¶nh qu¸n", "Minh Ph­îng nÆc ¶nh th­îng giíi", "Minh Ph­îng nÆc ¶nh hé uyÓn", "Minh Ph­îng nÆc ¶nh triÒn yªu",
					"Minh Ph­îng nÆc ¶nh gi¸p", "Minh Ph­îng nÆc ¶nh phi ®ao", "Minh Ph­îng nÆc ¶nh ngoa", "Minh Ph­îng nÆc ¶nh yªu trôy", "Minh Ph­îng nÆc ¶nh h¹ giíi",
				},
			},
			{
				szFaction = "Ná §­êng M«n",
				nFirstEquipId = 4993,
				tbEquipName =
				{
					"Minh Ph­îng cùc quang h¹ng liªn", "Minh Ph­îng cùc quang qu¸n", "Minh Ph­îng cùc quang th­îng giíi", "Minh Ph­îng cùc quang hé uyÓn", "Minh Ph­îng cùc quang triÒn yªu",
					"Minh Ph­îng cùc quang gi¸p", "Minh Ph­îng cùc quang ná ", "Minh Ph­îng cùc quang ngoa ", "Minh Ph­îng cùc quang yªu trôy ", "Minh Ph­îng cùc quang h¹ giíi ",
				},
			},
			{
				szFaction = "Phi Tiªu §­êng M«n",
				nFirstEquipId = 5003,
				tbEquipName =
				{
					" Minh Ph­îng th­íc kim h¹ng liªn ", " Minh Ph­îng th­íc kim qu¸n ", " Minh Ph­îng th­íc kim th­îng giíi ", " Minh Ph­îng th­íc kim hé uyÓn ", " Minh Ph­îng th­íc kim triÒn yªu ",
					" Minh Ph­îng th­íc kim gi¸p ", " Minh Ph­îng th­íc kim phi tiªu ", " Minh Ph­îng th­íc kim ngoa ", " Minh Ph­îng th­íc kim yªu trôy ", " Minh Ph­îng th­íc kim h¹ giíi ",
				},
			},
		},
	},
	[4] =
	{
		szShowName = "Ngò §éc Gi¸o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067},
		tbEquip =
		{
			{
				szFaction = "Ngò §éc Ch­ëng",
				nFirstEquipId = 4963,
				tbEquipName =
				{
					" Minh Ph­îng ®éc sa h¹ng liªn ", " H¹ch Hæ ®éc sa ph¸t ®¸i ", " Minh Ph­îng ®éc sa th­îng giíi ", " Minh Ph­îng ®éc sa hé uyÓn ", " Minh Ph­îng ®éc sa yªu ®¸i ",
					" Minh Ph­îng ®éc sa bÝ trang ", " Minh Ph­îng ®éc sa triÒn thñ ", " Minh Ph­îng ®éc sa ngoa ", " Minh Ph­îng ®éc sa yªu trôy ", " Minh Ph­îng ®éc sa h¹ giíi ",
				},
			},
			{
				szFaction = "Ngò §éc §ao",
				nFirstEquipId = 4973,
				tbEquipName =
				{
					" Minh Ph­îng u linh h¹ng liªn ", " H¹ch Hæ u linh ph¸t ®¸i ", " Minh Ph­îng u linh th­îng giíi ", " Minh Ph­îng u linh hé uyÓn ", " Minh Ph­îng u linh yªu ®¸i ",
					" Minh Ph­îng u linh bÝ trang ", " Minh Ph­îng u linh ®ao ", " Minh Ph­îng u linh ngoa ", " Minh Ph­îng u linh yªu trôy ", " Minh Ph­îng u linh h¹ giíi ",
				},
			},
		},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712, 1061, 1062, 1114},
		tbEquip =
		{
			{
				szFaction = "Nga Mi KiÕm",
				nFirstEquipId = 4923,
				tbEquipName =
				{
					"Minh Ph­îng l­u v©n ch©u liªn", "Minh Ph­îng l­u v©n ph¸t ®¸i", "Minh Ph­îng l­u v©n th­îng giíi", "Minh Ph­îng l­u v©n hé uyÓn", "Minh Ph­îng l­u v©n yªu ®¸i ",
					"Minh Ph­îng l­u v©n sam", "Minh Ph­îng l­u v©n kiÕm", "Minh Ph­îng l­u v©n ngoa", "Minh Ph­îng l­u v©n béi ", "Minh Ph­îng l­u v©n h¹ giíi ",
				},
			},
			{
				szFaction = "Nga Mi Ch­ëng",
				nFirstEquipId = 4933,
				tbEquipName =
				{
					"Minh Ph­îng hµn ngäc ch©u liªn ", "Minh Ph­îng hµn ngäc ph¸t ®¸i", "Minh Ph­îng hµn ngäc th­îng giíi", "Minh Ph­îng hµn ngäc hé uyÓn", "Minh Ph­îng hµn ngäc yªu ®¸i",
					"Minh Ph­îng hµn ngäc sam", "Minh Ph­îng hµn ngäc triÒn thñ ", "Minh Ph­îng hµn ngäc ngoa ", "Minh Ph­îng hµn ngäc béi ", "Minh Ph­îng hµn ngäc h¹ giíi ",
				},
			},
		},
	},
	[6] =
	{
		szShowName = "Thóy Yªn",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
		tbEquip =
		{
			{
				szFaction = "Thóy Yªn §ao (Ngo¹i)",
				nFirstEquipId = 4943,
				tbEquipName =
				{
					"Minh Ph­îng hång nhan ch©u liªn ", "Minh Ph­îng hång nhan ph¸t ®¸i", "Minh Ph­îng hång nhan th­îng giíi", "Minh Ph­îng hång nhan hé uyÓn", "Minh Ph­îng hång nhan yªu ®¸i",
					"Minh Ph­îng hång nhan sam", "Minh Ph­îng hång nhan ®ao ", "Minh Ph­îng hång nhan ngoa ", "Minh Ph­îng hång nhan béi ", "Minh Ph­îng hång nhan h¹ giíi ",
				},
			},
			{
				szFaction = "Thóy Yªn Song §ao (Néi)",
				nFirstEquipId = 4953,
				tbEquipName =
				{
					"Minh Ph­îng ¶o th¸i ch©u liªn ", "Minh Ph­îng ¶o th¸i ph¸t ®¸i", "Minh Ph­îng ¶o th¸i th­îng giíi", "Minh Ph­îng ¶o th¸i hé uyÓn", "Minh Ph­îng ¶o th¸i yªu ®¸i",
					"Minh Ph­îng ¶o th¸i sam", "Minh Ph­îng ¶o th¸i ®ao ", "Minh Ph­îng ¶o th¸i ngoa ", "Minh Ph­îng ¶o th¸i béi ", "Minh Ph­îng ¶o th¸i h¹ giíi ",
				},
			},
		},
	},
	[7] =
	{
		szShowName = "C¸i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
		tbEquip =
		{
			{
				szFaction = "C¸i Bang Ch­ëng",
				nFirstEquipId = 5013,
				tbEquipName =
				{
					" Minh Ph­îng hé ph¸p h¹ng liªn", " Minh Ph­îng hé ph¸p ®Çu hoµn", " Minh Ph­îng hé ph¸p th­îng giíi ", " Minh Ph­îng hé ph¸p hé uyÓn ", " Minh Ph­îng hé ph¸p thóc yªu",
					" Minh Ph­îng hé ph¸p c¸i y", " Minh Ph­îng hé ph¸p triÒn thñ ", " Minh Ph­îng hé ph¸p ngoa ", "Minh Ph­îng hé ph¸p béi ", " Minh Ph­îng hé ph¸p h¹ giíi ",
				},
			},
			{
				szFaction = "C¸i Bang Bæng",
				nFirstEquipId = 5023,
				tbEquipName =
				{
					"Minh Ph­îng trõng giíi h¹ng liªn", "Minh Ph­îng trõng giíi ®Çu hoµn", "Minh Ph­îng trõng giíi th­îng giíi ", "Minh Ph­îng trõng giíi hé uyÓn", "Minh Ph­îng trõng giíi thóc yªu",
					"Minh Ph­îng trõng giíi c¸i y", "Minh Ph­îng trõng giíi tr­îng", "Minh Ph­îng trõng giíi ngoa", "Minh Ph­îng trõng giíi béi", "Minh Ph­îng trõng giíi h¹ giíi ",
				},
			},
		},
	},
	[8] =
	{
		szShowName = "Thiªn NhÉn Gi¸o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
		tbEquip =
		{
			{
				szFaction = "ChiÕn NhÉn",
				nFirstEquipId = 5033,
				tbEquipName =
				{
					"Minh Ph­îng xÝch minh h¹ng liªn", "H¹ch Hæ xÝch minh kh«i", "Minh Ph­îng xÝch minh th­îng giíi", "Minh Ph­îng xÝch minh hé o¶n", "Minh Ph­îng xÝch minh yªu ®¸i",
					"Minh Ph­îng xÝch minh gi¸p", "Minh Ph­îng xÝch minh th­¬ng", "Minh Ph­îng xÝch minh ngoa", "Minh Ph­îng xÝch minh béi", "Minh Ph­îng xÝch minh h¹ giíi",
				},
			},
			{
				szFaction = "Ma NhÉn",
				nFirstEquipId = 5043,
				tbEquipName =
				{
					"Minh Ph­îng s¸t viªm h¹ng liªn", "H¹ch Hæ s¸t viªm kh«i", "Minh Ph­îng s¸t viªm th­îng giíi", "Minh Ph­îng s¸t viªm hé o¶n", "Minh Ph­îng s¸t viªm yªu ®¸i",
					"Minh Ph­îng s¸t viªm gi¸p", "Minh Ph­îng s¸t viªm ®ao", "Minh Ph­îng s¸t viªm ngoa", "Minh Ph­îng s¸t viªm béi", "Minh Ph­îng s¸t viªm h¹ giíi",
				},
			},
		},
	},
	[9] =
	{
		szShowName = "Vâ §ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
		tbEquip =
		{
			{
				szFaction = "Vâ §ang KhÝ",
				nFirstEquipId = 5053,
				tbEquipName =
				{
					" Minh Ph­îng tiªn ©m phï ", " Minh Ph­îng tiªn ©m qu¸n", " Minh Ph­îng tiªn ©m th­îng giíi ", " Minh Ph­îng tiªn ©m tô ", " Minh Ph­îng tiªn ©m ph¸p ®¸i ",
					" Minh Ph­îng tiªn ©m ®¹o bµo ", " Minh Ph­îng tiªn ©m kiÕm ", " Minh Ph­îng tiªn ©m ngoa ", " Minh Ph­îng tiªn ©m béi ", " Minh Ph­îng tiªn ©m h¹ giíi ",
				},
			},
			{
				szFaction = "Vâ §ang KiÕm",
				nFirstEquipId = 5063,
				tbEquipName =
				{
					" Minh Ph­îng ®¹o minh phï ", " Minh Ph­îng ®¹o minh qu¸n ", " Minh Ph­îng ®¹o minh th­îng giíi ", " Minh Ph­îng ®¹o minh tô ", " Minh Ph­îng ®¹o minh ph¸p ®¸i ",
					" Minh Ph­îng ®¹o minh ®¹o bµo ", " Minh Ph­îng ®¹o minh kiÕm ", " Minh Ph­îng ®¹o minh ngoa ", " Minh Ph­îng ®¹o minh béi ", " Minh Ph­îng ®¹o minh h¹ giíi ",
				},
			},
		},
	},
	[10] =
	{
		szShowName = "C«n L«n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
		tbEquip =
		{
			{
				szFaction = "C«n L«n §ao",
				nFirstEquipId = 5073,
				tbEquipName =
				{
					"Minh Ph­îng thiªn canh h¹ng liªn ", "Minh Ph­îng thiªn canh ®¹o qu¸n", "Minh Ph­îng thiªn canh th­îng giíi", "Minh Ph­îng thiªn canh hé uyÓn", "Minh Ph­îng thiªn canh ph¸p ®¸i",
					"Minh Ph­îng thiªn canh ®¹o bµo", "Minh Ph­îng thiªn canh ®ao", "Minh Ph­îng thiªn canh ngoa", "Minh Ph­îng thiªn canh béi", "Minh Ph­îng thiªn canh h¹ giíi",
				},
			},
			{
				szFaction = "C«n L«n KiÕm",
				nFirstEquipId = 5083,
				tbEquipName =
				{
					"Minh Ph­îng ng¹o s­¬ng h¹ng liªn ", "Minh Ph­îng ng¹o s­¬ng ®¹o qu¸n", "Minh Ph­îng ng¹o s­¬ng th­îng giíi", "Minh Ph­îng ng¹o s­¬ng hé uyÓn", "Minh Ph­îng ng¹o s­¬ng ph¸p ®¸i",
					"Minh Ph­îng ng¹o s­¬ng ®¹o bµo", "Minh Ph­îng ng¹o s­¬ng kiÕm ", "Minh Ph­îng ng¹o s­¬ng ngoa ", "Minh Ph­îng ng¹o s­¬ng béi", "Minh Ph­îng ng¹o s­¬ng h¹ giíi",
				},
			},
		},
	},
}

local tbFactionSeries =
{
[1] = {1, 2},
[2] = {3, 4},
[3] = {5, 6},
[4] = {7, 8},
[5] = {9, 10},
}

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
local nFaction = GetLastFactionNumber()
if nFaction == 10 then
	Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i råi")
return end
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i råi.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Trë vª", dialog_main})
	tinsert(tbOpt, {"Tho¸t."})
	CreateNewSayEx("<npc>Mét khi gia nhËp m«n ph¸i kh«ng thÓ thay ®æi, h·y suy nghÜ kü.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X¸c nhËn muèn gia nhËp m«n ph¸i ?<color=yellow>%s<color> m«n ph¸i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X¸c nhËn!", do_set_faction, {nIndex}},
		{"Trë vª.", choose_faction},
		{"Tho¸t."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	Talk(1, "KickOutSelf", format("Ng­¬i ®· gia nhËp thµnh c«ng ph¸i %s", %tbFaction[nIndex].szShowName))
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn thËn trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end--for
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!");	
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function BangHoi()
local strTongName = GetTongName()
local tszTitle = "Chµo Mõng B¹n §· Tham Gia HÖ Thèng <color=yellow>Bang Héi<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,6,
		"NhËn §iÒu KiÖn T¹o Bang Héi/dmcreatetong",
		"Gia NhËp Bang Héi/dmjointong",
		"T¹o bang héi/dmcreateit",
		"KÕt Thóc §èi Tho¹i/No")
	end
end

function dmcreatetong()
	if  GetCamp() ~= 0 then
		if GetLevel() >= 50 then
			SetCamp(4)
			SetCurCamp(4)
			AddRepute(450)
			AddLeadExp(10000000)
			AddEventItem(195)
			Msg2Player("<color=yellow>Ng­êi §· Héi §ñ TÊt C¶ §iªu KiÖn CÓ T¹o Bang Héi<color>")
		else
				Talk(1,"","<bclr=red>"..myplayersex().." Ch­a §ñ CÊp 50")
		end
	else
		Talk(1,"","<bclr=red>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ NhËn §iÒu KiÖn Bang Héi")
	end
end

function dmjointong()
local n_fac = GetLastFactionNumber();
	if (n_fac >= 0) and (n_fac <= 10) then
		if GetLevel() >= 50 then
			SetCamp(4) SetCurCamp(4) ConsumeEquiproomItem(200,4,417,1,-1) Msg2Player("Chóc Mõng "..myplayersex().." §· XuÊt S­ Thµnh C«ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 50 H·y Cè G¾ng RÌn LuyÖn Thªm Råi §Õn T×m Ta")
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i HoÆc §· Cã Bang Héi\n                            Kh«ng ThÓ NhËn §iÒu KiÖn")
	end
end

function dmcreateit()
Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 0) then
		if (HaveItem(195) == 1) and (GetRepute() >= 450) and (GetLeadLevel() >= 30) and (GetLevel() >= 50) and (GetCamp() == 4) and (oper == 0) then
			Say("KiÕm HiÖp Ch­ëng M«n Nh©n:Khai S¸ng Bang Héi, Më Réng B¸ NghiÖp",2,"B¾t BÇu Dùng Bang/TaoBangHoi","§îi Ta Mét Chót/No")
		else	
			Talk(1,"","<bclr=violet>C¸c H¹ Muèn T¹o Dùng Bang Ph¸i:\nYªu CÇu §¼ng CÊp 50 Trë Lªn, Danh Väng 450, §¼ng CÊp Thèng So¸i 30, Kh«ng M«n Ph¸i, Míi Cã ThÓ TiÕn Hµnh\nLËp Bang Héi...!")
		end
	else
		Say("KiÕm HiÖp Ch­ëng M«n Nh©n:Khai S¸ng Bang Héi, Më Réng B¸ NghiÖp",2,"B¾t BÇu Dùng Bang/TaoBangHoi","§îi Ta Mét Chót/No")
	end
end

function TaoBangHoi()		
DelItem(195)		
SetTask(99,1)				
CreateTong(1)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NapThe()
	local tbOpt = {
		{"N¹p 10.000 => 2 KNB",Nap10},
		{"N¹p 20.000 => 4 KNB",Nap20},
		{"N¹p 50.000 => 10 KNB",Nap50},
		{"N¹p 100.000 => 20 KNB",Nap100},
		{"N¹p 200.000 => 40 KNB",Nap200},
		{"N¹p 500.000 => 100 KNB",Nap500},
		{"N¹p 1000.000 => 200 KNB",Nap1000},
		{"N¹p 2000.000 => 400 KNB",Nap2000},
		{"Hñy Bá",},
	}
	CreateNewSayEx("<color=pink>"..myplayersex().." Muèn N¹p Møc Nµo H·y Lùa Chän", tbOpt)
end
--------------------------------------------------------------------------------------------------------------
function Nap10() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>2<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,2) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+10) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>2<color> Kim Nguyªn B¶o Thµnh C«ng");
end
----------------------------------------------------------------------------------------------------------------------------
function Nap20() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>4<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,4) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+20) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>4<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------------
function Nap50() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>10<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,10) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+50) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>10<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function Nap100() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>20<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,20) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+100) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>20<color> Kim Nguyªn B¶o Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------
function Nap200() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>40<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,40) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+200) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>40<color> Kim Nguyªn B¶o Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------
function Nap500() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>100<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,100) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+500) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>100<color> Kim Nguyªn B¶o Thµnh C«ng");
end
---------------------------------------------------------------------------------------------------------------------------
function Nap1000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>200<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,200) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+1000) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>200<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function Nap2000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>400<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,400) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+2000) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>400<color> Kim Nguyªn B¶o Thµnh C«ng");
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ChuyenKhoan()
	local tbOpt = {
		{"ChuyÓn Kho¶n 10.000 => 3 KNB",CK10},
		{"ChuyÓn Kho¶n 20.000 => 6 KNB",CK20},
		{"ChuyÓn Kho¶n 50.000 => 15 KNB",CK50},
		{"ChuyÓn Kho¶n 100.000 => 30 KNB",CK100},
		{"ChuyÓn Kho¶n 200.000 => 60 KNB",CK200},
		{"ChuyÓn Kho¶n 500.000 => 150 KNB",CK500},
		{"ChuyÓn Kho¶n 1000.000 => 300 KNB",CK1000},
		{"ChuyÓn Kho¶n 2000.000 => 600 KNB",CK2000},
		{"Hñy Bá",},
	}
	CreateNewSayEx("<color=pink>"..myplayersex().." Muèn ChuyÓn Kho¶n Møc Nµo H·y Lùa Chän\nH×nh Thøc ChuyÓn Kho¶n §­îc Nh©n 1.5 LÇn Trªn TØ Gi¸\nN¹p...!", tbOpt)
end
--------------------------------------------------------------------------------------------------------------
function CK10() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>3<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,3) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+10) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>3<color> Kim Nguyªn B¶o Thµnh C«ng");
end
----------------------------------------------------------------------------------------------------------------------------
function CK20() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>6<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,6) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+20) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>6<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------------
function CK50() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>15<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,15) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+50) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>15<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function CK100() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>30<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,30) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+100) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>30<color> Kim Nguyªn B¶o Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------
function CK200() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>60<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,60) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+200) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>60<color> Kim Nguyªn B¶o Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------
function CK500() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>150<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,150) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+500) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>150<color> Kim Nguyªn B¶o Thµnh C«ng");
end
---------------------------------------------------------------------------------------------------------------------------
function CK1000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>300<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,300) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+1000) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>300<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function CK2000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>600<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,600) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+2000) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>600<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------------