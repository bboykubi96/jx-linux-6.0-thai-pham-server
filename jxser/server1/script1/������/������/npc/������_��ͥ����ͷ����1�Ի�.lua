-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn §éng ®×nh hå bÕn tµu thuyÒn phu 1 ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) rít xuèng ra th«n cÊp bËc yªu cÇu v× 5 cÊp 

function main(sel) 
Say("ThuyÒn phu # ta tõ nhá ®ang ë bªn hå lín lªn , «ng néi ta cïng cha ta ®Òu lµ c¸ d©n , ®éng nµy ®×nh hå khu còng ch­a cã ta kh«ng quen ®İch ®Şa ph­¬ng . ng­¬i muèn ngåi thuyÒn sao ? ", 2,"§i Thiªn v­¬ng ®¶o /yes","Kh«ng ngåi /no") 
end; 

function yes() 
if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
if (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i lµ Thiªn v­¬ng gióp ®Ö tö , ngåi thuyÒn kh«ng thu tiÒn 
Say("ThuyÒn phu # nguyªn lai lµ Thiªn v­¬ng gióp ®İch huynh ®Ö , yªn t©m ®i , ta miÔn phİ ®­a huynh ®Ö ®i #", 1,"§a t¹ /ok1") 
else 
Say("ThuyÒn phu # yªu , ®ã còng kh«ng ph¶i lµ ng­êi b×nh th­êng ®i ®Şa ph­¬ng , ®i cã thÓ , ng­¬i nhiÒu l¾m cho chót b¹c . ", 1,"§­îc råi /ok2") 
end 
else 
Talk(1,"","ThuyÒn phu # thËt xin lçi , kh«ng tíi cÊp m­êi ®İch tay míi kh«ng thÓ ngåi thuyÒn ra th«n . ") 
end 
end; 

function no() 
end; 

function ok1() 
NewWorld(59, 1425, 3472) 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
end; 

function ok2() 
if (GetCash() >= 100) then -- script viet hoa By http://tranhba.com  tham kh¶o trŞ gi¸ 
Pay(100) 
NewWorld(59, 1425, 3472) 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
else 
Say("ThuyÒn phu # ta còng kh«ng thÓ b¹ch bµo mét lÇn thuyÒn . ", 0) 
end 
end; 
