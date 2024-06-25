
--------------------------------------------------------------------------------------------------------
-- File Name		:	thorenhoangkim.lua
--	Author			:	Alone_ (Nguyen Khai)
--	Create Time	:	27/10/2017 - 20:20
--	Description		:	
--------------------------------------------------------------------------------------------------------
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
--»»È¡ÐÐÏÀÁî³ö´í - modified by DinhHQ - 20110921
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
--Include("\\script\\thoren\\danglong_config.lua")
--Include("\\script\\thoren\\tinhsuong_config.lua")
--Include("\\script\\thoren\\hoason_config.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
IncludeLib("ITEM")

function main()
dofile("script/global/g7vn/thorenthanbi.lua")
dofile("script/global/g7vn/trungluyentrangbi/trangbihkmp/refine_equip_hanche.lua")
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	
	
	tbDailog.szTitleMsg = "<#><npc> N¬i nµy ®Òu lµ kú tr©n dÞ b¶o! §¹i hiÖp cÇn g×!?"
--	tbDailog:AddOptEntry("GhÐp M¶nh HKMP", GhepManhHKMP)
--	tbDailog:AddOptEntry("Thay §ái Ngo¹i H×nh Vò KhÝ", MenuDoiNgoaiHinh0)
--	tbDailog:AddOptEntry("ChÕ T¹o Vò KhÝ HKMP Ph¸t S¸ng", Make_Weapons)
--	tbDailog:AddOptEntry("NhËn Thñy Tinh", NhanThuyTinhFree)
--	tbDailog:AddOptEntry("Trïng LuyÖn Trang BÞ H¹n ChÕ", refine_HanChe)
--	tbDailog:AddOptEntry("Xoay M¶nh HKMP", XoayManhHKMP)
	--tbDailog:AddOptEntry("Läc L¹i Option Trang BÞ HKMP", LocOptionHKOK)

	tbDailog:Show()
end;
function NhanThuyTinhFree()
AddEventItem(238) 
AddEventItem(239)
AddEventItem(240)

end
function XoayManhHKMP()
	szDescription = format("ChØ CÇn Bá M¶nh HKMP Vµo Trong Lµ §­îc\n=> Hªn Xui Nµo!!.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_XoayManhHKMP", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_XoayManhHKMP(nCount)
if nCount == 0 or nCount >1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.")
		return 1;
	end
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS ,kk = GetItemProp(nItemIndex)
		local xu = CalcEquiproomItemCount(4,417,1,-1)
		
		if nG==6 and nP >= 239 and nP <= 378 and xu >=1 then
			ConsumeEquiproomItem(1, 6,1, nP,-1)
			ConsumeEquiproomItem(1, 4,417, 1,-1)
			local Index	= AddItem(6,1,random(239,378),0,0,0,0) 
			Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> Xoay Thµnh C«ng <color=green>M¶nh HKMP!")
			else Say("Kh«ng cã m¶nh HKMP hoÆc kh«ng ®ñ 1 Xu")
		end
	end
end
function GhepManhHKMP()
Say("§Ó Hîp Thµnh §å HKMP CÇn Cã §ñ 100 M¶nh HKMP",7,"Nga Mi/hkmpnm1","Thóy Yªn/hkmpty1","§­êng M«n/hkmpdm1","Ngò §éc/hkmpnd1","Thiªn V­¬ng/hkmptv1","Trang Sau/GhepManhHKMP2","KÕt thóc ®èi tho¹i/no") 
end
function GhepManhHKMP2() 
Say("Xin mêi chän trang bÞ",7,"ThiÕu L©m/hkmptl1","Vâ §ang/hkmpvd1","C«n L«n/hkmpcl1","Thiªn NhÉn/hkmptn1","C¸i Bang/hkmpcb1","Trang Tr­íc/GhepManhHKMP","KÕt thóc ®èi tho¹i/no") 
end
function addhkmp(idgold,idmagic)
local nCount_manhhkmp = CalcEquiproomItemCount(6,1,idmagic,1)
	if nCount_manhhkmp >=100 then
		ConsumeEquiproomItem(100, 6,1, idmagic,-1) 
		Msg2SubWorld("<color=green> Xin Chóc Mõng <color=red>"..GetName().."<color=green> §· Ðp Thµnh C«ng 100 M¶nh Thµnh §å HKMP")
		local Index = AddGoldItem(0,idgold) ITEM_SetExpiredTime(Index,30*24*60) SyncItem(Index)
	else
		Say("Ng­¬i Kh«ng §ñ Nguyªn LiÖu T×m Ta Lµm G×") return 1;
		end
end
----------------------------- Thieu lam-----------------------------
function hkmptl1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbSay = {
"ThiÕu L©m QuyÒn/#hkmptld2()",
"ThiÕu L©m Bæng/#hkmptlb()",
"ThiÕu L©m §ao/#hkmptlq()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)
end

function hkmptld2() 
local tbSay1 = {
"Méng Long ChÝnh Hång T¨ng M·o/#addhkmp(1,239)",
"Méng Long Kim Ti ChÝnh Hång Cµ Sa/#addhkmp(2,240)",
"Méng Long HuyÒn Ti Ph¸t ®¸i/#addhkmp(3,241)",
"Méng Long PhËt Ph¸p HuyÒn Béi/#addhkmp(4,242)",
"Méng Long §¹t Ma T¨ng hµi/#addhkmp(5,243)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end

function hkmptlb() 
local tbSay1 = {
"Phôc Ma Tö Kim C«n/#addhkmp(6,244)",
"Phôc Ma HuyÒn Hoµng Cµ Sa/#addhkmp(7,245)",
"Phôc Ma ¤ Kim NhuyÔn §iÒu/#addhkmp(8,246)",
"Phôc Ma PhËt T©m NhuyÔn KhÊu/#addhkmp(9,247)",
"Phôc Ma Phæ §é T¨ng hµi/#addhkmp(10,248)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end
function hkmptlq()
local tbSay1 = {
"Tø Kh«ng Gi¸ng Ma Giíi ®ao/#addhkmp(11,249)",
"Tø Kh«ng Tö Kim Cµ Sa/#addhkmp(12,250)",
"Tø Kh«ng Hé ph¸p Yªu ®¸i/#addhkmp(13,251)",
"Tø Kh«ng NhuyÔn B× Hé UyÓn/#addhkmp(14,252)",
"Tø Kh«ng Giíi LuËt Ph¸p giíi/#addhkmp(15,253)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)

end

----------------------------------------------------------thien vuong ----------------------------------------------
function hkmptv1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"Thiªn V­¬ng Chïy", hkviptvt1}, 
                {"Thiªn V­¬ng Th­¬ng", hkviptvc1}, 
                {"Thiªn V­¬ng §ao", hkviptvd1}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptvt1() 
local tbSay1 = {
"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy/#addhkmp(16,254)",
"H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p/#addhkmp(17,255)",
"H¸m Thiªn Uy Vò Thóc yªu ®¸i/#addhkmp(18,256)",
"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn/#addhkmp(19,257)",
"H¸m Thiªn Thõa Long ChiÕn Ngoa/#addhkmp(20,258)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkviptvc1() 
local tbSay1 = {
"KÕ NghiÖp B«n L«i Toµn Long th­¬ng/#addhkmp(21,259)",
"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i/#addhkmp(22,260)",
"KÕ NghiÖp B¹ch Hæ V« Song khÊu/#addhkmp(23,261)",
"KÕ NghiÖp HáaV©n Kú L©n Thñ /#addhkmp(24,262)",
"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa/#addhkmp(25,263)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end;

function hkviptvd1() 
local tbSay1 = {
"Ngù Long L­îng Ng©n B¶o ®ao/#addhkmp(26,264)",
"Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p/#addhkmp(27,265)",
"Ngù Long Thiªn M«n Thóc Yªu hoµn/#addhkmp(28,266)",
"Ngù Long TÊn Phong Hé yÓn/#addhkmp(29,267)",
"Ngù Long TuyÖt MÖnh ChØ hoµn/#addhkmp(30,268)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

---------------------------------------------nga my---------------------------------------

function hkmpnm1() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My KiÕm", hkvipnmc1}, 
                {"Nga My Ch­ëng", hkvipnmk1}, 
                {"Nga My Buff", hkvipnmbuff1}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
        return 1 
end 

function hkvipnmc1()
local tbSay1 = {
"V« Gian û Thiªn KiÕm/#addhkmp(31,269)",
"V« Gian Thanh Phong Truy Y/#addhkmp(32,270)",
"V« Gian PhÊt V©n Ti ®¸i/#addhkmp(33,271)",
"V« Gian CÇm VËn Hé UyÓn/#addhkmp(34,272)",
"V« Gian B¹ch Ngäc Bµn ChØ /#addhkmp(35,273)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end;

function hkvipnmk1() 
local tbSay1 = {
"V« Ma Ma Ni qu¸n/#addhkmp(36,274)",
"V« Ma Tö Kh©m Cµ Sa/#addhkmp(37,275)",
"V« Ma B¨ng Tinh ChØ Hoµn/#addhkmp(38,276)",
"V« Ma TÈy T­îng Ngäc KhÊu /#addhkmp(39,277)",
"V« Ma Hång Truy NhuyÔn Th¸p hµi/#addhkmp(40,278)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end;

function hkvipnmbuff1() 
local tbSay1 = {
"V« TrÇn Ngäc N÷ Tè T©m qu¸n/#addhkmp(41,279)",
"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u/#addhkmp(42,280)",
"V« TrÇn Tõ Bi Ngäc Ban ChØ /#addhkmp(43,281)",
"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi/#addhkmp(44,282)",
"V« TrÇn PhËt Quang ChØ Hoµn/#addhkmp(45,283)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end;
--------------------------------------------------thuy yen------------------------------------
function hkmpty1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Thóy Yªn §ao", hkviptyd1}, 
                {"Thóy Yªn Ch­ëng", hkviptyc1}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptyd1() 
local tbSay1 = {
"Tª Hoµng Phông Nghi ®ao/#addhkmp(46,284)",
"Tª Hoµng TuÖ T©m Khinh Sa Y/#addhkmp(47,285)",
"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i/#addhkmp(48,286)",
"Tª Hoµng B¨ng Tung CÈm uyÓn/#addhkmp(49,287)",
"Tª Hoµng Thóy Ngäc ChØ Hoµn/#addhkmp(50,288)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkviptyc1() 
local tbSay1 = {
"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao/#addhkmp(51,289)",
"BÝch H¶i Hoµn Ch©u Vò Liªn/#addhkmp(52,290)",
"BÝch H¶i Hång Linh Kim Ti ®¸i/#addhkmp(53,291)",
"BÝch H¶i Hång L¨ng Ba/#addhkmp(54,292)",
"BÝch H¶i Khiªn TÕ ChØ hoµn/#addhkmp(55,293)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

-----------------------------------------------------------ngu doc --------------
function hkmpnd1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Ngò §éc Ch­ëng", hkvipndc1}, 
                 {"Ngò §éc §ao", hkvipndd1}, 
                {"Ngò §éc Bïa", hkvipndb1}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipndc1() 
local tbSay1 = {
"U Lung Kim Xµ Ph¸t ®¸i/#addhkmp(56,294)",
"U Lung XÝch YÕt MËt trang/#addhkmp(57,295)",
"U Lung Thanh Ng« TriÒn yªu/#addhkmp(58,296)",
"U Lung Ng©n ThÒm Hé UyÓn/#addhkmp(59,297)",
"U Lung MÆc Thï NhuyÔn Lý /#addhkmp(60,298)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end;

function hkvipndd1() 
local tbSay1 = {
"Minh ¶o Tµ S¸t §éc NhËn/#addhkmp(61,299)",
"Minh ¶o U §éc ¸m Y/#addhkmp(62,300)",
"Minh ¶o §éc YÕt ChØ Hoµn/#addhkmp(63,301)",
"Minh ¶o Hñ Cèt Hé uyÓn/#addhkmp(64,302)",
"Minh ¶o Song Hoµn Xµ Hµi/#addhkmp(65,303)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkvipndb1() 
local tbSay1 = {
"Chó Ph­îc Ph¸ gi¸p ®Çu hoµn/#addhkmp(66,304)",
"Chó Ph­îc DiÖt L«i C¶nh Phï /#addhkmp(67,305)",
"Chó Ph­îc U ¶o ChØ Hoµn/#addhkmp(68,306)",
"Chó Ph­îc Xuyªn T©m §éc UyÓn/#addhkmp(69,307)",
"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa/#addhkmp(70,308)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 
function hkmpdm1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
        local tbOpt= 
               { 
                {"§­êng M«n Phi Tiªu", hkvipbv1}, 
                {"§­êng M«n Ná", hkvippt1}, 
                {"§­êng M«n B¨ng Hµn", hkvippd1}, 
                {"§­êng M«n BÉy", hkvipbay1}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipbv1() 
local tbSay1 = {
"B¨ng Hµn §¬n ChØ Phi §ao/#addhkmp(71,309)",
"B¨ng Hµn HuyÒn Y Thóc Gi¸p/#addhkmp(72,310)",
"B¨ng Hµn T©m TiÔn Yªu KhÊu/#addhkmp(73,311)",
"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi/#addhkmp(74,312)",
"B¨ng Hµn NguyÖt ¶nh Ngoa/#addhkmp(75,313)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkvippt1() 
local tbSay1 = {
"Thiªn Quang Hoa Vò M¹n Thiªn/#addhkmp(76,314)",
"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï /#addhkmp(77,315)",
"Thiªn Quang S©m La Thóc §¸i/#addhkmp(78,316)",
"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c/#addhkmp(79,317)",
"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn/#addhkmp(80,318)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkvippd1() 
local tbSay1 = {
"S©m Hoang Phi Tinh §o¹t Hån/#addhkmp(81,319)",
"S©m Hoang KimTiÒn Liªn Hoµn Gi¸p/#addhkmp(82,320)",
"S©m Hoang Hån Gi¶o Yªu Thóc/#addhkmp(83,321)",
"S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi/#addhkmp(84,322)",
"S©m Hoang Tinh VÉn Phi Lý /#addhkmp(85,323)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkvipbay1() 
local tbSay1 = {
"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n/#addhkmp(86,324)",
"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn/#addhkmp(87,325)",
"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi/#addhkmp(88,326)",
"§Þa Ph¸ch KhÊu T©m tr¹c/#addhkmp(89,327)",
"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa/#addhkmp(90,328)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end;

----------------------------cai bang----------------------------
function hkmpcb1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"C¸i Bang Ch­ëng", hkvipcbc1}, 
                            {"C¸i Bang Bæng", hkvipcbb1}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcbc1() 
local tbSay1 = {
"§ång Cõu Phi Long §Çu hoµn/#addhkmp(91,329)",
"§ång Cõu Gi¸ng Long C¸i Y/#addhkmp(92,330)",
"§ång Cõu TiÒm Long Yªu §¸i/#addhkmp(93,331)",
"§ång Cõu Kh¸ng Long Hé UyÓn/#addhkmp(94,332)",
"§ång Cõu KiÕn Long Ban ChØ /#addhkmp(95,333)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkvipcbb1() 
local tbSay1 = {
"§Þch Kh¸i Lôc Ngäc Tr­îng/#addhkmp(96,334)",
"§Þch Kh¸i Cöu §¹i C¸i Y/#addhkmp(97,335)",
"§Þch Kh¸i TriÒn M·ng yªu ®¸i/#addhkmp(98,336)",
"§Þch Kh¸i CÈu TÝch B× Hé uyÓn/#addhkmp(99,337)",
"§Þch Kh¸i Th¶o Gian Th¹ch giíi/#addhkmp(100,338)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end;

--------------------------thien nhan------------------------------------------
function hkmptn1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Thiªn NhÉn Th­¬ng", hkviptnt1}, 
                            {"Thiªn NhÉn Ch­ëng", hkviptnd1}, 
                {"Thiªn NhÉn Bïa", hkviptnb1}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptnt1() 
local tbSay1 = {
"Ma S¸t Quû Cèc U Minh Th­¬ng/#addhkmp(101,339)",
"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p/#addhkmp(102,340)",
"Ma S¸t XÝch Ký Táa Yªu KhÊu/#addhkmp(103,341)",
"Ma S¸t Cö Háa Liªu Thiªn uyÓn/#addhkmp(104,342)",
"Ma S¸t V©n Long Thæ Ch©u giíi/#addhkmp(105,343)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkviptnd1() 
local tbSay1 = {
"Ma Hoµng Kim Gi¸p Kh«i/#addhkmp(106,344)",
"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn/#addhkmp(107,345)",
"Ma Hoµng Khª Cèc Thóc yªu ®¸i/#addhkmp(108,346)",
"Ma Hoµng HuyÕt Y Thó Tr¹c/#addhkmp(109,347)",
"Ma Hoµng §¨ng §¹p Ngoa/#addhkmp(110,348)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkviptnb1() 
local tbSay1 = {
"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn/#addhkmp(111,349)",
"Ma ThÞ LÖ Ma PhÖ T©m Liªn/#addhkmp(112,350)",
"Ma ThÞ NghiÖp Háa U Minh Giíi/#addhkmp(113,351)",
"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi/#addhkmp(114,352)",
"Ma ThÞ s¬n  H¶i Phi Hång Lý /#addhkmp(115,353)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end;




function hkmpvd1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Vâ §ang Ch­ëng", hkvipvdc1}, 
                            {"Vâ §ang KiÕm", hkvipvdk1}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipvdc1() 
local tbSay1 = {
"L¨ng Nh¹c Th¸i Cùc KiÕm/#addhkmp(116,354)",
"L¨ng Nh¹c V« Ng· ®¹o bµo/#addhkmp(117,355)",
"L¨ng Nh¹c Né L«i Giíi/#addhkmp(118,356)",
"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi/#addhkmp(119,357)",
"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi/#addhkmp(120,358)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkvipvdk1() 
local tbSay1 = {
"CËp Phong Ch©n Vò KiÕm/#addhkmp(121,359)",
"CËp Phong Tam Thanh Phï /#addhkmp(122,360)",
"CËp Phong HuyÒn Ti Tam §o¹n cÈm/#addhkmp(123,361)",
"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi/#addhkmp(124,362)",
"CËp Phong Thanh Tïng Ph¸p giíi/#addhkmp(125,363)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end;

function hkmpcl1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"C«n L«n §ao", hkvipcld1}, 
                            {"C«n L«n Ch­ëng", hkvipclc1}, 
                {"C«n L«n Bïa", hkvipclb1}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcld1() 
local tbSay1 = {
"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt/#addhkmp(126,364)",
"S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo/#addhkmp(127,365)",
"S­¬ng Tinh Thanh Phong Lò ®¸i/#addhkmp(128,366)",
"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ /#addhkmp(129,367)",
"S­¬ng Tinh Phong B¹o chØ hoµn/#addhkmp(130,368)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end;

function hkvipclc1() 
local tbSay1 = {
"L«i Khung Hµn Tung B¨ng B¹ch quan/#addhkmp(131,369)",
"L«i Khung Thiªn §Þa Hé phï /#addhkmp(132,370)",
"L«i Khung Phong L«i Thanh CÈm ®¸i/#addhkmp(133,371)",
"L«i Khung Linh Ngäc UÈn L«i/#addhkmp(134,372)",
"L«i Khung Cöu Thiªn DÉn L«i giíi/#addhkmp(135,373)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 

function hkvipclb1() 
local tbSay1 = {
"Vô ¶o B¾c Minh §¹o qu¸n/#addhkmp(136,374)",
"Vô ¶o Ki B¸n phï chó/#addhkmp(137,375)",
"Vô ¶o Thóc T©m chØ hoµn/#addhkmp(138,376)",
"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi/#addhkmp(139,377)",
"Vô ¶o Tung Phong TuyÕt ¶nh ngoa/#addhkmp(140,378)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay1),tbSay1)
end; 



function LocHKMPNo1()
	tbOpt =
	{
		"<dec><npc>Läc trang bÞ tøc lµ läc l¹i thuéc tÝnh trang bÞ ng­¬i muèn ta läc cho kh«ng..",
                                                                                                                                                                     "Läc Vò KhÝ Trang BÞ HKMP/lochkmpmain",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end


function no()
end



function Make_Weapons()
	szDescription = format("+ 1 Tö Thñy Tinh\n+ 1 Lôc Thñy Tinh\n+ 1 Lam Thñy Tinh\n+ 100 TiÒn §ång\n=> §Ñp V·i C¸i Lån!!.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_MakeWeapons", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_MakeWeapons(nCount)
	if nCount == 0 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
		tbStone1 = {},
		tbStone2 = {},
		tbStone3 = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)
		local tbMagicItem =
		{
			[4] =
			{
				[238] = 1,
				[239] = 1,
				[240] = 1,
                                                                                                                                                                                                                                                                                                                                          [417] = 1,
			},

		}
		
		local nIndex = 0
		if nG == 4 then
			nIndex = nD
		end

		if nG == 4 then
			if nIndex == 238 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone1, nItemIndex)
				end
			elseif nIndex == 239 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone2, nItemIndex)
				end
			elseif nIndex == 240 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone3, nItemIndex)
				end
			end
		end

		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 else
				Talk(1, "no", "ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
		local nFaction = GetLastFactionNumber()
		nRandomAccess = random(1,100)
		nRandomRes = random(1, 100)
		nSucces = 1
		if nG == 0 and nD == 0 and nP == 0 then
			if nFaction == 8 then  ----------------------------------------------------------Kiem Vo Dang
				if nRandomAccess > 1 then
					nIndexRes = 59
				 else
					nSucces = 0
				end
			 elseif nFaction == 4 then ----------------------------------------------------------Kiem Nga Mi
				if nRandomAccess > 1 then
					nIndexRes = 57
				 else
					nSucces = 0
				end
			 elseif nFaction == 9 then ----------------------------------------------------------Kiem Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 58
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 0 and nRandomRes < 33 then
					if nRandomAccess > 1 then
						nIndexRes = 57
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 33 and nRandomRes < 66 then
					if nRandomAccess > 1 then
						nIndexRes = 58
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 66 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 59
					 else
						nSucces = 0
					end
				end
			 end
		                                                                                   elseif nG == 0 and nD == 0 and nP == 1 then
			if nFaction == 0 or nFaction == 1 then
				if nRandomAccess > 1 then
					nIndexRes = 52
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 3 then ----------------------------------------------------------Dao Ngu Doc
				if nRandomAccess > 1 then
					nIndexRes = 53
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 5 then   ----------------------------------------------------------Dao Thuy Yen
				if nRandomAccess > 1 then
					nIndexRes = 54
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 9 then   ----------------------------------------------------------Dao Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 56
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 25 then
					if nRandomAccess > 1 then
						nIndexRes = 52
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 25 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 53
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes < 75 then
					if nRandomAccess > 1 then
						nIndexRes = 54
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 75 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 56
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 2 then
			if nFaction == 0 then -------------------------------------------------Bong Thieu Lam
				if nRandomAccess > 1 then
					nIndexRes = 40
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 6 then -------------------------------------------------Bong Cai Bang
				if nRandomAccess > 1 then
					nIndexRes = 41
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 40
						nSucces = 1
					 else
						nSucces = 0
						end
				 elseif nRandomRes >= 50 and nRandomRes < 100 then
					if nRandomAccess > 1 then
						nIndexRes = 41
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 3 then
			if nFaction == 7 then
				if nRandomAccess > 1 then
					nIndexRes = 51
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 1 then
				if nRandomAccess > 1 then
					nIndexRes = 50
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 51
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 50
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		 elseif nG == 0 and nD == 0 and nP == 4 then
			if nRandomAccess > 1 then
			nIndexRes = 60
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 0 and nP == 5 then
			if nRandomAccess > 1 then
				nIndexRes = 61
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 0 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 1 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 2 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		end
	end
	

	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng")
		return
	end
	
	local nCountStone1 = getn(tbDatabase.tbStone1)
	if nCountStone1 ~= 1 then
		Talk(1, "no", "CÇn cã 1 viªn <color=red>Lam Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		return
	end
	
	local nCountStone2 = getn(tbDatabase.tbStone2)
	if nCountStone2 ~= 1 then
		Talk(1, "no", "CÇn cã 1 viªn <color=red>Tö Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		return
	end
	
	local nCountStone3 = getn(tbDatabase.tbStone3)
	if nCountStone3 ~= 1 then
		Talk(1, "no", "CÇn cã 1 viªn <color=red>Lôc Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		return
	end

	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then
		Talk(1, "no", "CÇn cã 100 <color=red>TiÒn §ång<color> míi cã thÓ n©ng cÊp tØ lÖ n¹p thÎ 100k ®­îc 100xu.")
		return
	end
	--local nIDX = GetGiveItemUnit(n)
	--local nQuality = GetItemQuality(nIDX)
	--if nQuality ~= 1 then
		--Talk(1, "", "Trang bÞ ng­¬i ®Æt vµo kh«ng ph¶i lµ trang bÞ hoµng kim")
		--return
	--end

	
	RemoveItemByIndex(tbDatabase.tbStone1[1])
	RemoveItemByIndex(tbDatabase.tbStone2[1])
	RemoveItemByIndex(tbDatabase.tbStone3[1])
	RemoveItemByIndex(tbDatabase.tbItem[1])
                                                                                  ConsumeEquiproomItem(100,4,417,1,1)

	if nSucces == 0 then
		Msg2Player("RÊt tiÕc! ThÊt b¹i lµ chuyÖn b×nh th­êng cña binh gia,huynh ®µi ®õng n¶n chÝ h·y cè g¾ng lÇn n÷a sÏ ®­îc nh­ ý.")
	elseif nSucces == 1 then
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· n©ng cÊp thµnh c«ng vò khÝ ph¸t quang.")
                                                                                                                                                                     Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> §· n©ng cÊp thµnh c«ng vò khÝ<color=green> Ph¸t S¸ng!")
                                                                                                                                                                     SaveNow();
                                                                                   local epphatsang = "script/global/bil4i3n/bil4i3n_log/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	-- write(moepphatsang, format("%d:%d\tAccount: %s\t Name: %s\t Level: %s\t IP Address: %s  N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel(), GetIP()))
	--closefile(moepphatsang)
	else
		print("Bug tinh nang nang cap Vu Khi phat quang")
	end
end

function _Weapons(nItemIndex, nIndexRes)
	SetItemNewFeature(nItemIndex, nIndexRes)
	print(nIndexRes)
end

function no()
end

function VuKhiPhatQuang_Test()
	AddItem(4,240,1,0,0,0)
	AddItem(4,238,1,0,0,0)
	AddItem(4,239,1,0,0,0)
	--AddItem(4,417,1,0,0,0)
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={4,417,1,0,0,0},nCount=50,},}, "test", 1); 

end

function nhanvukhi()
--tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,11},nCount=1,nQuality = 1,nExpiredTime=1440},}, "test", 1); 
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,16},nCount=1,nQuality = 1,},}, "test", 1); 

end



--------------------------------------------------------------------------------



--------------------------------------------------TRANGKHAC---------------------------------

function lochkmpmain() 
Say("Xin mêi chän trang bÞ",7,"Nga Mi/locoknm","Thóy Yªn/locokty","§­êng M«n/locokdm","Ngò §éc/locoknd","Thiªn V­¬ng/locoktv","Trang Sau/lochkmpmain1","KÕt thóc ®èi tho¹i/no") 
end

function lochkmpmain1() 
Say("Xin mêi chän trang bÞ",7,"ThiÕu L©m/locoktl","Vâ §ang/locokvd","C«n L«n/locokcl","Thiªn NhÉn/locoktn","C¸i Bang/locokcb","Trang Tr­íc/lochkmpmain","KÕt thóc ®èi tho¹i/no") 
end

function locoknm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"V« Ma TÈy N­gäc KhÊu", hknmc}, 
                {"V« Giang û Thiªn KiÕm", hknmk}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?", tbOpt)
        return 1 
end 

function hknmc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,39},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,39},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 2,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hknmk() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,31},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,31},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function locokty()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Tª Hoµng Phông Nghi §ao", tehoangdao}, 
                {"BÝch H¶i Uyªn ¦¬ng Hoµng §ao", yenuongdao}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?", tbOpt)
        return 1 
end 

function tehoangdao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,46},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,46},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function yenuongdao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,51},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,51},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 



function locokdm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
        local tbOpt= 
               { 
                {"Thiªn Quang M¹n Vò M·n Thiªn", thienquangmanthien},
                {"S©m Hoµng Phi Tinh §o¹t Hån", samhoangdao},  
                {"B¨ng Hµn §¬n ChØ Phi §ao", banghandao}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?", tbOpt)
        return 1 
end 

function thienquangmanthien()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,76},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,76},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function samhoangdao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,81},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,81},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function banghandao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,71},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,71},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function locoknd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"U Lung Kim Xµ Ph¸t ®¸i", unlungkimxa}, 
                {"Minh ¶o Tµ S¸t §éc NhËn", minhaodoc}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?", tbOpt)
        return 1 
end 


function unlungkimxa()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,56},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,56},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function minhaodoc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,61},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,61},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function locoktv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"KÕ NghiÖp B«n L«i Toµn Long th­¬ng", kenghiepthuong}, 
                {"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy", hamthienchuy}, 
                {"Ngù Long L­îng Ng©n B¶o ®ao", ngulongdao}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?", tbOpt)
        return 1 
