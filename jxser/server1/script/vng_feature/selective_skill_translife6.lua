IncludeLib("SETTING")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
SKILL_TS = {1336,1337,1338,1339,1340,1341,1342,1343}
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
local nTransLife = ST_GetTransLifeCount()
	if (nTransLife < 6) then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Trïng Sinh 6 Kh«ng ThÓ Sö Dông VËt PhÈm Nµy")
		return 1;
	end
	Say("<bclr=violet>"..myplayersex().." §­îc Lùa Chän 1 Trong 8 Skill Trïng Sinh",9,
		"Vò Uy ThuËt/#NhanSkillTS6(1)",
		"Nh­îc Thñy ThuËt/#NhanSkillTS6(2)",
		"TrÊn S¬n ThuËt/#NhanSkillTS6(3)",
		"Yªn Ba ThuËt/#NhanSkillTS6(4)",
		"Tr­êng Sinh ThuËt/#NhanSkillTS6(5)",
		"B¸ H¶i ThuËt/#NhanSkillTS6(6)",
		"Th©n TuÖ ThuËt/#NhanSkillTS6(7)",
		"Truy C¶nh ThuËt/#NhanSkillTS6(8)",
		"Th«i §Ó Ta Häc Sau/No")
	return 1;
end

function NhanSkillTS6(nSkillVar)
local nSkillName = GetSkillName(SKILL_TS[nSkillVar])
	for i=1,8 do
		if HaveMagic(SKILL_TS[i]) >= 0 then
			DelMagic(SKILL_TS[i])
		end
	end
	AddMagic(SKILL_TS[nSkillVar],20)
	ConsumeEquiproomItem(1,6,1,4890,-1)
	Msg2Player("<color=green>Chóc Mõng "..myplayersex().." §· Häc §­îc Kü N¨ng Trïng Sinh 6 <color=yellow>"..nSkillName.."<color>")
end
