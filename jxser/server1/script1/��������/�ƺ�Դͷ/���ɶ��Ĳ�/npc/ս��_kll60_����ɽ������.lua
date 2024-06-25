-- script viet hoa By http://tranhba.com  Hoµng Hµ ngän nguån l­u tiªn ®éng mª cung 4F chiÕn ®Êu NPC s¬n tÆc 04# C«n L«n xuÊt s­ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function OnDeath() 
UTask_kl = GetTask(9) 
	if ((UTask_kl == 60*256+20) and (HaveItem(14) == 0) and (random(1,99) < 30)) then
AddEventItem(14) 
Msg2Player("Muèn ®i t×m chuyªn hóc ") 
AddNote("Muèn ®i t×m chuyªn hóc ") 
end 
end; 
