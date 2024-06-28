-- script viet hoa By http://tranhba.com description: §­êng m«n 30 cÊp nhiÖm vô nói Thanh Thµnh m©y tr¾ng ®éng trãi phØ 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 30*256+20) then 
Talk(1,"","Hõ # coi nh­ ®¸nh b¹i ta , ng­¬i còng ®õng muèn dÔ dµng lÊy ®­îc # háa khÝ phæ # . ®µng hoµng nãi cho ng­¬i biÕt , # háa khÝ phæ # sÏ ë ®ã c¸ b¶o r­¬ng trong , khai b¶o r­¬ng ®Ých c¸i ch×a khãa ng­¬i cã b¶n l·nh ®ang ë trong ®éng tõ tõ t×m ®i !") 
		SetTask(2, 30*256+30)
AddNote("§¸nh b¹i ®Çu môc cuång sa , biÕt háa khÝ phæ ®Æt ë b¶o r­¬ng trong ! ") 
Msg2Player("§¸nh b¹i ®Çu môc cuång sa , biÕt háa khÝ phæ ®Æt ë b¶o r­¬ng trong ! ") 
end 
end; 
