IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
nSkill20 = 20; nSkill21 = 21; nSkill22 = 22; nSkill23 = 23; nSkill24 = 24; nSkill25 = 25; nSkill26 = 26; nSkill27 = 27; nSkill28 = 28; nSkill29 = 29; nSkill30 = 30;
nSkill31 = 31; nSkill32 = 32; nSkill33 = 33; nSkill34 = 34; nSkill35 = 35; nSkill36 = 36; nSkill37 = 37; nSkill38 = 38; nSkill39 = 39; nSkill40 = 40;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DaiLucKimCangChuong = 1055; ViDaHienXu = 1056; TamGioiQuyThien	= 1057
HaoHungTram = 1058; TungHoanhBatPhuong = 1059; BaVuongTamKim = 1060
KiemHoaVanTinh = 1061; BangVuLacTinh = 1062
BangTuocHoatKy = 1063; ThuyAnhManTu = 1065
HinhTieuCotLap = 1066; UHonPheAnh = 1067
VoAnhXuyen = 1069; ThietLienTuSat = 1070; CanKhonNhatTrich = 1071
ThoiThangLucLong = 1073; BongHuynhLuocDia = 1074
GiangHaiNoLan = 1075; TatHoaLieuNguyen = 1076
TaoHoaThaiThanh = 1078; KiemThuyTinhHa = 1079
CuuThienCuongPhong = 1080; ThienLoiChanNhac = 1081
DocCoCuuKiem = 1368; ThanQuangToanNhieu = 1384
-------------------------------------------------------------------
TSK_DaiLucKimCangChuong = 5101; TSK_ViDaHienXu = 5101; TSK_TamGioiQuyThien	= 5101
TSK_HaoHungTram = 5101; TSK_TungHoanhBatPhuong = 5101; TSK_BaVuongTamKim = 5101
TSK_KiemHoaVanTinh = 5101; TSK_BangVuLacTinh = 5101
TSK_BangTuocHoatKy = 5101; TSK_ThuyAnhManTu = 5101
TSK_HinhTieuCotLap = 5101; TSK_UHonPheAnh = 5101
TSK_VoAnhXuyen = 5101; TSK_ThietLienTuSat = 5101; TSK_CanKhonNhatTrich = 5101
TSK_ThoiThangLucLong = 5101; TSK_BongHuynhLuocDia = 5101
TSK_GiangHaiNoLan = 5101; TSK_TatHoaLieuNguyen = 5101
TSK_TaoHoaThaiThanh = 5101; TSK_KiemThuyTinhHa = 5101
TSK_CuuThienCuongPhong = 5101; TSK_ThienLoiChanNhac = 5101
TSK_DocCoCuuKiem = 5101; TSK_ThanQuangToanNhieu = 5101
--------------------------------------------------------------
function main()
local MonPhai = GetLastFactionNumber()
	if (MonPhai == 0) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen","Vi §µ HiÕn Xö/ThieuLamCon","Tam Giíi Quy ThiÒn/ThieuLamDao","Hñy Bá/No") return 1
	elseif (MonPhai == 1) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy","B¸ V­¬ng T¹m Kim/ThienVuongThuong","Hñy Bá/No") return 1
	elseif (MonPhai == 2) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao","ThiÕt Liªn Tø S¸t/DMTuTien","Cµn Kh«n NhÊt TrÞch/DMTieu","Hñy Bá/No") return 1
	elseif (MonPhai == 3) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong","U Hån PhÖ ¶nh/NguDocDao","Hñy Bá/No") return 1
	elseif (MonPhai == 4) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem","B¨ng Vò L¹c Tinh/NgaMyChuong","Hñy Bá/No") return 1
	elseif (MonPhai == 5) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao","Thñy Anh Man Tó/ThuyYenNoi","Hñy Bá/No") return 1
	elseif (MonPhai == 6) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen","Bæng Huýnh L­îc §Þa/CaiBangCon","Hñy Bá.No") return 1
	elseif (MonPhai == 7) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich","TËt Háa LiÖu Nguyªn/ThienNhanDao","Hñy Bá/No") return 1
	elseif (MonPhai == 8) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen","KiÕm Thïy Tinh Hµ/VoDangKiem","Hñy Bá/No") return 1
	elseif (MonPhai == 9) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao","Thiªn L«i ChÊn Nh¹c/ConLonKiem","Hñy Bá/No") return 1
	elseif (MonPhai == 10) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem","ThÇn Quang Toµn NhiÔu/HoaSonKhi","Hñy Bá/No") return 1
	else
		Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
	end
