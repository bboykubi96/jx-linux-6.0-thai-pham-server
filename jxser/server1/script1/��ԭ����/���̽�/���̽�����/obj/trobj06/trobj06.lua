-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y 20 cÊp nhiÖm vô tiÓu bôi l­ 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4); 
	if (UTask_tr == 20*256+50) and (HaveItem(126) == 0) then
SetPropState() 
AddEventItem(126) 
Msg2Player("T×m ®­îc mÊt ®İch tiÓu bôi l­ . ") 
AddNote("T×m ®­îc mÊt ®İch tiÓu bôi l­ . ") 
end 
end; 
