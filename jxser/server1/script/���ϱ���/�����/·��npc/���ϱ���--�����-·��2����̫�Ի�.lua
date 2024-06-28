-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  t©y nam b¾c khu giang t©n th«n ng­êi ®i ®­êng 2 Ng« l·o th¸i ®èi tho¹i 

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")


function main(sel) 
Uworld1051 = nt_getTask(1051) 
if ( Uworld1051 ~= 0 ) then 
branch_wulaotai() 
else 
Say("Ng« l·o th¸i # ta mÆc dï kh«ng cã con trai , nh­ng lµ nu«i c¸ hiÕu thuËn ®Ých h¶o khuª n÷ , nhai ph­êng ®Òu nãi l·o bµ ta cã phóc khÝ . ",0) 
end 
end;
