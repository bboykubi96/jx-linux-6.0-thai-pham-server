IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t¸i nhËp SETTING ch©n vèn chØ thŞ kho 
Include("\\script\\item\\newyear_2009\\head.lua");

function main() 
local ndate = tonumber(GetLocalDate("%Y%m%d")); 
if (ndate >= newyear0901_lazhu_expiredtime) then 
Msg2Player("Nªn vËt phÈm ®· qua kú ."); 
return 0; 
end 
AddSkillState(440, 1, 1, 64800*8); 
end
