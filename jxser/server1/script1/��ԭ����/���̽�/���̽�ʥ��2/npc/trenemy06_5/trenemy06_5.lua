-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y th¸nh ®éng tÇng hai ®Þch nh©n con bß c¹p v­¬ng # ngµy nhÉn xuÊt s­ nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4) 
	if (UTask_tr == 60*256+70) and (HaveItem(102) == 0) then
AddEventItem(102) 
Msg2Player("§¹t ®­îc mét c¸i ch×a khãa . ") 
AddNote(" ë th¸nh ®éng tÇng thø hai , ®¸nh b¹i con bß c¹p v­¬ng , b¾t ®­îc c¸i ch×a khãa khai b¶o r­¬ng . ") 
end 
end; 
