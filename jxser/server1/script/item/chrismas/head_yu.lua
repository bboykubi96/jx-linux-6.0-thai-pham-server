-- script viet hoa By http://tranhba.com  c¸i nµy ch©n vèn lµ nh»m vµo tÝnh ®¹o cô sö dông # 
-- script viet hoa By http://tranhba.com szItem 
-- script viet hoa By http://tranhba.com szEffect 
-- script viet hoa By http://tranhba.com nSkillId 
-- script viet hoa By http://tranhba.com nSkillLevel 
-- script viet hoa By http://tranhba.com nTime; 

Include([[\script\item\chrismas\chrismasitem.lua]]); 
tabidx = 0; 
function main(itemIdx) 
tabidx = itemmapcheck(TAB_ACTION); 
if (0 == tabidx) then 
return 1; 
end; 
local i; 
local nGroupId = GetTask(TAB_ACTION[tabidx][3]); 
if (TAB_ACTION[tabidx][5][1] == 1) then 
nGroupId = getgroupid(nGroupId, TAB_ACTION[tabidx][5][2]); 
end; 
local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 

local szName; 
local idx = 0; 
local pidx; 
local j = 1; 
for i = 1, TAB_ACTION[tabidx][4] do 
idx, pidx = GetNextPlayer(TAB_ACTION[tabidx][2], idx, nGroupId); 
if (pidx > 0 and pidx ~= OldPlayer) then -- script viet hoa By http://tranhba.com  lùa chän trõ nhµ ch¬i bªn ngoµi ®Ých tÊt c¶ ®èi thñ # 
PlayerIndex = pidx; 
tabPlayer[j] = make_option("useyu"); 
			j = j + 1;
end; 

if (0 == idx) then 
break; 
end; 
end; 
PlayerIndex = OldPlayer; 
		tabPlayer[ getn(tabPlayer) + 1 ] = "È¡Ïû/giveback_yu"
Say("Ng­¬i sÏ ®èi c¸i nµo ®èi thñ sö dông ®¹o cô <color=0xB5FDD7>"..szItem.."<color> ? ", getn(tabPlayer), tabPlayer); 
end; 

function useyu(szName) 
local pidx = check_pl(szName, TAB_ACTION[tabidx][2]); 
if (not pidx) then 
giveback_yu() 
return 
end 

local OldName = GetName() 
local OldPlayer = PlayerIndex; 
PlayerIndex = pidx; 
AddSkillState(nSkillId, nSkillLevel, 0, nTime * 18) 
Msg2Player("<#><color=0xB5FDD7>"..OldName.."<color> ®èi víi ng­¬i sö dông mét <color=0xB5FDD7>"..szItem.."<color> , "..szEffect); 

PlayerIndex = OldPlayer; 
Msg2Player("<#> ng­¬i ®èi víi <color=0xB5FDD7>"..szName.."<color> sö dông mét <color=0xB5FDD7>"..szItem.."<color> , lµm ®èi thñ "..szEffect); 
end; 


function giveback_yu() 
AddItem(6,1,nDetail,1,1,1) 
end
