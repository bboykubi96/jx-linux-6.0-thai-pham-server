-------------------------------------*Create*By*Heart*Doldly*-----------------------------------------
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\bachho.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\bachhomax.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\xichlan.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\xichlanmax.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\minhphuong.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\minhphuongmax.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\danglong.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\danglongmax.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\tinhsuong.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\tinhsuongmax.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\nguyetkhuyet.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\nguyetkhuyetmax.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\dieuduong.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\dieuduongmax.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\anhhao.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\anhhaomax.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\ThienMenh.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\ThienMenhmax.lua")
------------------------------------------------------------------------------------------------------------------------------
function TrungLuyen()
local szTitle = "<color=green>Ng­¬i Muèn Trïng LuyÖn Lo¹i Trang BÞ Nµo<color>"
	local tbOpt = {
		{"Trïng LuyÖn: NgÉu Nhiªn Thuéc TÝnh",TrungLuyenRandom},
		--{"Trïng LuyÖn: Thuéc TÝnh Tèi §a",TrungLuyenMax},
		{"Th«i Ta Cã ViÖc BËn Råi",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
------------------------------------------------------------------------------------------
function TrungLuyenRandom()
	local tbOpt = {
		--{"Trang BÞ B¹ch Hæ", TrungLuyenBachHo},
		--{"Trang BÞ XÝch L©n", TrungLuyenXichLan},
		--{"Trang BÞ Minh Ph­îng", TrungLuyenMinhPhuong},
		--{"Trang BÞ §»ng Long", TrungLuyenDangLong},
		--{"Trang BÞ Tinh S­¬ng", TrungLuyenTinhSuong},
		--{"Trang BÞ NguyÖt KhuyÕt", TrungLuyenNguyetKhuyet},
		{"Trang BÞ DiÖu D­¬ng", TrungLuyenDieuDuong},
		{"Trang BÞ Anh Hµo", TrungLuyenAnhHao},
		--{"Trang BÞ Thiªn MÖnh", TrungLuyenThienMenh},
		{"Tho¸t",},
	}
	CreateNewSayEx("<npc><color=green>Ng­¬i H·y Chän Trang BÞ Muèn Trïng LuyÖn<color>", tbOpt)
end
----------------------------------------------------------------------------------------------------------------------------------------
function TrungLuyenMax()
	local tbOpt = {
		--{"Trang BÞ B¹ch Hæ", TrungLuyenBachHoMax},
		--{"Trang BÞ XÝch L©n", TrungLuyenXichLanMax},
		--{"Trang BÞ Minh Ph­îng", TrungLuyenMinhPhuongMax},
		--{"Trang BÞ §»ng Long", TrungLuyenDangLongMax},
		{"Trang BÞ Tinh S­¬ng", TrungLuyenTinhSuongMax},
		--{"Trang BÞ NguyÖt KhuyÕt", TrungLuyenNguyetKhuyetMax},
		--{"Trang BÞ DiÖu D­¬ng", TrungLuyenDieuDuongMax},
		--{"Trang BÞ Anh Hµo", TrungLuyenAnhHaoMax},
		--{"Trang BÞ Thiªn MÖnh", TrungLuyenThienMenhMax},
		{"Tho¸t",},
	}
	CreateNewSayEx("<npc><color=green>Ng­¬i H·y Chän Trang BÞ Muèn Trïng LuyÖn<color>", tbOpt)
end
---------------------------------------------------------------------------------------------------------------------------------------------