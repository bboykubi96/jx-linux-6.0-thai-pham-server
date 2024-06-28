-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ ng­êi ®i ®­êng 7 sÇm hïng ®èi tho¹i 

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel) 
Uworld1050 = nt_getTask(1050) 
if ( Uworld1050 ~= 0 ) then 
branch_cenxiong() 
else 
Say("SÇm hïng # ta ®©y sanh ë ph­îng t­êng , sinh tr­ëng ë ph­îng t­êng , còng kh«ng biÕt thÕ giíi bªn ngoµi lµ mét x¸ d¹ng mµ , dÇu g× cã mét ngµy muèn ®i ra ngoµi kiÕn thøc kiÕn thøc . ",0) 
end 
end;
