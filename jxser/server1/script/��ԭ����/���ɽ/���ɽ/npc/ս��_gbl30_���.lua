-- script viet hoa By http://tranhba.com  thôc c­¬ng s¬n chiÕn ®Êu NPC qu©n Kim C¸i Bang 30 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-28) 

function OnDeath() 
UTask_gb = GetTask(8); 
	if (UTask_gb == 30*256+20) then			-- script viet hoa By http://tranhba.com 30¼¶ÈÎÎñÖĞ
		SetTask(8,30*256+30)
AddNote("§¸nh b¹i mai phôc ®İch qu©n Kim , c¸c vŞ mÊt tİch C¸i Bang ®Ö tö còng bŞ qu©n Kim phôc binh b¾t l¹i . ") 
Msg2Player("§¸nh b¹i mai phôc ®İch qu©n Kim , c¸c vŞ mÊt tİch C¸i Bang ®Ö tö còng bŞ qu©n Kim phôc binh b¾t l¹i . ") 
end 
end; 
