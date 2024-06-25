---------------------------------***Script*By THONG*HON***-------------------------------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\task\\system\\task_string.lua")
-----------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
---------------------------------------------------------
function main()
dofile("script/item/dachengmiji_150_23.lua")
local n_fac = GetLastFactionNumber(); 
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ N©ng CÊp Kü N¨ng Nµy")
		return 1;
	end
----------------------------------------------------------------------------------------------------------------
if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao",
		"Th«i/No") return 1;
----------------------------------------------------------------------------------------------------
elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong",
		"Th«i/No") return 1;
----------------------------------------------------------------------------------------------------------
elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu",
		"Th«i/No") return 1;
----------------------------------------------------------------------------------
elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao",
		"Th«i/No") return 1;
---------------------------------------------------------------------------------
elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong",
		--"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff",
		"Th«i/No") return 1;
----------------------------------------------------------------------------------
elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao",
		"Th«i/No") return 1;
----------------------------------------------------------------------------------------
elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong",
		"Th«i/No") return 1;
-------------------------------------------------------------------------------------------
elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao",
		"Th«i/No") return 1;
---------------------------------------------------------------------------------------
elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem",
		"Th«i/No") return 1;
--------------------------------------------------------------------------------------
elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem",
		"Th«i/No") return 1;
-------------------------------------------------------------------------------------------------------
elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen()
	if HaveMagic(1055) < 23 then
		if HaveMagic(1055) == 22 then
			AddMagic(1055,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp Kü N¨ng §¹i Lùc Kim Cang Ch­ëng §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function ThieuLamCon()
	if HaveMagic(1056) < 23 then
		if HaveMagic(1056) == 22 then
			AddMagic(1056,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng Vi §µ HiÕn Xö §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function ThieuLamDao()
	if HaveMagic(1057) < 23 then
		if HaveMagic(1057) == 22 then
			AddMagic(1057,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng Tam Giíi Quy ThiÒn §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao()
	if HaveMagic(1058) < 23 then
		if HaveMagic(1058) == 22 then
			AddMagic(1058,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng Hµo Hïng Tr¶m §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function ThienVuongChuy()
	if HaveMagic(1059) < 23 then
		if HaveMagic(1059) == 22 then
			AddMagic(1059,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng Tung Hoµnh B¸t Ph­¬ng §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function ThienVuongThuong()
	if HaveMagic(1060) < 23 then
		if HaveMagic(1060) == 22 then
			AddMagic(1060,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng B¸ V­¬ng T¹m Kim §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao()
	if HaveMagic(1069) < 23 then
		if HaveMagic(1069) == 22 then
			AddMagic(1069,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng V« ¶nh Xuyªn §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function DuongMonNo()
	if HaveMagic(1070) < 23 then
		if HaveMagic(1070) == 22 then
			AddMagic(1070,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng ThiÕt Liªn Tø S¸t §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function DuongMonTieu()
	if HaveMagic(1071) < 23 then
		if HaveMagic(1071) == 22 then
			AddMagic(1071,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng §· N©ng CÊp §­îc Kü N¨ng Cµn Kh«n NhÊt TrÞch §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong()
	if HaveMagic(1066) < 23 then
		if HaveMagic(1066) == 22 then
			AddMagic(1066,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng H×nh Tiªu Cèt LËp §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function NguDocDao()
	if HaveMagic(1067) < 23 then
		if HaveMagic(1067) == 22 then
			AddMagic(1067,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng U Hån PhÖ ¶nh §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem()
	if HaveMagic(1061) < 23 then
		if HaveMagic(1061) == 22 then
			AddMagic(1061,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng KiÕm Hoa V·n Tinh §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function NgaMyChuong()
	if HaveMagic(1062) < 23 then
		if HaveMagic(1062) >= 22 then
			AddMagic(1062,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng B¨ng Vò L¹c Tinh §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function NgaMyBuff()
	if HaveMagic(1114) < 23 then
		if HaveMagic(1114) == 22 then
			AddMagic(1114,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng Ngäc TuyÒn T©m Kinh §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao()
	if HaveMagic(1063) < 23 then
		if HaveMagic(1063) == 22 then
			AddMagic(1063,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng B¨ng T­íc Ho¹t Kú §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao()
	if HaveMagic(1065) < 23 then
		if HaveMagic(1065) == 22 then
			AddMagic(1065,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng Thñy Anh Man Tó §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong()
	if HaveMagic(1073) < 23 then
		if HaveMagic(1073) == 22 then
			AddMagic(1073,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng Thêi ThÆng Lôc Long §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
function CaiBangBong()
	if HaveMagic(1074) < 23 then
		if HaveMagic(1074) == 22 then
			AddMagic(1074,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng Bæng Huýnh L­îc §Þa §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich()
	if HaveMagic(1075) < 23 then
		if HaveMagic(1075) == 22 then
			AddMagic(1075,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng Giang H¶i Né Lan §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function ThienNhanDao()
	if HaveMagic(1076) < 23 then
		if HaveMagic(1076) == 22 then
			AddMagic(1076,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng TËt Háa Liªu Nguyªn §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen()
	if HaveMagic(1078) < 23 then
		if HaveMagic(1078) == 22 then
			AddMagic(1078,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng T¹o Hãa Th¸i Thanh §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function VoDangKiem()
	if HaveMagic(1079) < 23 then
		if HaveMagic(1079) == 22 then
			AddMagic(1079,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp §­îc Kü N¨ng KiÕm Thïy Tinh Hµ §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao()
	if HaveMagic(1080) < 23 then
		if HaveMagic(1080) == 22 then
			AddMagic(1080,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp Thµnh C«ng Kü N¨ng Cöu Thiªn C­¬ng Phong Phong §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function ConLonKiem()
	if HaveMagic(1081) < 23 then
		if HaveMagic(1081) == 22 then
			AddMagic(1081,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp Thµnh C«ng Kü N¨ng Thiªn L«i ChÊn Nh¹c §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem()
	if HaveMagic(1368) < 23 then
		if HaveMagic(1368) == 22 then
			AddMagic(1368,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp Thµnh C«ng Kü N¨ng §éc C« Cöu KiÕm §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end

function HoaSonKhi()
	if HaveMagic(1384) < 23 then
		if HaveMagic(1384) == 22 then
			AddMagic(1384,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Chóc Mõng  §· N©ng CÊp Thµnh C«ng Kü N¨ng ThÇn Quang Toµn NhiÔu §¹t CÊp 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t 22 CÊp Kü N¨ng 150 Kh«ng ThÓ N©ng CÊp") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· N©ng CÊp Kü N¨ng Nµy §¹t CÊp 23 Råi Kh«ng ThÓ N©ng Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------