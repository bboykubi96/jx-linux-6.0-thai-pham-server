Include([[\script\missions\tong\tong_springfestival\head.lua]]); 

-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 
Include([[\script\item\springfestival2006\itemhead.lua]]); 

function main() 
tabidx = itemmapcheck(TAB_ACTION); 
if (0 == tabidx) then 
return 1; 
end; 
if (0 == itemuseplacecheck(2)) then 
return 1; 
end; 
local i; 
for i = 668, 674 do 
AddSkillState(i, 10, 0, 0); 
end; 
AddSkillState(309, 10, 0, 5 * 18); -- script viet hoa By http://tranhba.com  kh«ng chÞu c«ng kÝch 
Msg2Player("Ng­¬i sö dông mét <color=0xB5FDD7> kim thiÒn cæ <color> , ë <color=0xB5FDD7>5 gi©y <color> bªn trong kh«ng chÞu tr¹ng th¸i ¶nh h­ëng . "); 
end;
