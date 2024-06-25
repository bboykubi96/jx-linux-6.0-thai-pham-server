-------------------------------*Script*By*Heart*Doldly*------------------------------------------------------
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaohkmp\\bachho\\chetaobh.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaohkmp\\xichlan\\chetaoxl.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaohkmp\\minhphuong\\chetaomp.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaohkmp\\danglong\\chetaodl.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaohkmp\\tinhsuong\\chetaots.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaohkmp\\nguyetkhuyet\\chetaonk.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaohkmp\\dieuduong\\chetaodd.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaohkmp\\anhhao\\chetaoah.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaohkmp\\thienmenh\\chetaotm.lua")
--------------------------------------------------------------------------------------------------------------
function CheTaoTrangBi()
	local tbOpt = {
		{"Trang B� B�ch H�", CheTaoBachHo.SelectParts, {CheTaoBachHo}},
		{"Trang B� X�ch L�n", CheTaoXichLan.SelectParts, {CheTaoXichLan}},
		{"Trang B� Minh Ph��ng", CheTaoMinhPhuong.SelectParts, {CheTaoMinhPhuong}},
		{"Trang B� ��ng Long", CheTaoDangLong.SelectParts, {CheTaoDangLong}},
		{"Trang B� Tinh S��ng", CheTaoTinhSuong.SelectParts, {CheTaoTinhSuong}},
		{"Trang B� Nguy�t Khuy�t", CheTaoNguyetKhuyet.SelectParts, {CheTaoNguyetKhuyet}},
		{"Trang B� Di�u D��ng", CheTaoDieuDuong.SelectParts, {CheTaoDieuDuong}},
		{"Trang B� Anh H�o", CheTaoAnhHao.SelectParts, {CheTaoAnhHao}},
		{"Trang B� Thi�n M�nh", CheTaoThienMenh.SelectParts, {CheTaoThienMenh}},
		{"Th�i Ta Ch� Ti�n Gh� Th�m",},
	}
	CreateNewSayEx("<npc><color=green>M�i "..myplayersex().." Ch�n Trang B� Mu�n Ch� T�o<color>", tbOpt)
end
-------------------------------------------------------------------------------------------------------------------------------


























-------------------------------------------------------------------------------------------
--pEventType:Reg("Th� r�n","Ch� T�o Trang B�", CheTaoTrangBi, {tbHKMPAward})
-------------------------------------------------------------------------------------------