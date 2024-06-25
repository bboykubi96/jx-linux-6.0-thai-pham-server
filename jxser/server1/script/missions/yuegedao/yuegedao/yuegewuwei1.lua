Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main() 
local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> bao nhiªu n¨m ®· qua , ta chØ thÊy lªn ®¶o ng­êi cña , kh«ng thÊy mét luËn kiÕm rêi ®i ®¶o ng­êi cña ." 
G_TASK:OnMessage("Th¸ng ca ®¶o ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end