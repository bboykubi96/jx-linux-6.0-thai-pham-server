-- script viet hoa By http://tranhba.com  Hoµng Hµ ngän nguån l­u tiªn ®éng mª cung 3F chiÕn ®Êu NPC s¬n tÆc 03# C«n L«n xuÊt s­ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function OnDeath() 
UTask_kl = GetTask(9) 
	if ((UTask_kl == 60*256+20) and (HaveItem(13) == 0) and (random(1,99) < 40)) then
AddEventItem(13) 
Msg2Player("B¾t ®­îc thiÓu h¹o khãa ") 
AddNote("B¾t ®­îc thiÓu h¹o khãa ") 
end 
end; 
