-- script viet hoa By http://tranhba.com ITEMTYPE 
-- script viet hoa By http://tranhba.com SKILLTYPE 
-- script viet hoa By http://tranhba.com SKILLLEVEL2 
-- script viet hoa By http://tranhba.com SKILLLEVEL3 
-- script viet hoa By http://tranhba.com SKILLLEVEL41 
-- script viet hoa By http://tranhba.com SKILLLEVEL42 
-- script viet hoa By http://tranhba.com ITEMNAME 
-- script viet hoa By http://tranhba.com ITEMDFFECT 

Include([[\script\missions\tong\tong_springfestival\head.lua]]); 
Include([[\script\item\springfestival2006\itemhead.lua]]); 

-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 

function main() 
tabidx = itemmapcheck(TAB_ACTION); 
if (0 == tabidx) then 
return 1; 
end; 
if (0 == itemuseplacecheck(ITEMTYPE)) then -- script viet hoa By http://tranhba.com  c«ng céng ®¹o cô kiÓm tra 
return 1; 
end; 
local i; 
local nGroupId = GetTask(TK_GROUPID); 

nGroupId = festival_getgroupid(nGroupId); 
if ("nil" == type(nGroupId)) then 
Talk(1, "","§¹o cô sö dông bÞ lçi #"); 
end; 
if (nGroupId < 1 or nGroupId > SF_SMALLMAPCOUNT * 2) then 
Talk(1, "","§¹o cô sö dông bÞ lçi #"); 
return 1; 
end; 

local OldPlayer = PlayerIndex; 
local OldName = GetName(); 
local idx = 0; 
local pidx; 
for i = 1, SF_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(SF_MISSIONID, idx, nGroupId); 

if (pidx > 0 and pidx ~= OldPlayer) then -- script viet hoa By http://tranhba.com  lùa chän trõ nhµ ch¬i bªn ngoµi ®Ých tÊt c¶ ®èi thñ # 
PlayerIndex = pidx; 
AddSkillState(SKILLTYPE, SKILLLEVEL2, SKILLLEVEL3, SKILLLEVEL41 * SKILLLEVEL42); 
Msg2Player("<#><color=0xB5FDD7>"..OldName.."<color> sö dông mét <color=0xB5FDD7>"..ITEMNAME.."<color> , "..ITEMDFFECT) 
end; 

if (0 == idx) then 
break; 
end; 
end; 
PlayerIndex = OldPlayer; 
Msg2Player("<#> ng­¬i sö dông mét <color=0xB5FDD7>"..ITEMNAME.."<color> , "..ITEMDFFECT); 
end;
