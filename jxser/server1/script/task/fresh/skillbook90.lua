---------------------------------***Script*By Heart*Doldly***-------------------------------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\task\\system\\task_string.lua")
-----------------------------------------------------
KyNang90 = 2462
------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "<bclr=blue>N÷ HiÖp<bclr>";
	else
		return "<bclr=blue>§¹i HiÖp<bclr>";
	end
end
---------------------------------------------------------
function main()
local n_fac = GetLastFactionNumber(); 
	if GetLevel() < 80 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 80 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end
----------------------------------------------------------------------------------------------------------------
if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"§¹t Ma §é Giang/ThieuLamQuyen",
		"Hoµnh T¶o Thiªn Qu©n/ThieuLamCon",
		"V« T­íng Tr¶m/ThieuLamDao",
		"Th«i/No") return 1;
----------------------------------------------------------------------------------------------------
elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"Truy Phong QuyÕt/ThienVuongChuy",
		"Truy Tinh Trôc NguyÖt/ThienVuongThuong",
		"Ph¸ Thiªn Tr¶m/ThienVuongDao",
		"Th«i/No") return 1;
----------------------------------------------------------------------------------------------------------
elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",5,
		"NhiÕp Hån Lo¹n T©m/DuongMonPhiDao",
		"B¹o Vò Lª Hoa/DuongMonNo",
		"Cöu Cung Phi Tinh/DuongMonTieu",
--		"Lo¹n Hoµn KÝch/DuongMonBay",
		"Th«i/No") return 1;
----------------------------------------------------------------------------------
elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"¢m Phong Thùc Cèt/NguDocChuong",
		"HuyÒn ¢m Tr¶m/NguDocDao",
		"§o¹n C©n Hñ Cèt/NguDocBua",
		"Th«i/No") return 1;
---------------------------------------------------------------------------------
elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"Phong S­¬ng To¸i ¶nh/NgaMyChuong",
		"Tam Nga TÒ TuyÕt/NgaMyKiem",
		"Phæ §é Chóng Sinh/NgaMyBuff",
		"Th«i/No") return 1;
----------------------------------------------------------------------------------
elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"B¨ng T©m Tiªn Tö/ThuyYenSongDao",
		"B¨ng Tung V« ¶nh/ThuyYenDao",
		"Th«i/No") return 1;
----------------------------------------------------------------------------------------
elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"Phi Long T¹i Thiªn/CaiBangRong",
		"Thiªn H¹ V« CÈu/CaiBangBong",
		"Th«i/No") return 1;
-------------------------------------------------------------------------------------------
elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",2,
		"Thiªn Ngo¹i L­u Tinh/ThienNhanDao",
	--	"V©n Long KÝch/ThienNhanKich",
		"NhiÕp Hån Lo¹n T©m/ThienNhanBua",
		"Th«i/No") return 1;
---------------------------------------------------------------------------------------
elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"Thiªn §Þa V« Cùc/VoDangQuyen",
		"Nh©n KiÕm Hîp NhÊt/VoDangKiem",
		"Th«i/No") return 1;
--------------------------------------------------------------------------------------
elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"L«i §éng Cöu Thiªn/ConLonKiem",
		"Ng¹o TuyÕt Tiªu Phong/ConLonDao",
		"Tóy Tiªn Tµ Cèt/ConLonBua",
		"Th«i/No") return 1;
-------------------------------------------------------------------------------------------------------
elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
	--	"Hoa S¬n KiÕm/HoaSonKiem",
	--	"Hoa S¬n KhÝ/HoaSonKhi",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen()
	if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(318) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(318,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng §¹t Ma §é Giang")
end

function ThieuLamCon()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(319) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(319,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Hoµnh T¶o Thiªn Qu©n")
end

function ThieuLamDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(321) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(321,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng V« T­íng Tr¶m")
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng--------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongChuy()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(325) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(325,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Truy Phong QuyÕt")
end

function ThienVuongThuong()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(323) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(323,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Truy Tinh Trôc NguyÖt")
end

function ThienVuongDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(322) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(322,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Ph¸ Thiªn Tr¶m")
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(339) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(339,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng NhiÕp Hån NguyÖt ¶nh")
end

function DuongMonNo()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(302) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(302,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng B¹o Vò Lª Hoa")
end

function DuongMonTieu()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(342) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(342,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng §· Häc §­îc Kü N¨ng Cöu Cung Phi Tinh")
end

function DuongMonBay()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(351) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(351,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng §· Häc §­îc Kü N¨ng Lo¹n Hoµn KÝch")
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(353) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(353,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng ¢m Phong Thùc Cèt")
end

function NguDocDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(355) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(355,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng HuyÒn ¢m Tr¶m")
end

function NguDocBua()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(390) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(390,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng §· Häc §­îc Kü N¨ng §o¹n C©n Hñ Cèt")
end
-----------------------------------------------------------------Ph¸i Nga My--------------------------------------------------------------------------------------------------------------------------------------
function NgaMyChuong()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(380) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(380,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Phong S­¬ng To¸i ¶nh")
end

function NgaMyKiem()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(328) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(328,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Tam Nga TÒ TuyÕt")
end

function NgaMyBuff()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(332) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(332,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Phæ §é Chóng Sinh")
end
------------------------------------------------------------------Ph¸i Thóy Yªn--------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenSongDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(337) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(337,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng B¨ng T©m Tiªn Tö")
end

function ThuyYenDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(336) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(336,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng B¨ng Tung V« ¶nh")
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(357) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(357,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Phi Long T¹i Thiªn")
end

function CaiBangBong()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(359) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(359,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Thiªn H¹ V« CÈu")
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn--------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(362) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(362,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Thiªn Ngo¹i L­u Tinh")
end

function ThienNhanKich()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(361) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(361,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng V©n Long KÝch")
end

function ThienNhanBua()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(391) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(391,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng NhiÕp Hån Lo¹n T©m")
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(365) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(365,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Thiªn §Þa V« Cùc")
end

function VoDangKiem()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(368) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(368,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Nh©n KiÕm Hîp NhÊt")
end
-------------------------------------------------------------------------Ph¸i C«n L«n---------------------------------------------------------------------------------------------------------------------------------
function ConLonKiem()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(375) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(375,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng L«i §éng Cöu Thiªn")
end

function ConLonDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(372) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(372,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Ng¹o TuyÕt Tiªu Phong")
end

function ConLonBua()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(394) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(394,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Tóy Tiªn Tµ Cèt")
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(1364) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(1364,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng §o¹t MÖnh Liªn Hoµn Tam Liªn KÝch")
end

function HoaSonKhi()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(1382) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Råi Kh«ng ThÓ Häc N÷a")
		return 1;
	end
	AddMagic(1382,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Chóc Mõng  §· Häc §­îc Kü N¨ng Ng¹o TuyÕt Tiªu Phong")
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------