-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ ng­êi ®i ®­êng 8 a bß ®èi tho¹i 

Include("\\script\\task\\newtask\\branch\\zhongli\\branch_zhonglitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main(sel) 
Uworld1055 = nt_getTask(1055) 
if ( Uworld1055 ~= 0 ) then 
branch_aniu() 
else 
Say("A bß # ng­êi ta nãi th­íc chi ®Ých n÷ oa xinh ®Ñp nhÊt , còng kh«ng biÕt lµ thËt hay gi¶ , ta ®©y ng­êi liÒn kh«ng cã ®ông ph¶i mét nöa ®©y ? ",0) 
end 
end;
