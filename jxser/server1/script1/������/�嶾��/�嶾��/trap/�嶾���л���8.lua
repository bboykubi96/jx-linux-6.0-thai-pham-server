-- script viet hoa By http://tranhba.com  Giang Nam khu Ngò ®éc gi¸o tr¹ng th¸i chiÕn ®Êu thiÕt ®æi Trap 
-- script viet hoa By http://tranhba.com Trap Id 102 
-- script viet hoa By http://tranhba.com By t« vò 2003 n¨m 10 th¸ng 16 ngµy 

function main(sel) 

if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu , tøc ë trong thµnh 
SetPos(1634, 3237) -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë ngoµi thµnh 
SetFightState(1) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× tr¹ng th¸i chiÕn ®Êu 
else -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu tr¹ng th¸i chiÕn ®Êu , tøc ë ngoµi thµnh 
SetPos(1630, 3226) -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë trong thµnh 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
end; 
end;
