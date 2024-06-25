-- script viet hoa By http://tranhba.com  la tiªu s¬n mª cung chiÕn ®Êu NPC s¾c quû 01# n¨m ®éc 20 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
i = GetItemCount("§Çu ng­êi ") 
	if (UTask_wu == 20*256+10) and (i < 7) and (random(0,99) < 80) then		-- script viet hoa By http://tranhba.com  ÔÚÈÎÎñÖÐ£¬°´»úÂÊ´ò³ö¡£
AddEventItem(85) 
if (i >= 6) then 
Msg2Player("Ng­¬i giÕt la tiªu b¶y quû , cÇm 7 c¸ ®Çu ") 
AddNote("Ng­¬i giÕt la tiªu b¶y quû , cÇm 7 c¸ ®Çu , giao cho b¹ch o¸nh o¸nh ") 
else 
Msg2Player(" lÊy ®­îc mét ®Çu ng­êi ") 
end 
end 
end; 
