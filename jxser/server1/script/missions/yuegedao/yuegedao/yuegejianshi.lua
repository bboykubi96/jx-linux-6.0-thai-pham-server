Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main() 
local nNpcIndex = GetLastDiagNpc() 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> lµ kh«ng ph¶i lµ thµnh b¹i quay ®Çu v« Ých , bao nhiªu vâ l©m cao thñ bÞ ch«n ë chç nµy , tiÕc nuèi lµ , luËn kiÕm lóc , chØ v× muèn ®¹t tíi tuyÖt thÕ vâ häc , kh«ng Ýt hiÖp sÜ kh«ng sî nguy hiÓm . ng­¬i cßn trÎ , xin/mêi thËn träng lµm viÖc . " 
G_TASK:OnMessage("Th¸ng ca ®¶o ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end