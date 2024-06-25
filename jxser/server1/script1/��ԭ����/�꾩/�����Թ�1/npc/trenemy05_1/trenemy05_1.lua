-- script viet hoa By http://tranhba.com description: biÖn kinh phñ thiÕt th¸p mét tÇng ®Şch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4) 
UTask_trsub01 = GetBit(GetTask(21),1) 
	if (UTask_tr == 50*256+20) and (UTask_trsub01 == 0) and (HaveItem(160) == 0) then
AddEventItem(160) 
Msg2Player("§¹t ®­îc thanh thø nhÊt c¸i ch×a khãa ") 
AddNote(" ë thiÕt th¸p tÇng thø nhÊt , ®¸nh b¹i tèng vÖ binh , b¾t ®­îc khai thø nhÊt c¬ quan ®İch c¸i ch×a khãa ") 
end 
end; 
