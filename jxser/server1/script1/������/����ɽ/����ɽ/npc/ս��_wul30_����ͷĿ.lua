-- script viet hoa By http://tranhba.com  Vò di s¬n mª cung chiÕn ®Êu NPC ? ? 02# n¨m ®éc 30 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 30*256+20) and (HaveItem(221) == 0) and (random(0,99) < 40) then
AddEventItem(221) 
AddNote("§¸nh b¹i ph¶n ®å , cÇm trë vÒ thËt méc h­¬ng ®Ønh ") 
Msg2Player("§¸nh b¹i ph¶n ®å , cÇm trë vÒ thËt méc h­¬ng ®Ønh ") 
end 
end; 
