IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t�i nh�p SETTING ch�n v�n ch� th� kho 
Include("\\script\\item\\newyear_2009\\head.lua");

function main() 
local ndate = tonumber(GetLocalDate("%Y%m%d")); 
if (ndate >= newyear0901_lazhu_expiredtime) then 
Msg2Player("N�n v�t ph�m �� qua k� ."); 
return 0; 
end 
AddSkillState(440, 1, 1, 64800*8); 
end
