IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
--------------------------------------------------------------------------
nSkill20 = 20; nSkill21 = 21; nSkill22 = 22; nSkill23 = 23; nSkill24 = 24; nSkill25 = 25; nSkill26 = 26; nSkill27 = 27; nSkill28 = 28; nSkill29 = 29; nSkill30 = 30;
nSkill31 = 31; nSkill32 = 32; nSkill33 = 33; nSkill34 = 34; nSkill35 = 35; nSkill36 = 36; nSkill37 = 37; nSkill38 = 38; nSkill39 = 39; nSkill40 = 40;
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
	if (P == 4345) then
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
	if (P == 4346) then
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
	if (P == 4347) then
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
	if (P == 4348) then
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
	if (P == 4349) then
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
	if (P == 4350) then
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
	if (P == 4351) then
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
	if (P == 4352) then
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
	if (P == 4353) then
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
	if (P == 4354) then
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

	--Ky Nang 31
	if (P == 4355) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_31","Vi §µ HiÕn Xö/ThieuLamCon_31","Tam Giíi Quy ThiÒn/ThieuLamDao_31","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_31","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_31","B¸ V­¬ng T¹m Kim/ThienVuongThuong_31","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_31","ThiÕt Liªn Tø S¸t/DMTuTien_31","Cµn Kh«n NhÊt TrÞch/DMTieu_31","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_31","U Hån PhÖ ¶nh/NguDocDao_31","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_31","B¨ng Vò L¹c Tinh/NgaMyChuong_31","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_31","Thñy Anh Man Tó/ThuyYenNoi_31","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_31","Bæng Huýnh L­îc §Þa/CaiBangCon_31","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_31","TËt Háa LiÖu Nguyªn/ThienNhanDao_31","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_31","KiÕm Thïy Tinh Hµ/VoDangKiem_31","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_31","Thiªn L«i ChÊn Nh¹c/ConLonKiem_31","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_31","ThÇn Quang Toµn NhiÔu/HoaSonKhi_31","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 32
	if (P == 4356) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_32","Vi §µ HiÕn Xö/ThieuLamCon_32","Tam Giíi Quy ThiÒn/ThieuLamDao_32","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_32","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_32","B¸ V­¬ng T¹m Kim/ThienVuongThuong_32","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_32","ThiÕt Liªn Tø S¸t/DMTuTien_32","Cµn Kh«n NhÊt TrÞch/DMTieu_32","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_32","U Hån PhÖ ¶nh/NguDocDao_32","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_32","B¨ng Vò L¹c Tinh/NgaMyChuong_32","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_32","Thñy Anh Man Tó/ThuyYenNoi_32","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_32","Bæng Huýnh L­îc §Þa/CaiBangCon_32","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_32","TËt Háa LiÖu Nguyªn/ThienNhanDao_32","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_32","KiÕm Thïy Tinh Hµ/VoDangKiem_32","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_32","Thiªn L«i ChÊn Nh¹c/ConLonKiem_32","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_32","ThÇn Quang Toµn NhiÔu/HoaSonKhi_32","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 33
	if (P == 4357) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_33","Vi §µ HiÕn Xö/ThieuLamCon_33","Tam Giíi Quy ThiÒn/ThieuLamDao_33","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_33","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_33","B¸ V­¬ng T¹m Kim/ThienVuongThuong_33","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_33","ThiÕt Liªn Tø S¸t/DMTuTien_33","Cµn Kh«n NhÊt TrÞch/DMTieu_33","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_33","U Hån PhÖ ¶nh/NguDocDao_33","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_33","B¨ng Vò L¹c Tinh/NgaMyChuong_33","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_33","Thñy Anh Man Tó/ThuyYenNoi_33","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_33","Bæng Huýnh L­îc §Þa/CaiBangCon_33","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_33","TËt Háa LiÖu Nguyªn/ThienNhanDao_33","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_33","KiÕm Thïy Tinh Hµ/VoDangKiem_33","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_33","Thiªn L«i ChÊn Nh¹c/ConLonKiem_33","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_33","ThÇn Quang Toµn NhiÔu/HoaSonKhi_33","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 34
	if (P == 4358) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_34","Vi §µ HiÕn Xö/ThieuLamCon_34","Tam Giíi Quy ThiÒn/ThieuLamDao_34","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_34","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_34","B¸ V­¬ng T¹m Kim/ThienVuongThuong_34","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_34","ThiÕt Liªn Tø S¸t/DMTuTien_34","Cµn Kh«n NhÊt TrÞch/DMTieu_34","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_34","U Hån PhÖ ¶nh/NguDocDao_34","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_34","B¨ng Vò L¹c Tinh/NgaMyChuong_34","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_34","Thñy Anh Man Tó/ThuyYenNoi_34","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_34","Bæng Huýnh L­îc §Þa/CaiBangCon_34","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_34","TËt Háa LiÖu Nguyªn/ThienNhanDao_34","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_34","KiÕm Thïy Tinh Hµ/VoDangKiem_34","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_34","Thiªn L«i ChÊn Nh¹c/ConLonKiem_34","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_34","ThÇn Quang Toµn NhiÔu/HoaSonKhi_34","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 35
	if (P == 4359) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_35","Vi §µ HiÕn Xö/ThieuLamCon_35","Tam Giíi Quy ThiÒn/ThieuLamDao_35","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_35","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_35","B¸ V­¬ng T¹m Kim/ThienVuongThuong_35","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_35","ThiÕt Liªn Tø S¸t/DMTuTien_35","Cµn Kh«n NhÊt TrÞch/DMTieu_35","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_35","U Hån PhÖ ¶nh/NguDocDao_35","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_35","B¨ng Vò L¹c Tinh/NgaMyChuong_35","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_35","Thñy Anh Man Tó/ThuyYenNoi_35","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_35","Bæng Huýnh L­îc §Þa/CaiBangCon_35","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_35","TËt Háa LiÖu Nguyªn/ThienNhanDao_35","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_35","KiÕm Thïy Tinh Hµ/VoDangKiem_35","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_35","Thiªn L«i ChÊn Nh¹c/ConLonKiem_35","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_35","ThÇn Quang Toµn NhiÔu/HoaSonKhi_35","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 36
	if (P == 4360) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_36","Vi §µ HiÕn Xö/ThieuLamCon_36","Tam Giíi Quy ThiÒn/ThieuLamDao_36","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_36","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_36","B¸ V­¬ng T¹m Kim/ThienVuongThuong_36","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_36","ThiÕt Liªn Tø S¸t/DMTuTien_36","Cµn Kh«n NhÊt TrÞch/DMTieu_36","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_36","U Hån PhÖ ¶nh/NguDocDao_36","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_36","B¨ng Vò L¹c Tinh/NgaMyChuong_36","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_36","Thñy Anh Man Tó/ThuyYenNoi_36","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_36","Bæng Huýnh L­îc §Þa/CaiBangCon_36","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_36","TËt Háa LiÖu Nguyªn/ThienNhanDao_36","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_36","KiÕm Thïy Tinh Hµ/VoDangKiem_36","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_36","Thiªn L«i ChÊn Nh¹c/ConLonKiem_36","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_36","ThÇn Quang Toµn NhiÔu/HoaSonKhi_36","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 37
	if (P == 4361) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_37","Vi §µ HiÕn Xö/ThieuLamCon_37","Tam Giíi Quy ThiÒn/ThieuLamDao_37","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_37","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_37","B¸ V­¬ng T¹m Kim/ThienVuongThuong_37","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_37","ThiÕt Liªn Tø S¸t/DMTuTien_37","Cµn Kh«n NhÊt TrÞch/DMTieu_37","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_37","U Hån PhÖ ¶nh/NguDocDao_37","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_37","B¨ng Vò L¹c Tinh/NgaMyChuong_37","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_37","Thñy Anh Man Tó/ThuyYenNoi_37","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_37","Bæng Huýnh L­îc §Þa/CaiBangCon_37","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_37","TËt Háa LiÖu Nguyªn/ThienNhanDao_37","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_37","KiÕm Thïy Tinh Hµ/VoDangKiem_37","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_37","Thiªn L«i ChÊn Nh¹c/ConLonKiem_37","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_37","ThÇn Quang Toµn NhiÔu/HoaSonKhi_37","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 38
	if (P == 4362) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_38","Vi §µ HiÕn Xö/ThieuLamCon_38","Tam Giíi Quy ThiÒn/ThieuLamDao_38","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_38","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_38","B¸ V­¬ng T¹m Kim/ThienVuongThuong_38","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_38","ThiÕt Liªn Tø S¸t/DMTuTien_38","Cµn Kh«n NhÊt TrÞch/DMTieu_38","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_38","U Hån PhÖ ¶nh/NguDocDao_38","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_38","B¨ng Vò L¹c Tinh/NgaMyChuong_38","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_38","Thñy Anh Man Tó/ThuyYenNoi_38","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_38","Bæng Huýnh L­îc §Þa/CaiBangCon_38","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_38","TËt Háa LiÖu Nguyªn/ThienNhanDao_38","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_38","KiÕm Thïy Tinh Hµ/VoDangKiem_38","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_38","Thiªn L«i ChÊn Nh¹c/ConLonKiem_38","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_38","ThÇn Quang Toµn NhiÔu/HoaSonKhi_38","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 39
	if (P == 4363) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_39","Vi §µ HiÕn Xö/ThieuLamCon_39","Tam Giíi Quy ThiÒn/ThieuLamDao_39","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_39","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_39","B¸ V­¬ng T¹m Kim/ThienVuongThuong_39","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_39","ThiÕt Liªn Tø S¸t/DMTuTien_39","Cµn Kh«n NhÊt TrÞch/DMTieu_39","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_39","U Hån PhÖ ¶nh/NguDocDao_39","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_39","B¨ng Vò L¹c Tinh/NgaMyChuong_39","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_39","Thñy Anh Man Tó/ThuyYenNoi_39","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_39","Bæng Huýnh L­îc §Þa/CaiBangCon_39","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_39","TËt Háa LiÖu Nguyªn/ThienNhanDao_39","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_39","KiÕm Thïy Tinh Hµ/VoDangKiem_39","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_39","Thiªn L«i ChÊn Nh¹c/ConLonKiem_39","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_39","ThÇn Quang Toµn NhiÔu/HoaSonKhi_39","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 40
	if (P == 4364) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_40","Vi §µ HiÕn Xö/ThieuLamCon_40","Tam Giíi Quy ThiÒn/ThieuLamDao_40","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_40","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_40","B¸ V­¬ng T¹m Kim/ThienVuongThuong_40","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_40","ThiÕt Liªn Tø S¸t/DMTuTien_40","Cµn Kh«n NhÊt TrÞch/DMTieu_40","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_40","U Hån PhÖ ¶nh/NguDocDao_40","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_40","B¨ng Vò L¹c Tinh/NgaMyChuong_40","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_40","Thñy Anh Man Tó/ThuyYenNoi_40","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_40","Bæng Huýnh L­îc §Þa/CaiBangCon_40","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_40","TËt Háa LiÖu Nguyªn/ThienNhanDao_40","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_40","KiÕm Thïy Tinh Hµ/VoDangKiem_40","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_40","Thiªn L«i ChÊn Nh¹c/ConLonKiem_40","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_40","ThÇn Quang Toµn NhiÔu/HoaSonKhi_40","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end
