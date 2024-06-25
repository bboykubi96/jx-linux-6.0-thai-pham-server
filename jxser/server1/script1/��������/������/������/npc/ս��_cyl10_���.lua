-- script viet hoa By http://tranhba.com  thóy khãi cöa chiÕn ®Êu NPC ??? 10 cÊp nhiÖm vô # thóy vò tr©m # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-25) 

function OnDeath() 
UTask_cy = GetTask(6); 
	if (UTask_cy == 10*256+10) and (HaveItem(0) == 0) and (random(0,100) < 75) then			-- script viet hoa By http://tranhba.com ÈÎÎñÖÐ£¬75%»úÂÊ³öÏÖ
AddEventItem(0) 
Msg2Player("§¹t ®­îc thóy vò tr©m ") 
AddNote("§¹t ®­îc thóy vò tr©m ") 
end 
end; 
