-- script viet hoa By http://tranhba.com  §iÓm th­¬ng s¬n chiÕn ®Êu NPC thæ phØ # thóy khãi cöa 30 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 30*256+20) and (random(0,100) < 50) then				-- script viet hoa By http://tranhba.com  30¼¶ÈÎÎñÖĞ£¬50%»úÂÊ
		SetTask(6,30*256+30)
AddNote("Cøu ra h­¬ng s¬n thæ phØ trong tay ®o¹n hoa n«ng ®İch ch¸u g¸i . ") 
Msg2Player("Cøu ra h­¬ng s¬n thæ phØ trong tay ®o¹n hoa n«ng ®İch ch¸u g¸i . ") 
end 
end; 
