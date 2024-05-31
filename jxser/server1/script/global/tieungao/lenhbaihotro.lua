Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
--Include("\\script\\global\\_camnangdonghanh.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\g7vn\\oantuty\\oantuty.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\bonus_onlinetime\\head.lua")
Include("\\script\\bonus_onlinetime\\func_onlineaward.lua")
function main()
--local diemtk=GetTask(747)
dofile("script/global/tieungao/lenhbaihotro.lua")
OnlineAward_SummaryOnlineTime()
OnlineAward_StartTime()
--UseTownPortal(0)
--IsDisabledUseTownP()=0
--Msg2Player(IsDisabledUseTownP() )
local nHour, nMin, nSec = OnlineAward_ShowTime()
local szTitle =  "B¹n §ang Cã <color=red>"..GetTask(747).."<color> §iÓm TÝch Lòy Tèng Kim\nB¹n ®· Online <color=yellow>"..nHour.." giê "..nMin.." phót "..nSec.." gi©y<color>\nEXP Tèng Kim Trong 7 Ngµy ®· ®æi:<color=red> "..GetTask(3034).."<color>."

local tbOpt = 
{
--{"NhËn Hç Trî T©n Thñ",NhanHoTroTanThu},
--{"Xem Th«ng Tin Ng­êi Kh¸c", luachontennv},
--{"Chøc N¨ng Më Khãa §å §· §Ýnh.", MoKhoaDinh },
--{"Khãa VËt PhÈm",KhoaVatPham},
--{"NhËn Trang BÞ HKMP",doimanhrahkmp},
--{"Ch¬i O¶n Tï T×",ThamGiaOanTuTi},
{"Gi¶i KÑt Nh©n VËt VÒ Ba L¨ng HuyÖn",Mua500MauTongKim},
--{"NhËn 1 BÝ KÝp 9x (CÊp 80 nhËn)",nhanbikip9x},
{"NhËn Th­ëng 12 TiÕng Online",nhanthuongonline},
{"NhËn Vßng S¸ng T©n Thñ", nhanvongsang1},
{"Xem S¸ch Vë", xemsachvo},
--{"NhËn Håi Thµnh Phï Nhá", Nhanthuonghangngay},
--{"NhËn Th­ëng H»ng Ngµy", testdo},
--{"NhËn VËt PhÈm Hæ Trî", NhanDoHoTroTanThu},
--{"NhËn Tµi L·nh §¹o Vµ Danh Väng",lanhdao},
--{"Mua 1 Tói tÝch lòy Tèng Kim(10k §iÓm)",MuaTuiTichLuyTongKim},
--{"NhËn Trang BÞ Hç Trî",NhanDoHoTro},
{"Tiªu Hñy VËt PhÈm",huyVPkhoa},
--{"TÈy T¨ng TiÒm N¨ng", TayCongDiem},
--{"LÊy 50 ngµn v¹n.", laytienvan},
--{"NhËn Phi Tèc LÖnh Bµi.", NhanChienCo },
--{"Häc L¹i Khinh C«ng.", AddMagic(210,1) },

--{"NhËn Khiªu chiÕn lÖnh.", NhanKhieuChienLenh },
--{"Chøc N¨ng Më Khãa §å §· §Ýnh.", MoKhoaDinh },
--{"Tra TiÒm N¨ng Ng­êi Kh¸c", NhapTenNguoiCanXem},
{"Tho¸t"},
}
	if GetAccount() == "kimluyen2002" then
	tinsert(tbOpt, 1, {"TÈy T¨ng TiÒm N¨ng", TayCongDiem}) 
	--tinsert(tbOpt,2, {"Lay Kvan", laytienvan}) 
	--tinsert(tbOpt,2, {"Doi trang thai", trangthai1}) 
	end
CreateNewSayEx(szTitle, tbOpt)
return 1	
end

function nhanthuongonline()
	OnlineAward_SummaryOnlineTime()
OnlineAward_StartTime()
--UseTownPortal(0)
--IsDisabledUseTownP()=0
--Msg2Player(IsDisabledUseTownP() )
local nHour, nMin, nSec = OnlineAward_ShowTime()
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(3077) ~= nDate ) then
		SetTask(3077, nDate)
		SetTask(3078, 0)
	end
if nHour>=12 and GetTask(3078)==0 then
	FuYuan_Start();
		FuYuan_Add( 5 );
		AddRepute(5)
	SetTask(3078,1)
else
	Say("B¹n ch­a online ®ñ 12 tiÕng hoÆc ®· nhËn th­ëng råi.")
	return
end
end
function nhanbikip9x()
	if GetLevel()>=80 then
		if GetTask(3031)==0 then
			SetTask(3031,1)
				local award1111  ={
{

		{szName="BÝ Kip 9x",tbProp={6,1,2426,1,1},nCount=1,nBindState=-2},
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "PhÇn Th­ëng");
		else
		Say("Mçi nh©n vËt chØ nhËn ®­îc 1 lÇn duy nhÊt.")
		return
		end
	else
		Say("CÊp ®é 80 míi nhËn ®­îc.")
		return
	end

end
function xemsachvo()
	Msg2Player("<color=green>§¹i hiÖp ®É sö dông:\n"..GetTask(80)..": Vâ L©m MËt TÞch\n"..GetTask(81)..": TÈy Tñy Kinh<color>")
end	
function trangthai22()
local tbSay = {}
tinsert(tbSay,"GM Èn Th©n.../GManthan")
tinsert(tbSay,"GM HiÖn Th©n.../XoaSkillGM")
tinsert(tbSay,"Nh©n VËt Ch÷ Tr¾ng./mautrang")
tinsert(tbSay,"ChiÕn §Êu/ChienDau")
tinsert(tbSay,"Phi ChiÕn §Êu/PhiChienDau")
tinsert(tbSay,"Tho¸t/no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän tr¹ng th¸i mµ b¹n muèn !", getn(tbSay), tbSay)
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
function GManthan()
AddMagic(732,20)
AddMagic(733,20)
Msg2Player("<color=pink>Chóc Mõng B¹n §· Häc §­îc Skill GM...")
end

function XoaSkillGM()
DelMagic(732,20)
DelMagic(733,20)
DelMagic(1003,20)
DelMagic(1310,20)
Msg2Player("B¹n §· Xãa Kü N¨ng GM Thµnh C«ng")
end

function nhanvongsang1()
	if GetLevel()>=79 then
		Say("ChØ nhËn ®­îc ®Õn cÊp 80")
		return
	end
	if GetSkillState(1995)>=1 then
		RemoveSkillState(1995,20,3,1555200,0) --559872000 (old number)
	end
		PlayerFunLib:AddSkillState(1995,20,3,18*60*60*24,0)
end
 
function trangthai1()
	local tbOpt =
	{
		{"ChÝnh ph¸i - Mµu Vµng", mauvang},
		{"Trung lËp - Mµu Xanh", mauxanh},
		{"Tµ ph¸i - Mµu TÝm", mautim},
		{"S¸t Thñ - Mµu ®á xuÊt x­", maudo},
		{"Tho¸t/0"},
	}
	CreateNewSayEx("<npc>Xin Chän Mµu", tbOpt)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		SetPKFlag(4)
		ForbidEnmity(1)
		SetFightState(2)
		SetPunish(1)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)		
		SetPKFlag(4)
		ForbidEnmity(1)
		SetFightState(2)
		SetPunish(0)
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)		
		ForbidEnmity(1)
		SetPunish(0)
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)		
		ForbidEnmity(1)
		SetPunish(0)
