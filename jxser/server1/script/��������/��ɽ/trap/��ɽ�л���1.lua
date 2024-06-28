-- script viet hoa By http://tranhba.com  t©y b¾c nam khu Hoa S¬n tr¹ng th¸i chiÕn ®Êu thiÕt ®æi ®iÓm 1 
-- script viet hoa By http://tranhba.com 2004.1.5 
-- script viet hoa By http://tranhba.com by Suyu 
-- script viet hoa By http://tranhba.com  2004-05-01(Dan_Deng) 

function main(sel) 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu , tøc ë trong thµnh 
SetPos(2600, 3610) -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë ngoµi thµnh 
SetFightState(1) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× tr¹ng th¸i chiÕn ®Êu 
else -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu tr¹ng th¸i chiÕn ®Êu , tøc ë ngoµi thµnh 
SetPos(2604, 3599) -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë trong thµnh 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
end; 
end; 
