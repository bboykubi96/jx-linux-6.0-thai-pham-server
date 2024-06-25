IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
--------------------------------------------------------------------------
nSkill20 = 20; nSkill21 = 21; nSkill22 = 22; nSkill23 = 23; nSkill24 = 24; nSkill25 = 25; nSkill26 = 26; nSkill27 = 27; nSkill28 = 28; nSkill29 = 29; nSkill30 = 30;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
----------------------------------------------------------------------------------------
TSK_DaiLucKimCangChuong = SachKyNang150_21; TSK_ViDaHienXu = SachKyNang150_21; TSK_TamGioiQuyThien	= SachKyNang150_21
TSK_HaoHungTram = SachKyNang150_21; TSK_TungHoanhBatPhuong = SachKyNang150_21; TSK_BaVuongTamKim = SachKyNang150_21
TSK_KiemHoaVanTinh = SachKyNang150_21; TSK_BangVuLacTinh = SachKyNang150_21
TSK_BangTuocHoatKy = SachKyNang150_21; TSK_ThuyAnhManTu = SachKyNang150_21
TSK_HinhTieuCotLap = SachKyNang150_21; TSK_UHonPheAnh = SachKyNang150_21
TSK_VoAnhXuyen = SachKyNang150_21; TSK_ThietLienTuSat = SachKyNang150_21; TSK_CanKhonNhatTrich = SachKyNang150_21
TSK_ThoiThangLucLong = SachKyNang150_21; TSK_BongHuynhLuocDia = SachKyNang150_21
TSK_GiangHaiNoLan = SachKyNang150_21; TSK_TatHoaLieuNguyen = SachKyNang150_21
TSK_TaoHoaThaiThanh = SachKyNang150_21; TSK_KiemThuyTinhHa = SachKyNang150_21
TSK_CuuThienCuongPhong = SachKyNang150_21; TSK_ThienLoiChanNhac = SachKyNang150_21
TSK_DocCoCuuKiem = SachKyNang150_21; TSK_ThanQuangToanNhieu = SachKyNang150_21
-----------------------------------------------------------------------------------
function main(nItemIdx)
local G,D,P,nLevel = GetItemProp(nItemIdx)
	if (G ~= 6) then
		return 1
	end

	--Ky Nang 21
	if (P == 4369) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_21","Vi §µ HiÕn Xö/ThieuLamCon_21","Tam Giíi Quy ThiÒn/ThieuLamDao_21","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_21","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_21","B¸ V­¬ng T¹m Kim/ThienVuongThuong_21","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_21","ThiÕt Liªn Tø S¸t/DMTuTien_21","Cµn Kh«n NhÊt TrÞch/DMTieu_21","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_21","U Hån PhÖ ¶nh/NguDocDao_21","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_21","B¨ng Vò L¹c Tinh/NgaMyChuong_21","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_21","Thñy Anh Man Tó/ThuyYenNoi_21","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_21","Bæng Huýnh L­îc §Þa/CaiBangCon_21","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_21","TËt Háa LiÖu Nguyªn/ThienNhanDao_21","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_21","KiÕm Thïy Tinh Hµ/VoDangKiem_21","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_21","Thiªn L«i ChÊn Nh¹c/ConLonKiem_21","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_21","ThÇn Quang Toµn NhiÔu/HoaSonKhi_21","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 22
	if (P == 4370) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_22","Vi §µ HiÕn Xö/ThieuLamCon_22","Tam Giíi Quy ThiÒn/ThieuLamDao_22","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_22","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_22","B¸ V­¬ng T¹m Kim/ThienVuongThuong_22","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_22","ThiÕt Liªn Tø S¸t/DMTuTien_22","Cµn Kh«n NhÊt TrÞch/DMTieu_22","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_22","U Hån PhÖ ¶nh/NguDocDao_22","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_22","B¨ng Vò L¹c Tinh/NgaMyChuong_22","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_22","Thñy Anh Man Tó/ThuyYenNoi_22","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_22","Bæng Huýnh L­îc §Þa/CaiBangCon_22","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_22","TËt Háa LiÖu Nguyªn/ThienNhanDao_22","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_22","KiÕm Thïy Tinh Hµ/VoDangKiem_22","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_22","Thiªn L«i ChÊn Nh¹c/ConLonKiem_22","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_22","ThÇn Quang Toµn NhiÔu/HoaSonKhi_22","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 23
	if (P == 4371) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_23","Vi §µ HiÕn Xö/ThieuLamCon_23","Tam Giíi Quy ThiÒn/ThieuLamDao_23","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_23","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_23","B¸ V­¬ng T¹m Kim/ThienVuongThuong_23","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_23","ThiÕt Liªn Tø S¸t/DMTuTien_23","Cµn Kh«n NhÊt TrÞch/DMTieu_23","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_23","U Hån PhÖ ¶nh/NguDocDao_23","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_23","B¨ng Vò L¹c Tinh/NgaMyChuong_23","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_23","Thñy Anh Man Tó/ThuyYenNoi_23","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_23","Bæng Huýnh L­îc §Þa/CaiBangCon_23","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_23","TËt Háa LiÖu Nguyªn/ThienNhanDao_23","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_23","KiÕm Thïy Tinh Hµ/VoDangKiem_23","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_23","Thiªn L«i ChÊn Nh¹c/ConLonKiem_23","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_23","ThÇn Quang Toµn NhiÔu/HoaSonKhi_23","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 24
	if (P == 4372) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_24","Vi §µ HiÕn Xö/ThieuLamCon_24","Tam Giíi Quy ThiÒn/ThieuLamDao_24","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_24","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_24","B¸ V­¬ng T¹m Kim/ThienVuongThuong_24","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_24","ThiÕt Liªn Tø S¸t/DMTuTien_24","Cµn Kh«n NhÊt TrÞch/DMTieu_24","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_24","U Hån PhÖ ¶nh/NguDocDao_24","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_24","B¨ng Vò L¹c Tinh/NgaMyChuong_24","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_24","Thñy Anh Man Tó/ThuyYenNoi_24","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_24","Bæng Huýnh L­îc §Þa/CaiBangCon_24","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_24","TËt Háa LiÖu Nguyªn/ThienNhanDao_24","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_24","KiÕm Thïy Tinh Hµ/VoDangKiem_24","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_24","Thiªn L«i ChÊn Nh¹c/ConLonKiem_24","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_24","ThÇn Quang Toµn NhiÔu/HoaSonKhi_24","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 25
	if (P == 4373) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_25","Vi §µ HiÕn Xö/ThieuLamCon_25","Tam Giíi Quy ThiÒn/ThieuLamDao_25","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_25","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_25","B¸ V­¬ng T¹m Kim/ThienVuongThuong_25","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_25","ThiÕt Liªn Tø S¸t/DMTuTien_25","Cµn Kh«n NhÊt TrÞch/DMTieu_25","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_25","U Hån PhÖ ¶nh/NguDocDao_25","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_25","B¨ng Vò L¹c Tinh/NgaMyChuong_25","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_25","Thñy Anh Man Tó/ThuyYenNoi_25","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_25","Bæng Huýnh L­îc §Þa/CaiBangCon_25","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_25","TËt Háa LiÖu Nguyªn/ThienNhanDao_25","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_25","KiÕm Thïy Tinh Hµ/VoDangKiem_25","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_25","Thiªn L«i ChÊn Nh¹c/ConLonKiem_25","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_25","ThÇn Quang Toµn NhiÔu/HoaSonKhi_25","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 26
	if (P == 4374) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_26","Vi §µ HiÕn Xö/ThieuLamCon_26","Tam Giíi Quy ThiÒn/ThieuLamDao_26","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_26","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_26","B¸ V­¬ng T¹m Kim/ThienVuongThuong_26","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_26","ThiÕt Liªn Tø S¸t/DMTuTien_26","Cµn Kh«n NhÊt TrÞch/DMTieu_26","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_26","U Hån PhÖ ¶nh/NguDocDao_26","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_26","B¨ng Vò L¹c Tinh/NgaMyChuong_26","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_26","Thñy Anh Man Tó/ThuyYenNoi_26","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_26","Bæng Huýnh L­îc §Þa/CaiBangCon_26","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_26","TËt Háa LiÖu Nguyªn/ThienNhanDao_26","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_26","KiÕm Thïy Tinh Hµ/VoDangKiem_26","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_26","Thiªn L«i ChÊn Nh¹c/ConLonKiem_26","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_26","ThÇn Quang Toµn NhiÔu/HoaSonKhi_26","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 27
	if (P == 4375) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_27","Vi §µ HiÕn Xö/ThieuLamCon_27","Tam Giíi Quy ThiÒn/ThieuLamDao_27","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_27","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_27","B¸ V­¬ng T¹m Kim/ThienVuongThuong_27","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_27","ThiÕt Liªn Tø S¸t/DMTuTien_27","Cµn Kh«n NhÊt TrÞch/DMTieu_27","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_27","U Hån PhÖ ¶nh/NguDocDao_27","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_27","B¨ng Vò L¹c Tinh/NgaMyChuong_27","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_27","Thñy Anh Man Tó/ThuyYenNoi_27","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_27","Bæng Huýnh L­îc §Þa/CaiBangCon_27","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_27","TËt Háa LiÖu Nguyªn/ThienNhanDao_27","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_27","KiÕm Thïy Tinh Hµ/VoDangKiem_27","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_27","Thiªn L«i ChÊn Nh¹c/ConLonKiem_27","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_27","ThÇn Quang Toµn NhiÔu/HoaSonKhi_27","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 28
	if (P == 4376) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_28","Vi §µ HiÕn Xö/ThieuLamCon_28","Tam Giíi Quy ThiÒn/ThieuLamDao_28","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_28","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_28","B¸ V­¬ng T¹m Kim/ThienVuongThuong_28","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_28","ThiÕt Liªn Tø S¸t/DMTuTien_28","Cµn Kh«n NhÊt TrÞch/DMTieu_28","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_28","U Hån PhÖ ¶nh/NguDocDao_28","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_28","B¨ng Vò L¹c Tinh/NgaMyChuong_28","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_28","Thñy Anh Man Tó/ThuyYenNoi_28","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_28","Bæng Huýnh L­îc §Þa/CaiBangCon_28","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_28","TËt Háa LiÖu Nguyªn/ThienNhanDao_28","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_28","KiÕm Thïy Tinh Hµ/VoDangKiem_28","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_28","Thiªn L«i ChÊn Nh¹c/ConLonKiem_28","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_28","ThÇn Quang Toµn NhiÔu/HoaSonKhi_28","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 29
	if (P == 4377) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_29","Vi §µ HiÕn Xö/ThieuLamCon_29","Tam Giíi Quy ThiÒn/ThieuLamDao_29","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_29","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_29","B¸ V­¬ng T¹m Kim/ThienVuongThuong_29","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_29","ThiÕt Liªn Tø S¸t/DMTuTien_29","Cµn Kh«n NhÊt TrÞch/DMTieu_29","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_29","U Hån PhÖ ¶nh/NguDocDao_29","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_29","B¨ng Vò L¹c Tinh/NgaMyChuong_29","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_29","Thñy Anh Man Tó/ThuyYenNoi_29","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_29","Bæng Huýnh L­îc §Þa/CaiBangCon_29","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_29","TËt Háa LiÖu Nguyªn/ThienNhanDao_29","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_29","KiÕm Thïy Tinh Hµ/VoDangKiem_29","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_29","Thiªn L«i ChÊn Nh¹c/ConLonKiem_29","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_29","ThÇn Quang Toµn NhiÔu/HoaSonKhi_29","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 30
	if (P == 4378) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_30","Vi §µ HiÕn Xö/ThieuLamCon_30","Tam Giíi Quy ThiÒn/ThieuLamDao_30","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_30","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_30","B¸ V­¬ng T¹m Kim/ThienVuongThuong_30","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_30","ThiÕt Liªn Tø S¸t/DMTuTien_30","Cµn Kh«n NhÊt TrÞch/DMTieu_30","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_30","U Hån PhÖ ¶nh/NguDocDao_30","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_30","B¨ng Vò L¹c Tinh/NgaMyChuong_30","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_30","Thñy Anh Man Tó/ThuyYenNoi_30","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_30","Bæng Huýnh L­îc §Þa/CaiBangCon_30","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_30","TËt Háa LiÖu Nguyªn/ThienNhanDao_30","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_30","KiÕm Thïy Tinh Hµ/VoDangKiem_30","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_30","Thiªn L«i ChÊn Nh¹c/ConLonKiem_30","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_30","ThÇn Quang Toµn NhiÔu/HoaSonKhi_30","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end
