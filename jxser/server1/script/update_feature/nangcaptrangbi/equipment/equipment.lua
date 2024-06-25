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
		-- {"KiÓm §Þnh: B¶o R­¬ng",KiemDinhBaoRuong},
		{"Quy Nguyªn: B¶o R­¬ng",QuyNguyenBaoRuong},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end
-------------------------------------------------------------------------------------------------------------------------------
function KiemDinhBaoRuong()
	local tbOpt = {
		--{"KiÓm §Þnh: B¶o R­¬ng B¹ch Hæ",KiemDinhBaoRuongBachHo},
		--{"KiÓm §Þnh: B¶o R­¬ng XÝch L©n",KiemDinhBaoRuongXichLan},
		--{"KiÓm §Þnh: B¶o R­¬ng Minh Ph­îng",KiemDinhBaoRuongMinhPhuong},
		--{"KiÓm §Þnh: B¶o R­¬ng §»ng Long",KiemDinhBaoRuongDangLong},
		--{"KiÓm §Þnh: B¶o R­¬ng Tinh S­¬ng",KiemDinhBaoRuongTinhSuong},
		--{"KiÓm §Þnh: B¶o R­¬ng NguyÖt KhuyÕt",KiemDinhBaoRuongNguyetKhuyet},
		--{"KiÓm §Þnh: B¶o R­¬ng DiÖu D­¬ng",KiemDinhBaoRuongDieuDuong},
		{"KiÓm §Þnh: B¶o R­¬ng Anh hµo",KiemDinhBaoRuongAnhHao},
		--{"KiÓm §Þnh: B¶o R­¬ng Thiªn MÖnh",KiemDinhBaoRuongThienMenh},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function KiemDinhBaoRuongBachHo()
	local tbOpt = {
		{"B¹ch Hæ NgÉu Nhiªn Thuéc TÝnh", KiemDinhBachHo.SelectParts, {KiemDinhBachHo}},
		{"B¹ch Hæ Thuéc TÝnh Tèi §a",KiemDinhBachHoMax.SelectParts, {KiemDinhBachHoMax}},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function KiemDinhBaoRuongXichLan()
	local tbOpt = {
		{"XÝch L©n NgÉu Nhiªn Thuéc TÝnh", KiemDinhXichLan.SelectParts, {KiemDinhXichLan}},
		{"XÝch L©n Thuéc TÝnh Tèi §a",KiemDinhXichLanMax.SelectParts, {KiemDinhXichLanMax}},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function KiemDinhBaoRuongMinhPhuong()
	local tbOpt = {
		{"Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh", KiemDinhMinhPhuong.SelectParts, {KiemDinhMinhPhuong}},
		{"Minh Ph­îng Thuéc TÝnh Tèi §a",KiemDinhMinhPhuongMax.SelectParts, {KiemDinhMinhPhuongMax}},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function KiemDinhBaoRuongDangLong()
	local tbOpt = {
		{"§»ng Long NgÉu Nhiªn Thuéc TÝnh", KiemDinhDangLong.SelectParts, {KiemDinhDangLong}},
		{"§»ng Long Thuéc TÝnh Tèi §a",KiemDinhDangLongMax.SelectParts, {KiemDinhDangLongMax}},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function KiemDinhBaoRuongTinhSuong()
	local tbOpt = {
		{"Tinh S­¬ng NgÉu Nhiªn Thuéc TÝnh", KiemDinhTinhSuong.SelectParts, {KiemDinhTinhSuong}},
		{"Tinh S­¬ng Thuéc TÝnh Tèi §a",KiemDinhTinhSuongMax.SelectParts, {KiemDinhTinhSuongMax}},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function KiemDinhBaoRuongNguyetKhuyet()
	local tbOpt = {
		{"NguyÖt KhuyÕt NgÉu Nhiªn Thuéc TÝnh", KiemDinhNguyetKhuyet.SelectParts, {KiemDinhNguyetKhuyet}},
		{"NguyÖt KhuyÕt Thuéc TÝnh Tèi §a",KiemDinhNguyetKhuyetMax.SelectParts, {KiemDinhNguyetKhuyetMax}},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function KiemDinhBaoRuongDieuDuong()
	local tbOpt = {
		{"Diªu D­¬ng NgÉu Nhiªn Thuéc TÝnh", KiemDinhDieuDuong.SelectParts, {KiemDinhDieuDuong}},
		{"DiÖu D­¬ng Thuéc TÝnh Tèi §a",KiemDinhDieuDuongMax.SelectParts, {KiemDinhDieuDuongMax}},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function KiemDinhBaoRuongAnhHao()
	local tbOpt = {
		{"Anh Hµo NgÉu Nhiªn Thuéc TÝnh", KiemDinhAnhHao.SelectParts, {KiemDinhAnhHao}},
		{"Anh Hµo Thuéc TÝnh Tèi §a",KiemDinhAnhHaoMax.SelectParts, {KiemDinhAnhHaoMax}},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function KiemDinhBaoRuongThienMenh()
	local tbOpt = {
		{"Thiªn MÖnh NgÉu Nhiªn Thuéc TÝnh", KiemDinhThienMenh.SelectParts, {KiemDinhThienMenh}},
		{"Thiªn MÖnh Thuéc TÝnh Tèi §a",KiemDinhThienMenhMax.SelectParts, {KiemDinhThienMenhMax}},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end
--==================================================================================================================================================================================================--
function QuyNguyenBaoRuong()
	local tbOpt = {
		--{"Quy Nguyªn: B¶o R­¬ng B¹ch Hæ",QuyNguyenBaoRuongBachHo},
		--{"Quy Nguyªn: B¶o R­¬ng XÝch L©n",QuyNguyenBaoRuongXichLan},
		{"Quy Nguyªn: B¶o R­¬ng Minh Ph­îng",QuyNguyenBaoRuongMinhPhuong},
		--{"Quy Nguyªn: B¶o R­¬ng §»ng Long",QuyNguyenBaoRuongDangLong},
		--{"Quy Nguyªn: B¶o R­¬ng Tinh S­¬ng",QuyNguyenBaoRuongTinhSuong},
		--{"Quy Nguyªn: B¶o R­¬ng NguyÖt KhuyÕt",QuyNguyenBaoRuongNguyetKhuyet},
		--{"Quy Nguyªn: B¶o R­¬ng DiÖu D­¬ng",QuyNguyenBaoRuongDieuDuong},
		-- {"Quy Nguyªn: B¶o R­¬ng Anh Hµo",QuyNguyenBaoRuongAnhHao},
		--{"Quy Nguyªn: B¶o R­¬ng Thiªn MÖnh",QuyNguyenBaoRuongThienMenh},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function QuyNguyenBaoRuongBachHo()
	local tbOpt = {
		{"B¹ch Hæ NgÉu Nhiªn Thuéc TÝnh", QuyNguyenBachHo},
		{"B¹ch Hæ Thuéc TÝnh Tèi §a",QuyNguyenBachHoMax},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function QuyNguyenBaoRuongXichLan()
	local tbOpt = {
		{"XÝch L©n NgÉu Nhiªn Thuéc TÝnh", QuyNguyenXichLan},
		{"XÝch L©n Thuéc TÝnh Tèi §a",QuyNguyenXichLanMax},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function QuyNguyenBaoRuongMinhPhuong()
	local tbOpt = {
		{"Minh Ph­¬ng NgÉu Nhiªn Thuéc TÝnh", QuyNguyenMinhPhuong},
		-- {"Minh Ph­¬ng Thuéc TÝnh Tèi §a",QuyNguyenMinhPhuongMax},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function QuyNguyenBaoRuongDangLong()
	local tbOpt = {
		{"§»ng Long NgÉu Nhiªn Thuéc TÝnh", QuyNguyenDangLong},
		{"§»ng Long Thuéc TÝnh Tèi §a",QuyNguyenDangLongMax},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function QuyNguyenBaoRuongTinhSuong()
	local tbOpt = {
		{"Tinh S­¬ng NgÉu Nhiªn Thuéc TÝnh", QuyNguyenTinhSuong},
		{"Tinh S­¬ng Thuéc TÝnh Tèi §a",QuyNguyenTinhSuongMax},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function QuyNguyenBaoRuongNguyetKhuyet()
	local tbOpt = {
		{"NguyÖt KhuyÕt NgÉu Nhiªn Thuéc TÝnh", QuyNguyenNguyetKhuyet},
		{"NguyÖt KhuyÕt Thuéc TÝnh Tèi §a",QuyNguyenNguyetKhuyetMax},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function QuyNguyenBaoRuongDieuDuong()
	local tbOpt = {
		{"DiÖu D­¬ng NgÉu Nhiªn Thuéc TÝnh", QuyNguyenDieuDuong},
		{"DiÖu D­¬ng Thuéc TÝnh Tèi §a",QuyNguyenDieuDuongMax},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function QuyNguyenBaoRuongAnhHao()
	local tbOpt = {
		{"Anh Hµo NgÉu Nhiªn Thuéc TÝnh", QuyNguyenAnhHao},
		{"Anh Hµo Thuéc TÝnh Tèi §a",QuyNguyenAnhHaoMax},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end

function QuyNguyenBaoRuongThienMenh()
	local tbOpt = {
		{"Thiªn MÖnh NgÉu Nhiªn Thuéc TÝnh", QuyNguyenThienMenh},
		{"Thiªn MÖnh Thuéc TÝnh Tèi §a",QuyNguyenThienMenhMax},
		{"Th«i Ta ChØ TiÖn GhÐ Th¨m",},
	}
	CreateNewSayEx("<npc><color=green>H·y Chän Trang BÞ Muèn §æi<color>", tbOpt)
end
----------------------------------------------------------------------------------------------------------------------