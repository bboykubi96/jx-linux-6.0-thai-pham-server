-- script viet hoa By http://tranhba.com  kim s¬n ®¶o chiÕn ®Êu thiÕt ®æi ®iÓm 2 bªn tr¸i ph­¬ng 

function main(sel) 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu , tøc ë bªn trong cöa 
SetPos(1387, 2762); -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë ngoµi cöa print (44384/32,88384/32) 
SetFightState(1); -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× tr¹ng th¸i chiÕn ®Êu 
else 
SetPos(1391, 2771); -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë bªn trong cöa print (44512/32,88672/32) 
SetFightState(0); -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
end; 
end;
