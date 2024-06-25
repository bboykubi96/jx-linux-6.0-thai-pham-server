-- script viet hoa By http://tranhba.com description: §­êng m«n qu¸i th¹ch trËn ®Şch nh©n 2 20 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2) 
	if ((UTask_tm == 20*256+20) and (HaveItem(38) == 0)) then		-- script viet hoa By http://tranhba.com Ã»ÓĞ¹ÖÊ¯ÕóË¿ÅÁ¶ş
AddEventItem(38) 
Msg2Player(" lÊy ®­îc ®iÒu thø hai ti m¹t , th­îng th­ “ vµo ” ch÷ ") 
AddNote(" lÊy ®­îc ®iÒu thø hai ti m¹t , th­îng th­ “ vµo ” ch÷ ") 
end 
end; 
