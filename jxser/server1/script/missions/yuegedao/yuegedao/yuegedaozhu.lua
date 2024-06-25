Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main() 
local TSK_LV150_SKILL = 2885 
local YUEGEDAO_150SKILL_TASKSTATE = 14 
local nNpcIndex = GetLastDiagNpc() 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
local nTaskStep = floor(GetTask(TSK_LV150_SKILL)/100) 
if nTaskStep < YUEGEDAO_150SKILL_TASKSTATE then 
tbDailog.szTitleMsg = "<npc> nÕu nh­ ®¹i hiÖp kh«ng sî , vËy th× cïng ta tû thÝ mét chót , v× næi tiÕng thiªn h¹ , luyÖn ®­îc tuyÖt thÕ vâ c«ng , vÉn bÞ v©y ë chç nµy , tõ bæn trµng tû thÝ quyÕt ®Þnh . " 
else 
tbDailog.szTitleMsg = "<npc> nÕu cã duyªn , lµ cã thÓ n÷a gÆp l¹i , nÕu nh­ v« duyªn , còng cã thÓ lÉn nhau t­ niÖm , ®¹i hiÖp mau rêi ®i ®¶o ®i , giang hå ®­êng , xin b¶o träng . " 
end 
G_TASK:OnMessage("Th¸ng ca ®¶o ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end