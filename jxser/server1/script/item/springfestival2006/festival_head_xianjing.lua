-- script viet hoa By http://tranhba.com ITEMTYPE 
-- script viet hoa By http://tranhba.com SKILLTYPE 
-- script viet hoa By http://tranhba.com SKILLLEVEL 
-- script viet hoa By http://tranhba.com SKILLNAME 
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
CastSkill(SKILLTYPE, SKILLLEVEL) 
Msg2Player("<#> ng­¬i bè trÝ mét <color=0xB5FDD7>"..SKILLNAME.."<color>"); 
end; 