end
------------------------------------------------------------------------------S¸ch Kü N¨ng CÊp 21----------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_21()
	if (HaveMagic(DaiLucKimCangChuong) < nSkill21) then
		AddMagic(DaiLucKimCangChuong,nSkill21) HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function ThieuLamCon_21()
	if (HaveMagic(ViDaHienXu) < nSkill21) then
		AddMagic(ViDaHienXu,nSkill21) HN_SetTaskID(TSK_ViDaHienXu,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function ThieuLamDao_21()
	if (HaveMagic(TamGioiQuyThien) < nSkill21) then
		AddMagic(TamGioiQuyThien,nSkill21) HN_SetTaskID(TSK_TamGioiQuyThien,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_21()
	if (HaveMagic(HaoHungTram) < nSkill21) then
		AddMagic(HaoHungTram,nSkill21) HN_SetTaskID(TSK_HaoHungTram,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function ThienVuongChuy_21()
	if (HaveMagic(TungHoanhBatPhuong) < nSkill21) then
		AddMagic(TungHoanhBatPhuong,nSkill21) HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function ThienVuongThuong_21()
	if (HaveMagic(BaVuongTamKim) < nSkill21) then
		AddMagic(BaVuongTamKim,nSkill21) HN_SetTaskID(TSK_BaVuongTamKim,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_21()
	if (HaveMagic(VoAnhXuyen) < nSkill21) then
		AddMagic(VoAnhXuyen,nSkill21) HN_SetTaskID(TSK_VoAnhXuyen,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function DMTuTien_21()
	if (HaveMagic(ThietLienTuSat) < nSkill21) then
		AddMagic(ThietLienTuSat,nSkill21) HN_SetTaskID(TSK_ThietLienTuSat,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function DMTieu_21()
	if (HaveMagic(CanKhonNhatTrich) < nSkill21) then
		AddMagic(CanKhonNhatTrich,nSkill21) HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_21()
	if (HaveMagic(HinhTieuCotLap) < nSkill21) then
		AddMagic(HinhTieuCotLap,nSkill21) HN_SetTaskID(TSK_HinhTieuCotLap,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function NguDocDao_21()
	if (HaveMagic(UHonPheAnh) < nSkill21) then
		AddMagic(UHonPheAnh,nSkill21) HN_SetTaskID(TSK_UHonPheAnh,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_21()
	if (HaveMagic(KiemHoaVanTinh) < nSkill21) then
		AddMagic(KiemHoaVanTinh,nSkill21) HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function NgaMyChuong_21()
	if (HaveMagic(BangVuLacTinh) < nSkill21) then
		AddMagic(BangVuLacTinh,nSkill21) HN_SetTaskID(TSK_BangVuLacTinh,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_21()
	if (HaveMagic(BangTuocHoatKy) < nSkill21) then
		AddMagic(BangTuocHoatKy,nSkill21) HN_SetTaskID(TSK_BangTuocHoatKy,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function ThuyYenNoi_21()
	if (HaveMagic(ThuyAnhManTu) < nSkill21) then
		AddMagic(ThuyAnhManTu,nSkill21) HN_SetTaskID(TSK_ThuyAnhManTu,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_21()
	if (HaveMagic(ThoiThangLucLong) < nSkill21) then
		AddMagic(ThoiThangLucLong,nSkill21) HN_SetTaskID(TSK_ThoiThangLucLong,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function CaiBangCon_21()
	if (HaveMagic(BongHuynhLuocDia) < nSkill21) then
		AddMagic(BongHuynhLuocDia,nSkill21) HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_21()
	if (HaveMagic(GiangHaiNoLan) < nSkill21) then
		AddMagic(GiangHaiNoLan,nSkill21) HN_SetTaskID(TSK_GiangHaiNoLan,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function ThienNhanDao_21()
	if (HaveMagic(TatHoaLieuNguyen) < nSkill21) then
		AddMagic(TatHoaLieuNguyen,nSkill21) HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_21()
	if (HaveMagic(TaoHoaThaiThanh) < nSkill21) then
		AddMagic(TaoHoaThaiThanh,nSkill21) HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function VoDangKiem_21()
	if (HaveMagic(KiemThuyTinhHa) < nSkill21) then
		AddMagic(KiemThuyTinhHa,nSkill21) HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_21()
	if (HaveMagic(CuuThienCuongPhong) < nSkill21) then
		AddMagic(CuuThienCuongPhong,nSkill21) HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function ConLonKiem_21()
	if (HaveMagic(ThienLoiChanNhac) < nSkill21) then
		AddMagic(ThienLoiChanNhac,nSkill21) HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_21()
	if (HaveMagic(DocCoCuuKiem) < nSkill21) then
		AddMagic(DocCoCuuKiem,nSkill21) HN_SetTaskID(TSK_DocCoCuuKiem,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function HoaSonKhi_21()
	if (HaveMagic(ThanQuangToanNhieu) < nSkill21) then
		AddMagic(ThanQuangToanNhieu,nSkill21) HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill21) ConsumeEquiproomItem(1,6,1,4369,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill21.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 22-----------------------------------------------------------------------------------------------------
function ThieuLamQuyen_22()
	if (HaveMagic(DaiLucKimCangChuong) < nSkill22) then
		AddMagic(DaiLucKimCangChuong,nSkill22) HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function ThieuLamCon_22()
	if (HaveMagic(ViDaHienXu) < nSkill22) then
		AddMagic(ViDaHienXu,nSkill22) HN_SetTaskID(TSK_ViDaHienXu,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function ThieuLamDao_22()
	if (HaveMagic(TamGioiQuyThien) < nSkill22) then
		AddMagic(TamGioiQuyThien,nSkill22) HN_SetTaskID(TSK_TamGioiQuyThien,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_22()
	if (HaveMagic(HaoHungTram) < nSkill22) then
		AddMagic(HaoHungTram,nSkill22) HN_SetTaskID(TSK_HaoHungTram,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function ThienVuongChuy_22()
	if (HaveMagic(TungHoanhBatPhuong) < nSkill22) then
		AddMagic(TungHoanhBatPhuong,nSkill22) HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function ThienVuongThuong_22()
	if (HaveMagic(BaVuongTamKim) < nSkill22) then
		AddMagic(BaVuongTamKim,nSkill22) HN_SetTaskID(TSK_BaVuongTamKim,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_22()
	if (HaveMagic(VoAnhXuyen) < nSkill22) then
		AddMagic(VoAnhXuyen,nSkill22) HN_SetTaskID(TSK_VoAnhXuyen,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function DMTuTien_22()
	if (HaveMagic(ThietLienTuSat) < nSkill22) then
		AddMagic(ThietLienTuSat,nSkill22) HN_SetTaskID(TSK_ThietLienTuSat,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function DMTieu_22()
	if (HaveMagic(CanKhonNhatTrich) < nSkill22) then
		AddMagic(CanKhonNhatTrich,nSkill22) HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_22()
	if (HaveMagic(HinhTieuCotLap) < nSkill22) then
		AddMagic(HinhTieuCotLap,nSkill22) HN_SetTaskID(TSK_HinhTieuCotLap,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function NguDocDao_22()
	if (HaveMagic(UHonPheAnh) < nSkill22) then
		AddMagic(UHonPheAnh,nSkill22) HN_SetTaskID(TSK_UHonPheAnh,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_22()
	if (HaveMagic(KiemHoaVanTinh) < nSkill22) then
		AddMagic(KiemHoaVanTinh,nSkill22) HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function NgaMyChuong_22()
	if (HaveMagic(BangVuLacTinh) < nSkill22) then
		AddMagic(BangVuLacTinh,nSkill22) HN_SetTaskID(TSK_BangVuLacTinh,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_22()
	if (HaveMagic(BangTuocHoatKy) < nSkill22) then
		AddMagic(BangTuocHoatKy,nSkill22) HN_SetTaskID(TSK_BangTuocHoatKy,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function ThuyYenNoi_22()
	if (HaveMagic(ThuyAnhManTu) < nSkill22) then
		AddMagic(ThuyAnhManTu,nSkill22) HN_SetTaskID(TSK_ThuyAnhManTu,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_22()
	if (HaveMagic(ThoiThangLucLong) < nSkill22) then
		AddMagic(ThoiThangLucLong,nSkill22) HN_SetTaskID(TSK_ThoiThangLucLong,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function CaiBangCon_22()
	if (HaveMagic(BongHuynhLuocDia) < nSkill22) then
		AddMagic(BongHuynhLuocDia,nSkill22) HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_22()
	if (HaveMagic(GiangHaiNoLan) < nSkill22) then
		AddMagic(GiangHaiNoLan,nSkill22) HN_SetTaskID(TSK_GiangHaiNoLan,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function ThienNhanDao_22()
	if (HaveMagic(TatHoaLieuNguyen) < nSkill22) then
		AddMagic(TatHoaLieuNguyen,nSkill22) HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_22()
	if (HaveMagic(TaoHoaThaiThanh) < nSkill22) then
		AddMagic(TaoHoaThaiThanh,nSkill22) HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function VoDangKiem_22()
	if (HaveMagic(KiemThuyTinhHa) < nSkill22) then
		AddMagic(KiemThuyTinhHa,nSkill22) HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_22()
	if (HaveMagic(CuuThienCuongPhong) < nSkill22) then
		AddMagic(CuuThienCuongPhong,nSkill22) HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function ConLonKiem_22()
	if (HaveMagic(ThienLoiChanNhac) < nSkill22) then
		AddMagic(ThienLoiChanNhac,nSkill22) HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_22()
	if (HaveMagic(DocCoCuuKiem) < nSkill22) then
		AddMagic(DocCoCuuKiem,nSkill22) HN_SetTaskID(TSK_DocCoCuuKiem,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end

function HoaSonKhi_22()
	if (HaveMagic(ThanQuangToanNhieu) < nSkill22) then
		AddMagic(ThanQuangToanNhieu,nSkill22) HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill22) ConsumeEquiproomItem(1,6,1,4370,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill22.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill22.."<color> Råi")
	end
end
-------------------------------------------------------------------------S¸ch Kü N¨ng 23-----------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_23()
	if (GetTask(TSK_DaiLucKimCangChuong) < nSkill23) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill23) then
			AddMagic(DaiLucKimCangChuong,nSkill23) HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function ThieuLamCon_23()
	if (GetTask(TSK_ViDaHienXu) < nSkill23) then
		if (HaveMagic(ViDaHienXu) < nSkill23) then
			AddMagic(ViDaHienXu,nSkill23) HN_SetTaskID(TSK_ViDaHienXu,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function ThieuLamDao_23()
	if (GetTask(TSK_TamGioiQuyThien) < nSkill23) then
		if (HaveMagic(TamGioiQuyThien) < nSkill23) then
			AddMagic(TamGioiQuyThien,nSkill23) HN_SetTaskID(TSK_TamGioiQuyThien,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_23()
	if (GetTask(TSK_HaoHungTram) < nSkill23) then
		if (HaveMagic(HaoHungTram) < nSkill23) then
			AddMagic(HaoHungTram,nSkill23) HN_SetTaskID(TSK_HaoHungTram,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function ThienVuongChuy_23()
	if (GetTask(TSK_TungHoanhBatPhuong) < nSkill23) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill23) then
			AddMagic(TungHoanhBatPhuong,nSkill23) HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function ThienVuongThuong_23()
	if (GetTask(TSK_BaVuongTamKim) < nSkill23) then
		if (HaveMagic(BaVuongTamKim) < nSkill23) then
			AddMagic(BaVuongTamKim,nSkill23) HN_SetTaskID(TSK_BaVuongTamKim,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_23()
	if (GetTask(TSK_VoAnhXuyen) < nSkill23) then
		if (HaveMagic(VoAnhXuyen) < nSkill23) then
			AddMagic(VoAnhXuyen,nSkill23) HN_SetTaskID(TSK_VoAnhXuyen,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function DMTuTien_23()
	if (GetTask(TSK_ThietLienTuSat) < nSkill23) then
		if (HaveMagic(ThietLienTuSat) < nSkill23) then
			AddMagic(ThietLienTuSat,nSkill23) HN_SetTaskID(TSK_ThietLienTuSat,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function DMTieu_23()
	if (GetTask(TSK_CanKhonNhatTrich) < nSkill23) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill23) then
			AddMagic(CanKhonNhatTrich,nSkill23) HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_23()
	if (GetTask(TSK_HinhTieuCotLap) < nSkill23) then
		if (HaveMagic(HinhTieuCotLap) < nSkill23) then
			AddMagic(HinhTieuCotLap,nSkill23) HN_SetTaskID(TSK_HinhTieuCotLap,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function NguDocDao_23()
	if (GetTask(TSK_UHonPheAnh) < nSkill23) then
		if (HaveMagic(UHonPheAnh) < nSkill23) then
			AddMagic(UHonPheAnh,nSkill23) HN_SetTaskID(TSK_UHonPheAnh,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_23()
	if (GetTask(TSK_KiemHoaVanTinh) < nSkill23) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill23) then
			AddMagic(KiemHoaVanTinh,nSkill23) HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function NgaMyChuong_23()
	if (GetTask(TSK_BangVuLacTinh) < nSkill23) then
		if (HaveMagic(BangVuLacTinh) < nSkill23) then
			AddMagic(BangVuLacTinh,nSkill23) HN_SetTaskID(TSK_BangVuLacTinh,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_23()
	if (GetTask(TSK_BangTuocHoatKy) < nSkill23) then
		if (HaveMagic(BangTuocHoatKy) < nSkill23) then
			AddMagic(BangTuocHoatKy,nSkill23) HN_SetTaskID(TSK_BangTuocHoatKy,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function ThuyYenNoi_23()
	if (GetTask(TSK_ThuyAnhManTu) < nSkill23) then
		if (HaveMagic(ThuyAnhManTu) < nSkill23) then
			AddMagic(ThuyAnhManTu,nSkill23) HN_SetTaskID(TSK_ThuyAnhManTu,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_23()
	if (GetTask(TSK_ThoiThangLucLong) < nSkill23) then
		if (HaveMagic(ThoiThangLucLong) < nSkill23) then
			AddMagic(ThoiThangLucLong,nSkill23) HN_SetTaskID(TSK_ThoiThangLucLong,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function CaiBangCon_23()
	if (GetTask(TSK_BongHuynhLuocDia) < nSkill23) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill23) then
			AddMagic(BongHuynhLuocDia,nSkill23) HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_23()
	if (GetTask(TSK_GiangHaiNoLan) < nSkill23) then
		if (HaveMagic(GiangHaiNoLan) < nSkill23) then
			AddMagic(GiangHaiNoLan,nSkill23) HN_SetTaskID(TSK_GiangHaiNoLan,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function ThienNhanDao_23()
	if (GetTask(TSK_TatHoaLieuNguyen) < nSkill23) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill23) then
			AddMagic(TatHoaLieuNguyen,nSkill23) HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_23()
	if (GetTask(TSK_TaoHoaThaiThanh) < nSkill23) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill23) then
			AddMagic(TaoHoaThaiThanh,nSkill23) HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function VoDangKiem_23()
	if (GetTask(TSK_KiemThuyTinhHa) < nSkill23) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill23) then
			AddMagic(KiemThuyTinhHa,nSkill23) HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_23()
	if (GetTask(TSK_CuuThienCuongPhong) < nSkill23) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill23) then
			AddMagic(CuuThienCuongPhong,nSkill23) HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function ConLonKiem_23()
	if (GetTask(TSK_ThienLoiChanNhac) < nSkill23) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill23) then
			AddMagic(ThienLoiChanNhac,nSkill23) HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_23()
	if (GetTask(TSK_DocCoCuuKiem) < nSkill23) then
		if (HaveMagic(DocCoCuuKiem) < nSkill23) then
			AddMagic(DocCoCuuKiem,nSkill23) HN_SetTaskID(TSK_DocCoCuuKiem,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end

function HoaSonKhi_23()
	if (GetTask(TSK_ThanQuangToanNhieu) < nSkill23) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill23) then
			AddMagic(ThanQuangToanNhieu,nSkill23) HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill23.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill23.."<color> Råi")
	end
end
-------------------------------------------------------------------------S¸ch Kü N¨ng 24-----------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_24()
	if (GetTask(TSK_DaiLucKimCangChuong) < nSkill24) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill24) then
			AddMagic(DaiLucKimCangChuong,nSkill24) HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function ThieuLamCon_24()
	if (GetTask(TSK_ViDaHienXu) < nSkill24) then
		if (HaveMagic(ViDaHienXu) < nSkill24) then
			AddMagic(ViDaHienXu,nSkill24) HN_SetTaskID(TSK_ViDaHienXu,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function ThieuLamDao_24()
	if (GetTask(TSK_TamGioiQuyThien) < nSkill24) then
		if (HaveMagic(TamGioiQuyThien) < nSkill24) then
			AddMagic(TamGioiQuyThien,nSkill24) HN_SetTaskID(TSK_TamGioiQuyThien,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_24()
	if (GetTask(TSK_HaoHungTram) < nSkill24) then
		if (HaveMagic(HaoHungTram) < nSkill24) then
			AddMagic(HaoHungTram,nSkill24) HN_SetTaskID(TSK_HaoHungTram,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function ThienVuongChuy_24()
	if (GetTask(TSK_TungHoanhBatPhuong) < nSkill24) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill24) then
			AddMagic(TungHoanhBatPhuong,nSkill24) HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function ThienVuongThuong_24()
	if (GetTask(TSK_BaVuongTamKim) < nSkill24) then
		if (HaveMagic(BaVuongTamKim) < nSkill24) then
			AddMagic(BaVuongTamKim,nSkill24) HN_SetTaskID(TSK_BaVuongTamKim,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_24()
	if (GetTask(TSK_VoAnhXuyen) < nSkill24) then
		if (HaveMagic(VoAnhXuyen) < nSkill24) then
			AddMagic(VoAnhXuyen,nSkill24) HN_SetTaskID(TSK_VoAnhXuyen,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function DMTuTien_24()
	if (GetTask(TSK_ThietLienTuSat) < nSkill24) then
		if (HaveMagic(ThietLienTuSat) < nSkill24) then
			AddMagic(ThietLienTuSat,nSkill24) HN_SetTaskID(TSK_ThietLienTuSat,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function DMTieu_24()
	if (GetTask(TSK_CanKhonNhatTrich) < nSkill24) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill24) then
			AddMagic(CanKhonNhatTrich,nSkill24) HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_24()
	if (GetTask(TSK_HinhTieuCotLap) < nSkill24) then
		if (HaveMagic(HinhTieuCotLap) < nSkill24) then
			AddMagic(HinhTieuCotLap,nSkill24) HN_SetTaskID(TSK_HinhTieuCotLap,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function NguDocDao_24()
	if (GetTask(TSK_UHonPheAnh) < nSkill24) then
		if (HaveMagic(UHonPheAnh) < nSkill24) then
			AddMagic(UHonPheAnh,nSkill24) HN_SetTaskID(TSK_UHonPheAnh,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_24()
	if (GetTask(TSK_KiemHoaVanTinh) < nSkill24) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill24) then
			AddMagic(KiemHoaVanTinh,nSkill24) HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function NgaMyChuong_24()
	if (GetTask(TSK_BangVuLacTinh) < nSkill24) then
		if (HaveMagic(BangVuLacTinh) < nSkill24) then
			AddMagic(BangVuLacTinh,nSkill24) HN_SetTaskID(TSK_BangVuLacTinh,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_24()
	if (GetTask(TSK_BangTuocHoatKy) < nSkill24) then
		if (HaveMagic(BangTuocHoatKy) < nSkill24) then
			AddMagic(BangTuocHoatKy,nSkill24) HN_SetTaskID(TSK_BangTuocHoatKy,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function ThuyYenNoi_24()
	if (GetTask(TSK_ThuyAnhManTu) < nSkill24) then
		if (HaveMagic(ThuyAnhManTu) < nSkill24) then
			AddMagic(ThuyAnhManTu,nSkill24) HN_SetTaskID(TSK_ThuyAnhManTu,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_24()
	if (GetTask(TSK_ThoiThangLucLong) < nSkill24) then
		if (HaveMagic(ThoiThangLucLong) < nSkill24) then
			AddMagic(ThoiThangLucLong,nSkill24) HN_SetTaskID(TSK_ThoiThangLucLong,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function CaiBangCon_24()
	if (GetTask(TSK_BongHuynhLuocDia) < nSkill24) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill24) then
			AddMagic(BongHuynhLuocDia,nSkill24) HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_24()
	if (GetTask(TSK_GiangHaiNoLan) < nSkill24) then
		if (HaveMagic(GiangHaiNoLan) < nSkill24) then
			AddMagic(GiangHaiNoLan,nSkill24) HN_SetTaskID(TSK_GiangHaiNoLan,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function ThienNhanDao_24()
	if (GetTask(TSK_TatHoaLieuNguyen) < nSkill24) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill24) then
			AddMagic(TatHoaLieuNguyen,nSkill24) HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_24()
	if (GetTask(TSK_TaoHoaThaiThanh) < nSkill24) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill24) then
			AddMagic(TaoHoaThaiThanh,nSkill24) HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function VoDangKiem_24()
	if (GetTask(TSK_KiemThuyTinhHa) < nSkill24) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill24) then
			AddMagic(KiemThuyTinhHa,nSkill24) HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_24()
	if (GetTask(TSK_CuuThienCuongPhong) < nSkill24) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill24) then
			AddMagic(CuuThienCuongPhong,nSkill24) HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function ConLonKiem_24()
	if (GetTask(TSK_ThienLoiChanNhac) < nSkill24) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill24) then
			AddMagic(ThienLoiChanNhac,nSkill24) HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_24()
	if (GetTask(TSK_DocCoCuuKiem) < nSkill24) then
		if (HaveMagic(DocCoCuuKiem) < nSkill24) then
			AddMagic(DocCoCuuKiem,nSkill24) HN_SetTaskID(TSK_DocCoCuuKiem,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end

function HoaSonKhi_24()
	if (GetTask(TSK_ThanQuangToanNhieu) < nSkill24) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill24) then
			AddMagic(ThanQuangToanNhieu,nSkill24) HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill24) ConsumeEquiproomItem(1,6,1,4372,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill24.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill24.."<color> Råi")
	end
end
-------------------------------------------------------------------------S¸ch Kü N¨ng 25-------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_25()
	if (GetTask(TSK_DaiLucKimCangChuong) < nSkill25) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill25) then
			AddMagic(DaiLucKimCangChuong,nSkill25) HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function ThieuLamCon_25()
	if (GetTask(TSK_ViDaHienXu) < nSkill25) then
		if (HaveMagic(ViDaHienXu) < nSkill25) then
			AddMagic(ViDaHienXu,nSkill25) HN_SetTaskID(TSK_ViDaHienXu,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function ThieuLamDao_25()
	if (GetTask(TSK_TamGioiQuyThien) < nSkill25) then
		if (HaveMagic(TamGioiQuyThien) < nSkill25) then
			AddMagic(TamGioiQuyThien,nSkill25) HN_SetTaskID(TSK_TamGioiQuyThien,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_25()
	if (GetTask(TSK_HaoHungTram) < nSkill25) then
		if (HaveMagic(HaoHungTram) < nSkill25) then
			AddMagic(HaoHungTram,nSkill25) HN_SetTaskID(TSK_HaoHungTram,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function ThienVuongChuy_25()
	if (GetTask(TSK_TungHoanhBatPhuong) < nSkill25) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill25) then
			AddMagic(TungHoanhBatPhuong,nSkill25) HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function ThienVuongThuong_25()
	if (GetTask(TSK_BaVuongTamKim) < nSkill25) then
		if (HaveMagic(BaVuongTamKim) < nSkill25) then
			AddMagic(BaVuongTamKim,nSkill25) HN_SetTaskID(TSK_BaVuongTamKim,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_25()
	if (GetTask(TSK_VoAnhXuyen) < nSkill25) then
		if (HaveMagic(VoAnhXuyen) < nSkill25) then
			AddMagic(VoAnhXuyen,nSkill25) HN_SetTaskID(TSK_VoAnhXuyen,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function DMTuTien_25()
	if (GetTask(TSK_ThietLienTuSat) < nSkill25) then
		if (HaveMagic(ThietLienTuSat) < nSkill25) then
			AddMagic(ThietLienTuSat,nSkill25) HN_SetTaskID(TSK_ThietLienTuSat,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function DMTieu_25()
	if (GetTask(TSK_CanKhonNhatTrich) < nSkill25) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill25) then
			AddMagic(CanKhonNhatTrich,nSkill25) HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_25()
	if (GetTask(TSK_HinhTieuCotLap) < nSkill25) then
		if (HaveMagic(HinhTieuCotLap) < nSkill25) then
			AddMagic(HinhTieuCotLap,nSkill25) HN_SetTaskID(TSK_HinhTieuCotLap,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function NguDocDao_25()
	if (GetTask(TSK_UHonPheAnh) < nSkill25) then
		if (HaveMagic(UHonPheAnh) < nSkill25) then
			AddMagic(UHonPheAnh,nSkill25) HN_SetTaskID(TSK_UHonPheAnh,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_25()
	if (GetTask(TSK_KiemHoaVanTinh) < nSkill25) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill25) then
			AddMagic(KiemHoaVanTinh,nSkill25) HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function NgaMyChuong_25()
	if (GetTask(TSK_BangVuLacTinh) < nSkill25) then
		if (HaveMagic(BangVuLacTinh) < nSkill25) then
			AddMagic(BangVuLacTinh,nSkill25) HN_SetTaskID(TSK_BangVuLacTinh,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_25()
	if (GetTask(TSK_BangTuocHoatKy) < nSkill25) then
		if (HaveMagic(BangTuocHoatKy) < nSkill25) then
			AddMagic(BangTuocHoatKy,nSkill25) HN_SetTaskID(TSK_BangTuocHoatKy,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function ThuyYenNoi_25()
	if (GetTask(TSK_ThuyAnhManTu) < nSkill25) then
		if (HaveMagic(ThuyAnhManTu) < nSkill25) then
			AddMagic(ThuyAnhManTu,nSkill25) HN_SetTaskID(TSK_ThuyAnhManTu,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_25()
	if (GetTask(TSK_ThoiThangLucLong) < nSkill25) then
		if (HaveMagic(ThoiThangLucLong) < nSkill25) then
			AddMagic(ThoiThangLucLong,nSkill25) HN_SetTaskID(TSK_ThoiThangLucLong,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function CaiBangCon_25()
	if (GetTask(TSK_BongHuynhLuocDia) < nSkill25) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill25) then
			AddMagic(BongHuynhLuocDia,nSkill25) HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_25()
	if (GetTask(TSK_GiangHaiNoLan) < nSkill25) then
		if (HaveMagic(GiangHaiNoLan) < nSkill25) then
			AddMagic(GiangHaiNoLan,nSkill25) HN_SetTaskID(TSK_GiangHaiNoLan,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function ThienNhanDao_25()
	if (GetTask(TSK_TatHoaLieuNguyen) < nSkill25) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill25) then
			AddMagic(TatHoaLieuNguyen,nSkill25) HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_25()
	if (GetTask(TSK_TaoHoaThaiThanh) < nSkill25) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill25) then
			AddMagic(TaoHoaThaiThanh,nSkill25) HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function VoDangKiem_25()
	if (GetTask(TSK_KiemThuyTinhHa) < nSkill25) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill25) then
			AddMagic(KiemThuyTinhHa,nSkill25) HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_25()
	if (GetTask(TSK_CuuThienCuongPhong) < nSkill25) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill25) then
			AddMagic(CuuThienCuongPhong,nSkill25) HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function ConLonKiem_25()
	if (GetTask(TSK_ThienLoiChanNhac) < nSkill25) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill25) then
			AddMagic(ThienLoiChanNhac,nSkill25) HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_25()
	if (GetTask(TSK_DocCoCuuKiem) < nSkill25) then
		if (HaveMagic(DocCoCuuKiem) < nSkill25) then
			AddMagic(DocCoCuuKiem,nSkill25) HN_SetTaskID(TSK_DocCoCuuKiem,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end

function HoaSonKhi_25()
	if (GetTask(TSK_ThanQuangToanNhieu) < nSkill25) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill25) then
			AddMagic(ThanQuangToanNhieu,nSkill25) HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill25) ConsumeEquiproomItem(1,6,1,4373,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill25.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill25.."<color> Råi")
	end
end
-------------------------------------------------------------------------S¸ch Kü N¨ng 26-------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_26()
	if (HaveMagic(DaiLucKimCangChuong) < nSkill26) then
		AddMagic(DaiLucKimCangChuong,nSkill26) HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function ThieuLamCon_26()
	if (HaveMagic(ViDaHienXu) < nSkill26) then
		AddMagic(ViDaHienXu,nSkill26) HN_SetTaskID(TSK_ViDaHienXu,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function ThieuLamDao_26()
	if (HaveMagic(TamGioiQuyThien) < nSkill26) then
		AddMagic(TamGioiQuyThien,nSkill26) HN_SetTaskID(TSK_TamGioiQuyThien,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_26()
	if (HaveMagic(HaoHungTram) < nSkill26) then
		AddMagic(HaoHungTram,nSkill26) HN_SetTaskID(TSK_HaoHungTram,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function ThienVuongChuy_26()
	if (HaveMagic(TungHoanhBatPhuong) < nSkill26) then
		AddMagic(TungHoanhBatPhuong,nSkill26) HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function ThienVuongThuong_26()
	if (HaveMagic(BaVuongTamKim) < nSkill26) then
		AddMagic(BaVuongTamKim,nSkill26) HN_SetTaskID(TSK_BaVuongTamKim,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_26()
	if (HaveMagic(VoAnhXuyen) < nSkill26) then
		AddMagic(VoAnhXuyen,nSkill26) HN_SetTaskID(TSK_VoAnhXuyen,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function DMTuTien_26()
	if (HaveMagic(ThietLienTuSat) < nSkill26) then
		AddMagic(ThietLienTuSat,nSkill26) HN_SetTaskID(TSK_ThietLienTuSat,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function DMTieu_26()
	if (HaveMagic(CanKhonNhatTrich) < nSkill26) then
		AddMagic(CanKhonNhatTrich,nSkill26) HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_26()
	if (HaveMagic(HinhTieuCotLap) < nSkill26) then
		AddMagic(HinhTieuCotLap,nSkill26) HN_SetTaskID(TSK_HinhTieuCotLap,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function NguDocDao_26()
	if (HaveMagic(UHonPheAnh) < nSkill26) then
		AddMagic(UHonPheAnh,nSkill26) HN_SetTaskID(TSK_UHonPheAnh,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_26()
	if (HaveMagic(KiemHoaVanTinh) < nSkill26) then
		AddMagic(KiemHoaVanTinh,nSkill26) HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function NgaMyChuong_26()
	if (HaveMagic(BangVuLacTinh) < nSkill26) then
		AddMagic(BangVuLacTinh,nSkill26) HN_SetTaskID(TSK_BangVuLacTinh,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_26()
	if (HaveMagic(BangTuocHoatKy) < nSkill26) then
		AddMagic(BangTuocHoatKy,nSkill26) HN_SetTaskID(TSK_BangTuocHoatKy,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function ThuyYenNoi_26()
	if (HaveMagic(ThuyAnhManTu) < nSkill26) then
		AddMagic(ThuyAnhManTu,nSkill26) HN_SetTaskID(TSK_ThuyAnhManTu,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_26()
	if (HaveMagic(ThoiThangLucLong) < nSkill26) then
		AddMagic(ThoiThangLucLong,nSkill26) HN_SetTaskID(TSK_ThoiThangLucLong,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function CaiBangCon_26()
	if (HaveMagic(BongHuynhLuocDia) < nSkill26) then
		AddMagic(BongHuynhLuocDia,nSkill26) HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_26()
	if (HaveMagic(GiangHaiNoLan) < nSkill26) then
		AddMagic(GiangHaiNoLan,nSkill26) HN_SetTaskID(TSK_GiangHaiNoLan,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function ThienNhanDao_26()
	if (HaveMagic(TatHoaLieuNguyen) < nSkill26) then
		AddMagic(TatHoaLieuNguyen,nSkill26) HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_26()
	if (HaveMagic(TaoHoaThaiThanh) < nSkill26) then
		AddMagic(TaoHoaThaiThanh,nSkill26) HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function VoDangKiem_26()
	if (HaveMagic(KiemThuyTinhHa) < nSkill26) then
		AddMagic(KiemThuyTinhHa,nSkill26) HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_26()
	if (HaveMagic(CuuThienCuongPhong) < nSkill26) then
		AddMagic(CuuThienCuongPhong,nSkill26) HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function ConLonKiem_26()
	if (HaveMagic(ThienLoiChanNhac) < nSkill26) then
		AddMagic(ThienLoiChanNhac,nSkill26) HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_26()
	if (HaveMagic(DocCoCuuKiem) < nSkill26) then
		AddMagic(DocCoCuuKiem,nSkill26) HN_SetTaskID(TSK_DocCoCuuKiem,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end

function HoaSonKhi_26()
	if (HaveMagic(ThanQuangToanNhieu) < nSkill26) then
		AddMagic(ThanQuangToanNhieu,nSkill26) HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill26) ConsumeEquiproomItem(1,6,1,4374,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill26.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill26.."<color> Råi")
	end
end
-------------------------------------------------------------------------S¸ch Kü N¨ng 27---------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_27()
	if (GetTask(TSK_DaiLucKimCangChuong) < nSkill27) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill27) then
			AddMagic(DaiLucKimCangChuong,nSkill27) HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function ThieuLamCon_27()
	if (GetTask(TSK_ViDaHienXu) < nSkill27) then
		if (HaveMagic(ViDaHienXu) < nSkill27) then
			AddMagic(ViDaHienXu,nSkill27) HN_SetTaskID(TSK_ViDaHienXu,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function ThieuLamDao_27()
	if (GetTask(TSK_TamGioiQuyThien) < nSkill27) then
		if (HaveMagic(TamGioiQuyThien) < nSkill27) then
			AddMagic(TamGioiQuyThien,nSkill27) HN_SetTaskID(TSK_TamGioiQuyThien,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_27()
	if (GetTask(TSK_HaoHungTram) < nSkill27) then
		if (HaveMagic(HaoHungTram) < nSkill27) then
			AddMagic(HaoHungTram,nSkill27) HN_SetTaskID(TSK_HaoHungTram,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function ThienVuongChuy_27()
	if (GetTask(TSK_TungHoanhBatPhuong) < nSkill27) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill27) then
			AddMagic(TungHoanhBatPhuong,nSkill27) HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function ThienVuongThuong_27()
	if (GetTask(TSK_BaVuongTamKim) < nSkill27) then
		if (HaveMagic(BaVuongTamKim) < nSkill27) then
			AddMagic(BaVuongTamKim,nSkill27) HN_SetTaskID(TSK_BaVuongTamKim,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_27()
	if (GetTask(TSK_VoAnhXuyen) < nSkill27) then
		if (HaveMagic(VoAnhXuyen) < nSkill27) then
			AddMagic(VoAnhXuyen,nSkill27) HN_SetTaskID(TSK_VoAnhXuyen,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function DMTuTien_27()
	if (GetTask(TSK_ThietLienTuSat) < nSkill27) then
		if (HaveMagic(ThietLienTuSat) < nSkill27) then
			AddMagic(ThietLienTuSat,nSkill27) HN_SetTaskID(TSK_ThietLienTuSat,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function DMTieu_27()
	if (GetTask(TSK_CanKhonNhatTrich) < nSkill27) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill27) then
			AddMagic(CanKhonNhatTrich,nSkill27) HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_27()
	if (GetTask(TSK_HinhTieuCotLap) < nSkill27) then
		if (HaveMagic(HinhTieuCotLap) < nSkill27) then
			AddMagic(HinhTieuCotLap,nSkill27) HN_SetTaskID(TSK_HinhTieuCotLap,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function NguDocDao_27()
	if (GetTask(TSK_UHonPheAnh) < nSkill27) then
		if (HaveMagic(UHonPheAnh) < nSkill27) then
			AddMagic(UHonPheAnh,nSkill27) HN_SetTaskID(TSK_UHonPheAnh,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_27()
	if (GetTask(TSK_KiemHoaVanTinh) < nSkill27) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill27) then
			AddMagic(KiemHoaVanTinh,nSkill27) HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function NgaMyChuong_27()
	if (GetTask(TSK_BangVuLacTinh) < nSkill27) then
		if (HaveMagic(BangVuLacTinh) < nSkill27) then
			AddMagic(BangVuLacTinh,nSkill27) HN_SetTaskID(TSK_BangVuLacTinh,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_27()
	if (GetTask(TSK_BangTuocHoatKy) < nSkill27) then
		if (HaveMagic(BangTuocHoatKy) < nSkill27) then
			AddMagic(BangTuocHoatKy,nSkill27) HN_SetTaskID(TSK_BangTuocHoatKy,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function ThuyYenNoi_27()
	if (GetTask(TSK_ThuyAnhManTu) < nSkill27) then
		if (HaveMagic(ThuyAnhManTu) < nSkill27) then
			AddMagic(ThuyAnhManTu,nSkill27) HN_SetTaskID(TSK_ThuyAnhManTu,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_27()
	if (GetTask(TSK_ThoiThangLucLong) < nSkill27) then
		if (HaveMagic(ThoiThangLucLong) < nSkill27) then
			AddMagic(ThoiThangLucLong,nSkill27) HN_SetTaskID(TSK_ThoiThangLucLong,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function CaiBangCon_27()
	if (GetTask(TSK_BongHuynhLuocDia) < nSkill27) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill27) then
			AddMagic(BongHuynhLuocDia,nSkill27) HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_27()
	if (GetTask(TSK_GiangHaiNoLan) < nSkill27) then
		if (HaveMagic(GiangHaiNoLan) < nSkill27) then
			AddMagic(GiangHaiNoLan,nSkill27) HN_SetTaskID(TSK_GiangHaiNoLan,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function ThienNhanDao_27()
	if (GetTask(TSK_TatHoaLieuNguyen) < nSkill27) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill27) then
			AddMagic(TatHoaLieuNguyen,nSkill27) HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_27()
	if (GetTask(TSK_TaoHoaThaiThanh) < nSkill27) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill27) then
			AddMagic(TaoHoaThaiThanh,nSkill27) HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function VoDangKiem_27()
	if (GetTask(TSK_KiemThuyTinhHa) < nSkill27) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill27) then
			AddMagic(KiemThuyTinhHa,nSkill27) HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_27()
	if (GetTask(TSK_CuuThienCuongPhong) < nSkill27) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill27) then
			AddMagic(CuuThienCuongPhong,nSkill27) HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function ConLonKiem_27()
	if (GetTask(TSK_ThienLoiChanNhac) < nSkill27) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill27) then
			AddMagic(ThienLoiChanNhac,nSkill27) HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_27()
	if (GetTask(TSK_DocCoCuuKiem) < nSkill27) then
		if (HaveMagic(DocCoCuuKiem) < nSkill27) then
			AddMagic(DocCoCuuKiem,nSkill27) HN_SetTaskID(TSK_DocCoCuuKiem,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end

function HoaSonKhi_27()
	if (GetTask(TSK_ThanQuangToanNhieu) < nSkill27) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill27) then
			AddMagic(ThanQuangToanNhieu,nSkill27) HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill27) ConsumeEquiproomItem(1,6,1,4375,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill27.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill27.."<color> Råi")
	end
end
-------------------------------------------------------------------------S¸ch Kü N¨ng 28------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_28()
	if (GetTask(TSK_DaiLucKimCangChuong) < nSkill28) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill28) then
			AddMagic(DaiLucKimCangChuong,nSkill28) HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function ThieuLamCon_28()
	if (GetTask(TSK_ViDaHienXu) < nSkill28) then
		if (HaveMagic(ViDaHienXu) < nSkill28) then
			AddMagic(ViDaHienXu,nSkill28) HN_SetTaskID(TSK_ViDaHienXu,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function ThieuLamDao_28()
	if (GetTask(TSK_TamGioiQuyThien) < nSkill28) then
		if (HaveMagic(TamGioiQuyThien) < nSkill28) then
			AddMagic(TamGioiQuyThien,nSkill28) HN_SetTaskID(TSK_TamGioiQuyThien,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_28()
	if (GetTask(TSK_HaoHungTram) < nSkill28) then
		if (HaveMagic(HaoHungTram) < nSkill28) then
			AddMagic(HaoHungTram,nSkill28) HN_SetTaskID(TSK_HaoHungTram,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function ThienVuongChuy_28()
	if (GetTask(TSK_TungHoanhBatPhuong) < nSkill28) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill28) then
			AddMagic(TungHoanhBatPhuong,nSkill28) HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function ThienVuongThuong_28()
	if (GetTask(TSK_BaVuongTamKim) < nSkill28) then
		if (HaveMagic(BaVuongTamKim) < nSkill28) then
			AddMagic(BaVuongTamKim,nSkill28) HN_SetTaskID(TSK_BaVuongTamKim,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_28()
	if (GetTask(TSK_VoAnhXuyen) < nSkill28) then
		if (HaveMagic(VoAnhXuyen) < nSkill28) then
			AddMagic(VoAnhXuyen,nSkill28) HN_SetTaskID(TSK_VoAnhXuyen,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function DMTuTien_28()
	if (GetTask(TSK_ThietLienTuSat) < nSkill28) then
		if (HaveMagic(ThietLienTuSat) < nSkill28) then
			AddMagic(ThietLienTuSat,nSkill28) HN_SetTaskID(TSK_ThietLienTuSat,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function DMTieu_28()
	if (GetTask(TSK_CanKhonNhatTrich) < nSkill28) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill28) then
			AddMagic(CanKhonNhatTrich,nSkill28) HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_28()
	if (GetTask(TSK_HinhTieuCotLap) < nSkill28) then
		if (HaveMagic(HinhTieuCotLap) < nSkill28) then
			AddMagic(HinhTieuCotLap,nSkill28) HN_SetTaskID(TSK_HinhTieuCotLap,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function NguDocDao_28()
	if (GetTask(TSK_UHonPheAnh) < nSkill28) then
		if (HaveMagic(UHonPheAnh) < nSkill28) then
			AddMagic(UHonPheAnh,nSkill28) HN_SetTaskID(TSK_UHonPheAnh,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_28()
	if (GetTask(TSK_KiemHoaVanTinh) < nSkill28) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill28) then
			AddMagic(KiemHoaVanTinh,nSkill28) HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function NgaMyChuong_28()
	if (GetTask(TSK_BangVuLacTinh) < nSkill28) then
		if (HaveMagic(BangVuLacTinh) < nSkill28) then
			AddMagic(BangVuLacTinh,nSkill28) HN_SetTaskID(TSK_BangVuLacTinh,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_28()
	if (GetTask(TSK_BangTuocHoatKy) < nSkill28) then
		if (HaveMagic(BangTuocHoatKy) < nSkill28) then
			AddMagic(BangTuocHoatKy,nSkill28) HN_SetTaskID(TSK_BangTuocHoatKy,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function ThuyYenNoi_28()
	if (GetTask(TSK_ThuyAnhManTu) < nSkill28) then
		if (HaveMagic(ThuyAnhManTu) < nSkill28) then
			AddMagic(ThuyAnhManTu,nSkill28) HN_SetTaskID(TSK_ThuyAnhManTu,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_28()
	if (GetTask(TSK_ThoiThangLucLong) < nSkill28) then
		if (HaveMagic(ThoiThangLucLong) < nSkill28) then
			AddMagic(ThoiThangLucLong,nSkill28) HN_SetTaskID(TSK_ThoiThangLucLong,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function CaiBangCon_28()
	if (GetTask(TSK_BongHuynhLuocDia) < nSkill28) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill28) then
			AddMagic(BongHuynhLuocDia,nSkill28) HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_28()
	if (GetTask(TSK_GiangHaiNoLan) < nSkill28) then
		if (HaveMagic(GiangHaiNoLan) < nSkill28) then
			AddMagic(GiangHaiNoLan,nSkill28) HN_SetTaskID(TSK_GiangHaiNoLan,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function ThienNhanDao_28()
	if (GetTask(TSK_TatHoaLieuNguyen) < nSkill28) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill28) then
			AddMagic(TatHoaLieuNguyen,nSkill28) HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_28()
	if (GetTask(TSK_TaoHoaThaiThanh) < nSkill28) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill28) then
			AddMagic(TaoHoaThaiThanh,nSkill28) HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function VoDangKiem_28()
	if (GetTask(TSK_KiemThuyTinhHa) < nSkill28) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill28) then
			AddMagic(KiemThuyTinhHa,nSkill28) HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_28()
	if (GetTask(TSK_CuuThienCuongPhong) < nSkill28) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill28) then
			AddMagic(CuuThienCuongPhong,nSkill28) HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function ConLonKiem_28()
	if (GetTask(TSK_ThienLoiChanNhac) < nSkill28) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill28) then
			AddMagic(ThienLoiChanNhac,nSkill28) HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_28()
	if (GetTask(TSK_DocCoCuuKiem) < nSkill28) then
		if (HaveMagic(DocCoCuuKiem) < nSkill28) then
			AddMagic(DocCoCuuKiem,nSkill28) HN_SetTaskID(TSK_DocCoCuuKiem,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end

function HoaSonKhi_28()
	if (GetTask(TSK_ThanQuangToanNhieu) < nSkill28) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill28) then
			AddMagic(ThanQuangToanNhieu,nSkill28) HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill28) ConsumeEquiproomItem(1,6,1,4376,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill28.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill28.."<color> Råi")
	end
end
-------------------------------------------------------------------------S¸ch Kü N¨ng 29------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_29()
	if (GetTask(TSK_DaiLucKimCangChuong) < nSkill29) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill29) then
			AddMagic(DaiLucKimCangChuong,nSkill29) HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function ThieuLamCon_29()
	if (GetTask(TSK_ViDaHienXu) < nSkill29) then
		if (HaveMagic(ViDaHienXu) < nSkill29) then
			AddMagic(ViDaHienXu,nSkill29) HN_SetTaskID(TSK_ViDaHienXu,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function ThieuLamDao_29()
	if (GetTask(TSK_TamGioiQuyThien) < nSkill29) then
		if (HaveMagic(TamGioiQuyThien) < nSkill29) then
			AddMagic(TamGioiQuyThien,nSkill29) HN_SetTaskID(TSK_TamGioiQuyThien,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_29()
	if (GetTask(TSK_HaoHungTram) < nSkill29) then
		if (HaveMagic(HaoHungTram) < nSkill29) then
			AddMagic(HaoHungTram,nSkill29) HN_SetTaskID(TSK_HaoHungTram,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function ThienVuongChuy_29()
	if (GetTask(TSK_TungHoanhBatPhuong) < nSkill29) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill29) then
			AddMagic(TungHoanhBatPhuong,nSkill29) HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function ThienVuongThuong_29()
	if (GetTask(TSK_BaVuongTamKim) < nSkill29) then
		if (HaveMagic(BaVuongTamKim) < nSkill29) then
			AddMagic(BaVuongTamKim,nSkill29) HN_SetTaskID(TSK_BaVuongTamKim,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_29()
	if (GetTask(TSK_VoAnhXuyen) < nSkill29) then
		if (HaveMagic(VoAnhXuyen) < nSkill29) then
			AddMagic(VoAnhXuyen,nSkill29) HN_SetTaskID(TSK_VoAnhXuyen,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function DMTuTien_29()
	if (GetTask(TSK_ThietLienTuSat) < nSkill29) then
		if (HaveMagic(ThietLienTuSat) < nSkill29) then
			AddMagic(ThietLienTuSat,nSkill29) HN_SetTaskID(TSK_ThietLienTuSat,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function DMTieu_29()
	if (GetTask(TSK_CanKhonNhatTrich) < nSkill29) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill29) then
			AddMagic(CanKhonNhatTrich,nSkill29) HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_29()
	if (GetTask(TSK_HinhTieuCotLap) < nSkill29) then
		if (HaveMagic(HinhTieuCotLap) < nSkill29) then
			AddMagic(HinhTieuCotLap,nSkill29) HN_SetTaskID(TSK_HinhTieuCotLap,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function NguDocDao_29()
	if (GetTask(TSK_UHonPheAnh) < nSkill29) then
		if (HaveMagic(UHonPheAnh) < nSkill29) then
			AddMagic(UHonPheAnh,nSkill29) HN_SetTaskID(TSK_UHonPheAnh,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_29()
	if (GetTask(TSK_KiemHoaVanTinh) < nSkill29) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill29) then
			AddMagic(KiemHoaVanTinh,nSkill29) HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function NgaMyChuong_29()
	if (GetTask(TSK_BangVuLacTinh) < nSkill29) then
		if (HaveMagic(BangVuLacTinh) < nSkill29) then
			AddMagic(BangVuLacTinh,nSkill29) HN_SetTaskID(TSK_BangVuLacTinh,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_29()
	if (GetTask(TSK_BangTuocHoatKy) < nSkill29) then
		if (HaveMagic(BangTuocHoatKy) < nSkill29) then
			AddMagic(BangTuocHoatKy,nSkill29) HN_SetTaskID(TSK_BangTuocHoatKy,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function ThuyYenNoi_29()
	if (GetTask(TSK_ThuyAnhManTu) < nSkill29) then
		if (HaveMagic(ThuyAnhManTu) < nSkill29) then
			AddMagic(ThuyAnhManTu,nSkill29) HN_SetTaskID(TSK_ThuyAnhManTu,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_29()
	if (GetTask(TSK_ThoiThangLucLong) < nSkill29) then
		if (HaveMagic(ThoiThangLucLong) < nSkill29) then
			AddMagic(ThoiThangLucLong,nSkill29) HN_SetTaskID(TSK_ThoiThangLucLong,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function CaiBangCon_29()
	if (GetTask(TSK_BongHuynhLuocDia) < nSkill29) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill29) then
			AddMagic(BongHuynhLuocDia,nSkill29) HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_29()
	if (GetTask(TSK_GiangHaiNoLan) < nSkill29) then
		if (HaveMagic(GiangHaiNoLan) < nSkill29) then
			AddMagic(GiangHaiNoLan,nSkill29) HN_SetTaskID(TSK_GiangHaiNoLan,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function ThienNhanDao_29()
	if (GetTask(TSK_TatHoaLieuNguyen) < nSkill29) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill29) then
			AddMagic(TatHoaLieuNguyen,nSkill29) HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_29()
	if (GetTask(TSK_TaoHoaThaiThanh) < nSkill29) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill29) then
			AddMagic(TaoHoaThaiThanh,nSkill29) HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function VoDangKiem_29()
	if (GetTask(TSK_KiemThuyTinhHa) < nSkill29) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill29) then
			AddMagic(KiemThuyTinhHa,nSkill29) HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_29()
	if (GetTask(TSK_CuuThienCuongPhong) < nSkill29) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill29) then
			AddMagic(CuuThienCuongPhong,nSkill29) HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function ConLonKiem_29()
	if (GetTask(TSK_ThienLoiChanNhac) < nSkill29) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill29) then
			AddMagic(ThienLoiChanNhac,nSkill29) HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_29()
	if (GetTask(TSK_DocCoCuuKiem) < nSkill29) then
		if (HaveMagic(DocCoCuuKiem) < nSkill29) then
			AddMagic(DocCoCuuKiem,nSkill29) HN_SetTaskID(TSK_DocCoCuuKiem,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end

function HoaSonKhi_29()
	if (GetTask(TSK_ThanQuangToanNhieu) < nSkill29) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill29) then
			AddMagic(ThanQuangToanNhieu,nSkill29) HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill29) ConsumeEquiproomItem(1,6,1,4377,-1)
			Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill29.."<color> Thµnh C«ng")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill29.."<color> Råi")
	end
end
-------------------------------------------------------------------------S¸ch Kü N¨ng 30------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_30()
	if (HaveMagic(DaiLucKimCangChuong) < nSkill30) then
		AddMagic(DaiLucKimCangChuong,nSkill30) HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function ThieuLamCon_30()
	if (HaveMagic(ViDaHienXu) < nSkill30) then
		AddMagic(ViDaHienXu,nSkill30) HN_SetTaskID(TSK_ViDaHienXu,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function ThieuLamDao_30()
	if (HaveMagic(TamGioiQuyThien) < nSkill30) then
		AddMagic(TamGioiQuyThien,nSkill30) HN_SetTaskID(TSK_TamGioiQuyThien,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_30()
	if (HaveMagic(HaoHungTram) < nSkill30) then
		AddMagic(HaoHungTram,nSkill30) HN_SetTaskID(TSK_HaoHungTram,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function ThienVuongChuy_30()
	if (HaveMagic(TungHoanhBatPhuong) < nSkill30) then
		AddMagic(TungHoanhBatPhuong,nSkill30) HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function ThienVuongThuong_30()
	if (HaveMagic(BaVuongTamKim) < nSkill30) then
		AddMagic(BaVuongTamKim,nSkill30) HN_SetTaskID(TSK_BaVuongTamKim,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_30()
	if (HaveMagic(VoAnhXuyen) < nSkill30) then
		AddMagic(VoAnhXuyen,nSkill30) HN_SetTaskID(TSK_VoAnhXuyen,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function DMTuTien_30()
	if (HaveMagic(ThietLienTuSat) < nSkill30) then
		AddMagic(ThietLienTuSat,nSkill30) HN_SetTaskID(TSK_ThietLienTuSat,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function DMTieu_30()
	if (HaveMagic(CanKhonNhatTrich) < nSkill30) then
		AddMagic(CanKhonNhatTrich,nSkill30) HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_30()
	if (HaveMagic(HinhTieuCotLap) < nSkill30) then
		AddMagic(HinhTieuCotLap,nSkill30) HN_SetTaskID(TSK_HinhTieuCotLap,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function NguDocDao_30()
	if (HaveMagic(UHonPheAnh) < nSkill30) then
		AddMagic(UHonPheAnh,nSkill30) HN_SetTaskID(TSK_UHonPheAnh,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_30()
	if (HaveMagic(KiemHoaVanTinh) < nSkill30) then
		AddMagic(KiemHoaVanTinh,nSkill30) HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function NgaMyChuong_30()
	if (HaveMagic(BangVuLacTinh) < nSkill30) then
		AddMagic(BangVuLacTinh,nSkill30) HN_SetTaskID(TSK_BangVuLacTinh,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_30()
	if (HaveMagic(BangTuocHoatKy) < nSkill30) then
		AddMagic(BangTuocHoatKy,nSkill30) HN_SetTaskID(TSK_BangTuocHoatKy,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function ThuyYenNoi_30()
	if (HaveMagic(ThuyAnhManTu) < nSkill30) then
		AddMagic(ThuyAnhManTu,nSkill30) HN_SetTaskID(TSK_ThuyAnhManTu,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_30()
	if (HaveMagic(ThoiThangLucLong) < nSkill30) then
		AddMagic(ThoiThangLucLong,nSkill30) HN_SetTaskID(TSK_ThoiThangLucLong,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function CaiBangCon_30()
	if (HaveMagic(BongHuynhLuocDia) < nSkill30) then
		AddMagic(BongHuynhLuocDia,nSkill30) HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_30()
	if (HaveMagic(GiangHaiNoLan) < nSkill30) then
		AddMagic(GiangHaiNoLan,nSkill30) HN_SetTaskID(TSK_GiangHaiNoLan,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function ThienNhanDao_30()
	if (HaveMagic(TatHoaLieuNguyen) < nSkill30) then
		AddMagic(TatHoaLieuNguyen,nSkill30) HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_30()
	if (HaveMagic(TaoHoaThaiThanh) < nSkill30) then
		AddMagic(TaoHoaThaiThanh,nSkill30) HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function VoDangKiem_30()
	if (HaveMagic(KiemThuyTinhHa) < nSkill30) then
		AddMagic(KiemThuyTinhHa,nSkill30) HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_30()
	if (HaveMagic(CuuThienCuongPhong) < nSkill30) then
		AddMagic(CuuThienCuongPhong,nSkill30) HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function ConLonKiem_30()
	if (HaveMagic(ThienLoiChanNhac) < nSkill30) then
		AddMagic(ThienLoiChanNhac,nSkill30) HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_30()
	if (HaveMagic(DocCoCuuKiem) < nSkill30) then
		AddMagic(DocCoCuuKiem,nSkill30) HN_SetTaskID(TSK_DocCoCuuKiem,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end

function HoaSonKhi_30()
	if (HaveMagic(ThanQuangToanNhieu) < nSkill30) then
		AddMagic(ThanQuangToanNhieu,nSkill30) HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill30) ConsumeEquiproomItem(1,6,1,4378,-1)
		Msg2Player("Chóc Mõng Ng­¬i §· N©ng Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill30.."<color> Thµnh C«ng")
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i §· §¹t CÊp <color=yellow>"..nSkill30.."<color> Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------