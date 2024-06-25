IncludeLib("SETTING")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\task\\metempsychosis\\translife_4.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
SKILL_TS = {1123,1124,1125,1126,1127,1128,1129,1130}
-------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "<bclr=blue>N÷ HiÖp<bclr>";
	else
		return "<bclr=blue>§¹i HiÖp<bclr>";
	end
end
----------------------------------------------------------
function main()
dofile("script/vng_feature/selective_skill_translife4.lua")
	if ST_GetTransLifeCount() < 4 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Trïng Sinh 4 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end

	

	Say("<bclr=violet>"..myplayersex().." §­îc Lùa Chän 1 Trong 8 Skill Trïng Sinh",9,
		"Vò Uy ThuËt/#NhanSkillTS4(1)",
		"Nh­îc Thñy ThuËt/#NhanSkillTS4(2)",
		"TrÊn Nh¹c ThuËt/#NhanSkillTS4(3)",
		"Yªn Ba ThuËt/#NhanSkillTS4(4)",
		"Tr­êng Sinh ThuËt/#NhanSkillTS4(5)",
		"Bét H¶i ThuËt/#NhanSkillTS4(6)",
		"Th©n TuÖ ThuËt/#NhanSkillTS4(7)",
		"Truy ¶nh ThuËt/#NhanSkillTS4(8)",
		"Th«i §Ó Ta Häc Sau/No")
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
	Msg2Player("<color=green>Chóc Mõng "..myplayersex().." §· Häc §­îc Kü N¨ng Trïng Sinh 4 <color=yellow>"..nSkillName.."<color>")
end
