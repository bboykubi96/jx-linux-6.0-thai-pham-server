-- script viet hoa By http://tranhba.com  Hoµng Hµ ngän nguån l­u tiªn ®éng mª cung 2F chiÕn ®Êu NPC s¬n tÆc 02# C«n L«n xuÊt s­ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function OnDeath() 
UTask_kl = GetTask(9) 
	if ((UTask_kl == 60*256+20) and (HaveItem(12) == 0) and (random(1,99) < 50)) then
AddEventItem(12) 
Msg2Player(" lÊy ®­îc viªm ®Õ c¸i ch×a khãa ") 
AddNote(" lÊy ®­îc viªm ®Õ c¸i ch×a khãa ") 
end 
end; 
