IncludeLib("SETTING")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
SKILL_TS = {1336,1337,1338,1339,1340,1341,1342,1343}
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
local nTransLife = ST_GetTransLifeCount()
	if (nTransLife < 6) then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a Tr�ng Sinh 6 Kh�ng Th� S� D�ng V�t Ph�m N�y")
		return 1;
	end
	Say("<bclr=violet>"..myplayersex().." ���c L�a Ch�n 1 Trong 8 Skill Tr�ng Sinh",9,
		"V� Uy Thu�t/#NhanSkillTS6(1)",
		"Nh��c Th�y Thu�t/#NhanSkillTS6(2)",
		"Tr�n S�n Thu�t/#NhanSkillTS6(3)",
		"Y�n Ba Thu�t/#NhanSkillTS6(4)",
		"Tr��ng Sinh Thu�t/#NhanSkillTS6(5)",
		"B� H�i Thu�t/#NhanSkillTS6(6)",
		"Th�n Tu� Thu�t/#NhanSkillTS6(7)",
		"Truy C�nh Thu�t/#NhanSkillTS6(8)",
		"Th�i �� Ta H�c Sau/No")
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
	Msg2Player("<color=green>Ch�c M�ng "..myplayersex().." �� H�c ���c K� N�ng Tr�ng Sinh 6 <color=yellow>"..nSkillName.."<color>")
end
