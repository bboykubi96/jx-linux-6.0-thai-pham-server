IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------------------------
function main()
local DiemNangDong = PlayerFunLib:GetTaskDailyCount(2880)
	if (DiemNangDong < 150) then
		PlayerFunLib:AddTaskDaily(2880,1)
		Msg2Player("Chóc Mõng "..myplayersex().." §· NhËn §­îc <color=yellow>1<color> §iÓm N¨ng §éng")
	else
		Talk(1,"","Sè §iÓm N¨ng §éng Cña "..myplayersex().." §· §¹t Tèi §a.") return 1
	end
end