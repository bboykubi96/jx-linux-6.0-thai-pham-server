-- script viet hoa By http://tranhba.com description: kiÕm c¸c thôc ®¹o khãa v©n ®éng ®Şch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4); 
	if (UTask_tr == 40*256+20) and (HaveItem(159) == 0) then					-- script viet hoa By http://tranhba.com È¡Ïû¶ÔÈÎÎñÎïÆ·ÓĞÎŞµÄÅĞ¶Ï£¬ÒÔ±ãÖØ×öÈÎÎñ
AddEventItem(159) 
Msg2Player("DÔ dµng b¾t ®­îc tİnh liªu ®İch , trªn ng­êi h¾n t×m ®­îc cho Tèng triÒu ®İch mét phong mËt th­ . ") 
-- script viet hoa By http://tranhba.com  SetTask(4, 45) 
AddNote(" ë kiÕm c¸c thôc ®¹o b¾t ®­îc tİnh liªu ®İch , b¾t ®­îc cho Tèng triÒu ®İch mËt th­ . ") 
end 
end; 