end
------------------------------------------------------------------------------S¸ch Kü N¨ng CÊp 21----------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_21()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill20) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill20) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(DaiLucKimCangChuong,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_21()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill20) then
		if (HaveMagic(ViDaHienXu) >= nSkill20) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(ViDaHienXu,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_21()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill20) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill20) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(TamGioiQuyThien,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_21()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill20) then
		if (HaveMagic(HaoHungTram) >= nSkill20) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(HaoHungTram,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_21()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill20) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill20) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(TungHoanhBatPhuong,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_21()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill20) then
		if (HaveMagic(BaVuongTamKim) >= nSkill20) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(BaVuongTamKim,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_21()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill20) then
		if (HaveMagic(VoAnhXuyen) >= nSkill20) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(VoAnhXuyen,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i §· V­ît Qu¸ CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end

function DMTuTien_21()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill20) then
		if (HaveMagic(ThietLienTuSat) >= nSkill20) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(ThietLienTuSat,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_21()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill20) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill20) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(CanKhonNhatTrich,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i §· V­ît Qu¸ CÊp <color=yellow>"..nSkill21.."<color> Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_21()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill20) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill20) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(HinhTieuCotLap,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_21()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill20) then
		if (HaveMagic(UHonPheAnh) >= nSkill20) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(UHonPheAnh,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_21()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill20) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill20) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(KiemHoaVanTinh,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_21()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill20) then
		if (HaveMagic(BangVuLacTinh) >= nSkill20) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(BangVuLacTinh,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_21()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill20) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill20) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(BangTuocHoatKy,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_21()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill20) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill20) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(ThuyAnhManTu,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng CÊp <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_21()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill20) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill20) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(ThoiThangLucLong,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_21()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill20) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill20) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(BongHuynhLuocDia,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_21()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill20) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill20) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(GiangHaiNoLan,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_21()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill20) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill20) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(TatHoaLieuNguyen,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_21()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill20) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill20) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(TaoHoaThaiThanh,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_21()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill20) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill20) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(KiemThuyTinhHa,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_21()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill20) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill20) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(CuuThienCuongPhong,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_21()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill20) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill20) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(ThienLoiChanNhac,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_21()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill20) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill20) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(DocCoCuuKiem,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_21()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill20) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill20) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill21) ConsumeEquiproomItem(1,6,1,4345,-1) AddMagic(ThanQuangToanNhieu,nSkill21)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill21.."<color>")
		else
			Msg2Player("Kü N¨ng CÊp 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill20.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill21.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 22---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_22()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill21) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill21) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(DaiLucKimCangChuong,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_22()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill21) then
		if (HaveMagic(ViDaHienXu) >= nSkill21) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(ViDaHienXu,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_22()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill21) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill21) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(TamGioiQuyThien,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_22()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill21) then
		if (HaveMagic(HaoHungTram) >= nSkill21) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(HaoHungTram,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_22()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill21) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill21) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(TungHoanhBatPhuong,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_22()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill21) then
		if (HaveMagic(BaVuongTamKim) >= nSkill21) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(BaVuongTamKim,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_22()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill21) then
		if (HaveMagic(VoAnhXuyen) >= nSkill21) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(VoAnhXuyen,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_22()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill21) then
		if (HaveMagic(ThietLienTuSat) >= nSkill21) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(ThietLienTuSat,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_22()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill21) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill21) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(CanKhonNhatTrich,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_22()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill21) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill21) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(HinhTieuCotLap,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_22()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill21) then
		if (HaveMagic(UHonPheAnh) >= nSkill21) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(UHonPheAnh,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_22()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill21) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill21) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(KiemHoaVanTinh,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_22()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill21) then
		if (HaveMagic(BangVuLacTinh) >= nSkill21) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(BangVuLacTinh,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_22()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill21) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill21) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(BangTuocHoatKy,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_22()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill21) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill21) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(ThuyAnhManTu,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_22()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill21) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill21) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(ThoiThangLucLong,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_22()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill21) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill21) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(BongHuynhLuocDia,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_22()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill21) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill21) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(GiangHaiNoLan,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_22()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill21) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill21) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(TatHoaLieuNguyen,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_22()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill21) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill21) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(TaoHoaThaiThanh,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_22()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill21) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill21) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(KiemThuyTinhHa,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_22()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill21) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill21) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(CuuThienCuongPhong,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_22()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill21) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill21) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(ThienLoiChanNhac,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_22()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill21) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill21) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(DocCoCuuKiem,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_22()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill20) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill21) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill21) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill22) ConsumeEquiproomItem(1,6,1,4346,-1) AddMagic(ThanQuangToanNhieu,nSkill22)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill22.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill21.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill22.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 23---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_23()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill22) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill22) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(DaiLucKimCangChuong,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_23()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill22) then
		if (HaveMagic(ViDaHienXu) >= nSkill22) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(ViDaHienXu,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_23()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill22) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill22) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(TamGioiQuyThien,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_23()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill22) then
		if (HaveMagic(HaoHungTram) >= nSkill22) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(HaoHungTram,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_23()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill22) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill22) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(TungHoanhBatPhuong,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_23()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill22) then
		if (HaveMagic(BaVuongTamKim) >= nSkill22) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(BaVuongTamKim,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_23()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill22) then
		if (HaveMagic(VoAnhXuyen) >= nSkill22) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(VoAnhXuyen,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_23()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill22) then
		if (HaveMagic(ThietLienTuSat) >= nSkill22) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(ThietLienTuSat,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_23()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill22) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill22) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(CanKhonNhatTrich,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_23()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill22) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill22) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(HinhTieuCotLap,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_23()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill22) then
		if (HaveMagic(UHonPheAnh) >= nSkill22) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(UHonPheAnh,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_23()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill22) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill22) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(KiemHoaVanTinh,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_23()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill22) then
		if (HaveMagic(BangVuLacTinh) >= nSkill22) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(BangVuLacTinh,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_23()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill22) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill22) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(BangTuocHoatKy,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_23()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill22) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill22) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(ThuyAnhManTu,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_23()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill22) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill22) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(ThoiThangLucLong,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_23()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill22) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill22) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(BongHuynhLuocDia,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_23()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill22) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill22) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(GiangHaiNoLan,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_23()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill22) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill22) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(TatHoaLieuNguyen,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_23()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill22) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill22) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(TaoHoaThaiThanh,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_23()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill22) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill22) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(KiemThuyTinhHa,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_23()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill22) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill22) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(CuuThienCuongPhong,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_23()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill22) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill22) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(ThienLoiChanNhac,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_23()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill22) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill22) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(DocCoCuuKiem,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_23()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill21) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill22) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill22) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill23) ConsumeEquiproomItem(1,6,1,4347,-1) AddMagic(ThanQuangToanNhieu,nSkill23)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill23.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill22.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill23.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 24---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_24()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill23) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill23) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(DaiLucKimCangChuong,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_24()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill23) then
		if (HaveMagic(ViDaHienXu) >= nSkill23) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(ViDaHienXu,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_24()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill23) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill23) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(TamGioiQuyThien,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_24()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill23) then
		if (HaveMagic(HaoHungTram) >= nSkill23) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(HaoHungTram,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_24()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill23) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill23) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(TungHoanhBatPhuong,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_24()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill23) then
		if (HaveMagic(BaVuongTamKim) >= nSkill23) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(BaVuongTamKim,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_24()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill23) then
		if (HaveMagic(VoAnhXuyen) >= nSkill23) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(VoAnhXuyen,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_24()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill23) then
		if (HaveMagic(ThietLienTuSat) >= nSkill23) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(ThietLienTuSat,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_24()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill23) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill23) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(CanKhonNhatTrich,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_24()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill23) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill23) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(HinhTieuCotLap,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_24()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill23) then
		if (HaveMagic(UHonPheAnh) >= nSkill23) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(UHonPheAnh,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_24()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill23) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill23) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(KiemHoaVanTinh,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_24()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill23) then
		if (HaveMagic(BangVuLacTinh) >= nSkill23) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(BangVuLacTinh,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_24()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill23) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill23) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(BangTuocHoatKy,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_24()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill23) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill23) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(ThuyAnhManTu,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_24()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill23) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill23) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(ThoiThangLucLong,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_24()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill23) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill23) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(BongHuynhLuocDia,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_24()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill23) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill23) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(GiangHaiNoLan,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_24()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill23) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill23) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(TatHoaLieuNguyen,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_24()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill23) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill23) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(TaoHoaThaiThanh,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_24()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill23) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill23) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(KiemThuyTinhHa,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_24()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill23) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill23) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(CuuThienCuongPhong,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_24()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill23) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill23) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(ThienLoiChanNhac,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_24()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill23) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill23) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(DocCoCuuKiem,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_24()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill22) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill23) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill23) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill24) ConsumeEquiproomItem(1,6,1,4348,-1) AddMagic(ThanQuangToanNhieu,nSkill24)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill24.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill23.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill24.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 25---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_25()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill24) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill24) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(DaiLucKimCangChuong,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_25()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill24) then
		if (HaveMagic(ViDaHienXu) >= nSkill24) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(ViDaHienXu,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_25()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill24) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill24) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(TamGioiQuyThien,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_25()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill24) then
		if (HaveMagic(HaoHungTram) >= nSkill24) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(HaoHungTram,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_25()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill24) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill24) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(TungHoanhBatPhuong,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_25()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill24) then
		if (HaveMagic(BaVuongTamKim) >= nSkill24) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(BaVuongTamKim,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_25()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill24) then
		if (HaveMagic(VoAnhXuyen) >= nSkill24) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(VoAnhXuyen,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_25()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill24) then
		if (HaveMagic(ThietLienTuSat) >= nSkill24) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(ThietLienTuSat,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_25()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill24) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill24) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(CanKhonNhatTrich,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_25()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill24) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill24) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(HinhTieuCotLap,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_25()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill24) then
		if (HaveMagic(UHonPheAnh) >= nSkill24) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(UHonPheAnh,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_25()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill24) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill24) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(KiemHoaVanTinh,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_25()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill24) then
		if (HaveMagic(BangVuLacTinh) >= nSkill24) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(BangVuLacTinh,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_25()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill24) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill24) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(BangTuocHoatKy,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_25()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill24) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill24) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(ThuyAnhManTu,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_25()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill24) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill24) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(ThoiThangLucLong,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_25()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill24) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill24) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(BongHuynhLuocDia,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_25()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill24) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill24) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(GiangHaiNoLan,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_25()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill24) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill24) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(TatHoaLieuNguyen,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_25()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill24) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill24) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(TaoHoaThaiThanh,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_25()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill24) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill24) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(KiemThuyTinhHa,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_25()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill24) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill24) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(CuuThienCuongPhong,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_25()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill24) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill24) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(ThienLoiChanNhac,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_25()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill24) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill24) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(DocCoCuuKiem,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_25()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill23) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill24) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill24) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill25) ConsumeEquiproomItem(1,6,1,4349,-1) AddMagic(ThanQuangToanNhieu,nSkill25)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill25.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill24.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill25.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 26---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_26()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill25) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill25) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(DaiLucKimCangChuong,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_26()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill25) then
		if (HaveMagic(ViDaHienXu) >= nSkill25) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(ViDaHienXu,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_26()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill25) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill25) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(TamGioiQuyThien,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_26()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill25) then
		if (HaveMagic(HaoHungTram) >= nSkill25) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(HaoHungTram,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_26()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill25) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill25) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(TungHoanhBatPhuong,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_26()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill25) then
		if (HaveMagic(BaVuongTamKim) >= nSkill25) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(BaVuongTamKim,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_26()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill25) then
		if (HaveMagic(VoAnhXuyen) >= nSkill25) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(VoAnhXuyen,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_26()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill25) then
		if (HaveMagic(ThietLienTuSat) >= nSkill25) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(ThietLienTuSat,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_26()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill25) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill25) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(CanKhonNhatTrich,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_26()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill25) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill25) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(HinhTieuCotLap,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_26()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill25) then
		if (HaveMagic(UHonPheAnh) >= nSkill25) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(UHonPheAnh,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_26()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill25) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill25) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(KiemHoaVanTinh,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_26()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill25) then
		if (HaveMagic(BangVuLacTinh) >= nSkill25) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(BangVuLacTinh,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_26()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill25) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill25) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(BangTuocHoatKy,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_26()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill25) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill25) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(ThuyAnhManTu,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_26()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill25) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill25) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(ThoiThangLucLong,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_26()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill25) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill25) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(BongHuynhLuocDia,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_26()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill25) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill25) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(GiangHaiNoLan,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_26()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill25) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill25) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(TatHoaLieuNguyen,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_26()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill25) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill25) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(TaoHoaThaiThanh,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_26()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill25) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill25) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(KiemThuyTinhHa,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_26()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill25) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill25) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(CuuThienCuongPhong,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_26()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill25) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill25) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(ThienLoiChanNhac,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_26()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill25) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill25) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(DocCoCuuKiem,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_26()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill24) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill25) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill25) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill26) ConsumeEquiproomItem(1,6,1,4350,-1) AddMagic(ThanQuangToanNhieu,nSkill26)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill26.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill25.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill26.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 27---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_27()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill26) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill26) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(DaiLucKimCangChuong,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_27()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill26) then
		if (HaveMagic(ViDaHienXu) >= nSkill26) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(ViDaHienXu,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_27()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill26) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill26) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(TamGioiQuyThien,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_27()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill26) then
		if (HaveMagic(HaoHungTram) >= nSkill26) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(HaoHungTram,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_27()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill26) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill26) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(TungHoanhBatPhuong,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_27()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill26) then
		if (HaveMagic(BaVuongTamKim) >= nSkill26) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(BaVuongTamKim,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_27()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill26) then
		if (HaveMagic(VoAnhXuyen) >= nSkill26) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(VoAnhXuyen,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_27()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill26) then
		if (HaveMagic(ThietLienTuSat) >= nSkill26) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(ThietLienTuSat,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_27()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill26) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill26) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(CanKhonNhatTrich,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_27()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill26) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill26) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(HinhTieuCotLap,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_27()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill26) then
		if (HaveMagic(UHonPheAnh) >= nSkill26) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(UHonPheAnh,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_27()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill26) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill26) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(KiemHoaVanTinh,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_27()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill26) then
		if (HaveMagic(BangVuLacTinh) >= nSkill26) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(BangVuLacTinh,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_27()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill26) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill26) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(BangTuocHoatKy,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_27()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill26) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill26) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(ThuyAnhManTu,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_27()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill26) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill26) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(ThoiThangLucLong,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_27()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill26) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill26) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(BongHuynhLuocDia,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_27()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill26) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill26) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(GiangHaiNoLan,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_27()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill26) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill26) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(TatHoaLieuNguyen,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_27()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill26) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill26) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(TaoHoaThaiThanh,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_27()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill26) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill26) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(KiemThuyTinhHa,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_27()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill26) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill26) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(CuuThienCuongPhong,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_27()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill26) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill26) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(ThienLoiChanNhac,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_27()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill26) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill26) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(DocCoCuuKiem,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_27()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill25) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill26) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill26) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill27) ConsumeEquiproomItem(1,6,1,4351,-1) AddMagic(ThanQuangToanNhieu,nSkill27)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill27.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill26.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill27.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 28---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_28()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill27) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill27) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(DaiLucKimCangChuong,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_28()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill27) then
		if (HaveMagic(ViDaHienXu) >= nSkill27) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(ViDaHienXu,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_28()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill27) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill27) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(TamGioiQuyThien,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_28()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill27) then
		if (HaveMagic(HaoHungTram) >= nSkill27) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(HaoHungTram,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_28()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill27) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill27) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(TungHoanhBatPhuong,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_28()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill27) then
		if (HaveMagic(BaVuongTamKim) >= nSkill27) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(BaVuongTamKim,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_28()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill27) then
		if (HaveMagic(VoAnhXuyen) >= nSkill27) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(VoAnhXuyen,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_28()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill27) then
		if (HaveMagic(ThietLienTuSat) >= nSkill27) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(ThietLienTuSat,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_28()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill27) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill27) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(CanKhonNhatTrich,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_28()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill27) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill27) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(HinhTieuCotLap,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_28()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill27) then
		if (HaveMagic(UHonPheAnh) >= nSkill27) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(UHonPheAnh,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_28()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill27) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill27) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(KiemHoaVanTinh,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_28()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill27) then
		if (HaveMagic(BangVuLacTinh) >= nSkill27) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(BangVuLacTinh,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_28()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill27) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill27) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(BangTuocHoatKy,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_28()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill27) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill27) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(ThuyAnhManTu,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_28()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill27) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill27) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(ThoiThangLucLong,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_28()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill27) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill27) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(BongHuynhLuocDia,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_28()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill27) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill27) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(GiangHaiNoLan,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_28()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill27) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill27) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(TatHoaLieuNguyen,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_28()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill27) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill27) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(TaoHoaThaiThanh,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_28()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill27) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill27) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(KiemThuyTinhHa,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_28()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill27) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill27) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(CuuThienCuongPhong,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_28()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill27) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill27) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(ThienLoiChanNhac,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_28()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill27) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill27) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(DocCoCuuKiem,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_28()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill26) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill27) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill27) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill28) ConsumeEquiproomItem(1,6,1,4352,-1) AddMagic(ThanQuangToanNhieu,nSkill28)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill28.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill27.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill28.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 29---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_29()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill28) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill28) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(DaiLucKimCangChuong,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_29()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill28) then
		if (HaveMagic(ViDaHienXu) >= nSkill28) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(ViDaHienXu,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_29()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill28) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill28) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(TamGioiQuyThien,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_29()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill28) then
		if (HaveMagic(HaoHungTram) >= nSkill28) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(HaoHungTram,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_29()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill28) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill28) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(TungHoanhBatPhuong,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_29()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill28) then
		if (HaveMagic(BaVuongTamKim) >= nSkill28) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(BaVuongTamKim,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_29()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill28) then
		if (HaveMagic(VoAnhXuyen) >= nSkill28) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(VoAnhXuyen,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_29()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill28) then
		if (HaveMagic(ThietLienTuSat) >= nSkill28) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(ThietLienTuSat,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_29()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill28) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill28) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(CanKhonNhatTrich,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_29()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill28) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill28) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(HinhTieuCotLap,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_29()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill28) then
		if (HaveMagic(UHonPheAnh) >= nSkill28) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(UHonPheAnh,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_29()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill28) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill28) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(KiemHoaVanTinh,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_29()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill28) then
		if (HaveMagic(BangVuLacTinh) >= nSkill28) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(BangVuLacTinh,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_29()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill28) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill28) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(BangTuocHoatKy,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_29()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill28) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill28) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(ThuyAnhManTu,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_29()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill28) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill28) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(ThoiThangLucLong,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_29()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill28) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill28) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(BongHuynhLuocDia,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_29()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill28) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill28) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(GiangHaiNoLan,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_29()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill28) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill28) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(TatHoaLieuNguyen,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_29()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill28) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill28) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(TaoHoaThaiThanh,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_29()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill28) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill28) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(KiemThuyTinhHa,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_29()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill28) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill28) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(CuuThienCuongPhong,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_29()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill28) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill28) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(ThienLoiChanNhac,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_29()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill28) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill28) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(DocCoCuuKiem,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_29()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill27) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill28) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill28) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill29) ConsumeEquiproomItem(1,6,1,4353,-1) AddMagic(ThanQuangToanNhieu,nSkill29)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill29.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill28.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill29.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 30---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_30()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill29) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill29) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(DaiLucKimCangChuong,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_30()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill29) then
		if (HaveMagic(ViDaHienXu) >= nSkill29) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(ViDaHienXu,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_30()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill29) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill29) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(TamGioiQuyThien,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_30()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill29) then
		if (HaveMagic(HaoHungTram) >= nSkill29) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(HaoHungTram,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_30()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill29) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill29) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(TungHoanhBatPhuong,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_30()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill29) then
		if (HaveMagic(BaVuongTamKim) >= nSkill29) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(BaVuongTamKim,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_30()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill29) then
		if (HaveMagic(VoAnhXuyen) >= nSkill29) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(VoAnhXuyen,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_30()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill29) then
		if (HaveMagic(ThietLienTuSat) >= nSkill29) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(ThietLienTuSat,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_30()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill29) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill29) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(CanKhonNhatTrich,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_30()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill29) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill29) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(HinhTieuCotLap,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_30()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill29) then
		if (HaveMagic(UHonPheAnh) >= nSkill29) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(UHonPheAnh,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_30()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill29) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill29) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(KiemHoaVanTinh,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_30()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill29) then
		if (HaveMagic(BangVuLacTinh) >= nSkill29) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(BangVuLacTinh,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_30()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill29) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill29) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(BangTuocHoatKy,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_30()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill29) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill29) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(ThuyAnhManTu,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_30()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill29) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill29) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(ThoiThangLucLong,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_30()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill29) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill29) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(BongHuynhLuocDia,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_30()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill29) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill29) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(GiangHaiNoLan,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_30()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill29) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill29) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(TatHoaLieuNguyen,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_30()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill29) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill29) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(TaoHoaThaiThanh,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_30()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill29) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill29) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(KiemThuyTinhHa,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_30()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill29) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill29) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(CuuThienCuongPhong,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_30()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill29) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill29) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(ThienLoiChanNhac,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_30()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill29) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill29) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(DocCoCuuKiem,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_30()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill28) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill29) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill29) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill30) ConsumeEquiproomItem(1,6,1,4354,-1) AddMagic(ThanQuangToanNhieu,nSkill30)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill30.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill29.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill30.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 31---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_31()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill30) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill30) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(DaiLucKimCangChuong,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_31()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill30) then
		if (HaveMagic(ViDaHienXu) >= nSkill30) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(ViDaHienXu,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_31()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill30) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill30) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(TamGioiQuyThien,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_31()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill30) then
		if (HaveMagic(HaoHungTram) >= nSkill30) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(HaoHungTram,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_31()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill30) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill30) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(TungHoanhBatPhuong,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_31()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill30) then
		if (HaveMagic(BaVuongTamKim) >= nSkill30) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(BaVuongTamKim,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_31()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill30) then
		if (HaveMagic(VoAnhXuyen) >= nSkill30) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(VoAnhXuyen,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_31()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill30) then
		if (HaveMagic(ThietLienTuSat) >= nSkill30) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(ThietLienTuSat,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_31()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill30) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill30) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(CanKhonNhatTrich,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_31()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill30) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill30) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(HinhTieuCotLap,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_31()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill30) then
		if (HaveMagic(UHonPheAnh) >= nSkill30) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(UHonPheAnh,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_31()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill30) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill30) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(KiemHoaVanTinh,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_31()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill30) then
		if (HaveMagic(BangVuLacTinh) >= nSkill30) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(BangVuLacTinh,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_31()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill30) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill30) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(BangTuocHoatKy,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_31()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill30) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill30) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(ThuyAnhManTu,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_31()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill30) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill30) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(ThoiThangLucLong,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_31()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill30) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill30) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(BongHuynhLuocDia,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_31()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill30) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill30) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(GiangHaiNoLan,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_31()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill30) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill30) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(TatHoaLieuNguyen,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_31()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill30) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill30) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(TaoHoaThaiThanh,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_31()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill30) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill30) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(KiemThuyTinhHa,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_31()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill30) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill30) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(CuuThienCuongPhong,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_31()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill30) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill30) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(ThienLoiChanNhac,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_31()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill30) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill30) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(DocCoCuuKiem,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_31()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill29) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill30) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill30) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill31) ConsumeEquiproomItem(1,6,1,4355,-1) AddMagic(ThanQuangToanNhieu,nSkill31)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill31.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill30.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill31.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 32---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_32()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill31) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill31) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(DaiLucKimCangChuong,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_32()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill31) then
		if (HaveMagic(ViDaHienXu) >= nSkill31) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(ViDaHienXu,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_32()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill31) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill31) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(TamGioiQuyThien,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_32()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill31) then
		if (HaveMagic(HaoHungTram) >= nSkill31) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(HaoHungTram,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_32()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill31) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill31) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(TungHoanhBatPhuong,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_32()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill31) then
		if (HaveMagic(BaVuongTamKim) >= nSkill31) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(BaVuongTamKim,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_32()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill31) then
		if (HaveMagic(VoAnhXuyen) >= nSkill31) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(VoAnhXuyen,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_32()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill31) then
		if (HaveMagic(ThietLienTuSat) >= nSkill31) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(ThietLienTuSat,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_32()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill31) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill31) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(CanKhonNhatTrich,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_32()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill31) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill31) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(HinhTieuCotLap,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_32()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill31) then
		if (HaveMagic(UHonPheAnh) >= nSkill31) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(UHonPheAnh,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_32()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill31) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill31) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(KiemHoaVanTinh,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_32()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill31) then
		if (HaveMagic(BangVuLacTinh) >= nSkill31) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(BangVuLacTinh,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_32()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill31) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill31) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(BangTuocHoatKy,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_32()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill31) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill31) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(ThuyAnhManTu,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_32()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill31) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill31) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(ThoiThangLucLong,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_32()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill31) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill31) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(BongHuynhLuocDia,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_32()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill31) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill31) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(GiangHaiNoLan,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_32()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill31) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill31) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(TatHoaLieuNguyen,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_32()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill31) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill31) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(TaoHoaThaiThanh,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_32()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill31) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill31) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(KiemThuyTinhHa,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_32()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill31) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill31) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(CuuThienCuongPhong,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_32()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill31) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill31) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(ThienLoiChanNhac,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_32()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill31) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill31) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(DocCoCuuKiem,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_32()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill30) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill31) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill31) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill32) ConsumeEquiproomItem(1,6,1,4356,-1) AddMagic(ThanQuangToanNhieu,nSkill32)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill32.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill31.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill32.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 33---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_33()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill32) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill32) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(DaiLucKimCangChuong,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_33()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill32) then
		if (HaveMagic(ViDaHienXu) >= nSkill32) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(ViDaHienXu,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_33()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill32) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill32) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(TamGioiQuyThien,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_33()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill32) then
		if (HaveMagic(HaoHungTram) >= nSkill32) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(HaoHungTram,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_33()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill32) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill32) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(TungHoanhBatPhuong,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_33()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill32) then
		if (HaveMagic(BaVuongTamKim) >= nSkill32) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(BaVuongTamKim,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_33()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill32) then
		if (HaveMagic(VoAnhXuyen) >= nSkill32) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(VoAnhXuyen,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_33()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill32) then
		if (HaveMagic(ThietLienTuSat) >= nSkill32) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(ThietLienTuSat,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_33()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill32) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill32) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(CanKhonNhatTrich,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_33()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill32) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill32) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(HinhTieuCotLap,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_33()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill32) then
		if (HaveMagic(UHonPheAnh) >= nSkill32) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(UHonPheAnh,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_33()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill32) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill32) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(KiemHoaVanTinh,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_33()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill32) then
		if (HaveMagic(BangVuLacTinh) >= nSkill32) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(BangVuLacTinh,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_33()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill32) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill32) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(BangTuocHoatKy,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_33()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill32) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill32) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(ThuyAnhManTu,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_33()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill32) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill32) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(ThoiThangLucLong,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_33()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill32) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill32) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(BongHuynhLuocDia,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_33()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill32) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill32) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(GiangHaiNoLan,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_33()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill32) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill32) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(TatHoaLieuNguyen,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_33()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill32) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill32) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(TaoHoaThaiThanh,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_33()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill32) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill32) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(KiemThuyTinhHa,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_33()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill32) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill32) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(CuuThienCuongPhong,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_33()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill32) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill32) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(ThienLoiChanNhac,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_33()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill32) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill32) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(DocCoCuuKiem,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_33()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill31) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill32) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill32) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill33) ConsumeEquiproomItem(1,6,1,4357,-1) AddMagic(ThanQuangToanNhieu,nSkill33)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill33.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill32.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill33.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 34---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_34()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill33) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill33) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(DaiLucKimCangChuong,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_34()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill33) then
		if (HaveMagic(ViDaHienXu) >= nSkill33) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(ViDaHienXu,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_34()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill33) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill33) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(TamGioiQuyThien,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_34()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill33) then
		if (HaveMagic(HaoHungTram) >= nSkill33) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(HaoHungTram,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_34()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill33) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill33) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(TungHoanhBatPhuong,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_34()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill33) then
		if (HaveMagic(BaVuongTamKim) >= nSkill33) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(BaVuongTamKim,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_34()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill33) then
		if (HaveMagic(VoAnhXuyen) >= nSkill33) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(VoAnhXuyen,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_34()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill33) then
		if (HaveMagic(ThietLienTuSat) >= nSkill33) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(ThietLienTuSat,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_34()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill33) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill33) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(CanKhonNhatTrich,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_34()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill33) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill33) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(HinhTieuCotLap,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_34()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill33) then
		if (HaveMagic(UHonPheAnh) >= nSkill33) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(UHonPheAnh,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_34()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill33) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill33) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(KiemHoaVanTinh,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_34()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill33) then
		if (HaveMagic(BangVuLacTinh) >= nSkill33) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(BangVuLacTinh,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_34()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill33) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill33) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(BangTuocHoatKy,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_34()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill33) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill33) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(ThuyAnhManTu,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_34()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill33) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill33) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(ThoiThangLucLong,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_34()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill33) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill33) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(BongHuynhLuocDia,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_34()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill33) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill33) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(GiangHaiNoLan,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_34()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill33) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill33) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(TatHoaLieuNguyen,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_34()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill33) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill33) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(TaoHoaThaiThanh,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_34()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill33) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill33) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(KiemThuyTinhHa,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_34()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill33) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill33) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(CuuThienCuongPhong,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_34()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill33) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill33) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(ThienLoiChanNhac,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_34()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill33) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill33) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(DocCoCuuKiem,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_34()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill32) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill33) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill33) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill34) ConsumeEquiproomItem(1,6,1,4358,-1) AddMagic(ThanQuangToanNhieu,nSkill34)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill34.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill33.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill34.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 35---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_35()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill34) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill34) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(DaiLucKimCangChuong,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_35()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill34) then
		if (HaveMagic(ViDaHienXu) >= nSkill34) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(ViDaHienXu,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_35()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill34) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill34) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(TamGioiQuyThien,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_35()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill34) then
		if (HaveMagic(HaoHungTram) >= nSkill34) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(HaoHungTram,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_35()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill34) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill34) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(TungHoanhBatPhuong,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_35()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill34) then
		if (HaveMagic(BaVuongTamKim) >= nSkill34) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(BaVuongTamKim,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_35()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill34) then
		if (HaveMagic(VoAnhXuyen) >= nSkill34) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(VoAnhXuyen,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_35()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill34) then
		if (HaveMagic(ThietLienTuSat) >= nSkill34) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(ThietLienTuSat,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_35()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill34) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill34) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(CanKhonNhatTrich,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_35()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill34) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill34) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(HinhTieuCotLap,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_35()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill34) then
		if (HaveMagic(UHonPheAnh) >= nSkill34) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(UHonPheAnh,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_35()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill34) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill34) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(KiemHoaVanTinh,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_35()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill34) then
		if (HaveMagic(BangVuLacTinh) >= nSkill34) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(BangVuLacTinh,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_35()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill34) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill34) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(BangTuocHoatKy,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_35()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill34) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill34) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(ThuyAnhManTu,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_35()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill34) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill34) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(ThoiThangLucLong,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_35()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill34) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill34) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(BongHuynhLuocDia,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_35()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill34) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill34) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(GiangHaiNoLan,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_35()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill34) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill34) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(TatHoaLieuNguyen,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_35()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill34) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill34) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(TaoHoaThaiThanh,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_35()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill34) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill34) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(KiemThuyTinhHa,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_35()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill34) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill34) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(CuuThienCuongPhong,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_35()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill34) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill34) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(ThienLoiChanNhac,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_35()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill34) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill34) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(DocCoCuuKiem,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_35()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill33) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill34) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill34) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill35) ConsumeEquiproomItem(1,6,1,4359,-1) AddMagic(ThanQuangToanNhieu,nSkill35)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill35.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill34.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill35.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 36---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_36()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill35) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill35) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(DaiLucKimCangChuong,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_36()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill35) then
		if (HaveMagic(ViDaHienXu) >= nSkill35) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(ViDaHienXu,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_36()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill35) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill35) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(TamGioiQuyThien,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_36()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill35) then
		if (HaveMagic(HaoHungTram) >= nSkill35) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(HaoHungTram,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_36()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill35) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill35) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(TungHoanhBatPhuong,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_36()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill35) then
		if (HaveMagic(BaVuongTamKim) >= nSkill35) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(BaVuongTamKim,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_36()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill35) then
		if (HaveMagic(VoAnhXuyen) >= nSkill35) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(VoAnhXuyen,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_36()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill35) then
		if (HaveMagic(ThietLienTuSat) >= nSkill35) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(ThietLienTuSat,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_36()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill35) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill35) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(CanKhonNhatTrich,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_36()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill35) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill35) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(HinhTieuCotLap,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_36()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill35) then
		if (HaveMagic(UHonPheAnh) >= nSkill35) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(UHonPheAnh,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_36()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill35) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill35) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(KiemHoaVanTinh,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_36()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill35) then
		if (HaveMagic(BangVuLacTinh) >= nSkill35) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(BangVuLacTinh,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_36()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill35) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill35) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(BangTuocHoatKy,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_36()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill35) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill35) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(ThuyAnhManTu,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_36()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill35) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill35) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(ThoiThangLucLong,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_36()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill35) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill35) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(BongHuynhLuocDia,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_36()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill35) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill35) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(GiangHaiNoLan,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_36()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill35) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill35) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(TatHoaLieuNguyen,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_36()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill35) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill35) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(TaoHoaThaiThanh,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_36()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill35) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill35) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(KiemThuyTinhHa,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_36()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill35) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill35) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(CuuThienCuongPhong,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_36()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill35) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill35) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(ThienLoiChanNhac,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_36()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill35) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill35) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(DocCoCuuKiem,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_36()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill34) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill35) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill35) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill36) ConsumeEquiproomItem(1,6,1,4360,-1) AddMagic(ThanQuangToanNhieu,nSkill36)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill36.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill35.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill36.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 37---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_37()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill36) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill36) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(DaiLucKimCangChuong,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_37()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill36) then
		if (HaveMagic(ViDaHienXu) >= nSkill36) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(ViDaHienXu,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_37()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill36) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill36) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(TamGioiQuyThien,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_37()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill36) then
		if (HaveMagic(HaoHungTram) >= nSkill36) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(HaoHungTram,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_37()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill36) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill36) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(TungHoanhBatPhuong,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_37()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill36) then
		if (HaveMagic(BaVuongTamKim) >= nSkill36) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(BaVuongTamKim,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_37()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill36) then
		if (HaveMagic(VoAnhXuyen) >= nSkill36) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(VoAnhXuyen,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_37()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill36) then
		if (HaveMagic(ThietLienTuSat) >= nSkill36) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(ThietLienTuSat,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_37()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill36) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill36) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(CanKhonNhatTrich,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_37()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill36) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill36) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(HinhTieuCotLap,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_37()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill36) then
		if (HaveMagic(UHonPheAnh) >= nSkill36) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(UHonPheAnh,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_37()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill36) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill36) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(KiemHoaVanTinh,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_37()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill36) then
		if (HaveMagic(BangVuLacTinh) >= nSkill36) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(BangVuLacTinh,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_37()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill36) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill36) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(BangTuocHoatKy,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_37()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill36) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill36) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(ThuyAnhManTu,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_37()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill36) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill36) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(ThoiThangLucLong,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_37()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill36) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill36) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(BongHuynhLuocDia,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_37()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill36) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill36) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(GiangHaiNoLan,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_37()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill36) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill36) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(TatHoaLieuNguyen,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_37()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill36) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill36) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(TaoHoaThaiThanh,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_37()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill36) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill36) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(KiemThuyTinhHa,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_37()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill36) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill36) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(CuuThienCuongPhong,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_37()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill36) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill36) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(ThienLoiChanNhac,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_37()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill36) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill36) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(DocCoCuuKiem,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_37()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill35) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill36) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill36) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill37) ConsumeEquiproomItem(1,6,1,4361,-1) AddMagic(ThanQuangToanNhieu,nSkill37)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill37.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill36.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill37.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 38---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_38()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill37) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill37) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(DaiLucKimCangChuong,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_38()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill37) then
		if (HaveMagic(ViDaHienXu) >= nSkill37) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(ViDaHienXu,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_38()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill37) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill37) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(TamGioiQuyThien,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_38()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill37) then
		if (HaveMagic(HaoHungTram) >= nSkill37) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(HaoHungTram,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_38()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill37) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill37) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(TungHoanhBatPhuong,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_38()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill37) then
		if (HaveMagic(BaVuongTamKim) >= nSkill37) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(BaVuongTamKim,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_38()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill37) then
		if (HaveMagic(VoAnhXuyen) >= nSkill37) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(VoAnhXuyen,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_38()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill37) then
		if (HaveMagic(ThietLienTuSat) >= nSkill37) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(ThietLienTuSat,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_38()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill37) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill37) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(CanKhonNhatTrich,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_38()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill37) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill37) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(HinhTieuCotLap,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_38()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill37) then
		if (HaveMagic(UHonPheAnh) >= nSkill37) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(UHonPheAnh,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_38()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill37) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill37) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(KiemHoaVanTinh,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_38()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill37) then
		if (HaveMagic(BangVuLacTinh) >= nSkill37) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(BangVuLacTinh,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_38()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill37) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill37) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(BangTuocHoatKy,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_38()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill37) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill37) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(ThuyAnhManTu,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_38()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill37) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill37) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(ThoiThangLucLong,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_38()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill37) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill37) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(BongHuynhLuocDia,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_38()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill37) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill37) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(GiangHaiNoLan,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_38()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill37) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill37) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(TatHoaLieuNguyen,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_38()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill37) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill37) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(TaoHoaThaiThanh,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_38()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill37) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill37) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(KiemThuyTinhHa,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_38()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill37) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill37) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(CuuThienCuongPhong,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_38()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill37) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill37) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(ThienLoiChanNhac,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_38()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill37) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill37) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(DocCoCuuKiem,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_38()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill36) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill37) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill37) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill38) ConsumeEquiproomItem(1,6,1,4362,-1) AddMagic(ThanQuangToanNhieu,nSkill38)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill38.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill37.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill38.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 39---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_39()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill38) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill38) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(DaiLucKimCangChuong,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_39()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill38) then
		if (HaveMagic(ViDaHienXu) >= nSkill38) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(ViDaHienXu,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_39()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill38) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill38) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(TamGioiQuyThien,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_39()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill38) then
		if (HaveMagic(HaoHungTram) >= nSkill38) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(HaoHungTram,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_39()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill38) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill38) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(TungHoanhBatPhuong,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_39()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill38) then
		if (HaveMagic(BaVuongTamKim) >= nSkill38) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(BaVuongTamKim,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_39()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill38) then
		if (HaveMagic(VoAnhXuyen) >= nSkill38) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(VoAnhXuyen,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_39()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill38) then
		if (HaveMagic(ThietLienTuSat) >= nSkill38) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(ThietLienTuSat,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_39()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill38) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill38) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(CanKhonNhatTrich,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_39()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill38) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill38) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(HinhTieuCotLap,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_39()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill38) then
		if (HaveMagic(UHonPheAnh) >= nSkill38) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(UHonPheAnh,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_39()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill38) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill38) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(KiemHoaVanTinh,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_39()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill38) then
		if (HaveMagic(BangVuLacTinh) >= nSkill38) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(BangVuLacTinh,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_39()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill38) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill38) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(BangTuocHoatKy,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_39()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill38) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill38) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(ThuyAnhManTu,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_39()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill38) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill38) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(ThoiThangLucLong,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_39()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill38) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill38) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(BongHuynhLuocDia,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_39()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill38) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill38) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(GiangHaiNoLan,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_39()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill38) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill38) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(TatHoaLieuNguyen,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_39()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill38) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill38) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(TaoHoaThaiThanh,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_39()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill38) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill38) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(KiemThuyTinhHa,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_39()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill38) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill38) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(CuuThienCuongPhong,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_39()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill38) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill38) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(ThienLoiChanNhac,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_39()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill38) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill38) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(DocCoCuuKiem,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_39()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill37) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill38) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill38) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill39) ConsumeEquiproomItem(1,6,1,4363,-1) AddMagic(ThanQuangToanNhieu,nSkill39)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill39.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill38.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill39.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
