-- script viet hoa By http://tranhba.com  Nh¹n §·ng s¬n mª cung chiÕn ®Êu NPC con nhÖn 01# n¨m ®éc 10 cÊp nhiÖm vô # quyÒn nghiªng thiªn h¹ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 10*256+10) then		-- script viet hoa By http://tranhba.com  ÔÚÈÎÎñÖĞ£¬°´»úÂÊ´ò³ö£¨È¡Ïû»úÂÊ£©¡£
AddEventItem(86) -- script viet hoa By http://tranhba.com  vËt phÈm con nhÖn 
if (GetItemCount(86) >= 10) then 
Msg2Player("Ng­¬i b¾t ®­îc liÔu 10 chØ ®éc con nhÖn ") 
AddNote("Ng­¬i b¾t ®­îc liÔu 10 chØ ®éc con nhÖn ") 
else 
Msg2Player("B¾t ®­îc liÔu 10 chØ ®éc con nhÖn ") 
end 
elseif (GetTask(75) == 10) and (GetTask(52) == 10) and (random(0,99) < 75) then -- script viet hoa By http://tranhba.com  quyÒn nghiªng thiªn h¹ nhiÖm vô , theo nh­ ky tû sè lÊy ®­îc 
AddEventItem(86) 
if (GetItemCount(86) >= 7) then 
Msg2Player("B¾t ®­îc liÔu 7 chØ ®éc con nhÖn , cã thÓ ®i vÒ , phông mÖnh ") 
else 
Msg2Player("B¾t ®­îc mét con ®éc con nhÖn ") 
end 
end 
end; 