end
function testdo()
local nDate2 = tonumber(GetLocalDate("%Y%m%d"));
	local award1111  ={
{

		{szName="Tói m¸u t©n thñ",tbProp={6,1,4461,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
		{szName="S¸t Thñ Gi¶n",tbProp={6,1,400,90,random(0,4),0},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
		{szName="LÖnh bµi Vi S¬n §¶o",tbProp={6,1,2432,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
		{szName="Viªm §Õ LÖnh",tbProp={6,1,1617,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
		{szName="LÖnh bµi Phong L¨ng §é",tbProp={4,489,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "PhÇn Th­ëng");
end
	function Nhanthuonghangngay()
	if CalcFreeItemCellCount()<20 then
	Say("Hµnh trang kh«ng ®ñ 20 « trèng.")
	return
end
local nDate2 = tonumber(GetLocalDate("%Y%m%d"));
	local award1111  ={
{

	--	{szName="Tói m¸u t©n thñ",tbProp={6,1,4461,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
	--	{szName="S¸t Thñ Gi¶n",tbProp={6,1,400,90,random(0,4),0},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
--		{szName="LÖnh bµi Vi S¬n §¶o",tbProp={6,1,2432,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
	--	{szName="Viªm §Õ LÖnh",tbProp={6,1,1617,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
	--	{szName="LÖnh bµi Phong L¨ng §é",tbProp={4,489,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
		{szName="Håi thµnh phï (nhá)",tbProp={6,1,1082,1,1},nCount=1,nBindState=-2,nExpiredTime=30*24*60},
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "PhÇn Th­ëng");
	
	end
function chucnangmod()
	local tbSay = {
	"Move TK -- CTC./#vitri_congthanh()",
"Tµn H×nh./#GManthan()",
"HiÖn H×nh./#XoaSkillGM()",
"ChÝnh Ph¸i./#mauvang()",
"Tµ Ph¸i./#mautim()",
"Trung LËp./#mauxanh()",
"S¸t Thñ./#maudo()",
"Ch÷ Tr¾ng./#mautrang()",
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function mautrang()
SetCurCamp(0)
SetCamp(0)
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
function vitri_congthanh()
local tab_Content = {
		"Tèng - Kim/goto_tongkim",
		"L©m An/goto_lam_an",
		"BiÖn Kinh/goto_bien_kinh",		
		"Thµnh §«/goto_thanh_do",
		"T­¬ng D­¬ng/goto_tuong_duong",
		"Ph­îng T­êng/goto_phuong_tuong",
		"D­¬ng Ch©u/goto_duong_chau",
		"§¹i Lý/goto_dai_ly",
		"Ba L¨ng HuyÖn/goto_ba_lang",
		
		"KÕt thóc..!/No"
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end
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
function goto_tongkim()
SetFightState(0)
NewWorld(380,1568,3195)
end
function goto_ba_lang()
SetFightState(0)
NewWorld(53,1598,3191)
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
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpngamy()
	local tbSay = {
	"V« Gian Thanh Phong Truy Y./#doimanhhkmpthieulam_ok(32)",
"V« Gian PhÊt V©n Ti ®¸i./#doimanhhkmpthieulam_ok(33)",
"V« Gian CÇm VËn Hé UyÓn./#doimanhhkmpthieulam_ok(34)",
"V« Gian B¹ch Ngäc Bµn ChØ ./#doimanhhkmpthieulam_ok(35)",
"V« Ma Tö Kh©m Cµ Sa./#doimanhhkmpthieulam_ok(37)",
"V« Ma B¨ng Tinh ChØ Hoµn./#doimanhhkmpthieulam_ok(38)",
"V« Ma Ma Ni qu¸n./#doimanhhkmpthieulam_ok(36)",
"V« Ma Hång Truy NhuyÔn Th¸p hµi./#doimanhhkmpthieulam_ok(40)",
"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u./#doimanhhkmpthieulam_ok(42)",
"V« TrÇn Tõ Bi Ngäc Ban ChØ./#doimanhhkmpthieulam_ok(43)",
"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi./#doimanhhkmpthieulam_ok(44)",
"V« TrÇn PhËt Quang ChØ Hoµn./#doimanhhkmpthieulam_ok(45)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthuyyen()
	local tbSay = {
	"Tª Hoµng TuÖ T©m Khinh Sa Y./#doimanhhkmpthieulam_ok(47)",
"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i./#doimanhhkmpthieulam_ok(48)",
"Tª Hoµng B¨ng Tung CÈm uyÓn./#doimanhhkmpthieulam_ok(49)",
"Tª Hoµng Thóy Ngäc ChØ Hoµn./#doimanhhkmpthieulam_ok(50)",
"BÝch H¶i Hoµn Ch©u Vò Liªn./#doimanhhkmpthieulam_ok(52)",
"BÝch H¶i Hång Linh Kim Ti ®¸i./#doimanhhkmpthieulam_ok(53)",
"BÝch H¶i Hång L¨ng Ba./#doimanhhkmpthieulam_ok(54)",
"BÝch H¶i Khiªn TÕ ChØ hoµn./#doimanhhkmpthieulam_ok(55)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpngudoc()
	local tbSay = {
	"U Lung XÝch YÕt MËt trang./#doimanhhkmpthieulam_ok(57)",
"U Lung Thanh Ng« TriÒn yªu./#doimanhhkmpthieulam_ok(58)",
"U Lung Ng©n ThÒm Hé UyÓn./#doimanhhkmpthieulam_ok(59)",
"U Lung MÆc Thï NhuyÔn Lý./#doimanhhkmpthieulam_ok(60)",
"Minh ¶o U §éc ¸m Y./#doimanhhkmpthieulam_ok(62)",
"Minh ¶o §éc YÕt ChØ Hoµn./#doimanhhkmpthieulam_ok(63)",
"Minh ¶o Hñ Cèt Hé uyÓn./#doimanhhkmpthieulam_ok(64)",
"Minh ¶o Song Hoµn Xµ Hµi./#doimanhhkmpthieulam_ok(65)",
"Chó Ph­îc DiÖt L«i C¶nh Phï ./#doimanhhkmpthieulam_ok(67)",
"Chó Ph­îc U ¶o ChØ Hoµn./#doimanhhkmpthieulam_ok(68)",
"Chó Ph­îc Xuyªn T©m §éc UyÓn./#doimanhhkmpthieulam_ok(69)",
"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa./#doimanhhkmpthieulam_ok(70)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpduongmon()
	local tbSay = {
	"B¨ng Hµn HuyÒn Y Thóc Gi¸p./#doimanhhkmpthieulam_ok(72)",
"B¨ng Hµn T©m TiÔn Yªu KhÊu./#doimanhhkmpthieulam_ok(73)",
"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi./#doimanhhkmpthieulam_ok(74)",
"B¨ng Hµn NguyÖt ¶nh Ngoa./#doimanhhkmpthieulam_ok(75)",
"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ./#doimanhhkmpthieulam_ok(77)",
"Thiªn Quang S©m La Thóc §¸i./#doimanhhkmpthieulam_ok(78)",
"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c./#doimanhhkmpthieulam_ok(79)",
"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn./#doimanhhkmpthieulam_ok(80)",

"Trang Sau./#doimanhhkmpduongmon2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpduongmon2()
	local tbSay = {
"S©m Hoang KimTiÒn Liªn Hoµn Gi¸p./#doimanhhkmpthieulam_ok(82)",
"S©m Hoang Hån Gi¶o Yªu Thóc./#doimanhhkmpthieulam_ok(83)",
"S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi./#doimanhhkmpthieulam_ok(84)",
"S©m Hoang Tinh VÉn Phi Lý./#doimanhhkmpthieulam_ok(85)",
"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n./#doimanhhkmpthieulam_ok(86)",
"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn./#doimanhhkmpthieulam_ok(87)",
"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi./#doimanhhkmpthieulam_ok(88)",
"§Þa Ph¸ch KhÊu T©m tr¹c./#doimanhhkmpthieulam_ok(89)",
"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa./#doimanhhkmpthieulam_ok(90)",
"Trang Tr­íc./#doimanhhkmpduongmon()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpcaibang()
	local tbSay = {
	"§ång Cõu Phi Long §Çu hoµn./#doimanhhkmpthieulam_ok(91)",
"§ång Cõu Gi¸ng Long C¸i Y./#doimanhhkmpthieulam_ok(92)",
"§ång Cõu TiÒm Long Yªu §¸i./#doimanhhkmpthieulam_ok(93)",
"§ång Cõu KiÕn Long Ban ChØ ./#doimanhhkmpthieulam_ok(95)",
"§Þch Kh¸i Cöu §¹i C¸i Y./#doimanhhkmpthieulam_ok(97)",
"§Þch Kh¸i TriÒn M·ng yªu ®¸i./#doimanhhkmpthieulam_ok(98)",
"§Þch Kh¸i CÈu TÝch B× Hé uyÓn./#doimanhhkmpthieulam_ok(99)",
"§Þch Kh¸i Th¶o Gian Th¹ch giíi./#doimanhhkmpthieulam_ok(100)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthiennhan()
	local tbSay = {
	"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p./#doimanhhkmpthieulam_ok(102)",
"Ma S¸t XÝch Ký Táa Yªu KhÊu./#doimanhhkmpthieulam_ok(103)",
"Ma S¸t Cö Háa Liªu Thiªn uyÓn./#doimanhhkmpthieulam_ok(104)",
"Ma S¸t V©n Long Thæ Ch©u giíi./#doimanhhkmpthieulam_ok(105)",
"Ma Hoµng Kim Gi¸p Kh«i./#doimanhhkmpthieulam_ok(106)",
"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn./#doimanhhkmpthieulam_ok(107)",
"Ma Hoµng Khª Cèc Thóc yªu ®¸i./#doimanhhkmpthieulam_ok(108)",
"Ma Hoµng HuyÕt Y Thó Tr¹c./#doimanhhkmpthieulam_ok(109)",
"Ma Hoµng §¨ng §¹p Ngoa./#doimanhhkmpthieulam_ok(110)",
"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn./#doimanhhkmpthieulam_ok(111)",
"Ma ThÞ LÖ Ma PhÖ T©m Liªn./#doimanhhkmpthieulam_ok(112)",
"Ma ThÞ NghiÖp Háa U Minh Giíi./#doimanhhkmpthieulam_ok(113)",
"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi./#doimanhhkmpthieulam_ok(114)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpvodang()
	local tbSay = {
	"L¨ng Nh¹c V« Ng· ®¹o bµo./#doimanhhkmpthieulam_ok(117)",
"L¨ng Nh¹c Né L«i Giíi./#doimanhhkmpthieulam_ok(118)",
"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi./#doimanhhkmpthieulam_ok(119)",
"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi./#doimanhhkmpthieulam_ok(120)",
"CËp Phong Tam Thanh Phï./#doimanhhkmpthieulam_ok(122)",
"CËp Phong HuyÒn Ti Tam §o¹n cÈm./#doimanhhkmpthieulam_ok(123)",
"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi./#doimanhhkmpthieulam_ok(124)",
"CËp Phong Thanh Tïng Ph¸p giíi./#doimanhhkmpthieulam_ok(125)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpconlon()
	local tbSay = {
	"S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo./#doimanhhkmpthieulam_ok(127)",
"S­¬ng Tinh Thanh Phong Lò ®¸i./#doimanhhkmpthieulam_ok(128)",
"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ./#doimanhhkmpthieulam_ok(129)",
"S­¬ng Tinh Phong B¹o chØ hoµn./#doimanhhkmpthieulam_ok(130)",
"L«i Khung Thiªn §Þa Hé phï ./#doimanhhkmpthieulam_ok(132)",
"L«i Khung Phong L«i Thanh CÈm ®¸i./#doimanhhkmpthieulam_ok(133)",
"L«i Khung Linh Ngäc UÈn L«i./#doimanhhkmpthieulam_ok(134)",
"L«i Khung Cöu Thiªn DÉn L«i giíi./#doimanhhkmpthieulam_ok(135)",
"Vô ¶o Ki B¸n phï chó./#doimanhhkmpthieulam_ok(137)",
"Vô ¶o Thóc T©m chØ hoµn./#doimanhhkmpthieulam_ok(138)",
"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi./#doimanhhkmpthieulam_ok(139)",
"Vô ¶o Tung Phong TuyÕt ¶nh ngoa./#doimanhhkmpthieulam_ok(140)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam_ok(idchon)

		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idchon},nQuality=1,nCount=10},}, "test", 1);
		
end
-------------------------------------------mo do dinh trong ruong ----------------------
function MoKhoaDinh() 
	if (GetBoxLockState() ~= 0) then
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
end
GiveItemUI("Më Khãa §Ýnh11", "<color=white>§¹i hiÖp cÇn më g× xin ®Æt vµo « d­íi ®©y! chØ cã thÓ më 1 vËt phÈm duy nhÊt nÕu bá h¬n th× më ngÉu nhiªn.", "batdaucheckngay", "onCancel", 1);
end


function batdaucheckngay(nItemIdx)
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, -1) ;
	local chikhoalaplanh = CalcEquiproomItemCount(6, 1, 1371, -1) ;
	if	(nSilverCount < 10)  or chikhoalaplanh<1 then -- gia xu
	Msg2Player("<color=white>B¹n CÇn Cã 10xu +1 Ch×a khãa lÊp l¸nh trong Hµnh Trang +") -- go
	return
	end
		local nItemIdx = GetGiveItemUnit(1);
		local bindState = GetItemBindState(nItemIdx)
		if (bindState == -2) then
			Talk(1,"", "Trang bÞ do BQT khãa vÜnh viÔn kh«ng thÓ më khãa ®­îc rÊt tiÕc.")
		return
	end
	    local strItemlock = GetItemName(nItemIdx)
		Msg2Player("<color=white>Më khãa vËt phÈm "..strItemlock, " thµnh c«ng")
Talk(1, "", "<color=green> Chóc mïng §¹i HiÖp më khãa thµnh c«ng "..strItemlock, "!"); 
		SetItemBindState(nItemIdx,0);
		ConsumeEquiproomItem(10,4,417,1,1);
		ConsumeEquiproomItem(1,6,1,1371,1);
		SaveNow();
end

function NhanDoHoTroTanThu()
local tbSay = {
--"NhËn Trang BÞ §å Xanh./trangbixanh",
"NhËn Vò KhÝ Tr¾ng cÊp 10./nhanvukhitrang",
--"NhËn 1 Mãn HKMP Lùa Chän./hkmpvip1",
"NhËn Bé Kim Phong./NhanKimPhong",
"NhËn Bé An Bang TiÓu./NhanAnBangTieu",
"NhËn Full BÝ KÝp 8x-12x./Nhanbikip",
--"NhËn Bé §Þnh Quèc./Nhandinhquoctanthu",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)

end
function nhanvukhitrang()
if CalcFreeItemCellCount()<30 then
	Say("Hµnh trang kh«ng ®ñ 30 « trèng")
	return
end
local tbSay = {
--"NhËn Trang BÞ §å Xanh./trangbixanh",
"Vò khÝ tÇm gÇn cÊp 10./vukhitamgan",
--"NhËn 1 Mãn HKMP Lùa Chän./hkmpvip1",
"Vò khÝ tÇm xa cÊp 10./vukhitamxa",

"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)

end
function vukhitamgan()
 AddItem(0, 0, 0, 10, random(0,4), 0, 0) 
 AddItem(0, 0, 1, 10, random(0,4), 0, 0) 
  AddItem(0, 0, 2, 10, random(0,4), 0, 0) 
   AddItem(0, 0, 3, 10, random(0,4), 0, 0) 
    AddItem(0, 0, 4, 10, random(0,4), 0, 0) 
	 AddItem(0, 0, 5, 10, random(0,4), 0, 0) 
end
function vukhitamxa()
 AddItem(0, 1, 0, 10, random(0,4), 0, 0) 
 AddItem(0, 1, 1, 10, random(0,4), 0, 0) 
 AddItem(0, 1, 2, 10, random(0,4), 0, 0) 
end
function Nhanbikip()
if CalcFreeItemCellCount()<20 then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 20 « trèng");
		return 1;
	end
	--local Index = AddGoldItem(0,424) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	--local Index = AddGoldItem(0,425) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
--	local Index = AddGoldItem(0,426) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	--local Index = AddGoldItem(0,427) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
			local Index	= AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2)--bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0)  SetItemBindState(Index, -2) --bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2)--bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,1125,0,0,0,0) SetItemBindState(Index, -2)--bk 120
			local Index = AddItem(6,1,2425,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
Msg2Player("NhËn ®­îc bé BÝ KÝp 8x-12x.")
end
function NhanKimPhong()
if CalcFreeItemCellCount()<40 then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 40 « trèng");
		return 1;
	end
	--local Index = AddGoldItem(0,424) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	--local Index = AddGoldItem(0,425) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
--	local Index = AddGoldItem(0,426) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	--local Index = AddGoldItem(0,427) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,177) SyncItem(Index) -- an bang
		local Index = AddGoldItem(0,178) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,182) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,184) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,181) SyncItem(Index) -- an bang
Msg2Player("NhËn ®­îc bé Kim Phong.")
end
function NhanAnBangTieu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x3 « trèng");
		return 1;
	end
	--local Index = AddGoldItem(0,424) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	--local Index = AddGoldItem(0,425) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
--	local Index = AddGoldItem(0,426) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	--local Index = AddGoldItem(0,427) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,216) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,217) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,218) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,219) SyncItem(Index) -- an bang
Msg2Player("NhËn ®­îc bé trang søc An Bang TiÓu.")
end
function Nhandinhquoctanthu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x3 « trèng");
		return 1;
	end
	local Index = AddGoldItem(0,403) SyncItem(Index) -- DQ Tieu
	local Index = AddGoldItem(0,404) SyncItem(Index)-- an bang
	local Index = AddGoldItem(0,405) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,406) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,407) SyncItem(Index) -- an bang
Msg2Player("NhËn ®­îc bé Trang BÞ §Þnh Quèc!")
end
function MoKhoaDinh() 

GiveItemUI("Më Khãa §Ýnh", "<color=white>§¹i hiÖp cÇn më g× xin ®Æt vµo « d­íi ®©y! chØ cã thÓ më 1 vËt phÈm duy nhÊt nÕu bá h¬n th× më ngÉu nhiªn.", "batdaucheckngay", "onCancel", 1);
end

function Mua500MauTongKim()
KickOutSelf() 
IsDisabledTeam()
SetCreateTeam(1)
NewWorld(53,1596,3183)

end
function batdaucheckngay(nItemIdx)

		local nItemIdx = GetGiveItemUnit(1);
		local bindState = GetItemBindState(nItemIdx)
		if (bindState == -2) then
			Talk(1,"", "Trang bÞ do BQT khãa vÜnh viÔn kh«ng thÓ më khãa ®­îc rÊt tiÕc.")
		return
	end
	    local strItemlock = GetItemName(nItemIdx)
		Msg2Player("<color=white>Më khãa vËt phÈm "..strItemlock, " thµnh c«ng")
Talk(1, "", "<color=green> Chóc mïng §¹i HiÖp më khãa thµnh c«ng "..strItemlock, "!"); 
		SetItemBindState(nItemIdx,0);
		--ConsumeEquiproomItem(10,4,417,1,1);
		ConsumeEquiproomItem(1,6,1,1371,1);
		SaveNow();
end

function ThamGiaOanTuTi()
tbAloneScriptGame:DialogMain();
end
function NhanDoHoTro()
local szTitle =  "Vâ L©m T¹i Thiªn webside www.volamtestvinhvien.com chia sÎ ngay tõ h«m nay ®Ó nhËn core vip.!"
local tbOpt = 
{
{"NhËn C¸c Lo¹i Ngùa", nhancacloaingua},
{"NhËn Trang BÞ §å Xanh ",trangbixanh},
{"NhËn Trang BÞ HKMP", hkmpvip1},
{"NhËn AB, §Q, NT, HC", HoangKimTanThu},
{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
end
function MuaTuiTichLuyTongKim()
local tbAwardcc={
--{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50,nBindState = -2},
{szName="Tói TÝch Luü Tèng Kim", tbProp={6,1,4361,1,0,0},nCount = 1},
}
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
if GetTask(747)>=10000 then
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	SetTask(747,GetTask(747)-10000)
	else
	Say("B¹n Kh«ng §ñ 10000 §iÓm TÝch Lòy")
end
end

function MuaCanKhonTaoHoaDan()
local tbAwardcc={
--{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50,nBindState = -2},
{szName="Cµn Kh«n T¹o Hãa §an", tbProp={6,1,215,1,0,0},nCount = 10},
}
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
if GetTask(747)>=500 then
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	SetTask(747,GetTask(747)-500)
	else
	Say("B¹n Kh«ng §ñ 500 §iÓm TÝch Lòy")
end

end
function NhanChienCo()
local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate ~= GetTask(3008) then
		SetTask(3008,nDate)
		SetTask(3007,0)
	end
	if GetTask(3007)>0 and nDate==GetTask(3008) then
		Say("Mçi ngµy chØ nhËn ®­îc thuèc lag 1 lÇn.")
		return 1
	end
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
local tbAwardcc={
--{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50},
{szName="LÖnh bµi", tbProp={6,1,157,1,0,0},nCount = 50,nBindState=-2,nExpiredTime=60*24},
{szName="Phong V©n Phi Tèc hoµn", tbProp={6,1,190,1,0,0},nCount = 50,nBindState=-2,nExpiredTime=60*24},
--{szName="Phong Vân Tru?ng M?nh hoàn", tbProp={6,1,186,1,0,0},nCount = 50},
--{szName="Phong Vân Gia Bào hoàn", tbProp={6,1,187,1,0,0},nCount = 50},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
SetTask(3007,1)
end
---------------------------------------------------------------------------
function NhanKhieuChienLenh()
	if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
	local tbAwardcc={
		{
			szName="HPhong V©n Phi Tèc hoµn", tbProp={6,1,1499,1,0,0},nCount = 10,nExpiredTime=30*24*1},
		}
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end

function TayCongDiem()

	Say("§¹i hiÖp: Ng­¬i cÇn g× ë ta?." ,3,"TÈy TiÒm N¨ng Di §éng./tayTNnhe","Céng TiÒm N¨ng Nhanh/TangDiemTiemNangNhanh","§Ó ta suy nghÜ l¹i. /0")
end

function laytienvan()
	if (GetCash() >= 5000000) then 	--  50 ngµn v¹n
		Talk(1, "", "Ng©n l­îng trong tói ng­¬i dïng ch­a hÕt th× lÊy lµm g× cho nhiÒu.")
	else
		Earn(5000000)
		Msg2Player("NhËn ®­îc 500000000 v¹n l­îng.");
	end
end

function huyVPkhoa()

	Say("§¹i hiÖp: Ng­¬i cÇn g× ë ta?." ,3,"Phi shop mét mãn ®å! /banshop","Hñy bá mét mãn ®å! /Huydeltem","§Ó ta suy nghÜ l¹i. /0")
end


function tayTNnhe()
	local base_str = {35,20,25,30,20}			-- ÎåÐÐÈËÎïµÄÌìÉúÊôÐÔÖµ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ½«ÒÑ·ÖÅäÇ±ÄÜÖØÖÃ£¨task(88)ÊÇÈÎÎñÖÐÖ±½Ó½±ÀøµÄÁ¦Á¿¡¢Éí·¨µÈ£©
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
Talk(1, "", "<color=green>TÈy tiÒm n¨ng thµnh c«ng!"); 
end

function TangDiemTiemNangNhanh()
	Say("Ng­¬i ph¶i hiÓu râ c¸ch t¨ng ®iÓm", 4,
			"Søc m¹nh/add_prop_str",
			"Th©n ph¸p/add_prop_dex",
			"Sinh khÝ/add_prop_vit",
			"Néi c«ng/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "Mêi nhËp chØ sè søc m¹nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "Mêi nhËp chØ sè th©n ph¸p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "Mêi nhËp chØ sè sinh khÝ:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "Mêi nhËp chØ sè néi c«ng: ");
end

function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end

function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end

function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end

function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end

function Huydeltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
	end
GiveItemUI("Hñy VËt PhÈm Khãa", " §¹i hiÖp cÇn hñy g× xin ®Æt vµo « d­íi ®©y! Cã thÓ hñy nhiÒu vËt phÈm cïng lóc", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
local strItem = GetItemName(nItemIndex)
RemoveItemByIndex(nItemIndex)
end
Msg2Player("Thao t¸c b¸n vËt phÈm thµnh c«ng")
Talk(1, "", "<color=green> Chóc mïng §¹i HiÖp ®· hñy vËt phÈm khãa thµnh c«ng!"); 
end

function KhoaVatPham()
GiveItemUI("Hñy VËt PhÈm Khãa", " §¹i hiÖp cÇn khãa g× xin ®Æt vµo « d­íi ®©y! Cã thÓ khãa nhiÒu vËt phÈm cïng lóc", "KhoaVatPham_ok", "onCancel", 1);
end

function KhoaVatPham_ok(nCount)
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
SetItemBindState(nItemIndex,-2)
end
Msg2Player("Thao t¸c b¸n vËt phÈm thµnh c«ng")
Talk(1, "", "<color=green> Chóc mïng §¹i HiÖp ®· khãa vËt phÈm khãa thµnh c«ng!"); 

end
------------------------------------ NHAN TRANG BI XANH --------------------------

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
function trangbixanh()

	if CalcFreeItemCellCount() < 6 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 6 « trèng råi h·y tiÕp tôc nhÐ !",0);
		return 1;
	end
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = "Läc ®å nµo anh em ¬i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = "Läc ®å nµo anh em ¬i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"Méc", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Thñy", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"Háa", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Thæ ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = format("<npc>Chän hÖ:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 10, "Sè l­îng:", {laydoxanh4, {nIndex, nType, nSeries}})
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
for i=1,10 do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10) end
end

function banshop()
Sale(149)
end;



function HoangKimTanThu()
	Say("Xin mêi chän trang bÞ cÇn test",5,"Trang BÞ An Bang/hoanmytanthu","Trang BÞ Nhu T×nh/nhutinhtanthu","Trang BÞ §Þnh Quèc/dinhquoctanthu","Trang BÞ HiÖp Cèt/hiepcottanthu","KÕt thóc ®èi tho¹i/no")
end

function hoanmytanthu()                
AddGoldItem(0,394)
AddGoldItem(0,395)
AddGoldItem(0,396)
AddGoldItem(0,397)
Msg2Player("NhËn ®­îc Trang BÞ An Bang Hoµn Mü!")
end

function nhutinhtanthu()
AddGoldItem(0,191)
AddGoldItem(0,192)
AddGoldItem(0,193)
--AddGoldItem(0,419)--
Msg2Player("NhËn ®­îc Trang BÞ Nhu T×nh")
end

function dinhquoctanthu()
AddGoldItem(0,389)
AddGoldItem(0,390)
AddGoldItem(0,391)
AddGoldItem(0,392)
AddGoldItem(0,393)
Msg2Player("NhËn ®­îc Trang BÞ §Þnh Quèc!")
end

function hiepcottanthu()
AddGoldItem(0,186)
AddGoldItem(0,187)
AddGoldItem(0,188)
--AddGoldItem(0,415)
Msg2Player("NhËn ®­îc Trang BÞ HiÖp Cèt!")
end

function OnCancel()
end

function savenhanvatnhanh()
SaveNow();
Say("Thao t¸c save nh©n vËt thµnh c«ng.",0)
end

function savechongroll()
	local tbDialog = 
{ 
"<color=green>Save nh©n vËt tøc lµ l­u ®å ®¹c nh©n vËt b¹n hiÖn t¹i gièng nh­ save game vËy tr¸nh tr­êng hîp nÕu cã rñi ro server bÞ ph¸ th× ®å b¹n sÏ ko mÊt m¸t g×.Th«ng th­êng server tù save tù ®éng nªn tr­êng hîp nµy chØ dµnh cho lóc khÈn cÊp th«i nhe.",
"Ch¾c ch¾n råi save ngay vµ lu«n/savenhanvatnhanh",
"KÕt thóc ®èi tho¹i/",
} 
CreateTaskSay(tbDialog)
end

function savenhanvatnhanh()
SaveNow();
Say("<color=green>Save nh©n vËt thµnh c«ng.",0)
end

function FixLoiThanHanhPhuOK()
                                                                                  local state = GetSkillState(739);
	if state == 1 then
                                                                                                                                                                     Say("§ang lµm nhiÖm vô quan träng kh«ng thÓ sö dông chøc n¨ng nµy.",0)
		else
FixLoiThanHanhPhuOOK()
	end
end



function FixLoiThanHanhPhuOOK()
local PlayerIndex = GetTaskTemp(246);
CallPlayerFunction(PlayerIndex, DisabledUseTownP, 0);
return 
CallPlayerFunction(PlayerIndex, Say, "Gi¶i kÑt thµnh c«ng b¹n cã thÓ dïng ThÇn thµnh Phï.", 0);
end

function nhancacloaingua()
	local tbOpt =
	{
                                                                                    {"NhËn Ngùa TuyÖt ¶nh", tuyetanh},
                                                                                    {"NhËn Ngùa ChiÕu D¹", chieudatanthu},
	  {"NhËn Ngùa XÝch Thè", xichthotanthu},
                                                                                    {"NhËn Ngùa ¤ V©n §¹p TuyÕt", ovan},
	  {"Tho¸t"},
	}
	CreateNewSayEx("<npc>§¹i ca ®¹i tû cÇn g× ¹ ?", tbOpt)
end


function tuyetanh()
AddItem(0,10,5,3,0,0,0)
end

function ovan()
AddItem(0,10,5,6,0,0,0)
end

function chieudatanthu()
AddItem(0,10,5,10,0,0,0)
end

function xichthotanthu()
AddItem(0,10,5,7,0,0,0)
end


--------------------------------------------------------


function hkmpvip1() 
Say("Xin mêi chän trang bÞ",7,"Nga Mi/hkmpnm","Thóy Yªn/hkmpty","§­êng M«n/hkmpdm","Ngò §éc/hkmpnd","Thiªn V­¬ng/hkmptv","Trang Sau/hkmpvip2","KÕt thóc ®èi tho¹i/no") 
end

function hkmpvip2() 
Say("Xin mêi chän trang bÞ",7,"ThiÕu L©m/hkmptl","Vâ §ang/hkmpvd","C«n L«n/hkmpcl","Thiªn NhÉn/hkmptn","C¸i Bang/hkmpcb","Trang Tr­íc/hkmpvip1","KÕt thóc ®èi tho¹i/no") 
end

function hkmpnm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch­ëng", hkvipnmc}, 
                {"Nga My KiÕm", hkvipnmk}, 
               -- {"Nga My Buff", hkvipnmbuff}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
        return 1 
end 

function hkvipnmc()
for i=1,10 do
AddGoldItem(0,39)  
end
end;

function hkvipnmk() 
for i=1,10 do
AddGoldItem(0,31)  
end
end;

function hkvipnmbuff() 
for i=1,10 do
AddGoldItem(0,42)  
end
end;

function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Thóy Yªn §ao", hkviptyd}, 
                {"Thóy Yªn Ch­ëng", hkviptyc}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptyd() 
for i=1,10 do
AddGoldItem(0,46)
end  
end; 

function hkviptyc() 
for i=1,10 do
AddGoldItem(0,51)  
end
end; 

function hkmpdm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
        local tbOpt= 
               { 
                {"§­êng M«n Ná", hkvipbv}, 
                            {"§­êng M«n Phi Tiªu", hkvippt}, 
                {"§­êng M«n B¨ng Hµn", hkvippd}, 
                               -- {"§­êng M«n BÉy", hkvipbay}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipbv() 
for i=1,10 do
AddGoldItem(0,76)  
end
end; 

function hkvippt() 
for i=1,10 do
AddGoldItem(0,81)  
end
end; 

function hkvippd() 
for i=1,10 do
AddGoldItem(0,71)  
end
end; 

function hkvipbay() 
for i=1,10 do
AddGoldItem(0,87)  
end
end;

function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Ngò §éc Ch­ëng", hkvipndc}, 
                            {"Ngò §éc §ao", hkvipndd}, 
               -- {"Ngò §éc Bïa", hkvipndb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipndc() 
for i=1,10 do
AddGoldItem(0,56)  
end
end;

function hkvipndd() 
for i=1,10 do
AddGoldItem(0,61)  
end
end; 

function hkvipndb() 
for i=1,10 do
AddGoldItem(0,67)  
end
end; 

function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"Thiªn V­¬ng Th­¬ng", hkviptvt}, 
                            {"Thiªn V­¬ng Chïy", hkviptvc}, 
                {"Thiªn V­¬ng §ao", hkviptvd}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptvt() 
for i=1,10 do
AddGoldItem(0,21)  
end
end; 

function hkviptvc() 
for i=1,10 do
AddGoldItem(0,16)  
end
end;

function hkviptvd() 
for i=1,10 do
AddGoldItem(0,26)  
end
end; 

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"ThiÕu L©m §ao", hkviptld}, 
                            {"ThiÕu L©m Bæng", hkviptlb}, 
                {"ThiÕu L©m QuyÒn", hkviptlq}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptld() 
for i=1,10 do
AddGoldItem(0,11)  
end
end; 

function hkviptlb() 
for i=1,10 do
AddGoldItem(0,6)  
end
end; 

function hkviptlq() 
for i=1,10 do
AddGoldItem(0,2)  
end
end;

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Vâ §ang Ch­ëng", hkvipvdc}, 
                            {"Vâ §ang KiÕm", hkvipvdk}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 
for i=1,10 do
AddGoldItem(0,116)  
end
end; 

function hkvipvdk() 
for i=1,10 do
AddGoldItem(0,121)  
end
end;

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"C«n L«n §ao", hkvipcld}, 
                            {"C«n L«n Ch­ëng", hkvipclc}, 
                {"C«n L«n Bïa", hkvipclb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcld() 
for i=1,10 do
AddGoldItem(0,126)  
end
end;

function hkvipclc() 
for i =1,5 do
AddGoldItem(0,131)  
end
end; 

function hkvipclb() 
for i=1,10 do
AddGoldItem(0,136)  
end
end; 

function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Thiªn NhÉn Th­¬ng", hkviptnt}, 
                            {"Thiªn NhÉn Ch­ëng", hkviptnd}, 
                --{"Thiªn NhÉn Bïa", hkviptnb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
for i=1,10 do
AddGoldItem(0,101)  
end
end; 

function hkviptnd() 
--AddGoldItem(0,790)  
for i=1,10 do
AddGoldItem(0,115)  
end
end; 

function hkviptnb() 
for i=1,10 do
AddGoldItem(0,107)  
end
end;

function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"C¸i Bang Ch­ëng", hkvipcbc}, 
               {"C¸i Bang Bæng", hkvipcbb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 
for i=1,10 do
AddGoldItem(0,94)  
end
end; 

function hkvipcbb() 
for i=1,10 do
AddGoldItem(0,96)  
end
end;

function hkmphoason() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end

AddGoldItem(0,681)  

end; 


-------------------------------------------------code cua quy ----------------------------------
----------------------------------------------------------------Tµi L·nh §¹o--------------------------------------------------------------------------------------------------
function lanhdao()
--if check_faction() == 10 then
--		Talk(1, "", "Gia nhËp m«n ph¸i míi cã thÓ nhËn phÇn th­ëng nµy.")
--	return
--	end
if CalcFreeItemCellCount() < 0 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã « trèng råi h·y më.",0);
		return 1;
end
	if GetLevel()>9 then
		if GetTask(14)==0 or GetTask(14)==1 or GetTask(14)==2 then
			--FuYuan_Start()
			--FuYuan_Add(900)
			AddLeadExp(90000000)
			AddRepute(950)
			SetTask(14,GetTask(14)+1)
			Msg2Player("Chóc Mõng §¹i HiÖp §· NhËn §­îc Hç Trî Thµnh C«ng.")
		else
			Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a. ")
		end
	else
		Talk(1, "", "Ng­¬i ch­a §ñ §iÒu KiÖn NhËn Th­ëng, Xin H·y RÌn LuyÖn Thªm. ")
	end
end
-------------------------------------------------code cua quy ----------------------------------
function NhanHoTroTanThu()
		if CalcFreeItemCellCount() >= 40 then
			--SetTask(NhiemVuTanThu,1)
		--	local Index = AddItem(6,1,4812,1,0,0) SetItemBindState(Index, -2)--Mau Tan Thu
			local Index = AddItem(6,1,1266,1,0,0) SetItemBindState(Index, -2)--Thanh Hanh Phu
			local Index = AddItem(6,1,438,1,0,0) ITEM_SetExpiredTime(Index,10080) SyncItem(Index) SetItemBindState(Index, -2)--Tho Dia Phu
			local Index = AddItem(6,1,4261,1,0,0) SetItemBindState(Index, -2)--Lenh Bai Tan Thu
			local Index = AddItem(0,10,8,10,0,0,0) -- Phi Van
			local Index	= AddItem(6,1,2426,0,0,0,0) --bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0) --bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0) --bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) --dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) --dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) --dai thanh bk 90
			local Index = AddItem(6,1,1125,0,0,0,0)--bk 120
			local Index = AddItem(6,1,2425,0,0,0,0) --dai thanh bk 120
			--Earn(50000)
			--for i = 1,9 do local Index = AddGoldItem(0,176+i) SetItemBindState(Index, -2) end --Kim Phong
		else
			Talk(1,"","<color=green>"..myplayersex().." H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng...!")
		end
end
--------------------------------------------------------


function NhapTenNguoiCanXem()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","CÇn cã <color=pink>10<color> TiÒn ®ång míi cã thÓ xem toµn bé th«ng tin vÒ tiÒm n¨ng hiÖn t¹i cña 1 nh©n vËt cÇn t×m.NÕu t×m thÊt b¹i sÏ kh«ng mÊt xu.") -- go
	return
end
	local a = GetTask(5864)
	local b = GetGameTime()
	local c = 0
	
	if (b - a) < 25 then
		_, c = bil.SplitTime(25 - (b - a))
		return bil.Talk("B¹n ph¶i chê thªm "..c.." míi cã thÓ t×m lÇn kÕ tiÕp!")
	end
	
	SetTask(5864, b)
	return AskClientForString("KiemTraTiemNang", "", 1, 20, "NhËp tªn nh©n vËt");
end

function KiemTraTiemNang(Name)
	local Keywk1 = strfind(Name, "/")
	if FALSE(Keywk1) then
		return BatDauKiemTra(Name)
	end
	local Name = strsub(Name, Keywk1 + 1)
	return BatDauKiemTra(Name)
end


function BatDauKiemTra2(rolename)
	if (FALSE(rolename)) then rolename = GetName();end
	if XemCoOnline(rolename) then return end
	SetTaskTemp(245, SearchPlayer(rolename));
	local PlayerIndexGamer = GetTaskTemp(245);
	local img = "<link=image[0,0]:\\spr\\skill\\others\\title_zw.spr>"
	local strTitle = ""..img.."Chµo mõng b¹n ®Õn víi <color=green>Vâ L©m TruyÒn Kú<color> H·y chóng tá m×nh lµ 1 gamer ch©n chÝnh ®õng v× thua ng­êi kh¸c mµ n¶n chÝ trai.QuyÕt t©m Êt chiÕn th¾ng tr­íc mäi cao thñ.Kh«ng cã kÎ nµo yÕu nhÊt chØ cã nh÷ng kÎ kh«ng biÕt chøng tá tr×nh pk cña m×nh."
	local tbOpt = 
	{
		{"KÕt thóc ®èi tho¹i.", OnCancel},
	}
	CreateNewSayEx(strTitle , tbOpt)
ConsumeEquiproomItem(20,4,417,1,1)
Msg2SubWorld(""..GetName()..": <color=Blue>§· KiÓm Tra TiÒm N¨ng Cña Nh©n VËt <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> KÕt Qu¶ §· §­îc Göi §Õn "..GetName().."") 
AddGlobalCountNews(""..GetName()..": <color=Blue>§· KiÓm Tra TiÒm N¨ng Cña Nh©n VËt <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> KÕt Qu¶ Nh­ Sau:") 

Msg2Player("<color=Pink>Søc M¹nh  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetStrg).." <pic=48>") 
Msg2Player("<color=Pink>Sinh KhÝ  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetVit).." <pic=48>")
Msg2Player("<color=Pink>Th©n Ph¸p :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetDex).." <pic=48>") 
Msg2Player("<color=Pink>Néi C«ng  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetEng).." <pic=48>")
Msg2Player("<color=Pink>Cßn L¹i   :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetProp).." <pic=48>")
Msg2SubWorld("Nh©n VËt <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> NhËn §­îc <color=green>20<color> TiÒn §ång") 
AddGlobalCountNews("Nh©n VËt <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> NhËn §­îc <color=green>20<color> TiÒn §ång") 


--AddGlobalCountNews("<color=Pink>Søc M¹nh Nh©n VËt <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetStrg).." <pic=48><pic=26>") 
--AddGlobalCountNews("<color=Pink>Sinh KhÝ Nh©n VËt <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetVit).." <pic=48><pic=15>")
--AddGlobalCountNews("<color=Pink>Th©n Ph¸p Nh©n VËt <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).." :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetDex).." <pic=48><pic=18>") 
--AddGlobalCountNews("<color=Pink>Néi C«ng Nh©n VËt<color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetEng).." <pic=48><pic=22>")

--CallPlayerFunction(PlayerIndexGamer, AddStackItem,20,4, 417, 1, 1, 0, 0, 0)
--CallPlayerFunction(PlayerIndexGamer, Say, "<color=green>Chóc mõng b¹n nhËn ®­îc 20 tiÒn ®ång khi cã ai ®ã võa xem th«ng tin vÒ b¶ng tiÒm n¨ng cña b¹n..", 0);
end


function XemCoOnline(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5998) == 1 then
		local bilPlayerOfflineLive_W, bilPlayerOfflineLive_X, bilPlayerOfflineLive_Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		Say("<color=pink>Nh©n vËt ®ang ñy th¸c kh«ng thÓ kiÓm tra lóc nµy")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "<color=pink>Cã thÓ b¹n ®¸nh : Sai tªn nh©n vËt - nh©n vËt kh«ng tån t¹i - nh©n vËt ®· rêi m¹ng - hoÆc b¹n kh«ng ®øng cïng b¶n ®å víi nh©n vËt cÇn kiÓm tra")
		return 1
	else
		return nil
	end
end





function BatDauKiemTra(rolename)
	if (FALSE(rolename)) then rolename = GetName();
	end
if XemCoOnline(rolename) then
 return 
 end
Msg2SubWorld(""..GetName()..": <color=green>§· KiÓm Tra TiÒm N¨ng Cña Nh©n VËt <color=yellow>"..rolename.."<color> KÕt Qu¶ NhËn §­îc.") 
AddGlobalCountNews(""..GetName()..": <color=cyan>§· Bá Ra 10 Xu §Ó KiÓm Tra TiÒm N¨ng Cña Nh©n VËt <color=red>"..rolename.."") 
ConsumeEquiproomItem(10,4,417,1,1)
local nNum =  500
for i=1,nNum do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetName() == rolename then
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    PlayerIndex=gmidx 
Msg2SubWorld("<color=cyan>Søc M¹nh  :<color=green> "..GetStrg(1).." <pic=48>") 
Msg2SubWorld("<color=cyan>Sinh KhÝ  :<color=green> "..GetVit(1).." <pic=48>")
Msg2SubWorld("<color=cyan>Th©n Ph¸p :<color=green> "..GetDex(1).." <pic=48>") 
Msg2SubWorld("<color=cyan>Néi C«ng  :<color=green> "..GetEng(1).." <pic=48>")
Msg2SubWorld("<color=cyan>Ch­a Céng:<color=green> "..GetProp().." <pic=48>")
--tbAwardTemplet:GiveAwardByList({{szName="TiÒn §ång",tbProp={4,417,1,1,0},nCount=20,},}, "", 1);
--Say("<color=Blue> NhËn §­îc <color=green>20<color> TiÒn §ång khi cã ai ®ã xem tin tøc th«ng tin vÒ b¹n ") 
	else
	end
	 PlayerIndex=gmidx
end
end;



function FALSE(value)
	if (value == 0 or value == nil or value == "") then
		return 1
	else
		return nil
	end
end

function luachontennv() 
	AskClientForString("TenTaiKhoanCheck", "", 0,5000,"Tªn Tµi Kho¶n !") 
end 

function TenTaiKhoanCheck(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+500 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetName()
		PlayerIndex=gmidx
--	if ((i)> GetPlayerCount()) then
--		Msg2Player("Nh©n vËt Nµy HiÖn Kh«ng Online Vui Lßng Quay L¹i Sau...!");  
--	else
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
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
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5991)
		nTransLife=ST_GetTransLifeCount()
		CaiLao=GetTask(5971)
		DiemPhucLoi=GetTask(5994)
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
		ObjAccount=GetAccount() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
	--	tinsert(tbSay,"Thªm Vßng S¸ng Lùa Chän/ChonVongSangBuff")
	--	tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
		tinsert(tbSay,"Trë l¹i.")            
		Say("<color=green> Nh©n VËt: "..ObjName.."\nMµu: "..cam.." - M«n ph¸i: "..fac.."\nSøc M¹nh: "..strg.." §iÓm\nSinh KhÝ: "..vit.." §iÓm\nTh©n Ph¸p: "..dex.." §iÓm\nNéi C«ng:  §iÓm - §iÓm Tèng Kim: "..pr.." §iÓm<color>", getn(tbSay), tbSay)
		return end
	--end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh«ng t×m thÊy nh©n vËt tªn <color=green>"..nNameChar.."<color>"); 
	end
end 