end 


function kenghiepthuong()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,21},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,21},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function hamthienchuy()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,16},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,16},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function ngulongdao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,26},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,26},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function locoktl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               {
                {"Tø Kh«ng Gi¸ng Ma Giíi ®ao", tukhonggiangdao}, 
                {"Phôc Ma Tö Kim C«n", phucmakimcon}, 
                {"Méng Long Kim Ti ChÝnh Hång Cµ Sa", monglongcasa}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?", tbOpt)
        return 1 
end 


function tukhonggiangdao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,11},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,11},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function phucmakimcon()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,6},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,6},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function monglongcasa()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,2},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,2},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function locokvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               {
                {"L¨ng Nh¹c Th¸i Cùc KiÕm", langnhackiem}, 
                {"CËp Phong Ch©n Vò KiÕm", capphongkiem}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?", tbOpt)
        return 1 
end 

function langnhackiem()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,116},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,116},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function capphongkiem()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,121},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,121},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function locokcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               {
                {"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt", suongtinhhanthiet}, 
                {"L«i Khung Hµn Tung B¨ng B¹ch quan", loikhungbachquan}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?", tbOpt)
        return 1 
end 

function suongtinhhanthiet()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,126},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,126},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function loikhungbachquan()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,131},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,131},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function locoktn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               {
                {"Ma S¸t Quû Cèc U Minh Th­¬ng", masatuminh},
                {"Ma ThÞ To¹i Tinh §ao", mathidao},  
                {"Ma ThÞ s¬n H¶i Phi Hång Lý", mathihongly}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?", tbOpt)
        return 1 
end 


function masatuminh()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,101},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,101},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function mathidao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,540},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,540},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function mathihongly()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,115},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,115},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function locokcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"§ång Cõu Kh¸ng Long Hé UyÓn", dongcuuhouyen}, 
                {"§Þch Kh¸i Lôc Ngäc Tr­îng", dinhkhaitruong}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?", tbOpt)
        return 1 
