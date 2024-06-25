-- script viet hoa By http://tranhba.com  ThiÕu L©m phİa sau nói mËt thÊt chiÕn ®Êu NPC ??01# ThiÕu L©m 40 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function OnDeath() 
UTask_sl = GetTask(7) 
UTask_sl40tmp = GetTaskTemp(44) 
	if (UTask_sl == 40*256+10) and (random(1,99) < 33) then
		SetTask(7,40*256+20)
AddNote("B¾t ®­îc khÈu quyÕt # ®Êm bãp ni t¸m mª hång . ") 
Msg2Player("B¾t ®­îc khÈu quyÕt # ®Êm bãp ni t¸m mª hång . ") 
end 
end; 
