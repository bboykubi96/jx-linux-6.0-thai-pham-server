-- script viet hoa By http://tranhba.com  Trung Nguyªn b¾c khu ph¸i ThiÕu l©m to ThiÕu L©m mËt thÊt 
-- script viet hoa By http://tranhba.com Trap ID# Trung Nguyªn b¾c khu 67 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function main(sel) 
UTask_sl = GetTask(7) 
if (GetSeries() == 0) and (GetFaction() == "shaolin") then 
		if (UTask_sl == 40*256+10) then
SetTaskTemp(43,0) -- script viet hoa By http://tranhba.com  t¹m thêi thay ®æi l­îng t¹m ®Şnh v× 43 , muèn ba vÊn ®Ò ®¸p ®èi víi # t¹m thêi thay ®æi l­îng trŞ gi¸ lµ 3# l¹i võa tiÕn vµo mËt thÊt . 
			Talk(1,"L40_sele1_1","Tr­íc Th¹ch m«n cã kh¾c mÊy hµng ch÷: Muèn vµo mËt thÊt, ph¶i tr¶ lêi 3 c©u hái d­íi ®©y!")
		elseif (UTask_sl >= 40*256+10) then
NewWorld(113, 1675, 3361) 
else 
Msg2Player("C# #a c# b b¸c ph#, kh tÇn g ## v kú ! ") 
end 
else 
Msg2Player("N béi #y l?c# #a c# b b¸c ph#, ng#i ngo nh­ng kh tÇn g ## v kú ! ") 
end 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ®©y lµ vËt g× ? 
end; 

function L40_sele1_1() 
Say("C# th?nh nhŞ : N# x# # chØ g Huy thİch Trang mang t?Thi yÕt Tr bİ b?kinh l? ",2,"#i Th t­ëng Ph# Kinh /L40_S1_correct1","Ti# Th t­ëng Ph# Kinh /L40_sele1_2") 
end; 

function L40_S1_correct1() 
	SetTaskTemp(43,GetTaskTemp(43) + 1)		-- script viet hoa By http://tranhba.com  ´ğ¶ÔÒ»¸öÎÊÌâÖµ¼Ó1£¬Èı¸öÈ«¶Ô·½¿É½øÈë
L40_sele1_2() 
end; 

function L40_sele1_2() 
Say("C# th?2: X?L?c# Ph# t?l?",2,"Sau khi Ph# T?v?c# Ni# B yªu t?#ng h# th yªu h /L40_sele1_3","Do ch v·n h th# Ph# T?thi# ch# m?th yªu h /L40_S1_correct2") 
end; 

function L40_S1_correct2() 
	SetTaskTemp(43,GetTaskTemp(43) + 1)		-- script viet hoa By http://tranhba.com  ´ğ¶ÔÒ»¸öÎÊÌâÖµ¼Ó1£¬Èı¸öÈ«¶Ô·½¿É½øÈë
L40_sele1_3() 
end; 

function L40_sele1_3() 
Say("C# th?3: Ph# ph tŞnh c# b b¸c t?l?thu nhuËn :",3,"Thi thİch T tÇn g /L40_S1_correct3","M# T tÇn g /L40_sele1_result","Lu# T tÇn g /L40_sele1_result") 
end; 

function L40_S1_correct3() 
	SetTaskTemp(43,GetTaskTemp(43) + 1)		-- script viet hoa By http://tranhba.com  ´ğ¶ÔÒ»¸öÎÊÌâÖµ¼Ó1£¬Èı¸öÈ«¶Ô·½¿É½øÈë
L40_sele1_result() 
end; 

function L40_sele1_result() 
if (GetTaskTemp(43) >= 3) then 
SetTaskTemp(43,0) -- script viet hoa By http://tranhba.com  mçi lÇn tiÕn vµo muèn nÆng ®¸nh hai cöa ®İch khÈu quyÕt 
Talk(1,"","Tr?l ¸ch #ng 3 #p #, th ®ång h m tÇn l# t chËm chuy# #ng m?ra 1 l# #") 
NewWorld(113, 1675, 3361); 
else 
SetTaskTemp(43,0) -- script viet hoa By http://tranhba.com  mçi lÇn tiÕn vµo muèn nÆng ®¸nh hai cöa ®İch khÈu quyÕt 
Talk(1,"","Tr?l ¸ch #ng 3 #p #, nh#g h# nh?th ®ång h m tÇn v th­¬ng tr?tr?") 
-- script viet hoa By http://tranhba.com  SetPos() -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i dêi ra trap ®iÓm 
end 
end; 
