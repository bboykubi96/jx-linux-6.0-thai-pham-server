Include("\\script\\task\\system\\task_string.lua")
---------------------------------------------------
tb_150skill = { 
	[0] = {1055, 1056, 1057}, 
	[1] = {1058, 1059, 1060}, 
	[2] = {1069, 1070, 1071}, 
	[3] = {1066, 1067}, 
	[4] = {1061, 1062, 1114}, 
	[5] = {1063, 1065}, 
	[6] = {1073, 1074}, 
	[7] = {1075, 1076}, 
	[8] = {1078, 1079}, 
	[9] = {1080, 1081},
	[10] = {1369, 1384},
	[11] = {1985, 1969},
}

function main(nItemIdx)
local G,D,P,nLevel = GetItemProp(nItemIdx)
if (G ~= 6) then
	return 1
end
	local n_fac = GetLastFactionNumber(); 
	if (n_fac < 0) then 
		Talk(1, "","Gi�ng nh� quy�n s�ch n�y mi�u t� ch�nh l� c�c m�n ph�i cao c�p v� c�ng , ng��i kh�ng bi�t b�n h� huy�n c� "); 
		return 1; 
	end

	--Ky Nang 21
	if (P == 4345) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_21(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 22
	if (P == 4346) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_22(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 23
	if (P == 4347) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_23(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 24
	if (P == 4348) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_24(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 25
	if (P == 4349) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_25(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 26
	if (P == 4350) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_26(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 27
	if (P == 4351) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_27(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 28
	if (P == 4352) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_28(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 29
	if (P == 4353) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_29(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 30
	if (P == 4354) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_30(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 31
	if (P == 4355) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_31(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 32
	if (P == 4356) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_32(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 33
	if (P == 4357) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_33(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 34
	if (P == 4358) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_34(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 35
	if (P == 4359) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_35(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 36
	if (P == 4360) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_36(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 37
	if (P == 4361) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_37(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 38
	if (P == 4362) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_38(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 39
	if (P == 4363) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_39(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 40
	if (P == 4364) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel_40(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "l�a ch�n c�n th�ng c�p ��ch k� n�ng:"); 
		tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end
end 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function upgrade_skilllevel_21(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 20) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 20\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 21) then
		Talk(1,"","K� N�ng 150 C�p 21 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4345, -1) == 1) then
		AddMagic(n_skillid, 21);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 21",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_22(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 21) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 21\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 22) then
		Talk(1,"","K� N�ng 150 C�p 22 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4346, -1) == 1) then
		AddMagic(n_skillid, 22);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 22",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_23(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 22) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 22\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 23) then
		Talk(1,"","K� N�ng 150 C�p 23 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4347, -1) == 1) then
		AddMagic(n_skillid, 23);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 23",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_24(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 23) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 23\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 24) then
		Talk(1,"","K� N�ng 150 C�p 24 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4348, -1) == 1) then
		AddMagic(n_skillid, 24);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 24",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_25(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 24) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 24\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 25) then
		Talk(1,"","K� N�ng 150 C�p 25 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4349, -1) == 1) then
		AddMagic(n_skillid, 25);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 25",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_26(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 25) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 25\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 26) then
		Talk(1,"","K� N�ng 150 C�p 26 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4350, -1) == 1) then
		AddMagic(n_skillid, 26);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 26",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_27(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 26) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 26\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 27) then
		Talk(1,"","K� N�ng 150 C�p 27 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4351, -1) == 1) then
		AddMagic(n_skillid, 27);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 27",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_28(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 27) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 27\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 28) then
		Talk(1,"","K� N�ng 150 C�p 28 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4352, -1) == 1) then
		AddMagic(n_skillid, 28);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 28",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_29(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 28) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 28\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 29) then
		Talk(1,"","K� N�ng 150 C�p 29 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4353, -1) == 1) then
		AddMagic(n_skillid, 29);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 29",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_30(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 29) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 29\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 30) then
		Talk(1,"","K� N�ng 150 C�p 30 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4354, -1) == 1) then
		AddMagic(n_skillid, 30);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 30",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_31(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 30) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 30\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 31) then
		Talk(1,"","K� N�ng 150 C�p 31 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4355, -1) == 1) then
		AddMagic(n_skillid, 31);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 31",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_32(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 31) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 31\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 32) then
		Talk(1,"","K� N�ng 150 C�p 32 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4356, -1) == 1) then
		AddMagic(n_skillid, 32);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 32",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_33(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 32) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 32\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 33) then
		Talk(1,"","K� N�ng 150 C�p 33 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4357, -1) == 1) then
		AddMagic(n_skillid, 33);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 33",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_34(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 33) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 33\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 34) then
		Talk(1,"","K� N�ng 150 C�p 34 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4358, -1) == 1) then
		AddMagic(n_skillid, 34);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 34",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_35(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 34) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 34\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 35) then
		Talk(1,"","K� N�ng 150 C�p 35 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4359, -1) == 1) then
		AddMagic(n_skillid, 35);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 35",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_36(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 35) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 35\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 36) then
		Talk(1,"","K� N�ng 150 C�p 36 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4360, -1) == 1) then
		AddMagic(n_skillid, 36);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 36",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_37(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 36) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 36\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 37) then
		Talk(1,"","K� N�ng 150 C�p 37 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4361, -1) == 1) then
		AddMagic(n_skillid, 37);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 37",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_38(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 37) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 37\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 38) then
		Talk(1,"","K� N�ng 150 C�p 38 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4362, -1) == 1) then
		AddMagic(n_skillid, 38);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 38",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_39(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 38) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 38\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 39) then
		Talk(1,"","K� N�ng 150 C�p 39 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4363, -1) == 1) then
		AddMagic(n_skillid, 39);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 39",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_40(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 39) then 
		Talk(1,"","K� N�ng 150 C�a Ng��i Ch�a ��t ��n 39\n                          H�y C� G�ng Tu Luy�n Th�m!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 40) then
		Talk(1,"","K� N�ng 150 C�p 40 C�a Ng��i �� ��t ��n Gi�i H�n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4364, -1) == 1) then
		AddMagic(n_skillid, 40);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","��i Th�nh B� K�p 150 ��t C�p 40",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function OnCancel() 
end 
