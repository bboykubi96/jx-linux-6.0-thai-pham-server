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
AddSkillState(309, 10, 0, 5 * 18); -- script viet hoa By http://tranhba.com  kh�ng ch�u c�ng k�ch 
Msg2Player("Ng��i s� d�ng m�t <color=0xB5FDD7> kim thi�n c� <color> , � <color=0xB5FDD7>5 gi�y <color> b�n trong kh�ng ch�u tr�ng th�i �nh h��ng . "); 
end;
