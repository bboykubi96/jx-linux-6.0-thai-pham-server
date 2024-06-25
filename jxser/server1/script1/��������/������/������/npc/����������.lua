-- script viet hoa By http://tranhba.com  thóy khãi cöa b¸n binh khÝ ®Ö tö ®èi tho¹i 
Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main(sel) 
Uworld36 = GetByte(GetTask(36),2) 
if (GetFaction() == "cuiyan") or (Uworld36 == 127) or (GetLastFactionNumber() == 5) then 
local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 

local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 

local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> bæn m«n c«ng phu : thêi gian träng yÕu lµ biÕn hãa v« cïng , kh«ng gièng mét lo¹i vâ c«ng ." 
tbDailog:AddOptEntry("Giao dÞch ", yes) 
tbDailog:AddOptEntry("Kh«ng giao dÞch ", no) 
G_TASK:OnMessage("Thóy khãi ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
else 
Talk(1,"","M«n chñ cã lÖnh , bæn m«n binh khÝ chØ cã thÓ b¸n cho ®ång m«n tû muéi .") 
end 
end; 

function yes() 
Sale(66) 
end; 

function no() 
end; 
