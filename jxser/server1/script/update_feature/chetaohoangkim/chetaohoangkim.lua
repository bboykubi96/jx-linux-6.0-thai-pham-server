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
		--{"Ch� T�o C� S�n ",NangCapDoQuy.CheTaoDoQuy,{NangCapDoQuy}},
		--{"Ch� T�o C�ng Kh�n ",NangCapNhuTinh.CheTaoNhuTinh,{NangCapNhuTinh}},
		--{"Ch� T�o T�n Nh�m �n",NangCapHiepCot.CheTaoHiepCot,{NangCapHiepCot}},
		{"Ch� T�o Xuy�n Y ",NangCapDinhQuoc.CheTaoDinhQuoc,{NangCapDinhQuoc}},
		--{"Ch� T�o Phi Phong V�nh Vi�n",NangCapChienMa.CheTaoChienMa,{NangCapChienMa}},
		--{"Ch� T�o M�t N� 3 skill VV",NangCapHoangKim.CheTaoHoangKim,{NangCapHoangKim}},
		--{"Ch� T�o Ng�a V�nh Vi�n 4 Skill",NangCapChienMaVip.CheTaoChienMaVip,{NangCapChienMaVip}},
		{"H�y B�"},
	}
	CreateNewSayEx("Ng��i Mu�n Ch� T�o Trang B� N�o", tbOpt)
end


































-------------------------------------------------------------------------------------------
pEventType:Reg("Th� r�n ","Ch� T�o �� Ho�ng Kim", DialogMain_DoHoangKim,{tbHKMPAward})
-------------------------------------------------------------------------------------------