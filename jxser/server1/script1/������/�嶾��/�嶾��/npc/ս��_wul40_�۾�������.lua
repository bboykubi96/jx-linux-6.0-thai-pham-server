-- script viet hoa By http://tranhba.com  n¨m ®éc kim m¸u r¾n ®µm mª cung chiÕn ®Êu NPC m¾t kiÕng v­¬ng m·ng xµ 01# n¨m ®éc 40 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 40*256+10) and (HaveItem(143) == 0) and (random(0,99) < 60) then		-- script viet hoa By http://tranhba.com  ÔÚÈÎÎñÖÐ£¬°´»úÂÊ´ò³ö¡£
if (HaveItem(142) == 1) then 
if (random(0,99) < 60) then 
AddEventItem(143) 
DelItem(142) 
AddNote("B¾t ®­îc m¾t kiÕng v­¬ng m·ng xµ ") 
Msg2Player("Ng­¬i dïng x¹ h­¬ng tíi khèng chÕ nã cuèi cïng còng chép ®­îc ") 
else 
Msg2Player("Ng­¬i dïng thö x¹ h­¬ng tíi b¾t m¾t kiÕng v­¬ng m·ng xµ , nh­ng lµ kh«ng cÈn thËn bÞ h¾n ch¹y trèn ") 
end 
else 
Msg2Player("M¾t kiÕng v­¬ng m·ng xµ ®Ých kÞch ®éc kh«ng thÓ mæ , nÕu lµ kh«ng cã x¹ h­¬ng kh¾c chÕ nã lµ kh«ng c¸ch nµo b¾t l¹i ®Ých ") 
end 
end 
end; 
