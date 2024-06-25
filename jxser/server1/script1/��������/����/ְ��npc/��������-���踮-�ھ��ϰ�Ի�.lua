-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ tiªu côc l·o b¶n ®èi tho¹i 
Include("\\script\\task\\newtask\\branch\\zhongli\\branch_zhonglitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(188) == 1 then 
allbrother_0801_FindNpcTaskDialog(188) 
return 0; 
end 

Uworld1055 = nt_getTask(1055) 
if ( Uworld1055 ~= 0 ) then 
branch_shuangying() 
else 
i = random(0,1) 
if (i == 0) then 
Say("Tiªu côc l·o b¶n # bän ta song ­ng tiªu côc ë t©y b¾c mét d·y ®Ých h¾c b¹ch hai ®¹o ®Òu cã b»ng h÷u , cho nªn hé vÖ ch­a tõng thiÓm thÊt , c¸i nµy dùa vµo tÊt c¶ ®Òu lµ trªn giang hå b»ng h÷u mÆt mòi #",0) 
else 
Say("Tiªu côc l·o b¶n # bän ta ¨n phiªu ®­îc c¬m ng­êi , trõ c«ng phu thËt , toµn dùa vµo h¾c b¹ch hai ®¹o ®Ých c¸c b»ng h÷u nÓ mÆt , c¸i nµy ‘ giao t×nh ’ hai ch÷ , cã lóc so ch©n ­ít ch©n r¸o ®Ých c«ng phu cßn ph¶i chÆc chót . ", 0) 
end; 
end 
end 
