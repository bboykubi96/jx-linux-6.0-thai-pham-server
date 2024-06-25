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
local szTitle = "<color=green>Ng��i Mu�n Tr�ng Luy�n Lo�i Trang B� N�o<color>"
	local tbOpt = {
		{"Tr�ng Luy�n: Ng�u Nhi�n Thu�c T�nh",TrungLuyenRandom},
		--{"Tr�ng Luy�n: Thu�c T�nh T�i �a",TrungLuyenMax},
		{"Th�i Ta C� Vi�c B�n R�i",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
------------------------------------------------------------------------------------------
function TrungLuyenRandom()
	local tbOpt = {
		--{"Trang B� B�ch H�", TrungLuyenBachHo},
		--{"Trang B� X�ch L�n", TrungLuyenXichLan},
		--{"Trang B� Minh Ph��ng", TrungLuyenMinhPhuong},
		--{"Trang B� ��ng Long", TrungLuyenDangLong},
		--{"Trang B� Tinh S��ng", TrungLuyenTinhSuong},
		--{"Trang B� Nguy�t Khuy�t", TrungLuyenNguyetKhuyet},
		{"Trang B� Di�u D��ng", TrungLuyenDieuDuong},
		{"Trang B� Anh H�o", TrungLuyenAnhHao},
		--{"Trang B� Thi�n M�nh", TrungLuyenThienMenh},
		{"Tho�t",},
	}
	CreateNewSayEx("<npc><color=green>Ng��i H�y Ch�n Trang B� Mu�n Tr�ng Luy�n<color>", tbOpt)
end
----------------------------------------------------------------------------------------------------------------------------------------
function TrungLuyenMax()
	local tbOpt = {
		--{"Trang B� B�ch H�", TrungLuyenBachHoMax},
		--{"Trang B� X�ch L�n", TrungLuyenXichLanMax},
		--{"Trang B� Minh Ph��ng", TrungLuyenMinhPhuongMax},
		--{"Trang B� ��ng Long", TrungLuyenDangLongMax},
		{"Trang B� Tinh S��ng", TrungLuyenTinhSuongMax},
		--{"Trang B� Nguy�t Khuy�t", TrungLuyenNguyetKhuyetMax},
		--{"Trang B� Di�u D��ng", TrungLuyenDieuDuongMax},
		--{"Trang B� Anh H�o", TrungLuyenAnhHaoMax},
		--{"Trang B� Thi�n M�nh", TrungLuyenThienMenhMax},
		{"Tho�t",},
	}
	CreateNewSayEx("<npc><color=green>Ng��i H�y Ch�n Trang B� Mu�n Tr�ng Luy�n<color>", tbOpt)
end
---------------------------------------------------------------------------------------------------------------------------------------------