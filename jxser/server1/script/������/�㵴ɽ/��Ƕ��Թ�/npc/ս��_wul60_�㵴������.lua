-- script viet hoa By http://tranhba.com  Nh¹n §·ng s¬n dª gi¸c ®éng mª cung chiÕn ®Êu NPC ®¹i BOSS01# n¨m ®éc xuÊt s­ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 60*256+20) and (HaveItem(222) == 0) and (random(0,99) < 50) then
AddEventItem(222) 
AddNote("Ng­¬i ®¸nh b¹i nh¹n ®·ng ph¸i ®Çu lÜnh , ®em tÞ ®éc ch©u cÇm trë vÒ Ngò ®éc gi¸o ") 
Msg2Player("Ng­¬i ®¸nh b¹i nh¹n ®·ng ph¸i ®Çu lÜnh , ®em tÞ ®éc ch©u cÇm trë vÒ Ngò ®éc gi¸o ") 
end 
end; 
