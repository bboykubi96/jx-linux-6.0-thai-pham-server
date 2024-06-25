-------------------------------*Script*By*Heart*Doldly*------------------------------------------------------
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\bachho\\kiemdinh_bh.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\bachho\\kiemdinh_bh_max.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\bachho\\quynguyen_bh.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\bachho\\quynguyen_bh_max.lua")
----------------------------------------------------------------------------------------------
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\xichlan\\kiemdinh_xl.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\xichlan\\kiemdinh_xl_max.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\xichlan\\quynguyen_xl.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\xichlan\\quynguyen_xl_max.lua")
-------------------------------------------------------------------------------------------------
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\minhphuong\\kiemdinh_mp.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\minhphuong\\kiemdinh_mp_max.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\minhphuong\\quynguyen_mp.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\minhphuong\\quynguyen_mp_max.lua")
------------------------------------------------------------------------------------------------------
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\danglong\\kiemdinh_dl.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\danglong\\kiemdinh_dl_max.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\danglong\\quynguyen_dl.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\danglong\\quynguyen_dl_max.lua")
---------------------------------------------------------------------------------------------------
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\tinhsuong\\kiemdinh_ts.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\tinhsuong\\kiemdinh_ts_max.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\tinhsuong\\quynguyen_ts.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\tinhsuong\\quynguyen_ts_max.lua")
------------------------------------------------------------------------------------------------------
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\nguyetkhuyet\\kiemdinh_nk.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\nguyetkhuyet\\kiemdinh_nk_max.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\nguyetkhuyet\\quynguyen_nk.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\nguyetkhuyet\\quynguyen_nk_max.lua")
-----------------------------------------------------------------------------------------------------------
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\dieuduong\\kiemdinh_dd.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\dieuduong\\kiemdinh_dd_max.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\dieuduong\\quynguyen_dd.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\dieuduong\\quynguyen_dd_max.lua")
--------------------------------------------------------------------------------------------------------------
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\anhhao\\kiemdinh_ah.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\anhhao\\kiemdinh_ah_max.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\anhhao\\quynguyen_ah.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\anhhao\\quynguyen_ah_max.lua")
--------------------------------------------------------------------------------------------------------------
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\thienmenh\\kiemdinh_tm.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\thienmenh\\kiemdinh_tm_max.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\thienmenh\\quynguyen_tm.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\thienmenh\\quynguyen_tm_max.lua")
--------------------------------------------------------------------------------------------------------------
function DoiTrangBi()
	local tbOpt = {
		-- {"Ki�m ��nh: B�o R��ng",KiemDinhBaoRuong},
		{"Quy Nguy�n: B�o R��ng",QuyNguyenBaoRuong},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end
-------------------------------------------------------------------------------------------------------------------------------
function KiemDinhBaoRuong()
	local tbOpt = {
		--{"Ki�m ��nh: B�o R��ng B�ch H�",KiemDinhBaoRuongBachHo},
		--{"Ki�m ��nh: B�o R��ng X�ch L�n",KiemDinhBaoRuongXichLan},
		--{"Ki�m ��nh: B�o R��ng Minh Ph��ng",KiemDinhBaoRuongMinhPhuong},
		--{"Ki�m ��nh: B�o R��ng ��ng Long",KiemDinhBaoRuongDangLong},
		--{"Ki�m ��nh: B�o R��ng Tinh S��ng",KiemDinhBaoRuongTinhSuong},
		--{"Ki�m ��nh: B�o R��ng Nguy�t Khuy�t",KiemDinhBaoRuongNguyetKhuyet},
		--{"Ki�m ��nh: B�o R��ng Di�u D��ng",KiemDinhBaoRuongDieuDuong},
		{"Ki�m ��nh: B�o R��ng Anh h�o",KiemDinhBaoRuongAnhHao},
		--{"Ki�m ��nh: B�o R��ng Thi�n M�nh",KiemDinhBaoRuongThienMenh},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function KiemDinhBaoRuongBachHo()
	local tbOpt = {
		{"B�ch H� Ng�u Nhi�n Thu�c T�nh", KiemDinhBachHo.SelectParts, {KiemDinhBachHo}},
		{"B�ch H� Thu�c T�nh T�i �a",KiemDinhBachHoMax.SelectParts, {KiemDinhBachHoMax}},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function KiemDinhBaoRuongXichLan()
	local tbOpt = {
		{"X�ch L�n Ng�u Nhi�n Thu�c T�nh", KiemDinhXichLan.SelectParts, {KiemDinhXichLan}},
		{"X�ch L�n Thu�c T�nh T�i �a",KiemDinhXichLanMax.SelectParts, {KiemDinhXichLanMax}},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function KiemDinhBaoRuongMinhPhuong()
	local tbOpt = {
		{"Minh Ph��ng Ng�u Nhi�n Thu�c T�nh", KiemDinhMinhPhuong.SelectParts, {KiemDinhMinhPhuong}},
		{"Minh Ph��ng Thu�c T�nh T�i �a",KiemDinhMinhPhuongMax.SelectParts, {KiemDinhMinhPhuongMax}},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function KiemDinhBaoRuongDangLong()
	local tbOpt = {
		{"��ng Long Ng�u Nhi�n Thu�c T�nh", KiemDinhDangLong.SelectParts, {KiemDinhDangLong}},
		{"��ng Long Thu�c T�nh T�i �a",KiemDinhDangLongMax.SelectParts, {KiemDinhDangLongMax}},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function KiemDinhBaoRuongTinhSuong()
	local tbOpt = {
		{"Tinh S��ng Ng�u Nhi�n Thu�c T�nh", KiemDinhTinhSuong.SelectParts, {KiemDinhTinhSuong}},
		{"Tinh S��ng Thu�c T�nh T�i �a",KiemDinhTinhSuongMax.SelectParts, {KiemDinhTinhSuongMax}},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function KiemDinhBaoRuongNguyetKhuyet()
	local tbOpt = {
		{"Nguy�t Khuy�t Ng�u Nhi�n Thu�c T�nh", KiemDinhNguyetKhuyet.SelectParts, {KiemDinhNguyetKhuyet}},
		{"Nguy�t Khuy�t Thu�c T�nh T�i �a",KiemDinhNguyetKhuyetMax.SelectParts, {KiemDinhNguyetKhuyetMax}},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function KiemDinhBaoRuongDieuDuong()
	local tbOpt = {
		{"Di�u D��ng Ng�u Nhi�n Thu�c T�nh", KiemDinhDieuDuong.SelectParts, {KiemDinhDieuDuong}},
		{"Di�u D��ng Thu�c T�nh T�i �a",KiemDinhDieuDuongMax.SelectParts, {KiemDinhDieuDuongMax}},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function KiemDinhBaoRuongAnhHao()
	local tbOpt = {
		{"Anh H�o Ng�u Nhi�n Thu�c T�nh", KiemDinhAnhHao.SelectParts, {KiemDinhAnhHao}},
		{"Anh H�o Thu�c T�nh T�i �a",KiemDinhAnhHaoMax.SelectParts, {KiemDinhAnhHaoMax}},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function KiemDinhBaoRuongThienMenh()
	local tbOpt = {
		{"Thi�n M�nh Ng�u Nhi�n Thu�c T�nh", KiemDinhThienMenh.SelectParts, {KiemDinhThienMenh}},
		{"Thi�n M�nh Thu�c T�nh T�i �a",KiemDinhThienMenhMax.SelectParts, {KiemDinhThienMenhMax}},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end
--==================================================================================================================================================================================================--
function QuyNguyenBaoRuong()
	local tbOpt = {
		--{"Quy Nguy�n: B�o R��ng B�ch H�",QuyNguyenBaoRuongBachHo},
		--{"Quy Nguy�n: B�o R��ng X�ch L�n",QuyNguyenBaoRuongXichLan},
		{"Quy Nguy�n: B�o R��ng Minh Ph��ng",QuyNguyenBaoRuongMinhPhuong},
		--{"Quy Nguy�n: B�o R��ng ��ng Long",QuyNguyenBaoRuongDangLong},
		--{"Quy Nguy�n: B�o R��ng Tinh S��ng",QuyNguyenBaoRuongTinhSuong},
		--{"Quy Nguy�n: B�o R��ng Nguy�t Khuy�t",QuyNguyenBaoRuongNguyetKhuyet},
		--{"Quy Nguy�n: B�o R��ng Di�u D��ng",QuyNguyenBaoRuongDieuDuong},
		-- {"Quy Nguy�n: B�o R��ng Anh H�o",QuyNguyenBaoRuongAnhHao},
		--{"Quy Nguy�n: B�o R��ng Thi�n M�nh",QuyNguyenBaoRuongThienMenh},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function QuyNguyenBaoRuongBachHo()
	local tbOpt = {
		{"B�ch H� Ng�u Nhi�n Thu�c T�nh", QuyNguyenBachHo},
		{"B�ch H� Thu�c T�nh T�i �a",QuyNguyenBachHoMax},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function QuyNguyenBaoRuongXichLan()
	local tbOpt = {
		{"X�ch L�n Ng�u Nhi�n Thu�c T�nh", QuyNguyenXichLan},
		{"X�ch L�n Thu�c T�nh T�i �a",QuyNguyenXichLanMax},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function QuyNguyenBaoRuongMinhPhuong()
	local tbOpt = {
		{"Minh Ph��ng Ng�u Nhi�n Thu�c T�nh", QuyNguyenMinhPhuong},
		-- {"Minh Ph��ng Thu�c T�nh T�i �a",QuyNguyenMinhPhuongMax},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function QuyNguyenBaoRuongDangLong()
	local tbOpt = {
		{"��ng Long Ng�u Nhi�n Thu�c T�nh", QuyNguyenDangLong},
		{"��ng Long Thu�c T�nh T�i �a",QuyNguyenDangLongMax},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function QuyNguyenBaoRuongTinhSuong()
	local tbOpt = {
		{"Tinh S��ng Ng�u Nhi�n Thu�c T�nh", QuyNguyenTinhSuong},
		{"Tinh S��ng Thu�c T�nh T�i �a",QuyNguyenTinhSuongMax},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function QuyNguyenBaoRuongNguyetKhuyet()
	local tbOpt = {
		{"Nguy�t Khuy�t Ng�u Nhi�n Thu�c T�nh", QuyNguyenNguyetKhuyet},
		{"Nguy�t Khuy�t Thu�c T�nh T�i �a",QuyNguyenNguyetKhuyetMax},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function QuyNguyenBaoRuongDieuDuong()
	local tbOpt = {
		{"Di�u D��ng Ng�u Nhi�n Thu�c T�nh", QuyNguyenDieuDuong},
		{"Di�u D��ng Thu�c T�nh T�i �a",QuyNguyenDieuDuongMax},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function QuyNguyenBaoRuongAnhHao()
	local tbOpt = {
		{"Anh H�o Ng�u Nhi�n Thu�c T�nh", QuyNguyenAnhHao},
		{"Anh H�o Thu�c T�nh T�i �a",QuyNguyenAnhHaoMax},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end

function QuyNguyenBaoRuongThienMenh()
	local tbOpt = {
		{"Thi�n M�nh Ng�u Nhi�n Thu�c T�nh", QuyNguyenThienMenh},
		{"Thi�n M�nh Thu�c T�nh T�i �a",QuyNguyenThienMenhMax},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>H�y Ch�n Trang B� Mu�n ��i<color>", tbOpt)
end
----------------------------------------------------------------------------------------------------------------------