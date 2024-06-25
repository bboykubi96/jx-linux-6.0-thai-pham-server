
Include("\\script\\activitysys\\g_activity.lua")

Include("\\script\\activitysys\\playerfunlib.lua")


function main() 
local nEndDate = 200911160000 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 

if nCurDate <= nEndDate then 

if PlayerFunLib:CheckLevel(50,"default",">=") ~= 1 then return 1 end 
if PlayerFunLib:IsCharged("default") ~= 1 then return 1 end 
if PlayerFunLib:CheckTask(2653,300,"MÁi ng≠Íi chÿ c„ th” tı [ li™n ng…u b›nh ] Æπt Æ≠Óc 300.000.000 kinh nghi÷m , ","<") ~= 1 then return 1 end 

PlayerFunLib:AddExp(30000000,0,"MidAutumn,UseItem") 
PlayerFunLib:AddTask(2653,30) 
return 0 
else 
Talk(1, "","N™n vÀt ph»m chÿ c„ th” Î 16-11-2009 tr≠Ìc sˆ dÙng .") 
return 1 
end 
return 1 
end