-- script viet hoa By http://tranhba.com  la tiªu s¬n nghiÖt long ®éng chiÕn ®Êu NPC c­êng ®¹o # n¨m ®éc 50 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 50*256+20) and (random(0,99) < 33) then		-- script viet hoa By http://tranhba.com  ÔÚÈÎÎñÖÐ£¬°´»úÂÊ´ò³ö¡£
AddEventItem(88) 
AddNote("CÇm tíi ngäc san h« ") 
Msg2Player("CÇm tíi ngäc san h« ") 
end 
end; 
