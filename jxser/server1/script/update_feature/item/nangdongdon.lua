IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
----------------------------------------------------------
function main()
local DiemNangDong = PlayerFunLib:GetTaskDailyCount(2880)
	if (DiemNangDong < 150) then
		PlayerFunLib:AddTaskDaily(2880,1)
		Msg2Player("Ch�c M�ng "..myplayersex().." �� Nh�n ���c <color=yellow>1<color> �i�m N�ng ��ng")
	else
		Talk(1,"","S� �i�m N�ng ��ng C�a "..myplayersex().." �� ��t T�i �a.") return 1
	end
end