---------------------------------------------------------------------Sach Kü N¨ng CÊp 40---------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen_40()
	if (HN_GetTaskID(TSK_DaiLucKimCangChuong) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DaiLucKimCangChuong) == nSkill39) then
		if (HaveMagic(DaiLucKimCangChuong) >= nSkill39) then
			HN_SetTaskID(TSK_DaiLucKimCangChuong,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(DaiLucKimCangChuong,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DaiLucKimCangChuong).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamCon_40()
	if (HN_GetTaskID(TSK_ViDaHienXu) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ViDaHienXu) == nSkill39) then
		if (HaveMagic(ViDaHienXu) >= nSkill39) then
			HN_SetTaskID(TSK_ViDaHienXu,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(ViDaHienXu,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ViDaHienXu).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThieuLamDao_40()
	if (HN_GetTaskID(TSK_TamGioiQuyThien) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TamGioiQuyThien) == nSkill39) then
		if (HaveMagic(TamGioiQuyThien) >= nSkill39) then
			HN_SetTaskID(TSK_TamGioiQuyThien,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(TamGioiQuyThien,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TamGioiQuyThien).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao_40()
	if (HN_GetTaskID(TSK_HaoHungTram) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HaoHungTram) == nSkill39) then
		if (HaveMagic(HaoHungTram) >= nSkill39) then
			HN_SetTaskID(TSK_HaoHungTram,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(HaoHungTram,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HaoHungTram).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongChuy_40()
	if (HN_GetTaskID(TSK_TungHoanhBatPhuong) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TungHoanhBatPhuong) == nSkill39) then
		if (HaveMagic(TungHoanhBatPhuong) >= nSkill39) then
			HN_SetTaskID(TSK_TungHoanhBatPhuong,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(TungHoanhBatPhuong,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TungHoanhBatPhuong).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienVuongThuong_40()
	if (HN_GetTaskID(TSK_BaVuongTamKim) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BaVuongTamKim) == nSkill39) then
		if (HaveMagic(BaVuongTamKim) >= nSkill39) then
			HN_SetTaskID(TSK_BaVuongTamKim,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(BaVuongTamKim,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BaVuongTamKim).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao_40()
	if (HN_GetTaskID(TSK_VoAnhXuyen) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_VoAnhXuyen) == nSkill39) then
		if (HaveMagic(VoAnhXuyen) >= nSkill39) then
			HN_SetTaskID(TSK_VoAnhXuyen,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(VoAnhXuyen,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(VoAnhXuyen).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTuTien_40()
	if (HN_GetTaskID(TSK_ThietLienTuSat) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThietLienTuSat) == nSkill39) then
		if (HaveMagic(ThietLienTuSat) >= nSkill39) then
			HN_SetTaskID(TSK_ThietLienTuSat,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(ThietLienTuSat,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThietLienTuSat).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function DMTieu_40()
	if (HN_GetTaskID(TSK_CanKhonNhatTrich) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CanKhonNhatTrich) == nSkill39) then
		if (HaveMagic(CanKhonNhatTrich) >= nSkill39) then
			HN_SetTaskID(TSK_CanKhonNhatTrich,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(CanKhonNhatTrich,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CanKhonNhatTrich).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong_40()
	if (HN_GetTaskID(TSK_HinhTieuCotLap) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_HinhTieuCotLap) == nSkill39) then
		if (HaveMagic(HinhTieuCotLap) >= nSkill39) then
			HN_SetTaskID(TSK_HinhTieuCotLap,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(HinhTieuCotLap,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(HinhTieuCotLap).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NguDocDao_40()
	if (HN_GetTaskID(TSK_UHonPheAnh) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_UHonPheAnh) == nSkill39) then
		if (HaveMagic(UHonPheAnh) >= nSkill39) then
			HN_SetTaskID(TSK_UHonPheAnh,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(UHonPheAnh,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(UHonPheAnh).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem_40()
	if (HN_GetTaskID(TSK_KiemHoaVanTinh) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemHoaVanTinh) == nSkill39) then
		if (HaveMagic(KiemHoaVanTinh) >= nSkill39) then
			HN_SetTaskID(TSK_KiemHoaVanTinh,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(KiemHoaVanTinh,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemHoaVanTinh).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function NgaMyChuong_40()
	if (HN_GetTaskID(TSK_BangVuLacTinh) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangVuLacTinh) == nSkill39) then
		if (HaveMagic(BangVuLacTinh) >= nSkill39) then
			HN_SetTaskID(TSK_BangVuLacTinh,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(BangVuLacTinh,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangVuLacTinh).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao_40()
	if (HN_GetTaskID(TSK_BangTuocHoatKy) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BangTuocHoatKy) == nSkill39) then
		if (HaveMagic(BangTuocHoatKy) >= nSkill39) then
			HN_SetTaskID(TSK_BangTuocHoatKy,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(BangTuocHoatKy,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BangTuocHoatKy).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThuyYenNoi_40()
	if (HN_GetTaskID(TSK_ThuyAnhManTu) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThuyAnhManTu) == nSkill39) then
		if (HaveMagic(ThuyAnhManTu) >= nSkill39) then
			HN_SetTaskID(TSK_ThuyAnhManTu,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(ThuyAnhManTu,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThuyAnhManTu).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen_40()
	if (HN_GetTaskID(TSK_ThoiThangLucLong) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThoiThangLucLong) == nSkill39) then
		if (HaveMagic(ThoiThangLucLong) >= nSkill39) then
			HN_SetTaskID(TSK_ThoiThangLucLong,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(ThoiThangLucLong,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThoiThangLucLong).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function CaiBangCon_40()
	if (HN_GetTaskID(TSK_BongHuynhLuocDia) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_BongHuynhLuocDia) == nSkill39) then
		if (HaveMagic(BongHuynhLuocDia) >= nSkill39) then
			HN_SetTaskID(TSK_BongHuynhLuocDia,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(BongHuynhLuocDia,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(BongHuynhLuocDia).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanKich_40()
	if (HN_GetTaskID(TSK_GiangHaiNoLan) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_GiangHaiNoLan) == nSkill39) then
		if (HaveMagic(GiangHaiNoLan) >= nSkill39) then
			HN_SetTaskID(TSK_GiangHaiNoLan,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(GiangHaiNoLan,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(GiangHaiNoLan).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ThienNhanDao_40()
	if (HN_GetTaskID(TSK_TatHoaLieuNguyen) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TatHoaLieuNguyen) == nSkill39) then
		if (HaveMagic(TatHoaLieuNguyen) >= nSkill39) then
			HN_SetTaskID(TSK_TatHoaLieuNguyen,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(TatHoaLieuNguyen,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TatHoaLieuNguyen).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen_40()
	if (HN_GetTaskID(TSK_TaoHoaThaiThanh) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_TaoHoaThaiThanh) == nSkill39) then
		if (HaveMagic(TaoHoaThaiThanh) >= nSkill39) then
			HN_SetTaskID(TSK_TaoHoaThaiThanh,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(TaoHoaThaiThanh,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(TaoHoaThaiThanh).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function VoDangKiem_40()
	if (HN_GetTaskID(TSK_KiemThuyTinhHa) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_KiemThuyTinhHa) == nSkill39) then
		if (HaveMagic(KiemThuyTinhHa) >= nSkill39) then
			HN_SetTaskID(TSK_KiemThuyTinhHa,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(KiemThuyTinhHa,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(KiemThuyTinhHa).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLonDao_40()
	if (HN_GetTaskID(TSK_CuuThienCuongPhong) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_CuuThienCuongPhong) == nSkill39) then
		if (HaveMagic(CuuThienCuongPhong) >= nSkill39) then
			HN_SetTaskID(TSK_CuuThienCuongPhong,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(CuuThienCuongPhong,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(CuuThienCuongPhong).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function ConLonKiem_40()
	if (HN_GetTaskID(TSK_ThienLoiChanNhac) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThienLoiChanNhac) == nSkill39) then
		if (HaveMagic(ThienLoiChanNhac) >= nSkill39) then
			HN_SetTaskID(TSK_ThienLoiChanNhac,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(ThienLoiChanNhac,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThienLoiChanNhac).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem_40()
	if (HN_GetTaskID(TSK_DocCoCuuKiem) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_DocCoCuuKiem) == nSkill39) then
		if (HaveMagic(DocCoCuuKiem) >= nSkill39) then
			HN_SetTaskID(TSK_DocCoCuuKiem,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(DocCoCuuKiem,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(DocCoCuuKiem).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end

function HoaSonKhi_40()
	if (HN_GetTaskID(TSK_ThanQuangToanNhieu) <= nSkill38) then
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §­îc Më §Õn CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
	elseif (HN_GetTaskID(TSK_ThanQuangToanNhieu) == nSkill39) then
		if (HaveMagic(ThanQuangToanNhieu) >= nSkill39) then
			HN_SetTaskID(TSK_ThanQuangToanNhieu,nSkill40) ConsumeEquiproomItem(1,6,1,4364,-1) AddMagic(ThanQuangToanNhieu,nSkill40)
			Msg2Player("Chóc Mõng Ng­¬i §· Më §­îc Giíi H¹n Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Lªn <color=yellow>"..nSkill40.."<color>")
		else
			Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> Cña Ng­¬i Ch­a §¹t CÊp <color=yellow>"..nSkill39.."<color> H·y Cè G¨ng Tu LuyÖn Thªm")
		end
	else
		Msg2Player("Kü N¨ng 150 <color=yellow>"..GetSkillName(ThanQuangToanNhieu).."<color> CÊp <color=yellow>"..nSkill40.."<color>Cña Ng­¬i §· §­îc Më Råi")
	end
end
