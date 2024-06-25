-- script viet hoa By http://tranhba.com description: §­êng m«n 50 cÊp nhiÖm vô nói Thanh Thµnh vang n­íc ®éng ®­êng hßa 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2) 
	if (UTask_tm == 50*256+60) then
Talk(1,"","Hõ # dï sao ta ®· th©n b¹i danh liÖt , ®¸nh b¹i ta , ng­¬i còng m¬ t­ëng ®­îc # ¸m khÝ phæ ## ta ®em nã giÊu ë s¬n ®éng nµy trong , ng­¬i c¶ ®êi còng ®õng m¬ t­ëng t×m ®­îc . ") 
		SetTask(2, 50*256+80)
Msg2Player("§¸nh b¹i nói Thanh Thµnh vang n­íc ®éng ®­êng hßa , biÕt ¸m khÝ phæ ®Æt ë bªn trong ®éng ") 
AddNote("§¸nh b¹i nói Thanh Thµnh vang n­íc ®éng ®­êng hßa , biÕt ¸m khÝ phæ ®Æt ë bªn trong ®éng ") 
end 
end; 
