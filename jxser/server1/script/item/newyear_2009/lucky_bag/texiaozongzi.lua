Include("\\script\\item\\newyear_2009\\head.lua");

function main() 
newyear0901_resettask(); 
local ndate = tonumber(GetLocalDate("%Y%m%d")); 
if (ndate >= newyear0901_lazhu_expiredtime) then 
Msg2Player("Nªn vËt phÈm ®· qua kú ."); 
return 0; 
end 
SetTask(newyear0901_TSK_GetExpUpLimit, 300000); 
Say("§¹i hiÖp cã thÓ ®¹t ®­îc ®İch kinh nghiÖm trŞ gi¸ cao nhÊt v× 30 øc ", 0); 
end