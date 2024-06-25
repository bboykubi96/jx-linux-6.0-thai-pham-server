---------------------------------***Script*By Heart*Doldly***-------------------------------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\task\\system\\task_string.lua")
ExpSkill = 50
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
local ThienSonThanhThuy = GetTask(5979)
if (ThienSonThanhThuy == 0) then
	NangCapKyNang20()
elseif (ThienSonThanhThuy == 1) then
	NangCapKyNang21()
elseif (ThienSonThanhThuy == 2) then
	NangCapKyNang22()
elseif (ThienSonThanhThuy == 3) then
	NangCapKyNang23()
elseif (ThienSonThanhThuy == 4) then
	NangCapKyNang24()
elseif (ThienSonThanhThuy == 5) then
	NangCapKyNang25()
elseif (ThienSonThanhThuy == 6) then
	NangCapKyNang26()
elseif (ThienSonThanhThuy == 7) then
	NangCapKyNang27()
elseif (ThienSonThanhThuy == 8) then
	NangCapKyNang28()
elseif (ThienSonThanhThuy == 9) then
	NangCapKyNang29()
elseif (ThienSonThanhThuy == 10) then
	NangCapKyNang30()
	end return 1;
end

function NangCapKyNang20()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen20",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon20",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao20",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao20",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy20",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong20",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao20",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo20",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu20",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong20",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao20",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem20",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong20",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff20",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao20",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao20",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong20",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong20",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich20",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao20",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen20",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem20",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao20",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem20",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem20",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi20",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen20()
	if HaveMagic(1055) < 20 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon20()
	if HaveMagic(1056) < 20 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao20()
	if HaveMagic(1057) < 20 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao20()
	if HaveMagic(1058) < 20 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy20()
	if HaveMagic(1059) < 20 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong20()
	if HaveMagic(1060) < 20 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao20()
	if HaveMagic(1069) < 20 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo20()
	if HaveMagic(1070) < 20 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu20()
	if HaveMagic(1071) < 20 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong20()
	if HaveMagic(1066) < 20 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao20()
	if HaveMagic(1067) < 20 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem20()
	if HaveMagic(1061) < 20 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong20()
	if HaveMagic(1062) < 20 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff20()
	if HaveMagic(1114) < 20 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao20()
	if HaveMagic(1063) < 20 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao20()
	if HaveMagic(1065) < 20 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong20()
	if HaveMagic(1073) < 20 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong20()
	if HaveMagic(1074) < 20 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich20()
	if HaveMagic(1075) < 20 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao20()
	if HaveMagic(1076) < 20 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen20()
	if HaveMagic(1078) < 20 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem20()
	if HaveMagic(1079) < 20 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao20()
	if HaveMagic(1080) < 20 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem20()
	if HaveMagic(1081) < 20 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem20()
	if HaveMagic(1368) < 20 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi20()
	if HaveMagic(1384) < 20 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 20 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------Gioi Han Nang Ky Nang Tu 20 Den 21---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangCapKyNang21()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen21",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon21",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao21",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao21",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy21",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong21",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao21",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo21",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu21",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong21",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao21",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem21",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong21",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff21",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao21",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao21",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong21",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong21",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich21",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao21",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen21",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem21",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao21",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem21",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem21",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi21",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen21()
	if HaveMagic(1055) < 21 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon21()
	if HaveMagic(1056) < 21 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao21()
	if HaveMagic(1057) < 21 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao21()
	if HaveMagic(1058) < 21 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy21()
	if HaveMagic(1059) < 21 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong21()
	if HaveMagic(1060) < 21 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao21()
	if HaveMagic(1069) < 21 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo21()
	if HaveMagic(1070) < 21 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu21()
	if HaveMagic(1071) < 21 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong21()
	if HaveMagic(1066) < 21 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao21()
	if HaveMagic(1067) < 21 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem21()
	if HaveMagic(1061) < 21 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong21()
	if HaveMagic(1062) < 21 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff21()
	if HaveMagic(1114) < 21 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao21()
	if HaveMagic(1063) < 21 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao21()
	if HaveMagic(1065) < 21 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong21()
	if HaveMagic(1073) < 21 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong21()
	if HaveMagic(1074) < 21 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich21()
	if HaveMagic(1075) < 21 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao21()
	if HaveMagic(1076) < 21 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen21()
	if HaveMagic(1078) < 21 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem21()
	if HaveMagic(1079) < 21 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao21()
	if HaveMagic(1080) < 21 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem21()
	if HaveMagic(1081) < 21 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem21()
	if HaveMagic(1368) < 21 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi21()
	if HaveMagic(1384) < 21 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 21 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------Gioi Han Ky Nang Den Cap 22--------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangCapKyNang22()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen22",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon22",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao22",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao22",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy22",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong22",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao22",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo22",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu22",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong22",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao22",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem22",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong22",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff22",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao22",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao22",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong22",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong22",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich22",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao22",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen22",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem22",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao22",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem22",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem22",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi22",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen22()
	if HaveMagic(1055) < 22 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon22()
	if HaveMagic(1056) < 22 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao22()
	if HaveMagic(1057) < 22 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao22()
	if HaveMagic(1058) < 22 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy22()
	if HaveMagic(1059) < 22 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong22()
	if HaveMagic(1060) < 22 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao22()
	if HaveMagic(1069) < 22 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo22()
	if HaveMagic(1070) < 22 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu22()
	if HaveMagic(1071) < 22 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong22()
	if HaveMagic(1066) < 22 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao22()
	if HaveMagic(1067) < 22 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem22()
	if HaveMagic(1061) < 22 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong22()
	if HaveMagic(1062) < 22 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff22()
	if HaveMagic(1114) < 22 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao22()
	if HaveMagic(1063) < 22 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao22()
	if HaveMagic(1065) < 22 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong22()
	if HaveMagic(1073) < 22 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong22()
	if HaveMagic(1074) < 22 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich22()
	if HaveMagic(1075) < 22 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao22()
	if HaveMagic(1076) < 22 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen22()
	if HaveMagic(1078) < 22 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem22()
	if HaveMagic(1079) < 22 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao22()
	if HaveMagic(1080) < 22 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem22()
	if HaveMagic(1081) < 22 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem22()
	if HaveMagic(1368) < 22 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi22()
	if HaveMagic(1384) < 22 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc 50 Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 22 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------Gioi Han Ky Nang Den Cap 23--------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangCapKyNang23()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen23",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon23",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao23",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao23",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy23",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong23",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao23",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo23",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu23",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong23",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao23",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem23",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong23",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff23",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao23",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao23",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong23",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong23",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich23",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao23",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen23",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem23",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao23",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem23",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem23",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi23",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen23()
	if HaveMagic(1055) < 23 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon23()
	if HaveMagic(1056) < 23 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao23()
	if HaveMagic(1057) < 23 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao23()
	if HaveMagic(1058) < 23 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy23()
	if HaveMagic(1059) < 23 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong23()
	if HaveMagic(1060) < 23 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao23()
	if HaveMagic(1069) < 23 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo23()
	if HaveMagic(1070) < 23 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu23()
	if HaveMagic(1071) < 23 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong23()
	if HaveMagic(1066) < 23 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao23()
	if HaveMagic(1067) < 23 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem23()
	if HaveMagic(1061) < 23 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong23()
	if HaveMagic(1062) < 23 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff23()
	if HaveMagic(1114) < 23 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao23()
	if HaveMagic(1063) < 23 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao23()
	if HaveMagic(1065) < 23 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong23()
	if HaveMagic(1073) < 23 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong23()
	if HaveMagic(1074) < 23 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich23()
	if HaveMagic(1075) < 23 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao23()
	if HaveMagic(1076) < 23 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen23()
	if HaveMagic(1078) < 23 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem23()
	if HaveMagic(1079) < 23 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao23()
	if HaveMagic(1080) < 23 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem23()
	if HaveMagic(1081) < 23 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem23()
	if HaveMagic(1368) < 23 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi23()
	if HaveMagic(1384) < 23 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc 50 Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 23 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------Gioi Han Ky Nang Den Cap 24--------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangCapKyNang24()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen24",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon24",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao24",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao24",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy24",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong24",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao24",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo24",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu24",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong24",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao24",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem24",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong24",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff24",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao24",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao24",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong24",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong24",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich24",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao24",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen24",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem24",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao24",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem24",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem24",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi24",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen24()
	if HaveMagic(1055) < 24 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon24()
	if HaveMagic(1056) < 24 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao24()
	if HaveMagic(1057) < 24 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao24()
	if HaveMagic(1058) < 24 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy24()
	if HaveMagic(1059) < 24 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong24()
	if HaveMagic(1060) < 24 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao24()
	if HaveMagic(1069) < 24 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo24()
	if HaveMagic(1070) < 24 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu24()
	if HaveMagic(1071) < 24 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong24()
	if HaveMagic(1066) < 24 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao24()
	if HaveMagic(1067) < 24 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem24()
	if HaveMagic(1061) < 24 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong24()
	if HaveMagic(1062) < 24 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff24()
	if HaveMagic(1114) < 24 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao24()
	if HaveMagic(1063) < 24 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao24()
	if HaveMagic(1065) < 24 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong24()
	if HaveMagic(1073) < 24 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong24()
	if HaveMagic(1074) < 24 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich24()
	if HaveMagic(1075) < 24 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao24()
	if HaveMagic(1076) < 24 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen24()
	if HaveMagic(1078) < 24 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem24()
	if HaveMagic(1079) < 24 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao24()
	if HaveMagic(1080) < 24 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem24()
	if HaveMagic(1081) < 24 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem24()
	if HaveMagic(1368) < 24 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi24()
	if HaveMagic(1384) < 24 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc 50 Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 24 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------Gioi Han Ky Nang Den Cap 25--------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangCapKyNang25()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen25",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon25",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao25",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao25",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy25",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong25",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao25",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo25",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu25",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong25",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao25",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem25",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong25",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff25",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao25",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao25",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong25",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong25",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich25",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao25",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen25",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem25",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao25",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem25",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem25",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi25",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen25()
	if HaveMagic(1055) < 25 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon25()
	if HaveMagic(1056) < 25 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao25()
	if HaveMagic(1057) < 25 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao25()
	if HaveMagic(1058) < 25 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy25()
	if HaveMagic(1059) < 25 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong25()
	if HaveMagic(1060) < 25 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao25()
	if HaveMagic(1069) < 25 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo25()
	if HaveMagic(1070) < 25 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu25()
	if HaveMagic(1071) < 25 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong25()
	if HaveMagic(1066) < 25 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao25()
	if HaveMagic(1067) < 25 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem25()
	if HaveMagic(1061) < 25 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong25()
	if HaveMagic(1062) < 25 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff25()
	if HaveMagic(1114) < 25 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao25()
	if HaveMagic(1063) < 25 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao25()
	if HaveMagic(1065) < 25 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong25()
	if HaveMagic(1073) < 25 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong25()
	if HaveMagic(1074) < 25 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich25()
	if HaveMagic(1075) < 25 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao25()
	if HaveMagic(1076) < 25 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen25()
	if HaveMagic(1078) < 25 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem25()
	if HaveMagic(1079) < 25 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao25()
	if HaveMagic(1080) < 25 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem25()
	if HaveMagic(1081) < 25 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem25()
	if HaveMagic(1368) < 25 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi25()
	if HaveMagic(1384) < 25 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc 50 Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 25 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------Gioi Han Ky Nang Den Cap 26--------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangCapKyNang26()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen26",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon26",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao26",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao26",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy26",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong26",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao26",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo26",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu26",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong26",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao25",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem26",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong26",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff26",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao26",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao26",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong26",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong26",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich26",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao26",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen26",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem26",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao26",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem26",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem26",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi26",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen26()
	if HaveMagic(1055) < 26 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon26()
	if HaveMagic(1056) < 26 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao26()
	if HaveMagic(1057) < 26 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao26()
	if HaveMagic(1058) < 26 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy26()
	if HaveMagic(1059) < 26 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong26()
	if HaveMagic(1060) < 26 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao26()
	if HaveMagic(1069) < 26 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo26()
	if HaveMagic(1070) < 26 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu26()
	if HaveMagic(1071) < 26 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong26()
	if HaveMagic(1066) < 26 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao26()
	if HaveMagic(1067) < 26 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem26()
	if HaveMagic(1061) < 26 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong26()
	if HaveMagic(1062) < 26 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff26()
	if HaveMagic(1114) < 26 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao26()
	if HaveMagic(1063) < 26 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao26()
	if HaveMagic(1065) < 26 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong26()
	if HaveMagic(1073) < 26 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong26()
	if HaveMagic(1074) < 26 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich26()
	if HaveMagic(1075) < 26 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao26()
	if HaveMagic(1076) < 26 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen26()
	if HaveMagic(1078) < 26 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem26()
	if HaveMagic(1079) < 26 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao26()
	if HaveMagic(1080) < 26 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem26()
	if HaveMagic(1081) < 26 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem26()
	if HaveMagic(1368) < 26 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi26()
	if HaveMagic(1384) < 26 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc 50 Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 26 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------Gioi Han Ky Nang Den Cap 27--------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangCapKyNang27()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen27",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon27",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao27",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao27",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy27",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong27",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao27",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo27",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu27",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong27",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao25",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem27",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong27",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff27",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao27",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao27",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong27",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong27",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich27",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao27",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen27",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem27",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao27",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem27",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem27",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi27",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen27()
	if HaveMagic(1055) < 27 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon27()
	if HaveMagic(1056) < 27 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao27()
	if HaveMagic(1057) < 27 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao27()
	if HaveMagic(1058) < 27 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy27()
	if HaveMagic(1059) < 27 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong27()
	if HaveMagic(1060) < 27 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao27()
	if HaveMagic(1069) < 27 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo27()
	if HaveMagic(1070) < 27 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu27()
	if HaveMagic(1071) < 27 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong27()
	if HaveMagic(1066) < 27 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao27()
	if HaveMagic(1067) < 27 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem27()
	if HaveMagic(1061) < 27 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong27()
	if HaveMagic(1062) < 27 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff27()
	if HaveMagic(1114) < 27 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao27()
	if HaveMagic(1063) < 27 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao27()
	if HaveMagic(1065) < 27 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong27()
	if HaveMagic(1073) < 27 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong27()
	if HaveMagic(1074) < 27 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich27()
	if HaveMagic(1075) < 27 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao27()
	if HaveMagic(1076) < 27 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen27()
	if HaveMagic(1078) < 27 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem27()
	if HaveMagic(1079) < 27 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao27()
	if HaveMagic(1080) < 27 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem27()
	if HaveMagic(1081) < 27 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem27()
	if HaveMagic(1368) < 27 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi27()
	if HaveMagic(1384) < 27 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc 50 Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 27 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------Gioi Han Ky Nang Den Cap 28--------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangCapKyNang28()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen28",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon28",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao28",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao28",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy28",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong28",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao28",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo28",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu28",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong28",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao25",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem28",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong28",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff28",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao28",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao28",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong28",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong28",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich28",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao28",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen28",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem28",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao28",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem28",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem28",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi28",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen28()
	if HaveMagic(1055) < 28 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon28()
	if HaveMagic(1056) < 28 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao28()
	if HaveMagic(1057) < 28 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao28()
	if HaveMagic(1058) < 28 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy28()
	if HaveMagic(1059) < 28 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong28()
	if HaveMagic(1060) < 28 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao28()
	if HaveMagic(1069) < 28 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo28()
	if HaveMagic(1070) < 28 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu28()
	if HaveMagic(1071) < 28 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong28()
	if HaveMagic(1066) < 28 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao28()
	if HaveMagic(1067) < 28 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem28()
	if HaveMagic(1061) < 28 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong28()
	if HaveMagic(1062) < 28 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff28()
	if HaveMagic(1114) < 28 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao28()
	if HaveMagic(1063) < 28 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao28()
	if HaveMagic(1065) < 28 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong28()
	if HaveMagic(1073) < 28 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong28()
	if HaveMagic(1074) < 28 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich28()
	if HaveMagic(1075) < 28 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao28()
	if HaveMagic(1076) < 28 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen28()
	if HaveMagic(1078) < 28 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem28()
	if HaveMagic(1079) < 28 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao28()
	if HaveMagic(1080) < 28 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem28()
	if HaveMagic(1081) < 28 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem28()
	if HaveMagic(1368) < 28 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi28()
	if HaveMagic(1384) < 28 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc 50 Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 28 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------Gioi Han Ky Nang Den Cap 29--------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangCapKyNang29()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen29",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon29",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao29",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao29",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy29",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong29",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao29",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo29",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu29",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong29",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao25",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem29",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong29",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff29",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao29",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao29",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong29",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong29",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich29",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao29",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen29",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem29",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao29",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem29",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem29",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi29",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen29()
	if HaveMagic(1055) < 29 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon29()
	if HaveMagic(1056) < 29 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao29()
	if HaveMagic(1057) < 29 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao29()
	if HaveMagic(1058) < 29 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy29()
	if HaveMagic(1059) < 29 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong29()
	if HaveMagic(1060) < 29 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao29()
	if HaveMagic(1069) < 29 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo29()
	if HaveMagic(1070) < 29 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu29()
	if HaveMagic(1071) < 29 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong29()
	if HaveMagic(1066) < 29 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao29()
	if HaveMagic(1067) < 29 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem29()
	if HaveMagic(1061) < 29 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong29()
	if HaveMagic(1062) < 29 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff29()
	if HaveMagic(1114) < 29 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao29()
	if HaveMagic(1063) < 29 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao29()
	if HaveMagic(1065) < 29 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong29()
	if HaveMagic(1073) < 29 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong29()
	if HaveMagic(1074) < 29 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich29()
	if HaveMagic(1075) < 29 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao29()
	if HaveMagic(1076) < 29 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen29()
	if HaveMagic(1078) < 29 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem29()
	if HaveMagic(1079) < 29 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao29()
	if HaveMagic(1080) < 29 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem29()
	if HaveMagic(1081) < 29 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem29()
	if HaveMagic(1368) < 29 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi29()
	if HaveMagic(1384) < 29 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc 50 Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 29 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------Gioi Han Ky Nang Den Cap 30--------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangCapKyNang30()
