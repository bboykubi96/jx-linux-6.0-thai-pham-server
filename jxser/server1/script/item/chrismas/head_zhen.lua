-- script viet hoa By http://tranhba.com SKILLTYPE 
-- script viet hoa By http://tranhba.com SKILLLEVEL 
-- script viet hoa By http://tranhba.com SKILLNAME 
-- script viet hoa By http://tranhba.com SKILLDESCRIBE 

Include([[\script\item\chrismas\chrismasitem.lua]]); 

function main() 
local tabidx = itemmapcheck(TAB_ACTION); 
if (0 ~= tabidx) then 
CastSkill(SKILLTYPE, SKILLLEVEL); 
Msg2Player("Ngµi ®· sö dông <color=0xB5FDD7>"..SKILLNAME.."<color>?"..SKILLDESCRIBE); 
local nGroupId = GetTask(TAB_ACTION[tabidx][3]); 
Msg2MSGroup(TAB_ACTION[tabidx][2], "<color=0xB5FDD7>"..GetName().."<color> sö dông <color=0xB5FDD7>"..SKILLNAME.."<color>"..SKILLDESCRIBE, nGroupId); 
return 0; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tuÇn tra míi biÓu 
tabidx = race_ItemMapCheck() 

if tabidx ~= 0 then -- script viet hoa By http://tranhba.com  míi biÓu trong cã ®Þnh nghÜa 
local tbRace = RACE_TAB_ACTION[tabidx] 
CastSkill(SKILLTYPE, SKILLLEVEL); 
Msg2Player("Ngµi ®· sö dông <color=0xB5FDD7>"..SKILLNAME.."<color>?"..SKILLDESCRIBE); 
local nGroupId = 0 
if type(tbRace.GetGroupId) == "function" then 
nGroupId = tbRace:GetGroupId() 
end 
Msg2MSGroup(tbRace.nMissionId, "<color=0xB5FDD7>"..GetName().."<color> sö dông <color=0xB5FDD7>"..SKILLNAME.."<color>"..SKILLDESCRIBE, nGroupId); 
return 0; 
end 
Talk(1, "","Nªn ®¹o cô ë chç nµy khu vùc kh«ng dïng ®­îc ."); 
return 1 
end; 
