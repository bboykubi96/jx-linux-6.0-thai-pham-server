-- script viet hoa By http://tranhba.com //////////////////// 
-- script viet hoa By http://tranhba.com  ®¹i cßn ®an 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com //////////////////// 

VALUE_HUANDAN_CONTRIBUTION = 30 
tbHUANDAN_ADDEXP = { 
[4] = 1.25, 
[5] = 1.3, 
[6] = 1.35, 
[7] = 1.4, 
[8] = 1.45, 
[9] = 1.5, 
[10] = 1.6, 
} 
TASKID_TECHAN_HUANDAN_EXP = 1741 -- script viet hoa By http://tranhba.com  ®¹i cßn ®an mçi lÇn cho cïng kinh nghiÖm trÞ gi¸ 
TASKID_TECHAN_HUANDAN_TIME = 1742 -- script viet hoa By http://tranhba.com  ®¹i cßn ®an cßn thõa l¹i thêi gian sö dông 
function adddahuandan_main(nUseLevel, nCount) 
if (not nCount) then 
nCount = 1; 
end; 
local nResttime = GetTask(TASKID_TECHAN_HUANDAN_TIME) 
local nExtpre = GetTask(TASKID_TECHAN_HUANDAN_EXP) 
local nExtpreTotal = floor(nExtpre / 5) * nResttime 
	nResttime = nResttime + 360 * nCount	-- script viet hoa By http://tranhba.com nCount¸ö6Ð¡Ê±
	nExtpreTotal = ( (tbHUANDAN_ADDEXP[nUseLevel] - 1) * sl_gethuandan_exp(GetLevel()) ) * 360 + nExtpreTotal
nExtpre = ceil((nExtpreTotal / nResttime) * 5) 
SetTask(TASKID_TECHAN_HUANDAN_TIME, nResttime) 
SetTask(TASKID_TECHAN_HUANDAN_EXP, nExtpre) 
local nRestH, nRestM = GetMinAndSec(nResttime) 
return nRestH, nRestM; 
end; 


function sl_gethuandan_exp(nLevel) 
local nExp = 0 
if (nLevel == 50) then -- script viet hoa By http://tranhba.com  50 
nExp = 700; -- script viet hoa By http://tranhba.com  mçi phót ®¹t ®­îc ®Ých kinh nghiÖm trÞ gi¸ 
elseif (nLevel < 100) then -- script viet hoa By http://tranhba.com  51~99 
		nExp = 700 + floor((nLevel - 50)/5)*100; -- script viet hoa By http://tranhba.com  Ã¿·ÖÖÓ»ñµÃµÄ¾­ÑéÖµ
else -- script viet hoa By http://tranhba.com  100 cÊp cïng 100 cÊp trë lªn 
		nExp = 1700; -- script viet hoa By http://tranhba.com  Ã¿·ÖÖÓ»ñµÃµÄ¾­ÑéÖµ[700 + floor((100 - 50)/5)*100]
end 
nExp = nExp * 12 
return nExp 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ®em gi©y truyÖn ®æi thµnh ph©n cïng gi©y , tû nh­ 62s = 1m2s 
function GetMinAndSec(nSec) 
local nRestMin = floor(nSec / 60); 
local nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end;