local n_fac = GetLastFactionNumber();
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 150 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp §¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen30",
		"N©ng CÊp Vi §µ HiÕn Xö/ThieuLamCon30",
		"N©ng CÊp Tam Giíi Quy ThiÒn/ThieuLamDao30",
		"Th«i/No") return 1;

elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp Hµo Hïng Tr¶m/ThienVuongDao30",
		"N©ng CÊp Tung Hoµnh B¸t Hoang/ThienVuongChuy30",
		"N©ng CÊp B¸ V­¬ng T¹m Kim/ThienVuongThuong30",
		"Th«i/No") return 1;

elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp V« ¶nh Xuyªn/DuongMonPhiDao30",
		"N©ng CÊp ThiÕt Liªn Tø S¸t/DuongMonNo30",
		"N©ng CÊp Cµn Kh«n NhÊt TrÞch/DuongMonTieu30",
		"Th«i/No") return 1;

elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp H×nh Tiªu Cèt LËp/NguDocChuong30",
		"N©ng CÊp U Hån PhÖ ¶nh/NguDocDao25",
		"Th«i/No") return 1;

elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",4,
		"N©ng CÊp KiÕm Hoa V·n Tinh/NgaMyKiem30",
		"N©ng CÊp B¨ng Vò L¹c Tinh/NgaMyChuong30",
		"N©ng CÊp Ngäc TuyÒn T©m Kinh/NgaMyBuff30",
		"Th«i/No") return 1;

elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp B¨ng T­íc Ho¹t Kú/ThuyYenDao30",
		"N©ng CÊp Thñy Anh Man Tó/ThuyYenSongDao30",
		"Th«i/No") return 1;

elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Thêi ThÆng Lôc Long/CaiBangRong30",
		"N©ng CÊp Bæng Huýnh L­îc §Þa/CaiBangBong30",
		"Th«i/No") return 1;

elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Giang H¶i Né Lan/ThienNhanKich30",
		"N©ng CÊp TËt Háa Liªu Nguyªn/ThienNhanDao30",
		"Th«i/No") return 1;

elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp T¹o Hãa Th¸i Thanh/VoDangQuyen30",
		"N©ng CÊp KiÕm Thïy Tinh Hµ/VoDangKiem30",
		"Th«i/No") return 1;

elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp Cöu Thiªn C­¬ng Phong/ConLonDao30",
		"N©ng CÊp Thiªn L«i ChÊn Nh¹c/ConLonKiem30",
		"Th«i/No") return 1;

elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Muèn Chän Kü N¨ng Nµo",3,
		"N©ng CÊp §éc C« Cöu KiÕm/HoaSonKiem30",
		"N©ng CÊp ThÇn Quang Toµn NhiÔu/HoaSonKhi30",
		"Th«i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Nghiªn Cøu M·i Mµ Kh«ng LÜnh Héi §­îc G×") return 1
	end
