-- script viet hoa By http://tranhba.com  t©y nam b¾c khu tróc ti ®éng mét tÇng to tróc ti ®éng tÇng hai 
-- script viet hoa By http://tranhba.com Trap ID# t©y nam b¾c khu 7 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function main(sel) 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 60*256+20) and (HaveItem(99) == 1)) then			-- script viet hoa By http://tranhba.com ÈÎÎñÖĞ²¢ÇÒÓĞÔ¿³×
DelItem(99) 
SetFightState(1) 
NewWorld(27, 1522, 3205) 
		SetTask(2, 60*256+40)
	elseif (UTask_tm > 60*256+20) and (GetFaction() == "tangmen") then		-- script viet hoa By http://tranhba.com  ¹ıÁËÕâÒ»²½µÄ±¾ÃÅµÜ×Ó¿ÉÒÔ×ÔÓÉÁ·¼¶
SetFightState(1) 
NewWorld(27, 1522, 3205) 
else 
Talk(1,"","Kh tÇn g c?ch# kh#, b# kh tÇn g th?v kú t#g 2 Tr bİ T?#ng.") 
end 
end; 
