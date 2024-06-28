-- script viet hoa By http://tranhba.com  la tiªu s¬n chiÕn ®Êu NPC mai phôc qu©n Kim C¸i Bang 40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-28) 

function OnDeath() 
UTask_gb = GetTask(8); 
	if (UTask_gb == 40*256+10) and (HaveItem(236) == 0) and (random(0,100) < 33) then		-- script viet hoa By http://tranhba.com 33%¼¸ÂÊ
AddEventItem(236) 
AddNote("§¸nh b¹i mai phôc ®Ých qu©n Kim , ph¸t hiÖn liªn minh ®Ých mËt ®¹o ") 
Msg2Player("§¸nh b¹i mai phôc ®Ých qu©n Kim , ph¸t hiÖn liªn minh ®Ých mËt ®¹o ") 
end 
end; 
