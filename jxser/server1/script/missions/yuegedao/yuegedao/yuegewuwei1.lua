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
tbDailog.szTitleMsg = "<npc> bao nhi�u n�m �� qua , ta ch� th�y l�n ��o ng��i c�a , kh�ng th�y m�t lu�n ki�m r�i �i ��o ng��i c�a ." 
G_TASK:OnMessage("Th�ng ca ��o ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end