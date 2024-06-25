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
		{"Trang Bﬁ Bπch HÊ", CheTaoBachHo.SelectParts, {CheTaoBachHo}},
		{"Trang Bﬁ X›ch L©n", CheTaoXichLan.SelectParts, {CheTaoXichLan}},
		{"Trang Bﬁ Minh Ph≠Óng", CheTaoMinhPhuong.SelectParts, {CheTaoMinhPhuong}},
		{"Trang Bﬁ ßªng Long", CheTaoDangLong.SelectParts, {CheTaoDangLong}},
		{"Trang Bﬁ Tinh S≠¨ng", CheTaoTinhSuong.SelectParts, {CheTaoTinhSuong}},
		{"Trang Bﬁ Nguy÷t Khuy’t", CheTaoNguyetKhuyet.SelectParts, {CheTaoNguyetKhuyet}},
		{"Trang Bﬁ Di÷u D≠¨ng", CheTaoDieuDuong.SelectParts, {CheTaoDieuDuong}},
		{"Trang Bﬁ Anh Hµo", CheTaoAnhHao.SelectParts, {CheTaoAnhHao}},
		{"Trang Bﬁ Thi™n M÷nh", CheTaoThienMenh.SelectParts, {CheTaoThienMenh}},
		{"Th´i Ta Chÿ Ti÷n Gh– Th®m",},
	}
	CreateNewSayEx("<npc><color=green>MÍi "..myplayersex().." Ch‰n Trang Bﬁ MuËn Ch’ Tπo<color>", tbOpt)
end
-------------------------------------------------------------------------------------------------------------------------------


























-------------------------------------------------------------------------------------------
--pEventType:Reg("ThÓ rÃn","Ch’ Tπo Trang Bﬁ", CheTaoTrangBi, {tbHKMPAward})
-------------------------------------------------------------------------------------------