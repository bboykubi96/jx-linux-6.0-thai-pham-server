-- script viet hoa By http://tranhba.com description: §­êng m«n tróc h¶i cöa thø ba ®Şch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 == 60) then 
i = random(0,7) 
if (i == 0) then 
Talk(1,"","Ch¸nh ®«ng v× l«i ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ ch¸nh ®«ng v× l«i ") 
elseif (i == 1) then 
Talk(1,"","§ang nam lµ háa ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ ®ang nam lµ háa ") 
elseif (i == 2) then 
Talk(1,"","Ch¸nh t©y v× chiÓu ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ ch¸nh t©y v× chiÓu ") 
elseif (i == 3) then 
Talk(1,"","Chİnh b¾c lµ thñy ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ chİnh b¾c lµ thñy ") 
elseif (i == 4) then 
Talk(1,"","§«ng nam lµ giã ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ ®«ng nam lµ giã ") 
elseif (i == 5) then 
Talk(1,"","§«ng b¾c v× s¬n ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ ®«ng b¾c v× s¬n ") 
elseif (i == 6) then 
Talk(1,"","T©y nam v× ®Şa ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ t©y nam v× ®Şa ") 
else 
Talk(1,"","T©y b¾c lµ trêi ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ t©y b¾c lµ trêi ") 
end 
end 
end; 
