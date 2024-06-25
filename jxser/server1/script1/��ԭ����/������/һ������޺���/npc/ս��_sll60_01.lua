-- script viet hoa By http://tranhba.com  ThiÕu L©m La h¸n trËn mª cung chiÕn ®Êu NPC ??01# ThiÕu L©m xuÊt s­ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function OnDeath() 
UTask_sl = GetTask(7) 
	if (UTask_sl == 60*256+10) then 		-- script viet hoa By http://tranhba.com  and (random(0,99) < 50)) then			-- script viet hoa By http://tranhba.com  ÔÚÈÎÎñÖĞ£¬50%»úÂÊ
i = random(0,4) 
if (i == 1) and (HaveItem(217) == 0) then 
AddEventItem(217) 
Msg2Player("Ng­¬i ®¹t ®­îc ®äc ch©u ") 
AddNote("Ng­¬i ®¹t ®­îc ®äc ch©u ") 
elseif (i == 2) and (HaveItem(215) == 0) then 
AddEventItem(215) 
Msg2Player("Ng­¬i ®¹t ®­îc thiÒn tr­îng . ") 
AddNote("Ng­¬i ®¹t ®­îc thiÒn tr­îng . ") 
elseif (i == 3) and (HaveItem(216) == 0) then 
AddEventItem(216) 
Msg2Player("Ng­¬i ®¹t ®­îc c¸ gç ") 
AddNote("Ng­¬i ®¹t ®­îc c¸ gç ") 
elseif (i == 4) and (HaveItem(214) == 0) then 
AddEventItem(214) 
Msg2Player("Ng­¬i ®¹t ®­îc b¸t vu . ") 
AddNote("Ng­¬i ®¹t ®­îc b¸t vu . ") 
else -- script viet hoa By http://tranhba.com  t­¬ng ®­¬ng víi 0 lóc , kh«ng ra ®¹o cô 
return 0 
end 
end 
end; 
