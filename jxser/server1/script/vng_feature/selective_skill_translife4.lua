IncludeLib("SETTING")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\task\\metempsychosis\\translife_4.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
SKILL_TS = {1123,1124,1125,1126,1127,1128,1129,1130}
-------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "<bclr=blue>N� Hi�p<bclr>";
	else
		return "<bclr=blue>��i Hi�p<bclr>";
	end
end
----------------------------------------------------------
function main()
dofile("script/vng_feature/selective_skill_translife4.lua")
	if ST_GetTransLifeCount() < 4 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a Tr�ng Sinh 4 Kh�ng Th� S� D�ng V�t Ph�m N�y")
		return 1;
	end

	

	Say("<bclr=violet>"..myplayersex().." ���c L�a Ch�n 1 Trong 8 Skill Tr�ng Sinh",9,
		"V� Uy Thu�t/#NhanSkillTS4(1)",
		"Nh��c Th�y Thu�t/#NhanSkillTS4(2)",
		"Tr�n Nh�c Thu�t/#NhanSkillTS4(3)",
		"Y�n Ba Thu�t/#NhanSkillTS4(4)",
		"Tr��ng Sinh Thu�t/#NhanSkillTS4(5)",
		"B�t H�i Thu�t/#NhanSkillTS4(6)",
		"Th�n Tu� Thu�t/#NhanSkillTS4(7)",
		"Truy �nh Thu�t/#NhanSkillTS4(8)",
		"Th�i �� Ta H�c Sau/No")
	return 1;
end

function NhanSkillTS4(nSkillVar)
local nSkillName = GetSkillName(SKILL_TS[nSkillVar])
local nLeaveSkillPoint = GetTask(TSK_LEAVE_SKILL_POINT_4)
	for i=1,8 do
		if HaveMagic(SKILL_TS[i]) >= 0 then
			DelMagic(SKILL_TS[i])
		end
	end
	AddMagic(SKILL_TS[nSkillVar],20) 
       ConsumeEquiproomItem(1,6,1,4889,-1) 
	Msg2Player("<color=green>Ch�c M�ng "..myplayersex().." �� H�c ���c K� N�ng Tr�ng Sinh 4 <color=yellow>"..nSkillName.."<color>")
end
