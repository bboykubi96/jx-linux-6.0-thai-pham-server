-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp §éng ®×nh hå ®Ó thø 2 tÇng n­íc tr¸ch # Thiªn v­¬ng 50 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3); 
	if (UTask_tw == 50*256+20) and (HaveItem(95) == 0) and (random(0,99) < 33) then
AddEventItem(95) 
Msg2Player("§¸nh b¹i n­íc tr¸ch , b¾t ®­îc t­îng tr­ng h¹nh phóc b×nh an ngò th¶i th¹ch . ") 
-- script viet hoa By http://tranhba.com  SetTask(3, 55) 
AddNote("T×m ®­îc trong s¬n ®éng ®Ých n­íc tr¸ch , ®¸nh b¹i nã b¾t ®­îc ngò th¶i th¹ch ") 
end 
end; 
