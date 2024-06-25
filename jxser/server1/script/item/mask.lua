-- script viet hoa By http://tranhba.com  mÆt n¹ xö lý 
-- script viet hoa By http://tranhba.com  trë vÒ #1: cho phÐp béi ®¸i , 0: kh«ng cho phÐp béi ®¸i # 
Include("\\script\\lib\\pay.lua");

MARK_DAJIANGJUN_TASK_NO = 2620 
MARK_YUANSUAI_TASK_NO = 2621 

function CanEquip(nParticular) 
-- script viet hoa By http://tranhba.com VLDNB 10 - ë ®Êu trµng kh«ng thÓ mang TK mÆt n¹ - 20111017 
if nParticular == 482 or nParticular == 447 or nParticular == 450 or nParticular == 446 then 
local tbMapID = { 
605, 608, 609, 
606, 610, 611, 
607, 612, 613, 
} 
local nW, _, _ = GetWorldPos() 
for i = 1, getn(tbMapID) do 
if tbMapID[i] == nW then 
return 0 
end 
end 
end 
-- script viet hoa By http://tranhba.com  §¹i t­íng qu©n dÞch dung 
if (nParticular == 446 or nParticular == 450 or nParticular == 454 or nParticular == 455) then 

if (IsCharged() ~= 1 or GetLevel() < 50) then 
Say("ChØ cã 50 cÊp trë lªn sung trÞ gi¸ ®Ých nhµ ch¬i míi cã thÓ sö dông .", 0) 
return 0; 
end 
-- script viet hoa By http://tranhba.com  local ndate = tonumber(GetLocalDate("%m%d")); 
-- script viet hoa By http://tranhba.com  local nUseTimes = GetBitTask(MARK_DAJIANGJUN_TASK_NO, 0, 8) -- script viet hoa By http://tranhba.com  sö dông sè lÇn 
-- script viet hoa By http://tranhba.com  local nLastUseDate = GetBitTask(MARK_DAJIANGJUN_TASK_NO, 8, 24) -- script viet hoa By http://tranhba.com  lÇn tr­íc thêi gian sö dông 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if( nLastUseDate ~= ndate) then 
-- script viet hoa By http://tranhba.com  nLastUseDate = ndate; 
-- script viet hoa By http://tranhba.com  nUseTimes = 0; 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if (nUseTimes >= 2) then 
-- script viet hoa By http://tranhba.com  Say("Mét ngµy chØ cã thÓ sö dông 2 lÇn §¹i t­íng qu©n dÞch dung mÆt n¹ ", 0) 
-- script viet hoa By http://tranhba.com  return 0; 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com 		nUseTimes = nUseTimes + 1;
-- script viet hoa By http://tranhba.com  SetBitTask(MARK_DAJIANGJUN_TASK_NO, 0, 8, nUseTimes); 
-- script viet hoa By http://tranhba.com  SetBitTask(MARK_DAJIANGJUN_TASK_NO, 8, 24, nLastUseDate); 

return 1; 
end 

-- script viet hoa By http://tranhba.com  Nguyªn so¸i dÞch dung 
if (nParticular == 447) then 

if (IsCharged() ~= 1) then 
Say("ChØ cã 50 cÊp trë lªn sung trÞ gi¸ ®Ých nhµ ch¬i míi cã thÓ sö dông .", 0) 
return 0; 
end 

-- script viet hoa By http://tranhba.com  local ndate = tonumber(GetLocalDate("%m%d")); 
-- script viet hoa By http://tranhba.com  local nUseTimes = GetBitTask(MARK_YUANSUAI_TASK_NO, 0, 8) -- script viet hoa By http://tranhba.com  sö dông sè lÇn 
-- script viet hoa By http://tranhba.com  local nLastUseDate = GetBitTask(MARK_YUANSUAI_TASK_NO, 8, 24) -- script viet hoa By http://tranhba.com  lÇn tr­íc thêi gian sö dông 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if( nLastUseDate ~= ndate) then 
-- script viet hoa By http://tranhba.com  nLastUseDate = ndate; 
-- script viet hoa By http://tranhba.com  nUseTimes = 0; 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if (nUseTimes >= 2) then 
-- script viet hoa By http://tranhba.com  Say("Mét ngµy chØ cã thÓ sö dông 2 lÇn Nguyªn so¸i dÞch dung mÆt n¹ ", 0) 
-- script viet hoa By http://tranhba.com  return 0; 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com 		nUseTimes = nUseTimes + 1;
-- script viet hoa By http://tranhba.com  SetBitTask(MARK_YUANSUAI_TASK_NO, 0, 8, nUseTimes); 
-- script viet hoa By http://tranhba.com  SetBitTask(MARK_YUANSUAI_TASK_NO, 8, 24, nLastUseDate); 

return 1; 
end 



return 1; 
end; 
