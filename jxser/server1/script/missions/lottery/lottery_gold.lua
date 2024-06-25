-- script viet hoa By http://tranhba.com  may m¾n vÐ sè khai t­ëng 
-- script viet hoa By http://tranhba.com  Fanghao Wu 
-- script viet hoa By http://tranhba.com  2004.11.13 

Include( "\\script\\global\\lottery_gold.lua" )

function main() 
if( SubWorldID2Idx( 80 ) >= 0 ) then -- script viet hoa By http://tranhba.com  cã D­¬ng Ch©u b¶n ®å ®Ých phôc vô khÝ míi cã thÓ tiÕn hµnh 
onLotteryGold_UpdateIssue(); 
-- script viet hoa By http://tranhba.com  local nWeekDay = tonumber( date( "%w" ) ); 
-- script viet hoa By http://tranhba.com  if( nWeekDay == 1 ) then 
-- script viet hoa By http://tranhba.com  Lottery_StartNewIssue( LOTTERY_GOLD_TYPENAME ); 
-- script viet hoa By http://tranhba.com  end 
end 
end