end
--------------------------------------------------------Ph¸i ThiÕu L©m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen30()
	if HaveMagic(1055) < 30 then
		if HaveMagic(1055) >= 18 then
			AddSkillExp(1055,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §¹i Lùc Kim Cang Ch­ëng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamCon30()
	if HaveMagic(1056) < 30 then
		if HaveMagic(1056) >= 18 then
			AddSkillExp(1056,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Vi §µ HiÕn Xö")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThieuLamDao30()
	if HaveMagic(1057) < 30 then
		if HaveMagic(1057) >= 18 then
			AddSkillExp(1057,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tam Giíi Quy ThiÒn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------Ph¸i Thiªn V­¬ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao30()
	if HaveMagic(1058) < 30 then
		if HaveMagic(1058) >= 18 then
			AddSkillExp(1058,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Hµo Hïng Tr¶m §¹t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongChuy30()
	if HaveMagic(1059) < 30 then
		if HaveMagic(1059) >= 18 then
			AddSkillExp(1059,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Tung Hoµnh B¸t Ph­¬ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienVuongThuong30()
	if HaveMagic(1060) < 30 then
		if HaveMagic(1060) >= 18 then
			AddSkillExp(1060,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¸ V­¬ng T¹m Kim")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
--------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao30()
	if HaveMagic(1069) < 30 then
		if HaveMagic(1069) >= 18 then
			AddSkillExp(1069,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 V« ¶nh Xuyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonNo30()
	if HaveMagic(1070) < 30 then
		if HaveMagic(1070) >= 18 then
			AddSkillExp(1070,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 ThiÕt Liªn Tø S¸t")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function DuongMonTieu30()
	if HaveMagic(1071) < 30 then
		if HaveMagic(1071) >= 18 then
			AddSkillExp(1071,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cµn Kh«n NhÊt TrÞch")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Ngò §éc--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong30()
	if HaveMagic(1066) < 30 then
		if HaveMagic(1066) >= 18 then
			AddSkillExp(1066,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 H×nh Tiªu Cèt LËp")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NguDocDao30()
	if HaveMagic(1067) < 30 then
		if HaveMagic(1067) >= 18 then
			AddSkillExp(1067,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 U Hån PhÖ ¶nh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-----------------------------------------------------------------Ph¸i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem30()
	if HaveMagic(1061) < 30 then
		if HaveMagic(1061) >= 18 then
			AddSkillExp(1061,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Hoa V·n Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyChuong30()
	if HaveMagic(1062) < 30 then
		if HaveMagic(1062) >= 18 then
			AddSkillExp(1062,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng Vò L¹c Tinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function NgaMyBuff30()
	if HaveMagic(1114) < 30 then
		if HaveMagic(1114) >= 18 then
			AddSkillExp(1114,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Ngäc TuyÒn T©m Kinh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Thóy Yªn-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao30()
	if HaveMagic(1063) < 30 then
		if HaveMagic(1063) >= 18 then
			AddSkillExp(1063,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 B¨ng T­íc Ho¹t Kú")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThuyYenSongDao30()
	if HaveMagic(1065) < 30 then
		if HaveMagic(1065) >= 18 then
			AddSkillExp(1065,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thñy Anh Man Tó")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
----------------------------------------------------------------------Ph¸i C¸i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong30()
	if HaveMagic(1073) < 30 then
		if HaveMagic(1073) >= 18 then
			AddSkillExp(1073,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thêi ThÆng Lôc Long")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function CaiBangBong30()
	if HaveMagic(1074) < 30 then
		if HaveMagic(1074) >= 18 then
			AddSkillExp(1074,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Bæng Huýnh L­îc §Þa")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------Ph¸i Thiªn NhÉn-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich30()
	if HaveMagic(1075) < 30 then
		if HaveMagic(1075) >= 18 then
			AddSkillExp(1075,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Giang H¶i Né Lan")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ThienNhanDao30()
	if HaveMagic(1076) < 30 then
		if HaveMagic(1076) >= 18 then
			AddSkillExp(1076,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 TËt Háa Liªu Nguyªn")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------Ph¸i Vâ §ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen30()
	if HaveMagic(1078) < 30 then
		if HaveMagic(1078) >= 18 then
			AddSkillExp(1078,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 T¹o Hãa Th¸i Thanh")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function VoDangKiem30()
	if HaveMagic(1079) < 30 then
		if HaveMagic(1079) >= 18 then
			AddSkillExp(1079,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 KiÕm Thïy Tinh Hµ")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
-------------------------------------------------------------------------Ph¸i C«n L«n--------------------------------------------------------------------------------------------------------------------
function ConLonDao30()
	if HaveMagic(1080) < 30 then
		if HaveMagic(1080) >= 18 then
			AddSkillExp(1080,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Cöu Thiªn C­¬ng Phong Phong")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function ConLonKiem30()
	if HaveMagic(1081) < 30 then
		if HaveMagic(1081) >= 18 then
			AddSkillExp(1081,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 Thiªn L«i ChÊn Nh¹c")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
------------------------------------------------------------------------Ph¸i Hoa S¬n---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem30()
	if HaveMagic(1368) < 30 then
		if HaveMagic(1368) >= 18 then
			AddSkillExp(1368,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc "..ExpSkill.." Tu LuyÖn Kü N¨ng CÊp 150 §éc C« Cöu KiÕm")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end

function HoaSonKhi30()
	if HaveMagic(1384) < 30 then
		if HaveMagic(1384) >= 18 then
			AddSkillExp(1384,ExpSkill,1,1) ConsumeEquiproomItem(1,6,1,30342,-1)
			Msg2Player("<color=green>Chóc Mõng §· NhËn §­îc 50 Tu LuyÖn Kü N¨ng CÊp 150 ThÇn Quang Toµn NhiÔu")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." CÇn Ph¶i §¹t Kü N¨ng CÊp 150 §Õn CÊp 18\nMíi Cã ThÓ Sö Dông VËt PhÈm Nµy") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· Tu LuyÖn §Õn CÊp 30 Kü N¨ng CÊp 150 Råi\nKh«ng ThÓ Sö Dông Thªm N÷a") return 1;
	end
end
