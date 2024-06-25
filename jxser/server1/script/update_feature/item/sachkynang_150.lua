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
		Talk(1, "","Gièng nh­ quyÓn s¸ch nµy miªu t¶ chÝnh lµ c¸c m«n ph¸i cao cÊp vâ c«ng , ng­¬i kh«ng biÕt bän hä huyÒn c¬ "); 
		return 1; 
	end

	--Ky Nang 21
	if (P == 4345) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_21(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 22
	if (P == 4346) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_22(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 23
	if (P == 4347) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_23(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 24
	if (P == 4348) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_24(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 25
	if (P == 4349) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_25(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 26
	if (P == 4350) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_26(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 27
	if (P == 4351) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_27(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 28
	if (P == 4352) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_28(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 29
	if (P == 4353) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_29(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 30
	if (P == 4354) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_30(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 31
	if (P == 4355) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_31(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 32
	if (P == 4356) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_32(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 33
	if (P == 4357) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_33(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 34
	if (P == 4358) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_34(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 35
	if (P == 4359) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_35(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 36
	if (P == 4360) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_36(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 37
	if (P == 4361) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_37(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 38
	if (P == 4362) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_38(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 39
	if (P == 4363) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_39(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end

	--Ky Nang 40
	if (P == 4364) then
		local tb_Desc = {}
		for i = 1, getn(tb_150skill[n_fac]) do 
			tinsert(tb_Desc, format("Th¨ng cÊp ".."%s/#upgrade_skilllevel_40(%d)", GetSkillName(tb_150skill[n_fac][i]), tb_150skill[n_fac][i]))
		end
		tinsert(tb_Desc, 1, "lùa chän cÇn th¨ng cÊp ®Ých kü n¨ng:"); 
		tinsert(tb_Desc,"KÕt thóc ®èi tho¹i /OnCancel"); 
		CreateTaskSay(tb_Desc)
		return 1
	end
end 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function upgrade_skilllevel_21(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 20) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 20\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 21) then
		Talk(1,"","Kü N¨ng 150 CÊp 21 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4345, -1) == 1) then
		AddMagic(n_skillid, 21);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 21",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_22(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 21) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 21\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 22) then
		Talk(1,"","Kü N¨ng 150 CÊp 22 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4346, -1) == 1) then
		AddMagic(n_skillid, 22);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 22",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_23(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 22) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 22\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 23) then
		Talk(1,"","Kü N¨ng 150 CÊp 23 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4347, -1) == 1) then
		AddMagic(n_skillid, 23);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 23",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_24(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 23) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 23\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 24) then
		Talk(1,"","Kü N¨ng 150 CÊp 24 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4348, -1) == 1) then
		AddMagic(n_skillid, 24);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 24",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_25(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 24) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 24\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 25) then
		Talk(1,"","Kü N¨ng 150 CÊp 25 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4349, -1) == 1) then
		AddMagic(n_skillid, 25);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 25",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_26(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 25) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 25\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 26) then
		Talk(1,"","Kü N¨ng 150 CÊp 26 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4350, -1) == 1) then
		AddMagic(n_skillid, 26);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 26",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_27(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 26) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 26\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 27) then
		Talk(1,"","Kü N¨ng 150 CÊp 27 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4351, -1) == 1) then
		AddMagic(n_skillid, 27);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 27",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_28(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 27) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 27\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 28) then
		Talk(1,"","Kü N¨ng 150 CÊp 28 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4352, -1) == 1) then
		AddMagic(n_skillid, 28);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 28",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_29(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 28) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 28\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 29) then
		Talk(1,"","Kü N¨ng 150 CÊp 29 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4353, -1) == 1) then
		AddMagic(n_skillid, 29);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 29",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_30(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 29) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 29\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 30) then
		Talk(1,"","Kü N¨ng 150 CÊp 30 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4354, -1) == 1) then
		AddMagic(n_skillid, 30);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 30",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_31(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 30) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 30\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 31) then
		Talk(1,"","Kü N¨ng 150 CÊp 31 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4355, -1) == 1) then
		AddMagic(n_skillid, 31);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 31",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_32(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 31) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 31\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 32) then
		Talk(1,"","Kü N¨ng 150 CÊp 32 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4356, -1) == 1) then
		AddMagic(n_skillid, 32);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 32",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_33(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 32) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 32\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 33) then
		Talk(1,"","Kü N¨ng 150 CÊp 33 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4357, -1) == 1) then
		AddMagic(n_skillid, 33);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 33",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_34(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 33) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 33\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 34) then
		Talk(1,"","Kü N¨ng 150 CÊp 34 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4358, -1) == 1) then
		AddMagic(n_skillid, 34);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 34",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_35(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 34) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 34\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 35) then
		Talk(1,"","Kü N¨ng 150 CÊp 35 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4359, -1) == 1) then
		AddMagic(n_skillid, 35);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 35",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_36(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 35) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 35\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 36) then
		Talk(1,"","Kü N¨ng 150 CÊp 36 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4360, -1) == 1) then
		AddMagic(n_skillid, 36);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 36",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_37(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 36) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 36\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 37) then
		Talk(1,"","Kü N¨ng 150 CÊp 37 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4361, -1) == 1) then
		AddMagic(n_skillid, 37);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 37",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_38(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 37) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 37\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 38) then
		Talk(1,"","Kü N¨ng 150 CÊp 38 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4362, -1) == 1) then
		AddMagic(n_skillid, 38);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 38",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_39(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 38) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 38\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 39) then
		Talk(1,"","Kü N¨ng 150 CÊp 39 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4363, -1) == 1) then
		AddMagic(n_skillid, 39);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 39",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function upgrade_skilllevel_40(n_skillid) 
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) < 39) then 
		Talk(1,"","Kü N¨ng 150 Cña Ng­¬i Ch­a §¹t §Õn 39\n                          H·y Cè G¾ng Tu LuyÖn Thªm!")
		return 1
	end

	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 40) then
		Talk(1,"","Kü N¨ng 150 CÊp 40 Cña Ng­¬i §· §¹t §Õn Giíi H¹n!")
		return 1
	end 

	if (ConsumeItem(3, 1, 6, 1, 4364, -1) == 1) then
		AddMagic(n_skillid, 40);
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d","§¹i Thµnh BÝ KÝp 150 §¹t CÊp 40",GetLocalDate("%Y-%m-%d %X"),GetAccount(),GetName(),n_skillid )); 
	end
end

function OnCancel() 
end 
