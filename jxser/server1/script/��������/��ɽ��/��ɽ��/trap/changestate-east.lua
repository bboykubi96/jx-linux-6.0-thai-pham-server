-- script viet hoa By http://tranhba.com  ph¸i Hoa s¬n ®«ng m«n chiÕn ®Êu thiÕt ®æi ®iÓm 

function main(sel) 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu , tøc ë bªn trong ph¸i 
SetPos(1534, 3187); -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë ph¸i bªn ngoµi 
SetFightState(1); -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× tr¹ng th¸i chiÕn ®Êu 
else 
SetPos(1532, 3184); -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë bªn trong ph¸i 
SetFightState(0); -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
end; 
end; 
