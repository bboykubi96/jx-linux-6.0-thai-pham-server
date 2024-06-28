-- script viet hoa By http://tranhba.com description: phôc bß s¬n thiªn t©m ®éng mª cung ®Þch nh©n # Vâ §­¬ng 50 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/16 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-17) 

function OnDeath() 
UTask_wd = GetTask(5) 
	if (UTask_wd == 50*256+20) and (random(0,99) < 33) then
		SetTask(5, 50*256+50)
Earn(10000) 
Msg2Player("§¸nh b¹i thæ phØ ®Çu môc thiÕt cøc , b¾t ®­îc bän hä giµnh ®­îc ®Ých 1 v¹n l­îng . ") 
AddNote(" ë phôc bß s¬n thiªn t©m ®éng , ®¸nh b¹i thæ phØ ®Çu môc thiÕt cøc , b¾t ®­îc bän hä giµnh ®­îc ®Ých 1 v¹n l­îng . ") 
end 
end; 
