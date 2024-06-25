-- script viet hoa By http://tranhba.com  §iÓm th­¬ng s¬n ¸c ph¸ch ®éng chiÕn ®Êu NPC ? ? ? 03# thóy khãi cöa 40 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 40*256+20) and (HaveItem(198) == 0) and (random(0,100) < 30) then				-- script viet hoa By http://tranhba.com  30%µÄ»úÂÊ³É¹¦
AddEventItem(198) 
Msg2Player("B¾t ®­îc ng©n c¸i ch×a khãa ") 
AddNote("T×m ra ng©n c¸i ch×a khãa ") 
end 
end; 
