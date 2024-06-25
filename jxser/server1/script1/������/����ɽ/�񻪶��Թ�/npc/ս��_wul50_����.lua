-- script viet hoa By http://tranhba.com  Vò di s¬n ngäc hoa ®éng mª cung chiÕn ®Êu NPC l­u khÊu 01# n¨m ®éc 50 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 50*256+10) then
		SetTask(10,50*256+20)
AddNote("§i la tiªu s¬n ®¸nh b¹i c­êng ®¹o , cÇm trë vÒ ngäc san h« ") 
Msg2Player("B¾t ®­îc ®Çu lÜnh , míi trë l¹i ngäc san h« bÞ Vò di s¬n ®Ých c­êng ®¹o ®o¹t ®i , bän hä cïng ë la tiªu ®Ých c­êng ®¹o lµ mét phe ") 
end 
end; 
