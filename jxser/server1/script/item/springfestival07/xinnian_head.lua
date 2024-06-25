IncludeLib("TIMER") 

TIMER_XINNIANLIHUA = 83 -- script viet hoa By http://tranhba.com  tÝnh giê khÝ ; ë settings\timertask.txt th©n thØnh 
XINNIANLIHUA_TIMES = 5*60 -- script viet hoa By http://tranhba.com  lÔ hoa ®èt 5 phót 
XINNIAN_MAXEXP = 100000000 
TB_XINNIANLIHUA_SKILL = {757, 760}; 

TSK_XINNIANLIHUA_MAXEXP = 1587; 
TSK_XINNIANNIANGAO_MAXEXP = 1588; 

function isTakeXinNianItem(nItemIdx) 
if (GetLevel() < 80) then 
Say("Ngµi cÇn 80 cÊp sau nµy míi cã thÓ sö dông !", 0); 
return 0; 
end; 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 

if (nDate > 20070306) then 
Say(GetItemName(nItemIdx).." ®· qua sö dông kú , nÕu nh­ tiÕp tôc sö dông ®em cã h¹i , cÇn vøt bá ", 0); 
RemoveItemByIndex(nItemIdx); 
return 0; 
end; 
return 1; 
end; 
