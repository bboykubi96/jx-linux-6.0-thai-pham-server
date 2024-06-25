Include("\\script\\missions\\autohang\\head.lua");

-- script viet hoa By http://tranhba.com  c¨n cø nhµ ch¬i cÊp bËc , tÝnh to¸n kinh nghiÖm trÞ gi¸ 
-- script viet hoa By http://tranhba.com  nµy hµm sè ë GameServer khëi ®éng lóc tù ®éng ®iÒu dông , dïng cho thµnh lËp treo ky kinh nghiÖm trÞ sè biÓu 
function AEXP_GetHangExpValue(nLevel) 

nExp = 0; 
	-- script viet hoa By http://tranhba.com  Ò»Ð¡Ê±¹Ò»ú¾­Ñé£ºe={3.5w+floor[(lv-50)/5]*0.5w}*1.2
if (nLevel == 50) then -- script viet hoa By http://tranhba.com  50 
nExp = 700; -- script viet hoa By http://tranhba.com  mçi phót ®¹t ®­îc ®Ých kinh nghiÖm trÞ gi¸ 
elseif (nLevel < 100) then -- script viet hoa By http://tranhba.com  51~99 
		nExp = 700 + floor((nLevel - 50)/5)*100; -- script viet hoa By http://tranhba.com  Ã¿·ÖÖÓ»ñµÃµÄ¾­ÑéÖµ
else -- script viet hoa By http://tranhba.com  100 cÊp cïng 100 cÊp trë lªn 
		nExp = 1700; -- script viet hoa By http://tranhba.com  Ã¿·ÖÖÓ»ñµÃµÄ¾­ÑéÖµ[700 + floor((100 - 50)/5)*100]
end 

-- script viet hoa By http://tranhba.com 2007-01-05 kinh nghiÖm ®iÒu chØnh lµm th× ra lµ 3 lÇn 
nExp = nExp * AEXP_FREQ * 3 / 2; -- script viet hoa By http://tranhba.com  (10) phót ®¹t ®­îc ®Ých kinh nghiÖm trÞ gi¸ 

return nExp; 
end; 

-- script viet hoa By http://tranhba.com  c¨n cø nhµ ch¬i cÊp bËc , cïng víi treo ky thêi gian ( lÊy giê lµm ®¬n vÞ ) , tÝnh to¸n cÇn ®Ých kim tiÒn 
function AEXP_GetNeedMoney(nLevel, nTime) 
nTemp = 60 / AEXP_FREQ; -- script viet hoa By http://tranhba.com  mét giê (60 phót ) ®iÒu chØnh mÊy lÇn kinh nghiÖm 
nMoney = AEXP_GetHangExpValue(nLevel) * nTemp * nTime / 2; -- script viet hoa By http://tranhba.com  kinh nghiÖm trÞ gi¸ : ng©n l­îng ®Õm = 2:1 
return nMoney; 
end; 

-- script viet hoa By http://tranhba.com  tiÕn vµo hoa ®µo ®¶o 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ #1 bµy tá thµnh c«ng , 0 bµy tá thÊt b¹i , -1 bµy tá ng©n l­îng ch­a ®ñ 
function aexp_gotothd(nSubWorldID) 
do return -1 end
if (GetCash() < AEXP_TICKET) then 
return -1; 
end 

if(GetExtPoint( 0 ) <= 0 ) then 
Say("Ng­îng ngïng # chØ cã sung trÞ gi¸ míi cã thÓ ®i hoa ®µo ®¶o ",0) 
return -2 
end 

Pay(AEXP_TICKET) 
LeaveTeam(); -- script viet hoa By http://tranhba.com  rêi ®i ®éi ngò 
SetAutoHangMapFlag(1) -- script viet hoa By http://tranhba.com  thiÕt trÝ tiÕn vµo treo ky b¶n ®å dÊu hiÖu ( che giÊu c«ng trß chuyÖn # trë vÒ thµnh chê chøc n¨ng ) 

-- script viet hoa By http://tranhba.com  miÔn phÝ song kinh nghiÖm thêi gian , kh«ng nªn gi¸o ®ang treo ky thêi gian 
if (AEXP_IsFreeTimeDoubleExp() == 0) then-- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ miÔn phÝ song kinh nghiÖm ngµy 
-- script viet hoa By http://tranhba.com  cßn thõa l¹i thêi gian gi¸o ®ang - start 
-- script viet hoa By http://tranhba.com  nhµ ch¬i c¸ch khai hoa ®µo ®¶o lóc , tÞch t¸m ch¸o ®Ých d­îc lùc kh«ng cã hiÖu qu¶ nh­ng h÷u hiÖu thêi gian vÉn sÏ tiªu hao 
-- script viet hoa By http://tranhba.com  cho nªn ë lÇn n÷a tiÕn vµo lóc cÇn khÊu trõ bé nµy ph©n treo ky thêi gian 
-- script viet hoa By http://tranhba.com 06.06.13 
-- script viet hoa By http://tranhba.com  tÞch t¸m ch¸o ®· bÞ ®µo má thêi gian thay thÕ # nhµ ch¬i rêi ®i hoa ®µo ®¶o thêi gian sÏ kh«ng tiªu hao , kh«ng nªn khÊu trõ thêi gian 
-- script viet hoa By http://tranhba.com nTime = GetTask(AEXP_OLTIME_TASKID); 
-- script viet hoa By http://tranhba.com if (nTime > 0) then 
-- script viet hoa By http://tranhba.com  nTime = floor((GetGameTime() - nTime) / 60); -- script viet hoa By http://tranhba.com  ®¬n vÞ # phót 
-- script viet hoa By http://tranhba.com  nPointTime = GetTask(AEXP_TASKID) - nTime; -- script viet hoa By http://tranhba.com  trõ thêi gian ( ®¬n vÞ # phót ) 
-- script viet hoa By http://tranhba.com  if (nPointTime < 0) then 
-- script viet hoa By http://tranhba.com  nPointTime = 0; 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  SetTask(AEXP_TASKID, nPointTime); -- script viet hoa By http://tranhba.com  míi cßn thõa l¹i thêi gian 
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com  cßn thõa l¹i thêi gian gi¸o ®ang - end 
end 

NewWorld(nSubWorldID,1523,3237) 
SetFightState(0) 
Msg2Player("Ng­¬i ®· tíi ®Õn mét ®¬n ®éc thÕ giíi . ë n¬i nµy n¨ng lùc cña ng­¬i sÏ bÞ ¶nh h­ëng # kh«ng thÓ cïng thÕ giíi # m«n ph¸i cïng thÕ giíi liªn l¹c # kh«ng thÓ sö dông thæ ®Þa phï , t©m t©m t­¬ng Ên phï # kh«ng thÓ häp thµnh ®éi , kh«ng thÓ mua b¸n . "); 
return 1; 
end; 
