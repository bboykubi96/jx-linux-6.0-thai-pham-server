-- script viet hoa By http://tranhba.com description: ph¸i Vâ §­¬ng 40 cÊp nhiÖm vô phôc bß gµ nói quan ®éng b×nh th­êng qu¸i vËt 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/15 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-17) 

function OnDeath() 
UTask_wd = GetTask(5); 
	if (UTask_wd == 40*256+60) and (HaveItem(164) == 0) and (random(0, 99) < 33) then
AddEventItem(164) 
Msg2Player("TiÕp thu nhuËn mÑ th¬ håi ©m ") 
-- script viet hoa By http://tranhba.com  SetTask(5, 48) 
AddNote("Thu phôc 5 chØ nhuËn mÑ b¹ch ngäc hæ , ®¹t ®­îc th¬ håi ©m ") 
end 
end; 