end
----------------------------------------------------------------ThiÕu L©m QuyÒn--------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen()
	if (GetTask(TSK_DaiLucKimCangChuong) <= nSkill20) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill20) then
			AddMagic(DaiLucKimCangChuong,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill21) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill21) then
			AddMagic(DaiLucKimCangChuong,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill22) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill22) then
			AddMagic(DaiLucKimCangChuong,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill23) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill23) then
			AddMagic(DaiLucKimCangChuong,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill24) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill24) then
			AddMagic(DaiLucKimCangChuong,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill25) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill25) then
			AddMagic(DaiLucKimCangChuong,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill26) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill26) then
			AddMagic(DaiLucKimCangChuong,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill27) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill27) then
			AddMagic(DaiLucKimCangChuong,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill28) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill28) then
			AddMagic(DaiLucKimCangChuong,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill29) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill29) then
			AddMagic(DaiLucKimCangChuong,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill30) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill30) then
			AddMagic(DaiLucKimCangChuong,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill31) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill31) then
			AddMagic(DaiLucKimCangChuong,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill32) then
			if (HaveMagic(DaiLucKimCangChuong) < nSkill32) then
			AddMagic(DaiLucKimCangChuong,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill33) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill33) then
			AddMagic(DaiLucKimCangChuong,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill34) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill34) then
			AddMagic(DaiLucKimCangChuong,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill35) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill35) then
			AddMagic(DaiLucKimCangChuong,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill36) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill36) then
			AddMagic(DaiLucKimCangChuong,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill37) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill37) then
			AddMagic(DaiLucKimCangChuong,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill38) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill38) then
			AddMagic(DaiLucKimCangChuong,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill39) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill39) then
			AddMagic(DaiLucKimCangChuong,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_DaiLucKimCangChuong) == nSkill40) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill40) then
			AddMagic(DaiLucKimCangChuong,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
------------------------------------------------------------------------ThiÕu L©m C«n----------------------------------------------------------------------------------------------------------------------
function ThieuLamCon()
	if (GetTask(TSK_ViDaHienXu) <= nSkill20) then
		if (HaveMagic(ViDaHienXu) < nSkill20) then
			AddMagic(ViDaHienXu,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill21) then
		if (HaveMagic(ViDaHienXu) < nSkill21) then
			AddMagic(ViDaHienXu,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill22) then
		if (HaveMagic(ViDaHienXu) < nSkill22) then
			AddMagic(ViDaHienXu,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill23) then
		if (HaveMagic(ViDaHienXu) < nSkill23) then
			AddMagic(ViDaHienXu,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill24) then
		if (HaveMagic(ViDaHienXu) < nSkill24) then
			AddMagic(ViDaHienXu,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill25) then
		if (HaveMagic(ViDaHienXu) < nSkill25) then
			AddMagic(ViDaHienXu,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill26) then
		if (HaveMagic(ViDaHienXu) < nSkill26) then
			AddMagic(ViDaHienXu,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill27) then
		if (HaveMagic(ViDaHienXu) < nSkill27) then
			AddMagic(ViDaHienXu,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill28) then
		if (HaveMagic(ViDaHienXu) < nSkill28) then
			AddMagic(ViDaHienXu,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill29) then
		if (HaveMagic(ViDaHienXu) < nSkill29) then
			AddMagic(ViDaHienXu,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill30) then
		if (HaveMagic(ViDaHienXu) < nSkill30) then
			AddMagic(ViDaHienXu,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill31) then
		if (HaveMagic(ViDaHienXu) < nSkill31) then
			AddMagic(ViDaHienXu,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill32) then
			if (HaveMagic(ViDaHienXu) < nSkill32) then
			AddMagic(ViDaHienXu,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill33) then
		if (HaveMagic(ViDaHienXu) < nSkill33) then
			AddMagic(ViDaHienXu,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill34) then
		if (HaveMagic(ViDaHienXu) < nSkill34) then
			AddMagic(ViDaHienXu,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill35) then
		if (HaveMagic(ViDaHienXu) < nSkill35) then
			AddMagic(ViDaHienXu,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill36) then
		if (HaveMagic(ViDaHienXu) < nSkill36) then
			AddMagic(ViDaHienXu,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill37) then
		if (HaveMagic(ViDaHienXu) < nSkill37) then
			AddMagic(ViDaHienXu,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill38) then
		if (HaveMagic(ViDaHienXu) < nSkill38) then
			AddMagic(ViDaHienXu,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill39) then
		if (HaveMagic(ViDaHienXu) < nSkill39) then
			AddMagic(ViDaHienXu,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_ViDaHienXu) == nSkill40) then
		if (HaveMagic(ViDaHienXu) < nSkill40) then
			AddMagic(ViDaHienXu,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
-----------------------------------------------------------------------ThiÕu L©m §ao---------------------------------------------------------------------------------------------------------------------------
function ThieuLamDao()
	if (GetTask(TSK_TamGioiQuyThien) <= nSkill20) then
		if (HaveMagic(TamGioiQuyThien) < nSkill20) then
			AddMagic(TamGioiQuyThien,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill21) then
		if (HaveMagic(TamGioiQuyThien) < nSkill21) then
			AddMagic(TamGioiQuyThien,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill22) then
		if (HaveMagic(TamGioiQuyThien) < nSkill22) then
			AddMagic(TamGioiQuyThien,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill23) then
		if (HaveMagic(TamGioiQuyThien) < nSkill23) then
			AddMagic(TamGioiQuyThien,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill24) then
		if (HaveMagic(TamGioiQuyThien) < nSkill24) then
			AddMagic(TamGioiQuyThien,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill25) then
		if (HaveMagic(TamGioiQuyThien) < nSkill25) then
			AddMagic(TamGioiQuyThien,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill26) then
		if (HaveMagic(TamGioiQuyThien) < nSkill26) then
			AddMagic(TamGioiQuyThien,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill27) then
		if (HaveMagic(TamGioiQuyThien) < nSkill27) then
			AddMagic(TamGioiQuyThien,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill28) then
		if (HaveMagic(TamGioiQuyThien) < nSkill28) then
			AddMagic(TamGioiQuyThien,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill29) then
		if (HaveMagic(TamGioiQuyThien) < nSkill29) then
			AddMagic(TamGioiQuyThien,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill30) then
		if (HaveMagic(TamGioiQuyThien) < nSkill30) then
			AddMagic(TamGioiQuyThien,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill31) then
		if (HaveMagic(TamGioiQuyThien) < nSkill31) then
			AddMagic(TamGioiQuyThien,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill32) then
			if (HaveMagic(TamGioiQuyThien) < nSkill32) then
			AddMagic(TamGioiQuyThien,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill33) then
		if (HaveMagic(TamGioiQuyThien) < nSkill33) then
			AddMagic(TamGioiQuyThien,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill34) then
		if (HaveMagic(TamGioiQuyThien) < nSkill34) then
			AddMagic(TamGioiQuyThien,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill35) then
		if (HaveMagic(TamGioiQuyThien) < nSkill35) then
			AddMagic(TamGioiQuyThien,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill36) then
		if (HaveMagic(TamGioiQuyThien) < nSkill36) then
			AddMagic(TamGioiQuyThien,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill37) then
		if (HaveMagic(TamGioiQuyThien) < nSkill37) then
			AddMagic(TamGioiQuyThien,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill38) then
		if (HaveMagic(TamGioiQuyThien) < nSkill38) then
			AddMagic(TamGioiQuyThien,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill39) then
		if (HaveMagic(TamGioiQuyThien) < nSkill39) then
			AddMagic(TamGioiQuyThien,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_TamGioiQuyThien) == nSkill40) then
		if (HaveMagic(TamGioiQuyThien) < nSkill40) then
			AddMagic(TamGioiQuyThien,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
-----------------------------------------------------------------------Thiªn V­¬ng §ao------------------------------------------------------------------------------------------------------
function ThienVuongDao()
	if (GetTask(TSK_HaoHungTram) <= nSkill20) then
		if (HaveMagic(HaoHungTram) < nSkill20) then
			AddMagic(HaoHungTram,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill21) then
		if (HaveMagic(HaoHungTram) < nSkill21) then
			AddMagic(HaoHungTram,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill22) then
		if (HaveMagic(HaoHungTram) < nSkill22) then
			AddMagic(HaoHungTram,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill23) then
		if (HaveMagic(HaoHungTram) < nSkill23) then
			AddMagic(HaoHungTram,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill24) then
		if (HaveMagic(HaoHungTram) < nSkill24) then
			AddMagic(HaoHungTram,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill25) then
		if (HaveMagic(HaoHungTram) < nSkill25) then
			AddMagic(HaoHungTram,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill26) then
		if (HaveMagic(HaoHungTram) < nSkill26) then
			AddMagic(HaoHungTram,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill27) then
		if (HaveMagic(HaoHungTram) < nSkill27) then
			AddMagic(HaoHungTram,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill28) then
		if (HaveMagic(HaoHungTram) < nSkill28) then
			AddMagic(HaoHungTram,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill29) then
		if (HaveMagic(HaoHungTram) < nSkill29) then
			AddMagic(HaoHungTram,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill30) then
		if (HaveMagic(HaoHungTram) < nSkill30) then
			AddMagic(HaoHungTram,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill31) then
		if (HaveMagic(HaoHungTram) < nSkill31) then
			AddMagic(HaoHungTram,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill32) then
			if (HaveMagic(HaoHungTram) < nSkill32) then
			AddMagic(HaoHungTram,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill33) then
		if (HaveMagic(HaoHungTram) < nSkill33) then
			AddMagic(HaoHungTram,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill34) then
		if (HaveMagic(HaoHungTram) < nSkill34) then
			AddMagic(HaoHungTram,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill35) then
		if (HaveMagic(HaoHungTram) < nSkill35) then
			AddMagic(HaoHungTram,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill36) then
		if (HaveMagic(HaoHungTram) < nSkill36) then
			AddMagic(HaoHungTram,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill37) then
		if (HaveMagic(HaoHungTram) < nSkill37) then
			AddMagic(HaoHungTram,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill38) then
		if (HaveMagic(HaoHungTram) < nSkill38) then
			AddMagic(HaoHungTram,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill39) then
		if (HaveMagic(HaoHungTram) < nSkill39) then
			AddMagic(HaoHungTram,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_HaoHungTram) == nSkill40) then
		if (HaveMagic(HaoHungTram) < nSkill40) then
			AddMagic(HaoHungTram,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
------------------------------------------------------------------------Thiªn V­¬ng Chïy------------------------------------------------------------------------------------------------------------------------------
function ThienVuongChuy()
	if (GetTask(TSK_TungHoanhBatPhuong) <= nSkill20) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill20) then
			AddMagic(TungHoanhBatPhuong,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill21) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill21) then
			AddMagic(TungHoanhBatPhuong,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill22) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill22) then
			AddMagic(TungHoanhBatPhuong,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill23) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill23) then
			AddMagic(TungHoanhBatPhuong,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill24) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill24) then
			AddMagic(TungHoanhBatPhuong,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill25) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill25) then
			AddMagic(TungHoanhBatPhuong,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill26) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill26) then
			AddMagic(TungHoanhBatPhuong,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill27) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill27) then
			AddMagic(TungHoanhBatPhuong,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill28) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill28) then
			AddMagic(TungHoanhBatPhuong,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill29) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill29) then
			AddMagic(TungHoanhBatPhuong,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill30) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill30) then
			AddMagic(TungHoanhBatPhuong,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill31) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill31) then
			AddMagic(TungHoanhBatPhuong,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill32) then
			if (HaveMagic(TungHoanhBatPhuong) < nSkill32) then
			AddMagic(TungHoanhBatPhuong,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill33) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill33) then
			AddMagic(TungHoanhBatPhuong,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill34) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill34) then
			AddMagic(TungHoanhBatPhuong,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill35) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill35) then
			AddMagic(TungHoanhBatPhuong,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill36) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill36) then
			AddMagic(TungHoanhBatPhuong,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill37) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill37) then
			AddMagic(TungHoanhBatPhuong,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill38) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill38) then
			AddMagic(TungHoanhBatPhuong,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill39) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill39) then
			AddMagic(TungHoanhBatPhuong,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_TungHoanhBatPhuong) == nSkill40) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill40) then
			AddMagic(TungHoanhBatPhuong,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
---------------------------------------------------------------------------Thiªn V­¬ng Th­¬ng--------------------------------------------------------------------------------------------------------------------------
function ThienVuongThuong()
	if (GetTask(TSK_BaVuongTamKim) <= nSkill20) then
		if (HaveMagic(BaVuongTamKim) < nSkill20) then
			AddMagic(BaVuongTamKim,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill21) then
		if (HaveMagic(BaVuongTamKim) < nSkill21) then
			AddMagic(BaVuongTamKim,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill22) then
		if (HaveMagic(BaVuongTamKim) < nSkill22) then
			AddMagic(BaVuongTamKim,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill23) then
		if (HaveMagic(BaVuongTamKim) < nSkill23) then
			AddMagic(BaVuongTamKim,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill24) then
		if (HaveMagic(BaVuongTamKim) < nSkill24) then
			AddMagic(BaVuongTamKim,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill25) then
		if (HaveMagic(BaVuongTamKim) < nSkill25) then
			AddMagic(BaVuongTamKim,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill26) then
		if (HaveMagic(BaVuongTamKim) < nSkill26) then
			AddMagic(BaVuongTamKim,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill27) then
		if (HaveMagic(BaVuongTamKim) < nSkill27) then
			AddMagic(BaVuongTamKim,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill28) then
		if (HaveMagic(BaVuongTamKim) < nSkill28) then
			AddMagic(BaVuongTamKim,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill29) then
		if (HaveMagic(BaVuongTamKim) < nSkill29) then
			AddMagic(BaVuongTamKim,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill30) then
		if (HaveMagic(BaVuongTamKim) < nSkill30) then
			AddMagic(BaVuongTamKim,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill31) then
		if (HaveMagic(BaVuongTamKim) < nSkill31) then
			AddMagic(BaVuongTamKim,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill32) then
			if (HaveMagic(BaVuongTamKim) < nSkill32) then
			AddMagic(BaVuongTamKim,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill33) then
		if (HaveMagic(BaVuongTamKim) < nSkill33) then
			AddMagic(BaVuongTamKim,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill34) then
		if (HaveMagic(BaVuongTamKim) < nSkill34) then
			AddMagic(BaVuongTamKim,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill35) then
		if (HaveMagic(BaVuongTamKim) < nSkill35) then
			AddMagic(BaVuongTamKim,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill36) then
		if (HaveMagic(BaVuongTamKim) < nSkill36) then
			AddMagic(BaVuongTamKim,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill37) then
		if (HaveMagic(BaVuongTamKim) < nSkill37) then
			AddMagic(BaVuongTamKim,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill38) then
		if (HaveMagic(BaVuongTamKim) < nSkill38) then
			AddMagic(BaVuongTamKim,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill39) then
		if (HaveMagic(BaVuongTamKim) < nSkill39) then
			AddMagic(BaVuongTamKim,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_BaVuongTamKim) == nSkill40) then
		if (HaveMagic(BaVuongTamKim) < nSkill40) then
			AddMagic(BaVuongTamKim,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
---------------------------------------------------------------------------§­êng M«n Phi §ao---------------------------------------------------------------------------------------------------------------
function DMPhiDao()
	if (GetTask(TSK_VoAnhXuyen) <= nSkill20) then
		if (HaveMagic(VoAnhXuyen) < nSkill20) then
			AddMagic(VoAnhXuyen,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi")
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill21) then
		if (HaveMagic(VoAnhXuyen) < nSkill21) then
			AddMagic(VoAnhXuyen,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill22) then
		if (HaveMagic(VoAnhXuyen) < nSkill22) then
			AddMagic(VoAnhXuyen,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill23) then
		if (HaveMagic(VoAnhXuyen) < nSkill23) then
			AddMagic(VoAnhXuyen,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill24) then
		if (HaveMagic(VoAnhXuyen) < nSkill24) then
			AddMagic(VoAnhXuyen,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill25) then
		if (HaveMagic(VoAnhXuyen) < nSkill25) then
			AddMagic(VoAnhXuyen,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill26) then
		if (HaveMagic(VoAnhXuyen) < nSkill26) then
			AddMagic(VoAnhXuyen,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill27) then
		if (HaveMagic(VoAnhXuyen) < nSkill27) then
			AddMagic(VoAnhXuyen,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill28) then
		if (HaveMagic(VoAnhXuyen) < nSkill28) then
			AddMagic(VoAnhXuyen,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill29) then
		if (HaveMagic(VoAnhXuyen) < nSkill29) then
			AddMagic(VoAnhXuyen,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill30) then
		if (HaveMagic(VoAnhXuyen) < nSkill30) then
			AddMagic(VoAnhXuyen,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill31) then
		if (HaveMagic(VoAnhXuyen) < nSkill31) then
			AddMagic(VoAnhXuyen,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill32) then
			if (HaveMagic(VoAnhXuyen) < nSkill32) then
			AddMagic(VoAnhXuyen,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill33) then
		if (HaveMagic(VoAnhXuyen) < nSkill33) then
			AddMagic(VoAnhXuyen,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill34) then
		if (HaveMagic(VoAnhXuyen) < nSkill34) then
			AddMagic(VoAnhXuyen,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill35) then
		if (HaveMagic(VoAnhXuyen) < nSkill35) then
			AddMagic(VoAnhXuyen,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill36) then
		if (HaveMagic(VoAnhXuyen) < nSkill36) then
			AddMagic(VoAnhXuyen,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill37) then
		if (HaveMagic(VoAnhXuyen) < nSkill37) then
			AddMagic(VoAnhXuyen,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill38) then
		if (HaveMagic(VoAnhXuyen) < nSkill38) then
			AddMagic(VoAnhXuyen,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill39) then
		if (HaveMagic(VoAnhXuyen) < nSkill39) then
			AddMagic(VoAnhXuyen,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_VoAnhXuyen) == nSkill40) then
		if (HaveMagic(VoAnhXuyen) < nSkill40) then
			AddMagic(VoAnhXuyen,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
-------------------------------------------------------------------------§­êng M«n Tô TiÔn------------------------------------------------------------------------------------------------------------------------
function DMTuTien()
	if (GetTask(TSK_ThietLienTuSat) <= nSkill20) then
		if (HaveMagic(ThietLienTuSat) < nSkill20) then
			AddMagic(ThietLienTuSat,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill21) then
		if (HaveMagic(ThietLienTuSat) < nSkill21) then
			AddMagic(ThietLienTuSat,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill22) then
		if (HaveMagic(ThietLienTuSat) < nSkill22) then
			AddMagic(ThietLienTuSat,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill23) then
		if (HaveMagic(ThietLienTuSat) < nSkill23) then
			AddMagic(ThietLienTuSat,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill24) then
		if (HaveMagic(ThietLienTuSat) < nSkill24) then
			AddMagic(ThietLienTuSat,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill25) then
		if (HaveMagic(ThietLienTuSat) < nSkill25) then
			AddMagic(ThietLienTuSat,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill26) then
		if (HaveMagic(ThietLienTuSat) < nSkill26) then
			AddMagic(ThietLienTuSat,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill27) then
		if (HaveMagic(ThietLienTuSat) < nSkill27) then
			AddMagic(ThietLienTuSat,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill28) then
		if (HaveMagic(ThietLienTuSat) < nSkill28) then
			AddMagic(ThietLienTuSat,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill29) then
		if (HaveMagic(ThietLienTuSat) < nSkill29) then
			AddMagic(ThietLienTuSat,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill30) then
		if (HaveMagic(ThietLienTuSat) < nSkill30) then
			AddMagic(ThietLienTuSat,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill31) then
		if (HaveMagic(ThietLienTuSat) < nSkill31) then
			AddMagic(ThietLienTuSat,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill32) then
			if (HaveMagic(ThietLienTuSat) < nSkill32) then
			AddMagic(ThietLienTuSat,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill33) then
		if (HaveMagic(ThietLienTuSat) < nSkill33) then
			AddMagic(ThietLienTuSat,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill34) then
		if (HaveMagic(ThietLienTuSat) < nSkill34) then
			AddMagic(ThietLienTuSat,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill35) then
		if (HaveMagic(ThietLienTuSat) < nSkill35) then
			AddMagic(ThietLienTuSat,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill36) then
		if (HaveMagic(ThietLienTuSat) < nSkill36) then
			AddMagic(ThietLienTuSat,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill37) then
		if (HaveMagic(ThietLienTuSat) < nSkill37) then
			AddMagic(ThietLienTuSat,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill38) then
		if (HaveMagic(ThietLienTuSat) < nSkill38) then
			AddMagic(ThietLienTuSat,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill39) then
		if (HaveMagic(ThietLienTuSat) < nSkill39) then
			AddMagic(ThietLienTuSat,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThietLienTuSat) == nSkill40) then
		if (HaveMagic(ThietLienTuSat) < nSkill40) then
			AddMagic(ThietLienTuSat,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
---------------------------------------------------------------------§­êng M«n Tiªu--------------------------------------------------------------------------------------------------------------------
function DMTieu()
	if (GetTask(TSK_CanKhonNhatTrich) <= nSkill20) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill20) then
			AddMagic(CanKhonNhatTrich,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill21) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill21) then
			AddMagic(CanKhonNhatTrich,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill22) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill22) then
			AddMagic(CanKhonNhatTrich,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill23) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill23) then
			AddMagic(CanKhonNhatTrich,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill24) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill24) then
			AddMagic(CanKhonNhatTrich,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill25) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill25) then
			AddMagic(CanKhonNhatTrich,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill26) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill26) then
			AddMagic(CanKhonNhatTrich,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill27) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill27) then
			AddMagic(CanKhonNhatTrich,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill28) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill28) then
			AddMagic(CanKhonNhatTrich,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill29) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill29) then
			AddMagic(CanKhonNhatTrich,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill30) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill30) then
			AddMagic(CanKhonNhatTrich,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill31) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill31) then
			AddMagic(CanKhonNhatTrich,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill32) then
			if (HaveMagic(CanKhonNhatTrich) < nSkill32) then
			AddMagic(CanKhonNhatTrich,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill33) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill33) then
			AddMagic(CanKhonNhatTrich,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill34) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill34) then
			AddMagic(CanKhonNhatTrich,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill35) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill35) then
			AddMagic(CanKhonNhatTrich,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill36) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill36) then
			AddMagic(CanKhonNhatTrich,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill37) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill37) then
			AddMagic(CanKhonNhatTrich,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill38) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill38) then
			AddMagic(CanKhonNhatTrich,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill39) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill39) then
			AddMagic(CanKhonNhatTrich,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_CanKhonNhatTrich) == nSkill40) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill40) then
			AddMagic(CanKhonNhatTrich,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
-------------------------------------------------------------------------------Ngò §éc Ch­ëng----------------------------------------------------------------------------------------------------------
function NguDocChuong()
	if (GetTask(TSK_HinhTieuCotLap) <= nSkill20) then
		if (HaveMagic(HinhTieuCotLap) < nSkill20) then
			AddMagic(HinhTieuCotLap,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill21) then
		if (HaveMagic(HinhTieuCotLap) < nSkill21) then
			AddMagic(HinhTieuCotLap,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill22) then
		if (HaveMagic(HinhTieuCotLap) < nSkill22) then
			AddMagic(HinhTieuCotLap,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill23) then
		if (HaveMagic(HinhTieuCotLap) < nSkill23) then
			AddMagic(HinhTieuCotLap,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill24) then
		if (HaveMagic(HinhTieuCotLap) < nSkill24) then
			AddMagic(HinhTieuCotLap,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill25) then
		if (HaveMagic(HinhTieuCotLap) < nSkill25) then
			AddMagic(HinhTieuCotLap,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill26) then
		if (HaveMagic(HinhTieuCotLap) < nSkill26) then
			AddMagic(HinhTieuCotLap,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill27) then
		if (HaveMagic(HinhTieuCotLap) < nSkill27) then
			AddMagic(HinhTieuCotLap,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill28) then
		if (HaveMagic(HinhTieuCotLap) < nSkill28) then
			AddMagic(HinhTieuCotLap,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill29) then
		if (HaveMagic(HinhTieuCotLap) < nSkill29) then
			AddMagic(HinhTieuCotLap,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill30) then
		if (HaveMagic(HinhTieuCotLap) < nSkill30) then
			AddMagic(HinhTieuCotLap,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill31) then
		if (HaveMagic(HinhTieuCotLap) < nSkill31) then
			AddMagic(HinhTieuCotLap,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill32) then
			if (HaveMagic(HinhTieuCotLap) < nSkill32) then
			AddMagic(HinhTieuCotLap,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill33) then
		if (HaveMagic(HinhTieuCotLap) < nSkill33) then
			AddMagic(HinhTieuCotLap,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill34) then
		if (HaveMagic(HinhTieuCotLap) < nSkill34) then
			AddMagic(HinhTieuCotLap,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill35) then
		if (HaveMagic(HinhTieuCotLap) < nSkill35) then
			AddMagic(HinhTieuCotLap,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill36) then
		if (HaveMagic(HinhTieuCotLap) < nSkill36) then
			AddMagic(HinhTieuCotLap,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill37) then
		if (HaveMagic(HinhTieuCotLap) < nSkill37) then
			AddMagic(HinhTieuCotLap,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill38) then
		if (HaveMagic(HinhTieuCotLap) < nSkill38) then
			AddMagic(HinhTieuCotLap,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill39) then
		if (HaveMagic(HinhTieuCotLap) < nSkill39) then
			AddMagic(HinhTieuCotLap,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_HinhTieuCotLap) == nSkill40) then
		if (HaveMagic(HinhTieuCotLap) < nSkill40) then
			AddMagic(HinhTieuCotLap,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
--------------------------------------------------------------------Ngò §éc §ao-----------------------------------------------------------------------------------------------------------------------------
function NguDocDao()
	if (GetTask(TSK_UHonPheAnh) <= nSkill20) then
		if (HaveMagic(UHonPheAnh) < nSkill20) then
			AddMagic(UHonPheAnh,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill21) then
		if (HaveMagic(UHonPheAnh) < nSkill21) then
			AddMagic(UHonPheAnh,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill22) then
		if (HaveMagic(UHonPheAnh) < nSkill22) then
			AddMagic(UHonPheAnh,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill23) then
		if (HaveMagic(UHonPheAnh) < nSkill23) then
			AddMagic(UHonPheAnh,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill24) then
		if (HaveMagic(UHonPheAnh) < nSkill24) then
			AddMagic(UHonPheAnh,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill25) then
		if (HaveMagic(UHonPheAnh) < nSkill25) then
			AddMagic(UHonPheAnh,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill26) then
		if (HaveMagic(UHonPheAnh) < nSkill26) then
			AddMagic(UHonPheAnh,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill27) then
		if (HaveMagic(UHonPheAnh) < nSkill27) then
			AddMagic(UHonPheAnh,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill28) then
		if (HaveMagic(UHonPheAnh) < nSkill28) then
			AddMagic(UHonPheAnh,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill29) then
		if (HaveMagic(UHonPheAnh) < nSkill29) then
			AddMagic(UHonPheAnh,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill30) then
		if (HaveMagic(UHonPheAnh) < nSkill30) then
			AddMagic(UHonPheAnh,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill31) then
		if (HaveMagic(UHonPheAnh) < nSkill31) then
			AddMagic(UHonPheAnh,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill32) then
			if (HaveMagic(UHonPheAnh) < nSkill32) then
			AddMagic(UHonPheAnh,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill33) then
		if (HaveMagic(UHonPheAnh) < nSkill33) then
			AddMagic(UHonPheAnh,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill34) then
		if (HaveMagic(UHonPheAnh) < nSkill34) then
			AddMagic(UHonPheAnh,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill35) then
		if (HaveMagic(UHonPheAnh) < nSkill35) then
			AddMagic(UHonPheAnh,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill36) then
		if (HaveMagic(UHonPheAnh) < nSkill36) then
			AddMagic(UHonPheAnh,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill37) then
		if (HaveMagic(UHonPheAnh) < nSkill37) then
			AddMagic(UHonPheAnh,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill38) then
		if (HaveMagic(UHonPheAnh) < nSkill38) then
			AddMagic(UHonPheAnh,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill39) then
		if (HaveMagic(UHonPheAnh) < nSkill39) then
			AddMagic(UHonPheAnh,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_UHonPheAnh) == nSkill40) then
		if (HaveMagic(UHonPheAnh) < nSkill40) then
			AddMagic(UHonPheAnh,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
----------------------------------------------------------------------Nga My KiÕm---------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem()
	if (GetTask(TSK_KiemHoaVanTinh) <= nSkill20) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill20) then
			AddMagic(KiemHoaVanTinh,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill21) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill21) then
			AddMagic(KiemHoaVanTinh,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill22) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill22) then
			AddMagic(KiemHoaVanTinh,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill23) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill23) then
			AddMagic(KiemHoaVanTinh,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill24) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill24) then
			AddMagic(KiemHoaVanTinh,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill25) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill25) then
			AddMagic(KiemHoaVanTinh,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill26) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill26) then
			AddMagic(KiemHoaVanTinh,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill27) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill27) then
			AddMagic(KiemHoaVanTinh,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill28) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill28) then
			AddMagic(KiemHoaVanTinh,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill29) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill29) then
			AddMagic(KiemHoaVanTinh,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill30) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill30) then
			AddMagic(KiemHoaVanTinh,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill31) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill31) then
			AddMagic(KiemHoaVanTinh,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill32) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill32) then
			AddMagic(KiemHoaVanTinh,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill33) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill33) then
			AddMagic(KiemHoaVanTinh,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill34) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill34) then
			AddMagic(KiemHoaVanTinh,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill35) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill35) then
			AddMagic(KiemHoaVanTinh,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill36) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill36) then
			AddMagic(KiemHoaVanTinh,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill37) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill37) then
			AddMagic(KiemHoaVanTinh,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill38) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill38) then
			AddMagic(KiemHoaVanTinh,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill39) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill39) then
			AddMagic(KiemHoaVanTinh,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemHoaVanTinh) == nSkill40) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill40) then
			AddMagic(KiemHoaVanTinh,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
--------------------------------------------------------------------Nga My Ch­ëng--------------------------------------------------------------------------------------------------------------------------------
function NgaMyChuong()
	if (GetTask(TSK_BangVuLacTinh) <= nSkill20) then
		if (HaveMagic(BangVuLacTinh) < nSkill20) then
			AddMagic(BangVuLacTinh,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill21) then
		if (HaveMagic(BangVuLacTinh) < nSkill21) then
			AddMagic(BangVuLacTinh,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill22) then
		if (HaveMagic(BangVuLacTinh) < nSkill22) then
			AddMagic(BangVuLacTinh,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill23) then
		if (HaveMagic(BangVuLacTinh) < nSkill23) then
			AddMagic(BangVuLacTinh,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill24) then
		if (HaveMagic(BangVuLacTinh) < nSkill24) then
			AddMagic(BangVuLacTinh,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill25) then
		if (HaveMagic(BangVuLacTinh) < nSkill25) then
			AddMagic(BangVuLacTinh,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill26) then
		if (HaveMagic(BangVuLacTinh) < nSkill26) then
			AddMagic(BangVuLacTinh,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill27) then
		if (HaveMagic(BangVuLacTinh) < nSkill27) then
			AddMagic(BangVuLacTinh,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill28) then
		if (HaveMagic(BangVuLacTinh) < nSkill28) then
			AddMagic(BangVuLacTinh,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill29) then
		if (HaveMagic(BangVuLacTinh) < nSkill29) then
			AddMagic(BangVuLacTinh,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill30) then
		if (HaveMagic(BangVuLacTinh) < nSkill30) then
			AddMagic(BangVuLacTinh,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill31) then
		if (HaveMagic(BangVuLacTinh) < nSkill31) then
			AddMagic(BangVuLacTinh,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill32) then
		if (HaveMagic(BangVuLacTinh) < nSkill32) then
			AddMagic(BangVuLacTinh,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill33) then
		if (HaveMagic(BangVuLacTinh) < nSkill33) then
			AddMagic(BangVuLacTinh,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill34) then
		if (HaveMagic(BangVuLacTinh) < nSkill34) then
			AddMagic(BangVuLacTinh,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill35) then
		if (HaveMagic(BangVuLacTinh) < nSkill35) then
			AddMagic(BangVuLacTinh,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill36) then
		if (HaveMagic(BangVuLacTinh) < nSkill36) then
			AddMagic(BangVuLacTinh,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill37) then
		if (HaveMagic(BangVuLacTinh) < nSkill37) then
			AddMagic(BangVuLacTinh,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill38) then
		if (HaveMagic(BangVuLacTinh) < nSkill38) then
			AddMagic(BangVuLacTinh,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill39) then
		if (HaveMagic(BangVuLacTinh) < nSkill39) then
			AddMagic(BangVuLacTinh,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangVuLacTinh) == nSkill40) then
		if (HaveMagic(BangVuLacTinh) < nSkill40) then
			AddMagic(BangVuLacTinh,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
----------------------------------------------------------------------------Thóy Yªn §ao----------------------------------------------------------------------------------------------------------------
function ThuyYenDao()
	if (GetTask(TSK_BangTuocHoatKy) <= nSkill20) then
		if (HaveMagic(BangTuocHoatKy) < nSkill20) then
			AddMagic(BangTuocHoatKy,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill21) then
		if (HaveMagic(BangTuocHoatKy) < nSkill21) then
			AddMagic(BangTuocHoatKy,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill22) then
		if (HaveMagic(BangTuocHoatKy) < nSkill22) then
			AddMagic(BangTuocHoatKy,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill23) then
		if (HaveMagic(BangTuocHoatKy) < nSkill23) then
			AddMagic(BangTuocHoatKy,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill24) then
		if (HaveMagic(BangTuocHoatKy) < nSkill24) then
			AddMagic(BangTuocHoatKy,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill25) then
		if (HaveMagic(BangTuocHoatKy) < nSkill25) then
			AddMagic(BangTuocHoatKy,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill26) then
		if (HaveMagic(BangTuocHoatKy) < nSkill26) then
			AddMagic(BangTuocHoatKy,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill27) then
		if (HaveMagic(BangTuocHoatKy) < nSkill27) then
			AddMagic(BangTuocHoatKy,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill28) then
		if (HaveMagic(BangTuocHoatKy) < nSkill28) then
			AddMagic(BangTuocHoatKy,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill29) then
		if (HaveMagic(BangTuocHoatKy) < nSkill29) then
			AddMagic(BangTuocHoatKy,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill30) then
		if (HaveMagic(BangTuocHoatKy) < nSkill30) then
			AddMagic(BangTuocHoatKy,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill31) then
		if (HaveMagic(BangTuocHoatKy) < nSkill31) then
			AddMagic(BangTuocHoatKy,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill32) then
		if (HaveMagic(BangTuocHoatKy) < nSkill32) then
			AddMagic(BangTuocHoatKy,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill33) then
		if (HaveMagic(BangTuocHoatKy) < nSkill33) then
			AddMagic(BangTuocHoatKy,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill34) then
		if (HaveMagic(BangTuocHoatKy) < nSkill34) then
			AddMagic(BangTuocHoatKy,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill35) then
		if (HaveMagic(BangTuocHoatKy) < nSkill35) then
			AddMagic(BangTuocHoatKy,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill36) then
		if (HaveMagic(BangTuocHoatKy) < nSkill36) then
			AddMagic(BangTuocHoatKy,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill37) then
		if (HaveMagic(BangTuocHoatKy) < nSkill37) then
			AddMagic(BangTuocHoatKy,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill38) then
		if (HaveMagic(BangTuocHoatKy) < nSkill38) then
			AddMagic(BangTuocHoatKy,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill39) then
		if (HaveMagic(BangTuocHoatKy) < nSkill39) then
			AddMagic(BangTuocHoatKy,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_BangTuocHoatKy) == nSkill40) then
		if (HaveMagic(BangTuocHoatKy) < nSkill40) then
			AddMagic(BangTuocHoatKy,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
-------------------------------------------------------------------------Thóy Yªn Song §ao-------------------------------------------------------------------------------------------------------------------
function ThuyYenNoi()
	if (GetTask(TSK_ThuyAnhManTu) <= nSkill20) then
		if (HaveMagic(ThuyAnhManTu) < nSkill20) then
			AddMagic(ThuyAnhManTu,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill21) then
		if (HaveMagic(ThuyAnhManTu) < nSkill21) then
			AddMagic(ThuyAnhManTu,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill22) then
		if (HaveMagic(ThuyAnhManTu) < nSkill22) then
			AddMagic(ThuyAnhManTu,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill23) then
		if (HaveMagic(ThuyAnhManTu) < nSkill23) then
			AddMagic(ThuyAnhManTu,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill24) then
		if (HaveMagic(ThuyAnhManTu) < nSkill24) then
			AddMagic(ThuyAnhManTu,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill25) then
		if (HaveMagic(ThuyAnhManTu) < nSkill25) then
			AddMagic(ThuyAnhManTu,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill26) then
		if (HaveMagic(ThuyAnhManTu) < nSkill26) then
			AddMagic(ThuyAnhManTu,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill27) then
		if (HaveMagic(ThuyAnhManTu) < nSkill27) then
			AddMagic(ThuyAnhManTu,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill28) then
		if (HaveMagic(ThuyAnhManTu) < nSkill28) then
			AddMagic(ThuyAnhManTu,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill29) then
		if (HaveMagic(ThuyAnhManTu) < nSkill29) then
			AddMagic(ThuyAnhManTu,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill30) then
		if (HaveMagic(ThuyAnhManTu) < nSkill30) then
			AddMagic(ThuyAnhManTu,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill31) then
		if (HaveMagic(ThuyAnhManTu) < nSkill31) then
			AddMagic(ThuyAnhManTu,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill32) then
		if (HaveMagic(ThuyAnhManTu) < nSkill32) then
			AddMagic(ThuyAnhManTu,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill33) then
		if (HaveMagic(ThuyAnhManTu) < nSkill33) then
			AddMagic(ThuyAnhManTu,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill34) then
		if (HaveMagic(ThuyAnhManTu) < nSkill34) then
			AddMagic(ThuyAnhManTu,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill35) then
		if (HaveMagic(ThuyAnhManTu) < nSkill35) then
			AddMagic(ThuyAnhManTu,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill36) then
		if (HaveMagic(ThuyAnhManTu) < nSkill36) then
			AddMagic(ThuyAnhManTu,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill37) then
		if (HaveMagic(ThuyAnhManTu) < nSkill37) then
			AddMagic(ThuyAnhManTu,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill38) then
		if (HaveMagic(ThuyAnhManTu) < nSkill38) then
			AddMagic(ThuyAnhManTu,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill39) then
		if (HaveMagic(ThuyAnhManTu) < nSkill39) then
			AddMagic(ThuyAnhManTu,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThuyAnhManTu) == nSkill40) then
		if (HaveMagic(ThuyAnhManTu) < nSkill40) then
			AddMagic(ThuyAnhManTu,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
------------------------------------------------------------------C¸i Bang Ch­ëng--------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen()
	if (GetTask(TSK_ThoiThangLucLong) <= nSkill20) then
		if (HaveMagic(ThoiThangLucLong) < nSkill20) then
			AddMagic(ThoiThangLucLong,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill21) then
		if (HaveMagic(ThoiThangLucLong) < nSkill21) then
			AddMagic(ThoiThangLucLong,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill22) then
		if (HaveMagic(ThoiThangLucLong) < nSkill22) then
			AddMagic(ThoiThangLucLong,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill23) then
		if (HaveMagic(ThoiThangLucLong) < nSkill23) then
			AddMagic(ThoiThangLucLong,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill24) then
		if (HaveMagic(ThoiThangLucLong) < nSkill24) then
			AddMagic(ThoiThangLucLong,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill25) then
		if (HaveMagic(ThoiThangLucLong) < nSkill25) then
			AddMagic(ThoiThangLucLong,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill26) then
		if (HaveMagic(ThoiThangLucLong) < nSkill26) then
			AddMagic(ThoiThangLucLong,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill27) then
		if (HaveMagic(ThoiThangLucLong) < nSkill27) then
			AddMagic(ThoiThangLucLong,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill28) then
		if (HaveMagic(ThoiThangLucLong) < nSkill28) then
			AddMagic(ThoiThangLucLong,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill29) then
		if (HaveMagic(ThoiThangLucLong) < nSkill29) then
			AddMagic(ThoiThangLucLong,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill30) then
		if (HaveMagic(ThoiThangLucLong) < nSkill30) then
			AddMagic(ThoiThangLucLong,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill31) then
		if (HaveMagic(ThoiThangLucLong) < nSkill31) then
			AddMagic(ThoiThangLucLong,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill32) then
		if (HaveMagic(ThoiThangLucLong) < nSkill32) then
			AddMagic(ThoiThangLucLong,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill33) then
		if (HaveMagic(ThoiThangLucLong) < nSkill33) then
			AddMagic(ThoiThangLucLong,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill34) then
		if (HaveMagic(ThoiThangLucLong) < nSkill34) then
			AddMagic(ThoiThangLucLong,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill35) then
		if (HaveMagic(ThoiThangLucLong) < nSkill35) then
			AddMagic(ThoiThangLucLong,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill36) then
		if (HaveMagic(ThoiThangLucLong) < nSkill36) then
			AddMagic(ThoiThangLucLong,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill37) then
		if (HaveMagic(ThoiThangLucLong) < nSkill37) then
			AddMagic(ThoiThangLucLong,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill38) then
		if (HaveMagic(ThoiThangLucLong) < nSkill38) then
			AddMagic(ThoiThangLucLong,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill39) then
		if (HaveMagic(ThoiThangLucLong) < nSkill39) then
			AddMagic(ThoiThangLucLong,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThoiThangLucLong) == nSkill40) then
		if (HaveMagic(ThoiThangLucLong) < nSkill40) then
			AddMagic(ThoiThangLucLong,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
--------------------------------------------------------------------------C¸i Bang Bæng------------------------------------------------------------------------------------------------------------------------
function CaiBangCon()
	if (GetTask(TSK_BongHuynhLuocDia) <= nSkill20) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill20) then
			AddMagic(BongHuynhLuocDia,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill21) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill21) then
			AddMagic(BongHuynhLuocDia,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill22) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill22) then
			AddMagic(BongHuynhLuocDia,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill23) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill23) then
			AddMagic(BongHuynhLuocDia,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill24) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill24) then
			AddMagic(BongHuynhLuocDia,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill25) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill25) then
			AddMagic(BongHuynhLuocDia,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill26) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill26) then
			AddMagic(BongHuynhLuocDia,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill27) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill27) then
			AddMagic(BongHuynhLuocDia,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill28) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill28) then
			AddMagic(BongHuynhLuocDia,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill29) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill29) then
			AddMagic(BongHuynhLuocDia,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill30) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill30) then
			AddMagic(BongHuynhLuocDia,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill31) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill31) then
			AddMagic(BongHuynhLuocDia,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill32) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill32) then
			AddMagic(BongHuynhLuocDia,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill33) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill33) then
			AddMagic(BongHuynhLuocDia,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill34) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill34) then
			AddMagic(BongHuynhLuocDia,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill35) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill35) then
			AddMagic(BongHuynhLuocDia,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill36) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill36) then
			AddMagic(BongHuynhLuocDia,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill37) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill37) then
			AddMagic(BongHuynhLuocDia,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill38) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill38) then
			AddMagic(BongHuynhLuocDia,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill39) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill39) then
			AddMagic(BongHuynhLuocDia,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_BongHuynhLuocDia) == nSkill40) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill40) then
			AddMagic(BongHuynhLuocDia,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
---------------------------------------------------------------------Thiªn NhÉn KÝch---------------------------------------------------------------------------------------------------------------------
function ThienNhanKich()
	if (GetTask(TSK_GiangHaiNoLan) <= nSkill20) then
		if (HaveMagic(GiangHaiNoLan) < nSkill20) then
			AddMagic(GiangHaiNoLan,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill21) then
		if (HaveMagic(GiangHaiNoLan) < nSkill21) then
			AddMagic(GiangHaiNoLan,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill22) then
		if (HaveMagic(GiangHaiNoLan) < nSkill22) then
			AddMagic(GiangHaiNoLan,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill23) then
		if (HaveMagic(GiangHaiNoLan) < nSkill23) then
			AddMagic(GiangHaiNoLan,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill24) then
		if (HaveMagic(GiangHaiNoLan) < nSkill24) then
			AddMagic(GiangHaiNoLan,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill25) then
		if (HaveMagic(GiangHaiNoLan) < nSkill25) then
			AddMagic(GiangHaiNoLan,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill26) then
		if (HaveMagic(GiangHaiNoLan) < nSkill26) then
			AddMagic(GiangHaiNoLan,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill27) then
		if (HaveMagic(GiangHaiNoLan) < nSkill27) then
			AddMagic(GiangHaiNoLan,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill28) then
		if (HaveMagic(GiangHaiNoLan) < nSkill28) then
			AddMagic(GiangHaiNoLan,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill29) then
		if (HaveMagic(GiangHaiNoLan) < nSkill29) then
			AddMagic(GiangHaiNoLan,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill30) then
		if (HaveMagic(GiangHaiNoLan) < nSkill30) then
			AddMagic(GiangHaiNoLan,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill31) then
		if (HaveMagic(GiangHaiNoLan) < nSkill31) then
			AddMagic(GiangHaiNoLan,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill32) then
		if (HaveMagic(GiangHaiNoLan) < nSkill32) then
			AddMagic(GiangHaiNoLan,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill33) then
		if (HaveMagic(GiangHaiNoLan) < nSkill33) then
			AddMagic(GiangHaiNoLan,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill34) then
		if (HaveMagic(GiangHaiNoLan) < nSkill34) then
			AddMagic(GiangHaiNoLan,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill35) then
		if (HaveMagic(GiangHaiNoLan) < nSkill35) then
			AddMagic(GiangHaiNoLan,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill36) then
		if (HaveMagic(GiangHaiNoLan) < nSkill36) then
			AddMagic(GiangHaiNoLan,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill37) then
		if (HaveMagic(GiangHaiNoLan) < nSkill37) then
			AddMagic(GiangHaiNoLan,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill38) then
		if (HaveMagic(GiangHaiNoLan) < nSkill38) then
			AddMagic(GiangHaiNoLan,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill39) then
		if (HaveMagic(GiangHaiNoLan) < nSkill39) then
			AddMagic(GiangHaiNoLan,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_GiangHaiNoLan) == nSkill40) then
		if (HaveMagic(GiangHaiNoLan) < nSkill40) then
			AddMagic(GiangHaiNoLan,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
--------------------------------------------------------------------Thiªn NhÉn Gi¸o------------------------------------------------------------------------------------------------------------------------------
function ThienNhanDao()
	if (GetTask(TSK_TatHoaLieuNguyen) <= nSkill20) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill20) then
			AddMagic(TatHoaLieuNguyen,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill21) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill21) then
			AddMagic(TatHoaLieuNguyen,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill22) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill22) then
			AddMagic(TatHoaLieuNguyen,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill23) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill23) then
			AddMagic(TatHoaLieuNguyen,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill24) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill24) then
			AddMagic(TatHoaLieuNguyen,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill25) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill25) then
			AddMagic(TatHoaLieuNguyen,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill26) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill26) then
			AddMagic(TatHoaLieuNguyen,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill27) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill27) then
			AddMagic(TatHoaLieuNguyen,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill28) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill28) then
			AddMagic(TatHoaLieuNguyen,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill29) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill29) then
			AddMagic(TatHoaLieuNguyen,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill30) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill30) then
			AddMagic(TatHoaLieuNguyen,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill31) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill31) then
			AddMagic(TatHoaLieuNguyen,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill32) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill32) then
			AddMagic(TatHoaLieuNguyen,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill33) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill33) then
			AddMagic(TatHoaLieuNguyen,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill34) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill34) then
			AddMagic(TatHoaLieuNguyen,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill35) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill35) then
			AddMagic(TatHoaLieuNguyen,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill36) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill36) then
			AddMagic(TatHoaLieuNguyen,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill37) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill37) then
			AddMagic(TatHoaLieuNguyen,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill38) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill38) then
			AddMagic(TatHoaLieuNguyen,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill39) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill39) then
			AddMagic(TatHoaLieuNguyen,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_TatHoaLieuNguyen) == nSkill40) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill40) then
			AddMagic(TatHoaLieuNguyen,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
---------------------------------------------------------------------------Vâ §ang QuyÒn-------------------------------------------------------------------------------------------------------------------
function VoDangQuyen()
	if (GetTask(TSK_TaoHoaThaiThanh) <= nSkill20) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill20) then
			AddMagic(TaoHoaThaiThanh,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill21) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill21) then
			AddMagic(TaoHoaThaiThanh,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill22) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill22) then
			AddMagic(TaoHoaThaiThanh,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill23) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill23) then
			AddMagic(TaoHoaThaiThanh,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill24) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill24) then
			AddMagic(TaoHoaThaiThanh,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill25) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill25) then
			AddMagic(TaoHoaThaiThanh,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill26) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill26) then
			AddMagic(TaoHoaThaiThanh,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill27) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill27) then
			AddMagic(TaoHoaThaiThanh,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill28) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill28) then
			AddMagic(TaoHoaThaiThanh,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill29) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill29) then
			AddMagic(TaoHoaThaiThanh,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill30) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill30) then
			AddMagic(TaoHoaThaiThanh,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill31) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill31) then
			AddMagic(TaoHoaThaiThanh,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill32) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill32) then
			AddMagic(TaoHoaThaiThanh,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill33) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill33) then
			AddMagic(TaoHoaThaiThanh,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill34) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill34) then
			AddMagic(TaoHoaThaiThanh,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill35) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill35) then
			AddMagic(TaoHoaThaiThanh,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill36) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill36) then
			AddMagic(TaoHoaThaiThanh,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill37) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill37) then
			AddMagic(TaoHoaThaiThanh,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill38) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill38) then
			AddMagic(TaoHoaThaiThanh,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill39) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill39) then
			AddMagic(TaoHoaThaiThanh,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_TaoHoaThaiThanh) == nSkill40) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill40) then
			AddMagic(TaoHoaThaiThanh,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
---------------------------------------------------------------------------------Vâ §ang KiÕm-------------------------------------------------------------------------------------------------------------
function VoDangKiem()
	if (GetTask(TSK_KiemThuyTinhHa) <= nSkill20) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill20) then
			AddMagic(KiemThuyTinhHa,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill21) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill21) then
			AddMagic(KiemThuyTinhHa,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill22) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill22) then
			AddMagic(KiemThuyTinhHa,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill23) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill23) then
			AddMagic(KiemThuyTinhHa,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill24) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill24) then
			AddMagic(KiemThuyTinhHa,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill25) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill25) then
			AddMagic(KiemThuyTinhHa,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill26) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill26) then
			AddMagic(KiemThuyTinhHa,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill27) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill27) then
			AddMagic(KiemThuyTinhHa,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill28) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill28) then
			AddMagic(KiemThuyTinhHa,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill29) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill29) then
			AddMagic(KiemThuyTinhHa,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill30) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill30) then
			AddMagic(KiemThuyTinhHa,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill31) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill31) then
			AddMagic(KiemThuyTinhHa,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill32) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill32) then
			AddMagic(KiemThuyTinhHa,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill33) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill33) then
			AddMagic(KiemThuyTinhHa,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill34) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill34) then
			AddMagic(KiemThuyTinhHa,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill35) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill35) then
			AddMagic(KiemThuyTinhHa,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill36) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill36) then
			AddMagic(KiemThuyTinhHa,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill37) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill37) then
			AddMagic(KiemThuyTinhHa,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill38) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill38) then
			AddMagic(KiemThuyTinhHa,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill39) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill39) then
			AddMagic(KiemThuyTinhHa,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_KiemThuyTinhHa) == nSkill40) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill40) then
			AddMagic(KiemThuyTinhHa,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
----------------------------------------------------------------------------------------C«n L«n §ao--------------------------------------------------------------------------------------------
function ConLonDao()
	if (GetTask(TSK_CuuThienCuongPhong) <= nSkill20) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill20) then
			AddMagic(CuuThienCuongPhong,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill21) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill21) then
			AddMagic(CuuThienCuongPhong,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill22) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill22) then
			AddMagic(CuuThienCuongPhong,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill23) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill23) then
			AddMagic(CuuThienCuongPhong,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill24) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill24) then
			AddMagic(CuuThienCuongPhong,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill25) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill25) then
			AddMagic(CuuThienCuongPhong,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill26) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill26) then
			AddMagic(CuuThienCuongPhong,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill27) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill27) then
			AddMagic(CuuThienCuongPhong,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill28) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill28) then
			AddMagic(CuuThienCuongPhong,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill29) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill29) then
			AddMagic(CuuThienCuongPhong,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill30) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill30) then
			AddMagic(CuuThienCuongPhong,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill31) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill31) then
			AddMagic(CuuThienCuongPhong,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill32) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill32) then
			AddMagic(CuuThienCuongPhong,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill33) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill33) then
			AddMagic(CuuThienCuongPhong,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill34) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill34) then
			AddMagic(CuuThienCuongPhong,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill35) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill35) then
			AddMagic(CuuThienCuongPhong,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill36) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill36) then
			AddMagic(CuuThienCuongPhong,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill37) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill37) then
			AddMagic(CuuThienCuongPhong,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill38) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill38) then
			AddMagic(CuuThienCuongPhong,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill39) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill39) then
			AddMagic(CuuThienCuongPhong,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_CuuThienCuongPhong) == nSkill40) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill40) then
			AddMagic(CuuThienCuongPhong,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
-----------------------------------------------------------------------C«n L«n KiÕm----------------------------------------------------------------------------------------------------------------------
function ConLonKiem()
	if (GetTask(TSK_ThienLoiChanNhac) <= nSkill20) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill20) then
			AddMagic(ThienLoiChanNhac,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill21) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill21) then
			AddMagic(ThienLoiChanNhac,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill22) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill22) then
			AddMagic(ThienLoiChanNhac,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill23) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill23) then
			AddMagic(ThienLoiChanNhac,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill24) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill24) then
			AddMagic(ThienLoiChanNhac,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill25) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill25) then
			AddMagic(ThienLoiChanNhac,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill26) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill26) then
			AddMagic(ThienLoiChanNhac,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill27) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill27) then
			AddMagic(ThienLoiChanNhac,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill28) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill28) then
			AddMagic(ThienLoiChanNhac,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill29) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill29) then
			AddMagic(ThienLoiChanNhac,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill30) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill30) then
			AddMagic(ThienLoiChanNhac,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill31) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill31) then
			AddMagic(ThienLoiChanNhac,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill32) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill32) then
			AddMagic(ThienLoiChanNhac,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill33) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill33) then
			AddMagic(ThienLoiChanNhac,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill34) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill34) then
			AddMagic(ThienLoiChanNhac,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill35) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill35) then
			AddMagic(ThienLoiChanNhac,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill36) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill36) then
			AddMagic(ThienLoiChanNhac,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill37) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill37) then
			AddMagic(ThienLoiChanNhac,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill38) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill38) then
			AddMagic(ThienLoiChanNhac,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill39) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill39) then
			AddMagic(ThienLoiChanNhac,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThienLoiChanNhac) == nSkill40) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill40) then
			AddMagic(ThienLoiChanNhac,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
------------------------------------------------------------------------Hoa S¬n KiÕm---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem()
	if (GetTask(TSK_DocCoCuuKiem) <= nSkill20) then
		if (HaveMagic(DocCoCuuKiem) < nSkill20) then
			AddMagic(DocCoCuuKiem,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill21) then
		if (HaveMagic(DocCoCuuKiem) < nSkill21) then
			AddMagic(DocCoCuuKiem,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill22) then
		if (HaveMagic(DocCoCuuKiem) < nSkill22) then
			AddMagic(DocCoCuuKiem,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill23) then
		if (HaveMagic(DocCoCuuKiem) < nSkill23) then
			AddMagic(DocCoCuuKiem,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill24) then
		if (HaveMagic(DocCoCuuKiem) < nSkill24) then
			AddMagic(DocCoCuuKiem,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill25) then
		if (HaveMagic(DocCoCuuKiem) < nSkill25) then
			AddMagic(DocCoCuuKiem,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill26) then
		if (HaveMagic(DocCoCuuKiem) < nSkill26) then
			AddMagic(DocCoCuuKiem,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill27) then
		if (HaveMagic(DocCoCuuKiem) < nSkill27) then
			AddMagic(DocCoCuuKiem,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill28) then
		if (HaveMagic(DocCoCuuKiem) < nSkill28) then
			AddMagic(DocCoCuuKiem,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill29) then
		if (HaveMagic(DocCoCuuKiem) < nSkill29) then
			AddMagic(DocCoCuuKiem,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill30) then
		if (HaveMagic(DocCoCuuKiem) < nSkill30) then
			AddMagic(DocCoCuuKiem,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill31) then
		if (HaveMagic(DocCoCuuKiem) < nSkill31) then
			AddMagic(DocCoCuuKiem,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill32) then
		if (HaveMagic(DocCoCuuKiem) < nSkill32) then
			AddMagic(DocCoCuuKiem,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill33) then
		if (HaveMagic(DocCoCuuKiem) < nSkill33) then
			AddMagic(DocCoCuuKiem,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill34) then
		if (HaveMagic(DocCoCuuKiem) < nSkill34) then
			AddMagic(DocCoCuuKiem,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill35) then
		if (HaveMagic(DocCoCuuKiem) < nSkill35) then
			AddMagic(DocCoCuuKiem,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill36) then
		if (HaveMagic(DocCoCuuKiem) < nSkill36) then
			AddMagic(DocCoCuuKiem,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill37) then
		if (HaveMagic(DocCoCuuKiem) < nSkill37) then
			AddMagic(DocCoCuuKiem,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill38) then
		if (HaveMagic(DocCoCuuKiem) < nSkill38) then
			AddMagic(DocCoCuuKiem,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill39) then
		if (HaveMagic(DocCoCuuKiem) < nSkill39) then
			AddMagic(DocCoCuuKiem,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_DocCoCuuKiem) == nSkill40) then
		if (HaveMagic(DocCoCuuKiem) < nSkill40) then
			AddMagic(DocCoCuuKiem,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
-------------------------------------------------------------------------Hoa S¬n KhÝ-------------------------------------------------------------------------------------------------------------------
function HoaSonKhi()
	if (GetTask(TSK_ThanQuangToanNhieu) <= nSkill20) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill20) then
			AddMagic(ThanQuangToanNhieu,nSkill20); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill20.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill20.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill21) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill21) then
			AddMagic(ThanQuangToanNhieu,nSkill21); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill22) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill22) then
			AddMagic(ThanQuangToanNhieu,nSkill22); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill23) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill23) then
			AddMagic(ThanQuangToanNhieu,nSkill23); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill24) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill24) then
			AddMagic(ThanQuangToanNhieu,nSkill24); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill25) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill25) then
			AddMagic(ThanQuangToanNhieu,nSkill25); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill26) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill26) then
			AddMagic(ThanQuangToanNhieu,nSkill26); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill27) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill27) then
			AddMagic(ThanQuangToanNhieu,nSkill27); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill28) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill28) then
			AddMagic(ThanQuangToanNhieu,nSkill28); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill29) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill29) then
			AddMagic(ThanQuangToanNhieu,nSkill29); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill30) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill30) then
			AddMagic(ThanQuangToanNhieu,nSkill30); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill31) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill31) then
			AddMagic(ThanQuangToanNhieu,nSkill31); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill31.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill32) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill32) then
			AddMagic(ThanQuangToanNhieu,nSkill32); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill32.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill33) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill33) then
			AddMagic(ThanQuangToanNhieu,nSkill33); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill33.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill34) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill34) then
			AddMagic(ThanQuangToanNhieu,nSkill34); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill34.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill35) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill35) then
			AddMagic(ThanQuangToanNhieu,nSkill35); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill35.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill36) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill36) then
			AddMagic(ThanQuangToanNhieu,nSkill36); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill36.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill37) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill37) then
			AddMagic(ThanQuangToanNhieu,nSkill37); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill37.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill38) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill38) then
			AddMagic(ThanQuangToanNhieu,nSkill38); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill38.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill39) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill39) then
			AddMagic(ThanQuangToanNhieu,nSkill39); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill39.."<color> Råi") 
		end
	elseif (GetTask(TSK_ThanQuangToanNhieu) == nSkill40) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill40) then
			AddMagic(ThanQuangToanNhieu,nSkill40); ConsumeEquiproomItem(1,6,1,4344,-1)
			Msg2Player("N©ng CÊp Thµnh C«ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> §¹t CÊp <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill40.."<color> Råi") 
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
	