-- script viet hoa By http://tranhba.com  AEXP - Auto Experience 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 
AEXP_FREQ = 10; -- script viet hoa By http://tranhba.com  10 phót 
AEXP_UPDATETIME = AEXP_FREQ * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com 300 gi©y (5 phót ) ®iÒu chØnh mét lÇn kinh nghiÖm trÞ gi¸ 
AEXP_MISSIONID = 9; 
AEXP_TIMERID = 19; 
AEXP_TASKID = 136; 
AEXP_OLTIME_TASKID = 140; -- script viet hoa By http://tranhba.com  ghi chÐp rêi ®i ®¶o lóc ®Ých ë tuyÕn thêi gian nhiÖm vô thay ®æi l­îng 

AEXP_NEEDLEVEL = 50; -- script viet hoa By http://tranhba.com  treo ky cÊp bËc nhu cÇu 

AEXP_HOUR_MAX = 24; -- script viet hoa By http://tranhba.com  nhiÒu nhÊt nh­ng ®ång thêi sö dông 24 giê 

AEXP_TIME_ONE = 60; -- script viet hoa By http://tranhba.com  mét viªn ®Ých phót ®Õm ( cã thÓ dïng mét giê ) 
AEXP_TIME_UPDATE = AEXP_TIME_ONE * AEXP_FREQ / 60; -- script viet hoa By http://tranhba.com  mçi ®iÒu chØnh mét lÇn së trõ ®Ých phót ®Õm ( c¨n cø ®iÒu chØnh thêi gian gian c¸ch ) 
AEXP_TIME_MAX = AEXP_TIME_ONE * AEXP_HOUR_MAX; -- script viet hoa By http://tranhba.com  nhiÒu nhÊt nh­ng ®ång thêi sö dông 24 giê 

AEXP_TICKET = 1800; -- script viet hoa By http://tranhba.com  tiÕn vµo hoa ®µo ®¶o ®Ých vÐ vµo cöa phÝ dông 

AEXP_STAT_FREQ = 1 * AEXP_TIME_ONE / AEXP_FREQ; -- script viet hoa By http://tranhba.com  thèng kª tÇn sè ( mçi mét giê thèng kª mét lÇn ) 

-- script viet hoa By http://tranhba.com  miÔn phÝ t¨ng gÊp béi kinh nghiÖm treo ky lóc ®o¹n 
AEXP_FREEDATE_BEGIN = 20040813 -- script viet hoa By http://tranhba.com  bao gåm ngµy ®ã 
AEXP_FREEDATE_END = 20040830 -- script viet hoa By http://tranhba.com  ngµy ®ã phôc vô khÝ ®æi míi th× ng­ng 
AEXP_SVRUPDATE_TIME = 9 -- script viet hoa By http://tranhba.com  phôc vô khÝ thê× gian ®æi míi 
AEXP_FREEDATE_EXPFACTOR = 1; -- script viet hoa By http://tranhba.com  kinh nghiÖm t¨ng c­êng béi sè 

-- script viet hoa By http://tranhba.com  cã hay kh«ng miÔn phÝ song kinh nghiÖm 
function AEXP_IsFreeTimeDoubleExp() 
-- script viet hoa By http://tranhba.com  return 1; -- script viet hoa By http://tranhba.com  ngµy ngµy miÔn phÝ , kh«ng hÒ n÷a thu lÖ phÝ 
-- script viet hoa By http://tranhba.com  nCurDate = tonumber(date("%Y%m%d")); 
-- script viet hoa By http://tranhba.com  nHour = tonumber(date("%H")) 
-- script viet hoa By http://tranhba.com  if (nCurDate >= AEXP_FREEDATE_BEGIN and nCurDate <= AEXP_FREEDATE_END) then-- script viet hoa By http://tranhba.com  miÔn phÝ song kinh nghiÖm ngµy 
-- script viet hoa By http://tranhba.com  if (nCurDate == AEXP_FREEDATE_END and nHour >= AEXP_SVRUPDATE_TIME) then -- script viet hoa By http://tranhba.com  ®· ®Õn ngµy cuèi cïng sau ®Ých thê× gian ®æi míi 
-- script viet hoa By http://tranhba.com  return 0; 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  return 1; 
-- script viet hoa By http://tranhba.com  end 
return 0; 
end; 
