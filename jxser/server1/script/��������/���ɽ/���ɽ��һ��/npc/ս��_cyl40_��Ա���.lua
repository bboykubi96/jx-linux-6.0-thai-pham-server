-- script viet hoa By http://tranhba.com  §iÓm th­¬ng s¬n ¸c ph¸ch ®éng chiÕn ®Êu NPC ? ? ? 01# thóy khãi cöa 40 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 40*256+20) and (HaveItem(197) == 0) and (random(0,100) < 50) then			-- script viet hoa By http://tranhba.com  50%µÄ»úÂÊ³É¹¦
AddEventItem(197) 
Msg2Player("B¾t ®­îc ®ång c¸i ch×a khãa ") 
AddNote("T×m ra ®ång c¸i ch×a khãa ") 
end 
end; 
