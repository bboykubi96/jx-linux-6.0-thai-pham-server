-- script viet hoa By http://tranhba.com ITEMTYPE 
-- script viet hoa By http://tranhba.com SKILLTYPE 
-- script viet hoa By http://tranhba.com SKILLLEVEL2 
-- script viet hoa By http://tranhba.com SKILLLEVEL3 
-- script viet hoa By http://tranhba.com SKILLLEVEL41 
-- script viet hoa By http://tranhba.com SKILLLEVEL42 
-- script viet hoa By http://tranhba.com SKILLEFECT 

Include([[\script\missions\tong\tong_springfestival\head.lua]]); 

-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 
Include([[\script\item\springfestival2006\itemhead.lua]]); 

function main() 
tabidx = itemmapcheck(TAB_ACTION); 
if (0 == tabidx) then 
return 1; 
end; 
if (0 == itemuseplacecheck(ITEMTYPE)) then 
return 1; 
end; 
AddSkillState(SKILLTYPE, SKILLLEVEL2, SKILLLEVEL3, SKILLLEVEL41 * SKILLLEVEL42); -- script viet hoa By http://tranhba.com  thø hai tham sæ lµ kü n¨ng ®Ých cÊp bËc # 
Msg2Player("<#> ng­¬i thu ®­îc <color=0xB5FDD7>"..SKILLEFECT.."<color>"); 
end;
