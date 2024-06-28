-- script viet hoa By http://tranhba.com  Vò di s¬n mª cung chiÕn ®Êu NPC ? ? 01# n¨m ®éc 30 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu >= 30*256+10) and (UTask_wu < 40*256) and (HaveItem(87) == 0) and (random(0,99) < 50) then
AddEventItem(87) 
		if (UTask_wu == 30*256+10) then
AddNote(" lÊy ®­îc méc h­¬ng ®Ønh ") 
Msg2Player(" lÊy ®­îc méc h­¬ng ®Ønh ") 
else 
Msg2Player("Ch¼ng qua lµ gi¶ méc h­¬ng ®Ønh ") 
end 
end 
end; 
