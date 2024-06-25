-- script viet hoa By http://tranhba.com  thµnh §¹i Lı sïng th¸nh tù ngµn t×m th¸p chiÕn ®Êu NPC ®¹o tÆc 01# thóy khãi cöa 50 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-27) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy >= 50*256+32) and (UTask_cy < 50*256+50) and (HaveItem(5) == 0) then		-- script viet hoa By http://tranhba.com 50¼¶ÈÎÎñÖĞÇÒÎŞµÀ¾ß
UTask_cy = SetBit(UTask_cy,1,1) 
		if (UTask_cy == 50*256+32+7) then		-- script viet hoa By http://tranhba.com Èç¹û¹»(bin(100 + 010 + 001))
			SetTask(6,50*256+32)
AddEventItem(5) 
Msg2Player("§¸nh b¹i ®¹o tÆc , ®o¹t l¹i bŞ ®¸nh c¾p ®İch m­a ®ång Quan ¢m ") 
AddNote("§¸nh b¹i ®¹o tÆc , ®o¹t l¹i bŞ ®¸nh c¾p ®İch m­a ®ång Quan ¢m ") 
else 
SetTask(6,UTask_cy) 
Msg2Player("§¸nh b¹i ®¹o tÆc , nh­ng lµ , kh«ng cã t×m ®­îc m­a ®ång Quan ¢m ") -- script viet hoa By http://tranhba.com  cã muèn hay kh«ng ®Ò kú nhµ ch¬i ? 
end 
end 
end; 
