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
local szTitle =  "B�n �ang C� <color=red>"..GetTask(747).."<color> �i�m T�ch L�y T�ng Kim\nB�n �� Online <color=yellow>"..nHour.." gi� "..nMin.." ph�t "..nSec.." gi�y<color>\nEXP T�ng Kim Trong 7 Ng�y �� ��i:<color=red> "..GetTask(3034).."<color>."

local tbOpt = 
{
--{"Nh�n H� Tr� T�n Th�",NhanHoTroTanThu},
--{"Xem Th�ng Tin Ng��i Kh�c", luachontennv},
--{"Ch�c N�ng M� Kh�a �� �� ��nh.", MoKhoaDinh },
--{"Kh�a V�t Ph�m",KhoaVatPham},
--{"Nh�n Trang B� HKMP",doimanhrahkmp},
--{"Ch�i O�n T� T�",ThamGiaOanTuTi},
{"Gi�i K�t Nh�n V�t V� Ba L�ng Huy�n",Mua500MauTongKim},
--{"Nh�n 1 B� K�p 9x (C�p 80 nh�n)",nhanbikip9x},
{"Nh�n Th��ng 12 Ti�ng Online",nhanthuongonline},
{"Nh�n V�ng S�ng T�n Th�", nhanvongsang1},
{"Xem S�ch V�", xemsachvo},
--{"Nh�n H�i Th�nh Ph� Nh�", Nhanthuonghangngay},
--{"Nh�n Th��ng H�ng Ng�y", testdo},
--{"Nh�n V�t Ph�m H� Tr�", NhanDoHoTroTanThu},
--{"Nh�n T�i L�nh ��o V� Danh V�ng",lanhdao},
--{"Mua 1 T�i t�ch l�y T�ng Kim(10k �i�m)",MuaTuiTichLuyTongKim},
--{"Nh�n Trang B� H� Tr�",NhanDoHoTro},
{"Ti�u H�y V�t Ph�m",huyVPkhoa},
--{"T�y T�ng Ti�m N�ng", TayCongDiem},
--{"L�y 50 ng�n v�n.", laytienvan},
--{"Nh�n Phi T�c L�nh B�i.", NhanChienCo },
--{"H�c L�i Khinh C�ng.", AddMagic(210,1) },

--{"Nh�n Khi�u chi�n l�nh.", NhanKhieuChienLenh },
--{"Ch�c N�ng M� Kh�a �� �� ��nh.", MoKhoaDinh },
--{"Tra Ti�m N�ng Ng��i Kh�c", NhapTenNguoiCanXem},
{"Tho�t"},
}
	if GetAccount() == "kimluyen2002" then
	tinsert(tbOpt, 1, {"T�y T�ng Ti�m N�ng", TayCongDiem}) 
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
	Say("B�n ch�a online �� 12 ti�ng ho�c �� nh�n th��ng r�i.")
	return
