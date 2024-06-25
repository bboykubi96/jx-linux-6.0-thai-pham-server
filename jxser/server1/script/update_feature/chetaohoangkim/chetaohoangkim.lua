Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\update_feature\\chetaohoangkim\\chetaoanbang\\equip_anbang.lua")
Include("\\script\\update_feature\\chetaohoangkim\\chetaonhutinh\\equip_nhutinh.lua")
Include("\\script\\update_feature\\chetaohoangkim\\chetaohiepcot\\equip_hiepcot.lua")
Include("\\script\\update_feature\\chetaohoangkim\\chetaodinhquoc\\equip_dinhquoc.lua")
Include("\\script\\update_feature\\chetaohoangkim\\chetaohkmp\\equip_hkmp.lua")
Include("\\script\\update_feature\\chetaohoangkim\\nangcapchienma\\equip_chienma.lua")
Include("\\script\\update_feature\\chetaohoangkim\\nangcapchienma2\\equip_chienma2.lua")
---------------------------------------------------
function DialogMain_DoHoangKim()
	local tbOpt = {
		--{"Ch’ Tπo CË S¨n ",NangCapDoQuy.CheTaoDoQuy,{NangCapDoQuy}},
		--{"Ch’ Tπo Cµng Kh´n ",NangCapNhuTinh.CheTaoNhuTinh,{NangCapNhuTinh}},
		--{"Ch’ Tπo T©n NhÀm  n",NangCapHiepCot.CheTaoHiepCot,{NangCapHiepCot}},
		{"Ch’ Tπo Xuy™n Y ",NangCapDinhQuoc.CheTaoDinhQuoc,{NangCapDinhQuoc}},
		--{"Ch’ Tπo Phi Phong V‹nh Vi‘n",NangCapChienMa.CheTaoChienMa,{NangCapChienMa}},
		--{"Ch’ Tπo M∆t Nπ 3 skill VV",NangCapHoangKim.CheTaoHoangKim,{NangCapHoangKim}},
		--{"Ch’ Tπo Ng˘a V‹nh Vi‘n 4 Skill",NangCapChienMaVip.CheTaoChienMaVip,{NangCapChienMaVip}},
		{"HÒy B·"},
	}
	CreateNewSayEx("Ng≠¨i MuËn Ch’ Tπo Trang Bﬁ Nµo", tbOpt)
end


































-------------------------------------------------------------------------------------------
pEventType:Reg("ThÓ rÃn ","Ch’ Tπo ßÂ Hoµng Kim", DialogMain_DoHoangKim,{tbHKMPAward})
-------------------------------------------------------------------------------------------