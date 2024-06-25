-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng T©y M«n tr¹ng th¸i chiÕn ®Êu thiÕt ®æi Trap 

function main(sel) 

if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu , tøc ë trong thµnh 
SetPos(1537, 3093) -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë ngoµi thµnh 
SetFightState(1) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× tr¹ng th¸i chiÕn ®Êu 
else -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu tr¹ng th¸i chiÕn ®Êu , tøc ë ngoµi thµnh 
SetPos(1541, 3098) -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë trong thµnh 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
end; 
AddStation(1) -- script viet hoa By http://tranhba.com  ghi chĞp vai trß ®· tõng ®· ®Õn ph­îng t­êng phñ 
end;
