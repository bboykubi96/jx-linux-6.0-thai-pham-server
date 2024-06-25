-- script viet hoa By http://tranhba.com description: ph¸i Vâ §­¬ng 40 cÊp nhiÖm vô phôc bß gµ nói quan ®éng n¨m con b¹ch ngäc hæ 2# Vâ §­¬ng 40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/15 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-17) 

function OnDeath() 
	if (GetTask(5) == 40*256+20) then
UTask_wd40tmp = SetBit(GetTaskTemp(16),2,1) 
if (UTask_wd40tmp == 31) then 
			SetTask(5,40*256+40)
AddNote("Thu phôc 5 chØ nhuËn mÑ b¹ch ngäc hæ . ") 
Msg2Player("Thu phôc 5 chØ nhuËn mÑ b¹ch ngäc hæ . ") 
else 
SetTaskTemp(16, UTask_wd40tmp) 
end 
end 
end; 
