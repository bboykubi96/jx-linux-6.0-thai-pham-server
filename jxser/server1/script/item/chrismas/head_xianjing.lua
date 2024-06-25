-- script viet hoa By http://tranhba.com ITEMTYPE 
-- script viet hoa By http://tranhba.com SKILLTYPE 
-- script viet hoa By http://tranhba.com SKILLLEVEL 
-- script viet hoa By http://tranhba.com SKILLNAME 

Include([[\script\item\chrismas\chrismasitem.lua]]); 

function main() 
tabidx = itemmapcheck(TAB_ACTION); 
if (0 == tabidx and race_ItemMapCheck() == 0) then 
Talk(1, "","N¬i ®©y ®å kh«ng thÓ sö dông ."); 
return 1; 
end; 
CastSkill(SKILLTYPE, SKILLLEVEL) 
Msg2Player("<#> ng­¬i bè trÝ mét <color=0xB5FDD7>"..SKILLNAME.."<color>"); 
end; 
