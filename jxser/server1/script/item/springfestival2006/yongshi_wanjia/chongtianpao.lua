ITEMTYPE = 3; -- script viet hoa By http://tranhba.com  nhµ ch¬i chuyªn dông ®¹o cô 
-- script viet hoa By http://tranhba.com CastSkill(669,15) 
SKILLTYPE = 700; 
SKILLLEVEL = 5; 
SKILLNAME = " ngÊt trêi ph¸o "; 

Include([[\script\missions\tong\tong_springfestival\head.lua]]); 

-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 
Include([[\script\item\springfestival2006\itemhead.lua]]); 

function main() 
tabidx = itemmapcheck(TAB_ACTION); 
if (0 == tabidx) then 
return 1; 
end; 
if (0 == itemuseplacecheck(ITEMTYPE)) then -- script viet hoa By http://tranhba.com  c«ng céng ®¹o cô 
return 1; 
end; 
if (0 == festival_checkinterver()) then 
return 1; 
end; 
CastSkill(SKILLTYPE, SKILLLEVEL) 
Msg2Player("<#> ng­¬i sö dông mét <color=0xB5FDD7>"..SKILLNAME.."<color>"); 
end; 
