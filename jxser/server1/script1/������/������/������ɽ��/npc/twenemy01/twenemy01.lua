-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp Thiªn v­¬ng ®¶o s¬n ®éng ®Þch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/24 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 10*256+20) and (GetItemCount("¼¦ÑªÊ¯") < 3) then
AddEventItem(91) 
Msg2Player(" lÊy ®­îc mét viªn m¸u gµ th¹ch ") 
AddNote(" ë trªn trêi v­¬ng ®¶o trong s¬n ®éng t×m ®­îc mét viªn m¸u gµ th¹ch . ") 
end 
end; 
