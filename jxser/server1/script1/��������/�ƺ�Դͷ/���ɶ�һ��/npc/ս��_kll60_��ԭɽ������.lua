-- script viet hoa By http://tranhba.com  Hoµng Hµ ngän nguån l­u tiªn ®éng mª cung 1F chiÕn ®Êu NPC s¬n tÆc 01# C«n L«n xuÊt s­ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function OnDeath() 
UTask_kl = GetTask(9) 
	if (UTask_kl == 60*256+20) and (HaveItem(11) == 0) and (random(1,99) < 60) then
AddEventItem(11) 
Msg2Player("B¾t ®­îc phôc hi khãa ") 
AddNote("B¾t ®­îc phôc hi khãa ") 
end 
end; 
