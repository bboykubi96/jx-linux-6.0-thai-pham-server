-- script viet hoa By http://tranhba.com ITEMTYPE 
-- script viet hoa By http://tranhba.com SKILLTYPE 
-- script viet hoa By http://tranhba.com SKILLLEVEL2 
-- script viet hoa By http://tranhba.com SKILLLEVEL3 
-- script viet hoa By http://tranhba.com SKILLLEVEL41 
-- script viet hoa By http://tranhba.com SKILLLEVEL42 
-- script viet hoa By http://tranhba.com ITEMNAME 
-- script viet hoa By http://tranhba.com ITEMDFFECT 

Include([[\script\item\chrismas\chrismasitem.lua]]); 

function main() 
local tabidx = itemmapcheck(TAB_ACTION); 
if (0 ~= tabidx) then 
local i; 
local nGroupId = GetTask(TAB_ACTION[tabidx][3]); 
if (TAB_ACTION[tabidx][5][1] == 1) then 
nGroupId = getgroupid(nGroupId, TAB_ACTION[tabidx][5][2]) 
end; 

local OldPlayer = PlayerIndex; 
local OldName = GetName(); 
local idx = 0; 
local pidx; 
		for i = 1, TAB_ACTION[tabidx][4] + 5 do
idx, pidx = GetNextPlayer(TAB_ACTION[tabidx][2], idx, nGroupId); 

if (pidx > 0 and pidx ~= OldPlayer) then -- script viet hoa By http://tranhba.com  l�a ch�n tr� nh� ch�i b�n ngo�i ��ch t�t c� ��i th� # 
PlayerIndex = pidx; 
AddSkillState(SKILLTYPE, SKILLLEVEL2, SKILLLEVEL3, SKILLLEVEL41 * SKILLLEVEL42); 
Msg2Player("<#><color=0xB5FDD7>"..OldName.."<color> s� d�ng m�t <color=0xB5FDD7>"..ITEMNAME.."<color> , "..ITEMDFFECT) 
end; 

if (0 == idx) then 
break; 
end; 
end; 
PlayerIndex = OldPlayer; 
Msg2Player("<#> ng��i s� d�ng m�t <color=0xB5FDD7>"..ITEMNAME.."<color> , "..ITEMDFFECT); 
return 0; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tu�n tra m�i bi�u 
tabidx = race_ItemMapCheck() 

if tabidx ~= 0 then -- script viet hoa By http://tranhba.com  m�i bi�u trong c� ��nh ngh�a 
local tbRace = RACE_TAB_ACTION[tabidx] 
local nGroupId = 0 
if type(tbRace.GetGroupId) == "function" then 
nGroupId = tbRace:GetGroupId() 
end 
local idx, pidx = 0, 0; 
local nPlayerCount = GetMSPlayerCount(tbRace.nMissionId, nGroupId) 
for i = 1, nPlayerCount do 
idx, pidx = GetNextPlayer(tbRace.nMissionId, idx, nGroupId); 
if (pidx > 0 and pidx ~= PlayerIndex) then 
doFunByPlayer(pidx , AddSkillState, SKILLTYPE, SKILLLEVEL2, SKILLLEVEL3, SKILLLEVEL41 * SKILLLEVEL42); 
doFunByPlayer(pidx, Msg2Player, "<#><color=0xB5FDD7>"..GetName().."<color> s� d�ng <color=0xB5FDD7>"..ITEMNAME.."<color>?"..ITEMDFFECT) 
end; 

if (idx == 0) then 
break; 
end; 
end 
Msg2Player("<#> ng��i s� d�ng m�t <color=0xB5FDD7>"..ITEMNAME.."<color> , "..ITEMDFFECT); 
return 0; 
end 

-- script viet hoa By http://tranhba.com  cu�i c�ng c�ng kh�ng th� s� d�ng 
Talk(1, "","N�i ��y �� kh�ng th� s� d�ng ."); 
return 1 
end;
