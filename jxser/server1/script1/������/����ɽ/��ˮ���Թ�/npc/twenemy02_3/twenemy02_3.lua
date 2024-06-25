-- script viet hoa By http://tranhba.com description: vò l¨ng s¬n b¹ch n­íc ®éng ®Þch nh©n 3# Thiªn v­¬ng 20 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/25 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 20*256+50) then
UTask_twtmp20 = SetBit(GetTaskTemp(10),3,1) 
SetTaskTemp(10,UTask_twtmp20) 
		if (UTask_twtmp20 == 7) then		-- script viet hoa By http://tranhba.com  bin: 100 + 010 + 001
Msg2Player("§¸nh b¹i thæ phØ , phô cËn th«n d©n ®­a ra mét DiÖn CÈm Kú lµm c¶m t¹ . ") 
AddEventItem(92) 
-- script viet hoa By http://tranhba.com  SetTask(3, 28) 
AddNote(" ë Vò di s¬n b¹ch n­íc ®éng ®¸nh b¹i 3 tªn gi¶ m¹o Thiªn v­¬ng gióp ®Ö tö ®Ých thæ phØ , lÊy ®­îc phô cËn th«n d©n ®­a cÈm kú . ") 
end 
end 
end; 
