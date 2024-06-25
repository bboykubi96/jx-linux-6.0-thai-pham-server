-- script viet hoa By http://tranhba.com  §iÓm th­¬ng s¬n ¸c ph¸ch ®éng chiÕn ®Êu NPC ? ? ? 02# thóy khãi cöa 40 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 40*256+20) and (HaveItem(196) == 0) and (random(0,100) < 40) then				-- script viet hoa By http://tranhba.com  40%µÄ»úÂÊ³É¹¦
AddEventItem(196) 
Msg2Player("B¾t ®­îc thiÕt c¸i ch×a khãa ") 
AddNote("T×m ra thiÕt c¸i ch×a khãa ") 
end 
end; 
