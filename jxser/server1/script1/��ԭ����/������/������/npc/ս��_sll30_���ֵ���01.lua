-- script viet hoa By http://tranhba.com  th¸p l©m mª cung chiÕn ®Êu NPC ? ? 30 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 

function OnDeath() 
UTask_sl = GetTask(7); 
	if (UTask_sl == 30*256+10) and (random(0,99) < 50) then
		SetTask(7,30*256+20)
Msg2Player("Th× ra lµ hµnh tung quû bİ ng­êi cña lµ ng­êi Kim , bän hä ®ång ®¶ng ®· trém Bµn nh­îc ba la mËt nghi ngê tr¶i qua , ch¹y ®Õn b¾c kiÕm c¸c phİa t©y ®İch Kim quang ®éng liÔu . ") 
AddNote(" ë th¸p l©m hµnh tung quû bİ ng­êi cña lµ ng­êi Kim , bän hä ®ång ®¶ng ®· trém Bµn nh­îc ba la mËt nghi ngê tr¶i qua , ch¹y ®Õn b¾c kiÕm c¸c phİa t©y ®İch Kim quang ®éng liÔu . ") 
end 
end; 
