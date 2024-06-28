-- script viet hoa By http://tranhba.com  kiÕm c¸c thôc ®¹o ®¹o tr¶i qua ng­êi mª cung chiÕn ®Êu NPC ? ? 30 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 

function OnDeath() 
UTask_sl = GetTask(7) 
	if (UTask_sl == 30*256+20) and (HaveItem(27) == 0) and (random(0,99) < 40) then
AddEventItem(27) 
Msg2Player("Mang vÒ Bµn nh­îc ba la mËt nghi ngê tr¶i qua ") 
AddNote("Mang vÒ Bµn nh­îc ba la mËt nghi ngê tr¶i qua ") 
end 
end; 
