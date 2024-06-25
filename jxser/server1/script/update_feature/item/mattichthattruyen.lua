IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
---------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
--------------------------------------------------------------------------
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370}
-------------------------------------------------------------------
	local nFaction = GetLastFactionNumber() + 1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ Sö Dông MËt TÞch ThÊt TruyÒn")
		return 1;
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					HN_SetTaskID(KyNangThatTruyen,20)
					Talk(1,"","<color=green>"..myplayersex().." §· Häc §­îc Kü N¨ng ThÊt TruyÒn<color> <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Kh«ng ThÓ Häc N÷a")
					return 1;
				end
			end
		end
	end
----------------------------------------------------------------------------------------------------------------------
