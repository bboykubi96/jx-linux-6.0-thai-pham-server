TASK_TIME_MAP = 3203
TASK_USED_DAY = 3204
Include("\\script\\activitysys\\playerfunlib.lua")
function main()
			if PlayerFunLib:GetTaskDailyCount(TASK_USED_DAY) > 11 then
			Say("ChØ ®­îc sö dông tèi ®a 12 vËt phÈm nµy mçi ngµy.",0);
			Msg2Player("ChØ ®­îc sö dông tèi ®a 12 vËt phÈm nµy mçi ngµy.");
			return 1
		end
	local nCurTime = GetTask(TASK_TIME_MAP)
	PlayerFunLib:AddTaskDaily(TASK_USED_DAY, 1)
	SetTask(TASK_TIME_MAP,nCurTime+60)
	Msg2Player("B¹n sö dông vËt phÈm gia t¨ng thªm 60 phót ë b¶n ®å luyÖn c«ng ®Æc biÖt")
	Msg2Player(format("Thêi gian cßn l¹i trªn b¶n ®å luyÖn c«ng ®Æc biÖt cña b¹n lµ <color=yellow>%d<color> phót.",nCurTime+60))
	
-- local szMsg = (format("Thêi gian cßn l¹i trªn map train cña b¹n lµ <color=yellow>%d<color> phót. B¹n muèn sö dông vËt phÈm nµy ®Ó gia t¨ng thªm 1 giê??"))
-- local tbSay = {
-- "Ta muèn sö dông/Confirm",
-- "Kh«ng dïng/no",
-- }
-- Say(szMsg,getn(tbSay),tbSay)
end
