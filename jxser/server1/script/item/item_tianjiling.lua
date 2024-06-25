Include("\\script\\lib\\gb_modulefuncs.lua")
IncludeLib("LEAGUE") 
MAX_TJL_USE_COUNT = 5 
str_endmsg = " ng­¬i sö dông thiªn c¬ lÖnh ®· ®¹t tíi sö dông th­îng h¹n "..MAX_TJL_USE_COUNT.." lÇn , v× vËy tõ trong tói ®eo l­ng ®i trõ #"; 

function main(nItem) 
local nUsedCount = GetItemParam(nItem, 1); 

Msg2Player("Ng­¬i sö dông thiªn c¬ lÖnh # ë mét giê bªn trong ng­¬i nh­ng lÊy ®­îc biÕt së t¹i ®å tÊt c¶ vËt phÈm quý träng ®Ých thËp thñ tÝn h¬i thë .") 
AddSkillState(707, 1, 1, 18*60*60); 

	nUsedCount = nUsedCount + 1
if (nUsedCount >= MAX_TJL_USE_COUNT) then 
Msg2Player(str_endmsg) 
return 0 
else 
SetItemMagicLevel(nItem, 1, nUsedCount) 
end 
SyncItem(nItem) 
return 1 
end 

function GetDesc(nItem) 
local nUsedCount = GetItemParam(nItem, 1); 
return " cßn thõa l¹i sö dông sè lÇn :" ..(MAX_TJL_USE_COUNT - nUsedCount).." / "..MAX_TJL_USE_COUNT 
end