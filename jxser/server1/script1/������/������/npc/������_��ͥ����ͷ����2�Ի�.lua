-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn §éng ®×nh hå bÕn tµu thuyÒn phu 2 ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) rít xuèng ra th«n cÊp bËc yªu cÇu v× 5 cÊp 

function main(sel) 
Say("ThuyÒn phu # cã c©u nãi ®Ých h¶o , kh¸o s¬n cËt s¬n , kh¸o thñy cËt thñy . c¸i nµy t¸m tr¨m dÆm §éng ®×nh hå , chÝnh lµ chóng ta c¸ d©n ®Ých ¸o c¬m cha mÑ . ng­¬i muèn ngåi thuyÒn sao ? ", 2,"§i Thiªn v­¬ng ®¶o /yes","Kh«ng ngåi /no"); 
end; 

function yes() 
if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
if (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i lµ Thiªn v­¬ng gióp ®Ö tö , ngåi thuyÒn kh«ng thu tiÒn 
Say("ThuyÒn phu # nguyªn lai lµ Thiªn v­¬ng gióp ®Ých huynh ®Ö , h¶o thuyÕt # ngåi ta thuyÒn kh«ng cÇn tiÒn , ngåi xong #", 1,"§a t¹ /ok1") 
else 
Say("ThuyÒn phu # Thiªn v­¬ng ®¶o ? ng­êi b×nh th­êng cã thÓ ®Õn gÇn kh«ng ph¶i , muèn ®i lêi cña , ng­¬i nhiÒu l¾m cho chót b¹c . ", 1,"§­îc råi /ok2") 
end 
else 
Say("ThuyÒn phu # thËt xin lçi , kh«ng tíi cÊp n¨m ®Ých tay míi kh«ng thÓ ngåi thuyÒn ra th«n . ", 0) 
end 
end; 

function no() 
end; 


function ok1() 
NewWorld(59, 1425, 3472) 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
end; 


function ok2() 
if (GetCash() >= 100) then -- script viet hoa By http://tranhba.com  tham kh¶o trÞ gi¸ 
Pay(100) 
NewWorld(59, 1425, 3472) 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
else 
Say("ThuyÒn phu # muèn ®i Thiªn v­¬ng ®¶o , kh«ng cã b¹c kh«ng thÓ ®­îc . ", 0) 
end 
end;