end 

function dongcuuhouyen()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,94},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,94},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function dinhkhaitruong()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK CÇn Läc",tbProp={0,96},nQuality = 1,nCount = 1},
				{szName="TK TÝch Lòy Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
	
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,96},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


-----------------------------------------------------


function LocOptionHKOK()
	local title = "Läc Trang bÞ HKMP"
	g_GiveItemUI(title, "CÇn 100 tiÒn ®ång l­u ý 100 tiÒn ®ång ph¶i ®Ó ngoµi hµnh trang  ", {GiveUIOK4}, nil, nil)   --- 100 tiÒn ®ång l­u ý 100 tiÒn ®ång ph¶i ®Ó ngoµi hµnh trang
end


--------------®Þnh nghÜa b¶ng trang bÞ HKMP tbHKMP : thªm vµo nhiÒu dßng tõ id thÊp tíi cao

tbHKMP = {

		[1]={	
			{"Méng Long ChÝnh Hång T¨ng M·o",1}, 
			{"Méng Long Kim Ti ChÝnh Hång Cµ Sa",2},
			{"Méng Long HuyÒn Ti Ph¸t ®¸i",3},
			{"Méng Long PhËt Ph¸p HuyÒn Béi",4},
			{"Méng Long §¹t Ma T¨ng hµi",5},
			{"Phôc Ma Tö Kim C«n",6},
			{"Phôc Ma HuyÒn Hoµng Cµ Sa",7},
			{"Phôc Ma ¤ Kim NhuyÔn §iÒu",8},
			{"Phôc Ma PhËt T©m NhuyÔn KhÊu",9},
			{"Phôc Ma Phæ §é T¨ng hµi",10},
{"Tø Kh«ng Gi¸ng Ma Giíi ®ao",11},
{"Tø Kh«ng Tö Kim Cµ Sa",12},
{"Tø Kh«ng Hé ph¸p Yªu ®¸i",13},
{"Tø Kh«ng NhuyÔn B× Hé UyÓn",14},
{"Tø Kh«ng Giíi LuËt Ph¸p giíi",15},
{"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",16},
{"H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p",17},
{"H¸m Thiªn Uy Vò Thóc yªu ®¸i",18},
{"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn",19},
{"H¸m Thiªn Thõa Long ChiÕn Ngoa",20},
{"KÕ NghiÖp B«n L«i Toµn Long th­¬ng",21},
{"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",22},
{"KÕ NghiÖp B¹ch Hæ V« Song khÊu",23},
{"KÕ NghiÖp HáaV©n Kú L©n Thñ ",24},
{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",25},
{"Ngù Long L­îng Ng©n B¶o ®ao",26},
{"Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p",27},
{"Ngù Long Thiªn M«n Thóc Yªu hoµn",28},
{"Ngù Long TÊn Phong Hé yÓn",29},
{"Ngù Long TuyÖt MÖnh ChØ hoµn",30},
{"V« Gian û Thiªn KiÕm",31},
{"V« Gian Thanh Phong Truy Y",32},
{"V« Gian PhÊt V©n Ti ®¸i",33},
{"V« Gian CÇm VËn Hé UyÓn",34},
{"V« Gian B¹ch Ngäc Bµn ChØ ",35},
{"V« Ma Ma Ni qu¸n",36},
{"V« Ma Tö Kh©m Cµ Sa",37},
{"V« Ma B¨ng Tinh ChØ Hoµn",38},
{"V« Ma TÈy T­îng Ngäc KhÊu ",39},
{"V« Ma Hång Truy NhuyÔn Th¸p hµi",40},
{"V« TrÇn Ngäc N÷ Tè T©m qu¸n",41},
{"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",42},
{"V« TrÇn Tõ Bi Ngäc Ban ChØ ",43},
{"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi",44},
{"V« TrÇn PhËt Quang ChØ Hoµn",45},
{"Tª Hoµng Phông Nghi ®ao",46},
{"Tª Hoµng TuÖ T©m Khinh Sa Y",47},
{"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",48},
{"Tª Hoµng B¨ng Tung CÈm uyÓn",49},
{"Tª Hoµng Thóy Ngäc ChØ Hoµn",50},
{"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao",51},
{"BÝch H¶i Hoµn Ch©u Vò Liªn",52},
{"BÝch H¶i Hång Linh Kim Ti ®¸i",53},
{"BÝch H¶i Hång L¨ng Ba",54},
{"BÝch H¶i Khiªn TÕ ChØ hoµn",55},
{"U Lung Kim Xµ Ph¸t ®¸i",56},
{"U Lung XÝch YÕt MËt trang",57},
{"U Lung Thanh Ng« TriÒn yªu",58},
{"U Lung Ng©n ThÒm Hé UyÓn",59},
{"U Lung MÆc Thï NhuyÔn Lý ",60},
{"Minh ¶o Tµ S¸t §éc NhËn",61},
{"Minh ¶o U §éc ¸m Y",62},
{"Minh ¶o §éc YÕt ChØ Hoµn",63},
{"Minh ¶o Hñ Cèt Hé uyÓn",64},
{"Minh ¶o Song Hoµn Xµ Hµi",65},
{"Chó Ph­îc Ph¸ gi¸p ®Çu hoµn",66},
{"Chó Ph­îc DiÖt L«i C¶nh Phï ",67},
{"Chó Ph­îc U ¶o ChØ Hoµn",68},
{"Chó Ph­îc Xuyªn T©m §éc UyÓn",69},
{"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",70},
{"B¨ng Hµn §¬n ChØ Phi §ao",71},
{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",72},
{"B¨ng Hµn T©m TiÔn Yªu KhÊu",73},
{"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",74},
{"B¨ng Hµn NguyÖt ¶nh Ngoa",75},
{"Thiªn Quang Hoa Vò M¹n Thiªn",76},
{"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ",77},
{"Thiªn Quang S©m La Thóc §¸i",78},
{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",79},
{"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",80},
{"S©m Hoang Phi Tinh §o¹t Hån",81},
{"S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",82},
{"S©m Hoang Hån Gi¶o Yªu Thóc",83},
{"S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi",84},
{"S©m Hoang Tinh VÉn Phi Lý ",85},
{"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",86},
{"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",87},
{"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",88},
{"§Þa Ph¸ch KhÊu T©m tr¹c",89},
{"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",90},
{"§ång Cõu Phi Long §Çu hoµn",91},
{"§ång Cõu Gi¸ng Long C¸i Y",92},
{"§ång Cõu TiÒm Long Yªu §¸i",93},
{"§ång Cõu Kh¸ng Long Hé UyÓn",94},
{"§ång Cõu KiÕn Long Ban ChØ ",95},
{"§Þch Kh¸i Lôc Ngäc Tr­îng",96},
{"§Þch Kh¸i Cöu §¹i C¸i Y",97},
{"§Þch Kh¸i TriÒn M·ng yªu ®¸i",98},
{"§Þch Kh¸i CÈu TÝch B× Hé uyÓn",99},
{"§Þch Kh¸i Th¶o Gian Th¹ch giíi",100},
{"Ma S¸t Quû Cèc U Minh Th­¬ng",101},
{"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",102},
{"Ma S¸t XÝch Ký Táa Yªu KhÊu",103},
{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",104},
{"Ma S¸t V©n Long Thæ Ch©u giíi",105},
{"Ma Hoµng Kim Gi¸p Kh«i",106},
{"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",107},
{"Ma Hoµng Khª Cèc Thóc yªu ®¸i",108},
{"Ma Hoµng HuyÕt Y Thó Tr¹c",109},
{"Ma Hoµng §¨ng §¹p Ngoa",110},
{"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn",111},
{"Ma ThÞ LÖ Ma PhÖ T©m Liªn",112},
{"Ma ThÞ NghiÖp Háa U Minh Giíi",113},
{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",114},
{"Ma ThÞ s¬n  H¶i Phi Hång Lý ",115},
{"L¨ng Nh¹c Th¸i Cùc KiÕm",116},
{"L¨ng Nh¹c V« Ng· ®¹o bµo",117},
{"L¨ng Nh¹c Né L«i Giíi",118},
{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",119},
{"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",120},
{"CËp Phong Ch©n Vò KiÕm",121},
{"CËp Phong Tam Thanh Phï ",122},
{"CËp Phong HuyÒn Ti Tam §o¹n cÈm",123},
{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",124},
{"CËp Phong Thanh Tïng Ph¸p giíi",125},
{"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",126},
{"S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo",127},
{"S­¬ng Tinh Thanh Phong Lò ®¸i",128},
{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ",129},
{"S­¬ng Tinh Phong B¹o chØ hoµn",130},
{"L«i Khung Hµn Tung B¨ng B¹ch quan",131},
{"L«i Khung Thiªn §Þa Hé phï ",132},
{"L«i Khung Phong L«i Thanh CÈm ®¸i",133},
{"L«i Khung Linh Ngäc UÈn L«i",134},
{"L«i Khung Cöu Thiªn DÉn L«i giíi",135},
{"Vô ¶o B¾c Minh §¹o qu¸n",136},
{"Vô ¶o Ki B¸n phï chó ",137},
{"Vô ¶o Thóc T©m chØ hoµn",138},
{"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",139},
{"Vô ¶o Tung Phong TuyÕt ¶nh ngoa",140},


},
}

function GiveUIOK4(putCount) --ep phi phong 9
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo trang bÞ HKMP")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end	
	local ts1 = ITEM_GetExpiredTime(itemIndex) -- timestamp: thoi gian tin = s tu 1/1/1970
	local ts2 = GetLocalTime()
	local t = ts1 - ts2
	  local ntime = t/60 
	--print(ts1,ntime)
	if (t >0) then
		
		
		local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local hkmpTable = tbHKMP[1]
		local minId = hkmpTable[1][2]
		local maxId = hkmpTable[3][2]   --- d·y cuèi cïng cña bant tbHKMP ®Þnh nghÜa ë trªn
				
		if (goldEquipIndex < 1) or (goldEquipIndex > 140) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo 1 trang bÞ HKMP")
			return
		end
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then
		Talk(1, "no", "CÇn cã 100 <color=red>TiÒn §ång<color> míi cã thÓ läc.")
		return
		end
	
	
		if (RemoveItemByIndex(itemIndex) == 1) then
                                                                                   tenhk = tbHKMP[1][goldEquipIndex][1] 
			local requireIngradent = CalcEquiproomItemCount(4, 417, 1, -1)
			local ndxit = AddGoldItem(0, goldEquipIndex )
			local rate = CalcEquiproomItemCount(4, 417, 1, -1); 
			if (rate >= 100) then
			ConsumeEquiproomItem(100, 4, 417, 1, -1)
				ITEM_SetExpiredTime(ndxit,ntime)
				SyncItem(ndxit);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> läc l¹i option trang bÞ <color=gold>"..tenhk.."<color> T¹i NPC.")
				else
		Talk(1, "", "CÇn cã 100 <color=red>TiÒn §ång<color> míi cã thÓ läc trang bÞ xin h·y kiÔm tra l¹i.")
		return
		end
	else
		Talk(1,"", "Trang bÞ kh«ng cã trong danh s¸ch hoÆc ®· hÕt h¹n sö dông hoÆc nguyªn liÖu kh«ng ®óng")
		return
	end
end
end





-------------------------------------

function logExchangeItem(gradientItem, gradientnumber, item) 
	local account = GetAccount()
	local name = GetName()
	local row = {account, name, gradientItem, gradientnumber, item}
	local fileName = "logdoido_.txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "Character", "Gradient", "Grandient Number", "Item"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)	
end

----------------------------------
function no()
end

function MenuDoiNgoaiHinh0()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"®æi sang ®ao/dao",
		"®æi sang kiÕm/kiem",
		"®æi sang chïy/chuy",
		"®æi sang bæng/bong",
		"®æi sang th­¬ng/thuong",
		"®æi sang song ®ao/song",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function dao()
SetTask(5859,1)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Msg2SubWorld("<color=pink>b¹n ®· chän ®æi vò khÝ thµnh ®ao thµnh c«ng.")
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh ®ao.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function kiem()
SetTask(5858,1)
SetTask(5859,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Msg2SubWorld("<color=pink>b¹n ®· chän ®æi vò khÝ thµnh kiÕm thµnh c«ng.")
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh kiÕm.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function chuy()
SetTask(5857,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Msg2SubWorld("<color=pink>b¹n ®· chän ®æi vò khÝ thµnh chïy thµnh c«ng.")
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh chïy.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function bong()
SetTask(5856,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5855,0)
SetTask(5854,0)
Msg2SubWorld("<color=pink>b¹n ®· chän ®æi vò khÝ thµnh bong thµnh c«ng.")
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh bæng.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function song()
SetTask(5855,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5854,0)
Msg2SubWorld("<color=pink>b¹n ®· chän ®æi vò khÝ thµnh song ®ao thµnh c«ng.")
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh song ®ao.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function thuong()
SetTask(5854,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
Msg2SubWorld("<color=pink>b¹n ®· chän ®æi vò khÝ thµnh th­¬ng thµnh c«ng.")
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh song ®ao.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end


function MenuDoiNgoaiHinh()
	szDescription = format("+ 200 Xu \n=> Trang bÞ ®Ñp nhÊt.")

	GiveItemUI("Bá Vò KhÝ Vµo", szDescription, "BatDauDoiVK", "no", 1)

end

function BatDauDoiVK(nCount,nItemIndex, nIndexRes)
	if nCount == 0 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/MenuDoiNgoaiHinh", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)

		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 else
				Talk(1, "no", "ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 200) then
		Talk(1, "no", "CÇn cã 200 <color=red>TiÒn §ång<color> míi cã thÓ n©ng cÊp tØ lÖ n¹p thÎ 200k ®­îc 200xu.")
		return
	end
	--if nItemTime ~= 0 then
	--	Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
	--	return
--	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng")
		return
	end
if GetTask(5859) < 1 and GetTask(5858) < 1 and GetTask(5857) < 1 and GetTask(5856) < 1 and GetTask(5855) < 1 and GetTask(5854) < 1 then
Say("®¹i hiÖp ch­a chän vò khÝ nµo c¶.",2,"Cho ta chän l¹i/MenuDoiNgoaiHinh0","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
		return
	end   	
if GetTask(5859) == 1 then --dao
		SetItemNewFeature(nItemIndex, random(53,56)) --53 54 55 56
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh §ao")
end
if GetTask(5858) == 1 then --kiem
		SetItemNewFeature(nItemIndex, random(57,59))  --  57 58 59
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh KiÕm")
end
if GetTask(5857) == 1 then --chuy
		SetItemNewFeature(nItemIndex, 60)  -- 
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Chïy")
end
if GetTask(5856) == 1 then --bong
		SetItemNewFeature(nItemIndex, 41)  -- 40 41
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Bæng")
end
if GetTask(5855) == 1 then --song
		SetItemNewFeature(nItemIndex, 61) --
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Song §ao")
end
if GetTask(5854) == 1 then --thuong
		SetItemNewFeature(nItemIndex, random(50,51)) -- 50 51
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Th­¬ng")
end
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
SaveNow()
end
end

