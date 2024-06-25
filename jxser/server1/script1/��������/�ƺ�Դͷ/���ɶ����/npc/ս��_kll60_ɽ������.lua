-- script viet hoa By http://tranhba.com  Hoµng Hµ ngän nguån l­u tiªn ®éng mª cung 5F chiÕn ®Êu NPC s¬n tÆc 05# C«n L«n xuÊt s­ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function OnDeath() 
UTask_kl = GetTask(9) 
	if ((UTask_kl == 60*256+20) and (HaveItem(15) == 0) and (random(0,99) < 20)) then
AddEventItem(15) 
Msg2Player("B¾t ®­îc chuyªn hóc khãa ") 
AddNote("B¾t ®­îc chuyªn hóc khãa ") 
end 
end; 
