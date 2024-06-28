-- script viet hoa By http://tranhba.com  d­îc v­¬ng cèc d­îc v­¬ng ®éng chiÕn ®Êu NPC thæ phØ C«n L«n 20 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-30) 

function OnDeath() 
UTask_kl = GetTask(9); 
	if (UTask_kl == 20*256+10) and (HaveItem(7) == 0) and (random(0,99) < 60) then
AddEventItem(7) 
Msg2Player("B¾t ®­îc mét l¹c ®µ ®Çu l©u ") 
AddNote("B¾t ®­îc mét l¹c ®µ ®Çu l©u ") 
end 
end; 