end
end
function nhanbikip9x()
	if GetLevel()>=80 then
		if GetTask(3031)==0 then
			SetTask(3031,1)
				local award1111  ={
{

		{szName="B� Kip 9x",tbProp={6,1,2426,1,1},nCount=1,nBindState=-2},
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "Ph�n Th��ng");
		else
		Say("M�i nh�n v�t ch� nh�n ���c 1 l�n duy nh�t.")
		return
		end
	else
		Say("C�p �� 80 m�i nh�n ���c.")
		return
	end

end
function xemsachvo()
	Msg2Player("<color=green>��i hi�p �� s� d�ng:\n"..GetTask(80)..": V� L�m M�t T�ch\n"..GetTask(81)..": T�y T�y Kinh<color>")
end	
function trangthai22()
local tbSay = {}
tinsert(tbSay,"GM �n Th�n.../GManthan")
tinsert(tbSay,"GM Hi�n Th�n.../XoaSkillGM")
tinsert(tbSay,"Nh�n V�t Ch� Tr�ng./mautrang")
tinsert(tbSay,"Chi�n ��u/ChienDau")
tinsert(tbSay,"Phi Chi�n ��u/PhiChienDau")
tinsert(tbSay,"Tho�t/no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n tr�ng th�i m� b�n mu�n !", getn(tbSay), tbSay)
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
Msg2Player("<color=pink>Ch�c M�ng B�n �� H�c ���c Skill GM...")
end

function XoaSkillGM()
DelMagic(732,20)
DelMagic(733,20)
DelMagic(1003,20)
DelMagic(1310,20)
Msg2Player("B�n �� X�a K� N�ng GM Th�nh C�ng")
end

function nhanvongsang1()
	if GetLevel()>=79 then
		Say("Ch� nh�n ���c ��n c�p 80")
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
		{"Ch�nh ph�i - M�u V�ng", mauvang},
		{"Trung l�p - M�u Xanh", mauxanh},
		{"T� ph�i - M�u T�m", mautim},
		{"S�t Th� - M�u �� xu�t x�", maudo},
		{"Tho�t/0"},
	}
	CreateNewSayEx("<npc>Xin Ch�n M�u", tbOpt)
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

		{szName="T�i m�u t�n th�",tbProp={6,1,4461,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
		{szName="S�t Th� Gi�n",tbProp={6,1,400,90,random(0,4),0},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
		{szName="L�nh b�i Vi S�n ��o",tbProp={6,1,2432,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
		{szName="Vi�m �� L�nh",tbProp={6,1,1617,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
		{szName="L�nh b�i Phong L�ng ��",tbProp={4,489,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "Ph�n Th��ng");
end
	function Nhanthuonghangngay()
	if CalcFreeItemCellCount()<20 then
	Say("H�nh trang kh�ng �� 20 � tr�ng.")
	return
end
local nDate2 = tonumber(GetLocalDate("%Y%m%d"));
	local award1111  ={
{

	--	{szName="T�i m�u t�n th�",tbProp={6,1,4461,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
	--	{szName="S�t Th� Gi�n",tbProp={6,1,400,90,random(0,4),0},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
--		{szName="L�nh b�i Vi S�n ��o",tbProp={6,1,2432,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
	--	{szName="Vi�m �� L�nh",tbProp={6,1,1617,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
	--	{szName="L�nh b�i Phong L�ng ��",tbProp={4,489,1,1},nCount=1,nBindState=-2,nExpiredTime=nDate2+1},
		{szName="H�i th�nh ph� (nh�)",tbProp={6,1,1082,1,1},nCount=1,nBindState=-2,nExpiredTime=30*24*60},
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "Ph�n Th��ng");
	
	end
function chucnangmod()
	local tbSay = {
	"Move TK -- CTC./#vitri_congthanh()",
"T�n H�nh./#GManthan()",
"Hi�n H�nh./#XoaSkillGM()",
"Ch�nh Ph�i./#mauvang()",
"T� Ph�i./#mautim()",
"Trung L�p./#mauxanh()",
"S�t Th�./#maudo()",
"Ch� Tr�ng./#mautrang()",
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
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
Msg2Player("<color=pink>Ch�c M�ng B�n �� H�c ���c Skill GM...")
end

function XoaSkillGM()
DelMagic(732,20)
DelMagic(733,20)
DelMagic(1003.20)
DelMagic(1310.20)
Msg2Player("B�n �� X�a K� N�ng GM Th�nh C�ng")
end
function vitri_congthanh()
local tab_Content = {
		"T�ng - Kim/goto_tongkim",
		"L�m An/goto_lam_an",
		"Bi�n Kinh/goto_bien_kinh",		
		"Th�nh ��/goto_thanh_do",
		"T��ng D��ng/goto_tuong_duong",
		"Ph��ng T��ng/goto_phuong_tuong",
		"D��ng Ch�u/goto_duong_chau",
		"��i L�/goto_dai_ly",
		"Ba L�ng Huy�n/goto_ba_lang",
		
		"K�t th�c..!/No"
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
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
	"Thi�u L�m./#doimanhhkmpthieulam()",
"Thi�n V��ng./#doimanhhkmpthienvuong()",
"Nga My./#doimanhhkmpngamy()",
"Thu� Y�n./#doimanhhkmpthuyyen()",
"���ng M�n./#doimanhhkmpduongmon()",
"Trang sau./#doimanhrahkmp2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhrahkmp2()
	local tbSay = {
	"Ng� ��c./#doimanhhkmpngudoc()",
"C�i Bang./#doimanhhkmpcaibang()",
"Thi�n Nh�n./#doimanhhkmpthiennhan()",
"C�n L�n./#doimanhhkmpconlon()",
"V� �ang./#doimanhhkmpvodang()",
"Trang tr��c./#doimanhrahkmp()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam()
	local tbSay = {
	"M�ng Long Ch�nh H�ng T�ng M�o./#doimanhhkmpthieulam_ok(1)",
"M�ng Long Ph�t Ph�p Huy�n B�i./#doimanhhkmpthieulam_ok(4)",
"M�ng Long Huy�n Ti Ph�t ��i./#doimanhhkmpthieulam_ok(3)",
"M�ng Long ��t Ma T�ng h�i./#doimanhhkmpthieulam_ok(5)",
"Ph�c Ma Huy�n Ho�ng C� Sa./#doimanhhkmpthieulam_ok(7)",
"Ph�c Ma � Kim Nhuy�n �i�u./#doimanhhkmpthieulam_ok(8)",
"Ph�c Ma Ph�t T�m Nhuy�n Kh�u./#doimanhhkmpthieulam_ok(9)",
"Ph�c Ma Ph� �� T�ng h�i./#doimanhhkmpthieulam_ok(10)",
"T� Kh�ng T� Kim C� Sa./#doimanhhkmpthieulam_ok(12)",
"T� Kh�ng H� ph�p Y�u ��i./#doimanhhkmpthieulam_ok(13)",
"T� Kh�ng Nhuy�n B� H� Uy�n./#doimanhhkmpthieulam_ok(14)",
"T� Kh�ng Gi�i Lu�t Ph�p gi�i./#doimanhhkmpthieulam_ok(15)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthienvuong()
	local tbSay = {
	"H�m Thi�n V� Th�n T��ng Kim Gi�p./#doimanhhkmpthieulam_ok(17)",
"H�m Thi�n Uy V� Th�c y�u ��i./#doimanhhkmpthieulam_ok(18)",
"H�m Thi�n H� ��u Kh�n Th�c Uy�n./#doimanhhkmpthieulam_ok(19)",
"H�m Thi�n Th�a Long Chi�n Ngoa./#doimanhhkmpthieulam_ok(20)",
"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i./#doimanhhkmpthieulam_ok(22)",
"K� Nghi�p B�ch H� V� Song kh�u./#doimanhhkmpthieulam_ok(23)",
"K� Nghi�p H�aV�n K� L�n Th� ./#doimanhhkmpthieulam_ok(24)",
"K� Nghi�p Chu T��c L�ng V�n Ngoa./#doimanhhkmpthieulam_ok(25)",
"Ng� Long Chi�n Th�n Phi Qu�i gi�p./#doimanhhkmpthieulam_ok(27)",
"Ng� Long Thi�n M�n Th�c Y�u ho�n./#doimanhhkmpthieulam_ok(28)",
"Ng� Long T�n Phong H� y�n./#doimanhhkmpthieulam_ok(29)",
"Ng� Long Tuy�t M�nh Ch� ho�n./#doimanhhkmpthieulam_ok(30)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpngamy()
	local tbSay = {
	"V� Gian Thanh Phong Truy Y./#doimanhhkmpthieulam_ok(32)",
"V� Gian Ph�t V�n Ti ��i./#doimanhhkmpthieulam_ok(33)",
"V� Gian C�m V�n H� Uy�n./#doimanhhkmpthieulam_ok(34)",
"V� Gian B�ch Ng�c B�n Ch� ./#doimanhhkmpthieulam_ok(35)",
"V� Ma T� Kh�m C� Sa./#doimanhhkmpthieulam_ok(37)",
"V� Ma B�ng Tinh Ch� Ho�n./#doimanhhkmpthieulam_ok(38)",
"V� Ma Ma Ni qu�n./#doimanhhkmpthieulam_ok(36)",
"V� Ma H�ng Truy Nhuy�n Th�p h�i./#doimanhhkmpthieulam_ok(40)",
"V� Tr�n Thanh T�m H��ng Thi�n Ch�u./#doimanhhkmpthieulam_ok(42)",
"V� Tr�n T� Bi Ng�c Ban Ch�./#doimanhhkmpthieulam_ok(43)",
"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i./#doimanhhkmpthieulam_ok(44)",
"V� Tr�n Ph�t Quang Ch� Ho�n./#doimanhhkmpthieulam_ok(45)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthuyyen()
	local tbSay = {
	"T� Ho�ng Tu� T�m Khinh Sa Y./#doimanhhkmpthieulam_ok(47)",
"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i./#doimanhhkmpthieulam_ok(48)",
"T� Ho�ng B�ng Tung C�m uy�n./#doimanhhkmpthieulam_ok(49)",
"T� Ho�ng Th�y Ng�c Ch� Ho�n./#doimanhhkmpthieulam_ok(50)",
"B�ch H�i Ho�n Ch�u V� Li�n./#doimanhhkmpthieulam_ok(52)",
"B�ch H�i H�ng Linh Kim Ti ��i./#doimanhhkmpthieulam_ok(53)",
"B�ch H�i H�ng L�ng Ba./#doimanhhkmpthieulam_ok(54)",
"B�ch H�i Khi�n T� Ch� ho�n./#doimanhhkmpthieulam_ok(55)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpngudoc()
	local tbSay = {
	"U Lung X�ch Y�t M�t trang./#doimanhhkmpthieulam_ok(57)",
"U Lung Thanh Ng� Tri�n y�u./#doimanhhkmpthieulam_ok(58)",
"U Lung Ng�n Th�m H� Uy�n./#doimanhhkmpthieulam_ok(59)",
"U Lung M�c Th� Nhuy�n L�./#doimanhhkmpthieulam_ok(60)",
"Minh �o U ��c �m Y./#doimanhhkmpthieulam_ok(62)",
"Minh �o ��c Y�t Ch� Ho�n./#doimanhhkmpthieulam_ok(63)",
"Minh �o H� C�t H� uy�n./#doimanhhkmpthieulam_ok(64)",
"Minh �o Song Ho�n X� H�i./#doimanhhkmpthieulam_ok(65)",
"Ch� Ph��c Di�t L�i C�nh Ph� ./#doimanhhkmpthieulam_ok(67)",
"Ch� Ph��c U �o Ch� Ho�n./#doimanhhkmpthieulam_ok(68)",
"Ch� Ph��c Xuy�n T�m ��c Uy�n./#doimanhhkmpthieulam_ok(69)",
"Ch� Ph��c B�ng H�a Th�c C�t Ngoa./#doimanhhkmpthieulam_ok(70)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpduongmon()
	local tbSay = {
	"B�ng H�n Huy�n Y Th�c Gi�p./#doimanhhkmpthieulam_ok(72)",
"B�ng H�n T�m Ti�n Y�u Kh�u./#doimanhhkmpthieulam_ok(73)",
"B�ng H�n Huy�n Thi�n B�ng H�a B�i./#doimanhhkmpthieulam_ok(74)",
"B�ng H�n Nguy�t �nh Ngoa./#doimanhhkmpthieulam_ok(75)",
"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ./#doimanhhkmpthieulam_ok(77)",
"Thi�n Quang S�m La Th�c ��i./#doimanhhkmpthieulam_ok(78)",
"Thi�n Quang Song B�o H�n Thi�t Tr�c./#doimanhhkmpthieulam_ok(79)",
"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n./#doimanhhkmpthieulam_ok(80)",

"Trang Sau./#doimanhhkmpduongmon2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpduongmon2()
	local tbSay = {
"S�m Hoang KimTi�n Li�n Ho�n Gi�p./#doimanhhkmpthieulam_ok(82)",
"S�m Hoang H�n Gi�o Y�u Th�c./#doimanhhkmpthieulam_ok(83)",
"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i./#doimanhhkmpthieulam_ok(84)",
"S�m Hoang Tinh V�n Phi L�./#doimanhhkmpthieulam_ok(85)",
"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n./#doimanhhkmpthieulam_ok(86)",
"��a Ph�ch H�c Di�m Xung Thi�n Li�n./#doimanhhkmpthieulam_ok(87)",
"��a Ph�ch T�ch L�ch L�i H�a Gi�i./#doimanhhkmpthieulam_ok(88)",
"��a Ph�ch Kh�u T�m tr�c./#doimanhhkmpthieulam_ok(89)",
"��a Ph�ch ��a H�nh Thi�n L� Ngoa./#doimanhhkmpthieulam_ok(90)",
"Trang Tr��c./#doimanhhkmpduongmon()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpcaibang()
	local tbSay = {
	"��ng C�u Phi Long ��u ho�n./#doimanhhkmpthieulam_ok(91)",
"��ng C�u Gi�ng Long C�i Y./#doimanhhkmpthieulam_ok(92)",
"��ng C�u Ti�m Long Y�u ��i./#doimanhhkmpthieulam_ok(93)",
"��ng C�u Ki�n Long Ban Ch� ./#doimanhhkmpthieulam_ok(95)",
"��ch Kh�i C�u ��i C�i Y./#doimanhhkmpthieulam_ok(97)",
"��ch Kh�i Tri�n M�ng y�u ��i./#doimanhhkmpthieulam_ok(98)",
"��ch Kh�i C�u T�ch B� H� uy�n./#doimanhhkmpthieulam_ok(99)",
"��ch Kh�i Th�o Gian Th�ch gi�i./#doimanhhkmpthieulam_ok(100)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthiennhan()
	local tbSay = {
	"Ma S�t T�n D��ng �nh Huy�t Gi�p./#doimanhhkmpthieulam_ok(102)",
"Ma S�t X�ch K� T�a Y�u Kh�u./#doimanhhkmpthieulam_ok(103)",
"Ma S�t C� H�a Li�u Thi�n uy�n./#doimanhhkmpthieulam_ok(104)",
"Ma S�t V�n Long Th� Ch�u gi�i./#doimanhhkmpthieulam_ok(105)",
"Ma Ho�ng Kim Gi�p Kh�i./#doimanhhkmpthieulam_ok(106)",
"Ma Ho�ng �n Xu�t H� H�ng Khuy�n./#doimanhhkmpthieulam_ok(107)",
"Ma Ho�ng Kh� C�c Th�c y�u ��i./#doimanhhkmpthieulam_ok(108)",
"Ma Ho�ng Huy�t Y Th� Tr�c./#doimanhhkmpthieulam_ok(109)",
"Ma Ho�ng ��ng ��p Ngoa./#doimanhhkmpthieulam_ok(110)",
"Ma Th� Li�t Di�m Qu�n Mi�n./#doimanhhkmpthieulam_ok(111)",
"Ma Th� L� Ma Ph� T�m Li�n./#doimanhhkmpthieulam_ok(112)",
"Ma Th� Nghi�p H�a U Minh Gi�i./#doimanhhkmpthieulam_ok(113)",
"Ma Th� Huy�t Ng�c Th�t S�t B�i./#doimanhhkmpthieulam_ok(114)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpvodang()
	local tbSay = {
	"L�ng Nh�c V� Ng� ��o b�o./#doimanhhkmpthieulam_ok(117)",
"L�ng Nh�c N� L�i Gi�i./#doimanhhkmpthieulam_ok(118)",
"L�ng Nh�c V� C�c Huy�n Ng�c B�i./#doimanhhkmpthieulam_ok(119)",
"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i./#doimanhhkmpthieulam_ok(120)",
"C�p Phong Tam Thanh Ph�./#doimanhhkmpthieulam_ok(122)",
"C�p Phong Huy�n Ti Tam �o�n c�m./#doimanhhkmpthieulam_ok(123)",
"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i./#doimanhhkmpthieulam_ok(124)",
"C�p Phong Thanh T�ng Ph�p gi�i./#doimanhhkmpthieulam_ok(125)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpconlon()
	local tbSay = {
	"S��ng Tinh Ng�o S��ng ��o b�o./#doimanhhkmpthieulam_ok(127)",
"S��ng Tinh Thanh Phong L� ��i./#doimanhhkmpthieulam_ok(128)",
"S��ng Tinh Thi�n Tinh B�ng Tinh th� ./#doimanhhkmpthieulam_ok(129)",
"S��ng Tinh Phong B�o ch� ho�n./#doimanhhkmpthieulam_ok(130)",
"L�i Khung Thi�n ��a H� ph� ./#doimanhhkmpthieulam_ok(132)",
"L�i Khung Phong L�i Thanh C�m ��i./#doimanhhkmpthieulam_ok(133)",
"L�i Khung Linh Ng�c U�n L�i./#doimanhhkmpthieulam_ok(134)",
"L�i Khung C�u Thi�n D�n L�i gi�i./#doimanhhkmpthieulam_ok(135)",
"V� �o Ki B�n ph� ch�./#doimanhhkmpthieulam_ok(137)",
"V� �o Th�c T�m ch� ho�n./#doimanhhkmpthieulam_ok(138)",
"V� �o Thanh �nh Huy�n Ng�c B�i./#doimanhhkmpthieulam_ok(139)",
"V� �o Tung Phong Tuy�t �nh ngoa./#doimanhhkmpthieulam_ok(140)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam_ok(idchon)

		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idchon},nQuality=1,nCount=10},}, "test", 1);
		
end
-------------------------------------------mo do dinh trong ruong ----------------------
function MoKhoaDinh() 
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
end
GiveItemUI("M� Kh�a ��nh11", "<color=white>��i hi�p c�n m� g� xin ��t v�o � d��i ��y! ch� c� th� m� 1 v�t ph�m duy nh�t n�u b� h�n th� m� ng�u nhi�n.", "batdaucheckngay", "onCancel", 1);
end


function batdaucheckngay(nItemIdx)
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, -1) ;
	local chikhoalaplanh = CalcEquiproomItemCount(6, 1, 1371, -1) ;
	if	(nSilverCount < 10)  or chikhoalaplanh<1 then -- gia xu
	Msg2Player("<color=white>B�n C�n C� 10xu +1 Ch�a kh�a l�p l�nh trong H�nh Trang +") -- go
	return
	end
		local nItemIdx = GetGiveItemUnit(1);
		local bindState = GetItemBindState(nItemIdx)
		if (bindState == -2) then
			Talk(1,"", "Trang b� do BQT kh�a v�nh vi�n kh�ng th� m� kh�a ���c r�t ti�c.")
		return
	end
	    local strItemlock = GetItemName(nItemIdx)
		Msg2Player("<color=white>M� kh�a v�t ph�m "..strItemlock, " th�nh c�ng")
Talk(1, "", "<color=green> Ch�c m�ng ��i Hi�p m� kh�a th�nh c�ng "..strItemlock, "!"); 
		SetItemBindState(nItemIdx,0);
		ConsumeEquiproomItem(10,4,417,1,1);
		ConsumeEquiproomItem(1,6,1,1371,1);
		SaveNow();
end

function NhanDoHoTroTanThu()
local tbSay = {
--"Nh�n Trang B� �� Xanh./trangbixanh",
"Nh�n V� Kh� Tr�ng c�p 10./nhanvukhitrang",
--"Nh�n 1 M�n HKMP L�a Ch�n./hkmpvip1",
"Nh�n B� Kim Phong./NhanKimPhong",
"Nh�n B� An Bang Ti�u./NhanAnBangTieu",
"Nh�n Full B� K�p 8x-12x./Nhanbikip",
--"Nh�n B� ��nh Qu�c./Nhandinhquoctanthu",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)

end
function nhanvukhitrang()
if CalcFreeItemCellCount()<30 then
	Say("H�nh trang kh�ng �� 30 � tr�ng")
	return
end
local tbSay = {
--"Nh�n Trang B� �� Xanh./trangbixanh",
"V� kh� t�m g�n c�p 10./vukhitamgan",
--"Nh�n 1 M�n HKMP L�a Ch�n./hkmpvip1",
"V� kh� t�m xa c�p 10./vukhitamxa",

"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)

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
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 20 � tr�ng");
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
Msg2Player("Nh�n ���c b� B� K�p 8x-12x.")
end
function NhanKimPhong()
if CalcFreeItemCellCount()<40 then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 40 � tr�ng");
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
Msg2Player("Nh�n ���c b� Kim Phong.")
end
function NhanAnBangTieu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x3 � tr�ng");
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
Msg2Player("Nh�n ���c b� trang s�c An Bang Ti�u.")
end
function Nhandinhquoctanthu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x3 � tr�ng");
		return 1;
	end
	local Index = AddGoldItem(0,403) SyncItem(Index) -- DQ Tieu
	local Index = AddGoldItem(0,404) SyncItem(Index)-- an bang
	local Index = AddGoldItem(0,405) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,406) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,407) SyncItem(Index) -- an bang
Msg2Player("Nh�n ���c b� Trang B� ��nh Qu�c!")
end
function MoKhoaDinh() 

GiveItemUI("M� Kh�a ��nh", "<color=white>��i hi�p c�n m� g� xin ��t v�o � d��i ��y! ch� c� th� m� 1 v�t ph�m duy nh�t n�u b� h�n th� m� ng�u nhi�n.", "batdaucheckngay", "onCancel", 1);
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
			Talk(1,"", "Trang b� do BQT kh�a v�nh vi�n kh�ng th� m� kh�a ���c r�t ti�c.")
		return
	end
	    local strItemlock = GetItemName(nItemIdx)
		Msg2Player("<color=white>M� kh�a v�t ph�m "..strItemlock, " th�nh c�ng")
Talk(1, "", "<color=green> Ch�c m�ng ��i Hi�p m� kh�a th�nh c�ng "..strItemlock, "!"); 
		SetItemBindState(nItemIdx,0);
		--ConsumeEquiproomItem(10,4,417,1,1);
		ConsumeEquiproomItem(1,6,1,1371,1);
		SaveNow();
end

function ThamGiaOanTuTi()
tbAloneScriptGame:DialogMain();
end
function NhanDoHoTro()
local szTitle =  "V� L�m T�i Thi�n webside www.volamtestvinhvien.com chia s� ngay t� h�m nay �� nh�n core vip.!"
local tbOpt = 
{
{"Nh�n C�c Lo�i Ng�a", nhancacloaingua},
{"Nh�n Trang B� �� Xanh ",trangbixanh},
{"Nh�n Trang B� HKMP", hkmpvip1},
{"Nh�n AB, �Q, NT, HC", HoangKimTanThu},
{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
end
function MuaTuiTichLuyTongKim()
local tbAwardcc={
--{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 50,nBindState = -2},
{szName="T�i T�ch Lu� T�ng Kim", tbProp={6,1,4361,1,0,0},nCount = 1},
}
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
if GetTask(747)>=10000 then
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	SetTask(747,GetTask(747)-10000)
	else
	Say("B�n Kh�ng �� 10000 �i�m T�ch L�y")
end
end

function MuaCanKhonTaoHoaDan()
local tbAwardcc={
--{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 50,nBindState = -2},
{szName="C�n Kh�n T�o H�a �an", tbProp={6,1,215,1,0,0},nCount = 10},
}
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
if GetTask(747)>=500 then
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	SetTask(747,GetTask(747)-500)
	else
	Say("B�n Kh�ng �� 500 �i�m T�ch L�y")
end

end
function NhanChienCo()
local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate ~= GetTask(3008) then
		SetTask(3008,nDate)
		SetTask(3007,0)
	end
	if GetTask(3007)>0 and nDate==GetTask(3008) then
		Say("M�i ng�y ch� nh�n ���c thu�c lag 1 l�n.")
		return 1
	end
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
local tbAwardcc={
--{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 50},
{szName="L�nh b�i", tbProp={6,1,157,1,0,0},nCount = 50,nBindState=-2,nExpiredTime=60*24},
{szName="Phong V�n Phi T�c ho�n", tbProp={6,1,190,1,0,0},nCount = 50,nBindState=-2,nExpiredTime=60*24},
--{szName="Phong V�n Tru?ng M?nh ho�n", tbProp={6,1,186,1,0,0},nCount = 50},
--{szName="Phong V�n Gia B�o ho�n", tbProp={6,1,187,1,0,0},nCount = 50},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
SetTask(3007,1)
end
---------------------------------------------------------------------------
function NhanKhieuChienLenh()
	if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
	local tbAwardcc={
		{
			szName="HPhong V�n Phi T�c ho�n", tbProp={6,1,1499,1,0,0},nCount = 10,nExpiredTime=30*24*1},
		}
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end

function TayCongDiem()

	Say("��i hi�p: Ng��i c�n g� � ta?." ,3,"T�y Ti�m N�ng Di ��ng./tayTNnhe","C�ng Ti�m N�ng Nhanh/TangDiemTiemNangNhanh","�� ta suy ngh� l�i. /0")
end

function laytienvan()
	if (GetCash() >= 5000000) then 	--  50 ng�n v�n
		Talk(1, "", "Ng�n l��ng trong t�i ng��i d�ng ch�a h�t th� l�y l�m g� cho nhi�u.")
	else
		Earn(5000000)
		Msg2Player("Nh�n ���c 500000000 v�n l��ng.");
	end
end

function huyVPkhoa()

	Say("��i hi�p: Ng��i c�n g� � ta?." ,3,"Phi shop m�t m�n ��! /banshop","H�y b� m�t m�n ��! /Huydeltem","�� ta suy ngh� l�i. /0")
end


function tayTNnhe()
	local base_str = {35,20,25,30,20}			-- �����������������ֵ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ���ѷ���Ǳ�����ã�task(88)��������ֱ�ӽ��������������ȣ�
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
Talk(1, "", "<color=green>T�y ti�m n�ng th�nh c�ng!"); 
end

function TangDiemTiemNangNhanh()
	Say("Ng��i ph�i hi�u r� c�ch t�ng �i�m", 4,
			"S�c m�nh/add_prop_str",
			"Th�n ph�p/add_prop_dex",
			"Sinh kh�/add_prop_vit",
			"N�i c�ng/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "M�i nh�p ch� s� s�c m�nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "M�i nh�p ch� s� th�n ph�p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "M�i nh�p ch� s� sinh kh�:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "M�i nh�p ch� s� n�i c�ng: ");
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
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
GiveItemUI("H�y V�t Ph�m Kh�a", " ��i hi�p c�n h�y g� xin ��t v�o � d��i ��y! C� th� h�y nhi�u v�t ph�m c�ng l�c", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
local strItem = GetItemName(nItemIndex)
RemoveItemByIndex(nItemIndex)
end
Msg2Player("Thao t�c b�n v�t ph�m th�nh c�ng")
Talk(1, "", "<color=green> Ch�c m�ng ��i Hi�p �� h�y v�t ph�m kh�a th�nh c�ng!"); 
end

function KhoaVatPham()
GiveItemUI("H�y V�t Ph�m Kh�a", " ��i hi�p c�n kh�a g� xin ��t v�o � d��i ��y! C� th� kh�a nhi�u v�t ph�m c�ng l�c", "KhoaVatPham_ok", "onCancel", 1);
end

function KhoaVatPham_ok(nCount)
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
SetItemBindState(nItemIndex,-2)
end
Msg2Player("Thao t�c b�n v�t ph�m th�nh c�ng")
Talk(1, "", "<color=green> Ch�c m�ng ��i Hi�p �� kh�a v�t ph�m kh�a th�nh c�ng!"); 

end
------------------------------------ NHAN TRANG BI XANH --------------------------

tbDoXanh =
{
[1]=
{
szName = "D�y chuy�n",
tbEquip =
{
{"To�n th�ch h�ng li�n",0,4,0},
{"L�c Ph� Th�y H� Th�n ph� ",0,4,1},
}
},
[2]=
{
szName = "�o gi�p",
tbEquip =
{
{"Th�t B�o C� Sa",0,2,0},
{"Ch�n V� Th�nh Y",0,2,1},
{"Thi�n Nh�n M�t Trang",0,2,2},
{"Gi�ng Sa B�o",0,2,3},
{"���ng Ngh� gi�p",0,2,4},
{"V�n L�u Quy T�ng Y",0,2,5},
{"Tuy�n Long b�o",0,2,6},
{"Long Ti�u ��o Y",0,2,8},
{"C�u V� B�ch H� trang",0,2,9},
{"Tr�m H��ng sam",0,2,10},
{"T�ch L�ch Kim Ph�ng gi�p",0,2,11},
{"V�n Ch�ng T� T�m Y",0,2,12},
{"L�u Ti�n Qu�n",0,2,13},
}
},
[3]=
{
szName = "�ai l�ng",
tbEquip =
{
{"Thi�n T�m Y�u ��i",0,6,0},
{"B�ch Kim Y�u ��i",0,6,1},
}
},
[4]=
{
szName = "Gi�y",
tbEquip =
{
{"C�u Ti�t X��ng V� Ngoa",0,5,0},
{"Thi�n T�m Ngoa",0,5,1},
{"Kim L� h�i",0,5,2},
{"Phi Ph�ng Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Ph�ng Huy�t Ng�c Tr�c",0,8,0},
{"Thi�n T�m H� Uy�n",0,8,1},
}
},
[6]=
{
szName = "N�n",
tbEquip =
{
{"T� L� m�o",0,7,0},
{"Ng� l�o qu�n",0,7,1},
{"Tu La Ph�t k�t",0,7,2},
{"Th�ng Thi�n Ph�t Qu�n",0,7,3},
{"Y�m Nh�t kh�i",0,7,4},
{"Tr�ch Tinh ho�n",0,7,5},
{"� T�m M�o",0,7,6},
{"Quan �m Ph�t Qu�n",0,7,7},
{"�m D��ng V� C�c qu�n",0,7,8},
{"Huy�n T� Di�n Tr�o",0,7,9},
{"Long Huy�t ��u ho�n",0,7,10},
{"Long L�n Kh�i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Ph�ng Tri�n S� ",0,7,13},
}
},
[7]=
{
szName = "V� kh� c�n chi�n",
tbEquip =
{
{"Huy�n Thi�t Ki�m",0,0,0},
{"��i Phong �ao",0,0,1},
{"Kim C� B�ng",0,0,2},
{"Ph� Thi�n K�ch",0,0,3},
{"Ph� Thi�n ch�y",0,0,4},
{"Th�n Nh�t Tr�m",0,0,5},
}
},
[8]=
{
szName = "Ng�c b�i",
tbEquip =
{
{"Long Ti�n H��ng Nang",0,9,0},
{"D��ng Chi B�ch Ng�c",0,9,1},
}
},
[9]=
{
szName = "V� kh� t�m xa",
tbEquip =
{
{"B� V��ng Ti�u",0,1,0},
{"To�i Nguy�t �ao",0,1,1},
{"Kh�ng T��c Linh",0,1,2},
}
},
[10]=
{
szName = "Nh�n",
tbEquip =
{
{"To�n Th�ch Gi�i Ch� ",0,3,0},
}
},
}
function trangbixanh()

	if CalcFreeItemCellCount() < 6 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 6 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
	end
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = "L�c �� n�o anh em �i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = "L�c �� n�o anh em �i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"M�c", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Th�y", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"H�a", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Th� ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = format("<npc>Ch�n h�:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 10, "S� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
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
	Say("Xin m�i ch�n trang b� c�n test",5,"Trang B� An Bang/hoanmytanthu","Trang B� Nhu T�nh/nhutinhtanthu","Trang B� ��nh Qu�c/dinhquoctanthu","Trang B� Hi�p C�t/hiepcottanthu","K�t th�c ��i tho�i/no")
end

function hoanmytanthu()                
AddGoldItem(0,394)
AddGoldItem(0,395)
AddGoldItem(0,396)
AddGoldItem(0,397)
Msg2Player("Nh�n ���c Trang B� An Bang Ho�n M�!")
end

function nhutinhtanthu()
AddGoldItem(0,191)
AddGoldItem(0,192)
AddGoldItem(0,193)
--AddGoldItem(0,419)--
Msg2Player("Nh�n ���c Trang B� Nhu T�nh")
end

function dinhquoctanthu()
AddGoldItem(0,389)
AddGoldItem(0,390)
AddGoldItem(0,391)
AddGoldItem(0,392)
AddGoldItem(0,393)
Msg2Player("Nh�n ���c Trang B� ��nh Qu�c!")
end

function hiepcottanthu()
AddGoldItem(0,186)
AddGoldItem(0,187)
AddGoldItem(0,188)
--AddGoldItem(0,415)
Msg2Player("Nh�n ���c Trang B� Hi�p C�t!")
end

function OnCancel()
end

function savenhanvatnhanh()
SaveNow();
Say("Thao t�c save nh�n v�t th�nh c�ng.",0)
end

function savechongroll()
	local tbDialog = 
{ 
"<color=green>Save nh�n v�t t�c l� l�u �� ��c nh�n v�t b�n hi�n t�i gi�ng nh� save game v�y tr�nh tr��ng h�p n�u c� r�i ro server b� ph� th� �� b�n s� ko m�t m�t g�.Th�ng th��ng server t� save t� ��ng n�n tr��ng h�p n�y ch� d�nh cho l�c kh�n c�p th�i nhe.",
"Ch�c ch�n r�i save ngay v� lu�n/savenhanvatnhanh",
"K�t th�c ��i tho�i/",
} 
CreateTaskSay(tbDialog)
end

function savenhanvatnhanh()
SaveNow();
Say("<color=green>Save nh�n v�t th�nh c�ng.",0)
end

function FixLoiThanHanhPhuOK()
                                                                                  local state = GetSkillState(739);
	if state == 1 then
                                                                                                                                                                     Say("�ang l�m nhi�m v� quan tr�ng kh�ng th� s� d�ng ch�c n�ng n�y.",0)
		else
FixLoiThanHanhPhuOOK()
	end
end



function FixLoiThanHanhPhuOOK()
local PlayerIndex = GetTaskTemp(246);
CallPlayerFunction(PlayerIndex, DisabledUseTownP, 0);
return 
CallPlayerFunction(PlayerIndex, Say, "Gi�i k�t th�nh c�ng b�n c� th� d�ng Th�n th�nh Ph�.", 0);
end

function nhancacloaingua()
	local tbOpt =
	{
                                                                                    {"Nh�n Ng�a Tuy�t �nh", tuyetanh},
                                                                                    {"Nh�n Ng�a Chi�u D�", chieudatanthu},
	  {"Nh�n Ng�a X�ch Th�", xichthotanthu},
                                                                                    {"Nh�n Ng�a � V�n ��p Tuy�t", ovan},
	  {"Tho�t"},
	}
	CreateNewSayEx("<npc>��i ca ��i t� c�n g� � ?", tbOpt)
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
Say("Xin m�i ch�n trang b�",7,"Nga Mi/hkmpnm","Th�y Y�n/hkmpty","���ng M�n/hkmpdm","Ng� ��c/hkmpnd","Thi�n V��ng/hkmptv","Trang Sau/hkmpvip2","K�t th�c ��i tho�i/no") 
end

function hkmpvip2() 
Say("Xin m�i ch�n trang b�",7,"Thi�u L�m/hkmptl","V� �ang/hkmpvd","C�n L�n/hkmpcl","Thi�n Nh�n/hkmptn","C�i Bang/hkmpcb","Trang Tr��c/hkmpvip1","K�t th�c ��i tho�i/no") 
end

function hkmpnm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch��ng", hkvipnmc}, 
                {"Nga My Ki�m", hkvipnmk}, 
               -- {"Nga My Buff", hkvipnmbuff}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
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
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Th�y Y�n �ao", hkviptyd}, 
                {"Th�y Y�n Ch��ng", hkviptyc}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
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
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
        local tbOpt= 
               { 
                {"���ng M�n N�", hkvipbv}, 
                            {"���ng M�n Phi Ti�u", hkvippt}, 
                {"���ng M�n B�ng H�n", hkvippd}, 
                               -- {"���ng M�n B�y", hkvipbay}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
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
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Ng� ��c Ch��ng", hkvipndc}, 
                            {"Ng� ��c �ao", hkvipndd}, 
               -- {"Ng� ��c B�a", hkvipndb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
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
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"Thi�n V��ng Th��ng", hkviptvt}, 
                            {"Thi�n V��ng Ch�y", hkviptvc}, 
                {"Thi�n V��ng �ao", hkviptvd}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
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
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�u L�m �ao", hkviptld}, 
                            {"Thi�u L�m B�ng", hkviptlb}, 
                {"Thi�u L�m Quy�n", hkviptlq}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
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
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"V� �ang Ch��ng", hkvipvdc}, 
                            {"V� �ang Ki�m", hkvipvdk}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
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
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"C�n L�n �ao", hkvipcld}, 
                            {"C�n L�n Ch��ng", hkvipclc}, 
                {"C�n L�n B�a", hkvipclb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
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
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�n Nh�n Th��ng", hkviptnt}, 
                            {"Thi�n Nh�n Ch��ng", hkviptnd}, 
                --{"Thi�n Nh�n B�a", hkviptnb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
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
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"C�i Bang Ch��ng", hkvipcbc}, 
               {"C�i Bang B�ng", hkvipcbb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
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
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end

AddGoldItem(0,681)  

end; 


-------------------------------------------------code cua quy ----------------------------------
----------------------------------------------------------------T�i L�nh ��o--------------------------------------------------------------------------------------------------
function lanhdao()
--if check_faction() == 10 then
--		Talk(1, "", "Gia nh�p m�n ph�i m�i c� th� nh�n ph�n th��ng n�y.")
--	return
--	end
if CalcFreeItemCellCount() < 0 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� � tr�ng r�i h�y m�.",0);
		return 1;
end
	if GetLevel()>9 then
		if GetTask(14)==0 or GetTask(14)==1 or GetTask(14)==2 then
			--FuYuan_Start()
			--FuYuan_Add(900)
			AddLeadExp(90000000)
			AddRepute(950)
			SetTask(14,GetTask(14)+1)
			Msg2Player("Ch�c M�ng ��i Hi�p �� Nh�n ���c H� Tr� Th�nh C�ng.")
		else
			Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a. ")
		end
	else
		Talk(1, "", "Ng��i ch�a �� �i�u Ki�n Nh�n Th��ng, Xin H�y R�n Luy�n Th�m. ")
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
			Talk(1,"","<color=green>"..myplayersex().." H�y �� Tr�ng 40 � R�i Nh�n Th��ng...!")
		end
end
--------------------------------------------------------


function NhapTenNguoiCanXem()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","C�n c� <color=pink>10<color> Ti�n ��ng m�i c� th� xem to�n b� th�ng tin v� ti�m n�ng hi�n t�i c�a 1 nh�n v�t c�n t�m.N�u t�m th�t b�i s� kh�ng m�t xu.") -- go
	return
end
	local a = GetTask(5864)
	local b = GetGameTime()
	local c = 0
	
	if (b - a) < 25 then
		_, c = bil.SplitTime(25 - (b - a))
		return bil.Talk("B�n ph�i ch� th�m "..c.." m�i c� th� t�m l�n k� ti�p!")
	end
	
	SetTask(5864, b)
	return AskClientForString("KiemTraTiemNang", "", 1, 20, "Nh�p t�n nh�n v�t");
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
	local strTitle = ""..img.."Ch�o m�ng b�n ��n v�i <color=green>V� L�m Truy�n K�<color> H�y ch�ng t� m�nh l� 1 gamer ch�n ch�nh ��ng v� thua ng��i kh�c m� n�n ch� trai.Quy�t t�m �t chi�n th�ng tr��c m�i cao th�.Kh�ng c� k� n�o y�u nh�t ch� c� nh�ng k� kh�ng bi�t ch�ng t� tr�nh pk c�a m�nh."
	local tbOpt = 
	{
		{"K�t th�c ��i tho�i.", OnCancel},
	}
	CreateNewSayEx(strTitle , tbOpt)
ConsumeEquiproomItem(20,4,417,1,1)
Msg2SubWorld(""..GetName()..": <color=Blue>�� Ki�m Tra Ti�m N�ng C�a Nh�n V�t <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> K�t Qu� �� ���c G�i ��n "..GetName().."") 
AddGlobalCountNews(""..GetName()..": <color=Blue>�� Ki�m Tra Ti�m N�ng C�a Nh�n V�t <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> K�t Qu� Nh� Sau:") 

Msg2Player("<color=Pink>S�c M�nh  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetStrg).." <pic=48>") 
Msg2Player("<color=Pink>Sinh Kh�  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetVit).." <pic=48>")
Msg2Player("<color=Pink>Th�n Ph�p :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetDex).." <pic=48>") 
Msg2Player("<color=Pink>N�i C�ng  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetEng).." <pic=48>")
Msg2Player("<color=Pink>C�n L�i   :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetProp).." <pic=48>")
Msg2SubWorld("Nh�n V�t <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> Nh�n ���c <color=green>20<color> Ti�n ��ng") 
AddGlobalCountNews("Nh�n V�t <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> Nh�n ���c <color=green>20<color> Ti�n ��ng") 


--AddGlobalCountNews("<color=Pink>S�c M�nh Nh�n V�t <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetStrg).." <pic=48><pic=26>") 
--AddGlobalCountNews("<color=Pink>Sinh Kh� Nh�n V�t <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetVit).." <pic=48><pic=15>")
--AddGlobalCountNews("<color=Pink>Th�n Ph�p Nh�n V�t <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).." :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetDex).." <pic=48><pic=18>") 
--AddGlobalCountNews("<color=Pink>N�i C�ng Nh�n V�t<color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetEng).." <pic=48><pic=22>")

--CallPlayerFunction(PlayerIndexGamer, AddStackItem,20,4, 417, 1, 1, 0, 0, 0)
--CallPlayerFunction(PlayerIndexGamer, Say, "<color=green>Ch�c m�ng b�n nh�n ���c 20 ti�n ��ng khi c� ai �� v�a xem th�ng tin v� b�ng ti�m n�ng c�a b�n..", 0);
end


function XemCoOnline(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5998) == 1 then
		local bilPlayerOfflineLive_W, bilPlayerOfflineLive_X, bilPlayerOfflineLive_Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		Say("<color=pink>Nh�n v�t �ang �y th�c kh�ng th� ki�m tra l�c n�y")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "<color=pink>C� th� b�n ��nh : Sai t�n nh�n v�t - nh�n v�t kh�ng t�n t�i - nh�n v�t �� r�i m�ng - ho�c b�n kh�ng ��ng c�ng b�n �� v�i nh�n v�t c�n ki�m tra")
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
Msg2SubWorld(""..GetName()..": <color=green>�� Ki�m Tra Ti�m N�ng C�a Nh�n V�t <color=yellow>"..rolename.."<color> K�t Qu� Nh�n ���c.") 
AddGlobalCountNews(""..GetName()..": <color=cyan>�� B� Ra 10 Xu �� Ki�m Tra Ti�m N�ng C�a Nh�n V�t <color=red>"..rolename.."") 
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
Msg2SubWorld("<color=cyan>S�c M�nh  :<color=green> "..GetStrg(1).." <pic=48>") 
Msg2SubWorld("<color=cyan>Sinh Kh�  :<color=green> "..GetVit(1).." <pic=48>")
Msg2SubWorld("<color=cyan>Th�n Ph�p :<color=green> "..GetDex(1).." <pic=48>") 
Msg2SubWorld("<color=cyan>N�i C�ng  :<color=green> "..GetEng(1).." <pic=48>")
Msg2SubWorld("<color=cyan>Ch�a C�ng:<color=green> "..GetProp().." <pic=48>")
--tbAwardTemplet:GiveAwardByList({{szName="Ti�n ��ng",tbProp={4,417,1,1,0},nCount=20,},}, "", 1);
--Say("<color=Blue> Nh�n ���c <color=green>20<color> Ti�n ��ng khi c� ai �� xem tin t�c th�ng tin v� b�n ") 
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
	AskClientForString("TenTaiKhoanCheck", "", 0,5000,"T�n T�i Kho�n !") 
end 

function TenTaiKhoanCheck(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+500 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetName()
		PlayerIndex=gmidx
--	if ((i)> GetPlayerCount()) then
--		Msg2Player("Nh�n v�t N�y Hi�n Kh�ng Online Vui L�ng Quay L�i Sau...!");  
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
		Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
	--	tinsert(tbSay,"Th�m V�ng S�ng L�a Ch�n/ChonVongSangBuff")
	--	tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDo")
		tinsert(tbSay,"Tr� l�i.")            
		Say("<color=green> Nh�n V�t: "..ObjName.."\nM�u: "..cam.." - M�n ph�i: "..fac.."\nS�c M�nh: "..strg.." �i�m\nSinh Kh�: "..vit.." �i�m\nTh�n Ph�p: "..dex.." �i�m\nN�i C�ng:  �i�m - �i�m T�ng Kim: "..pr.." �i�m<color>", getn(tbSay), tbSay)
		return end
	--end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh�ng t�m th�y nh�n v�t t�n <color=green>"..nNameChar.."<color>"); 
	end
end 