-- script viet hoa By http://tranhba.com  m�t n� x� l� 
-- script viet hoa By http://tranhba.com  tr� v� #1: cho ph�p b�i ��i , 0: kh�ng cho ph�p b�i ��i # 
Include("\\script\\lib\\pay.lua");

MARK_DAJIANGJUN_TASK_NO = 2620 
MARK_YUANSUAI_TASK_NO = 2621 

function CanEquip(nParticular) 
-- script viet hoa By http://tranhba.com VLDNB 10 - � ��u tr�ng kh�ng th� mang TK m�t n� - 20111017 
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
-- script viet hoa By http://tranhba.com  ��i t��ng qu�n d�ch dung 
if (nParticular == 446 or nParticular == 450 or nParticular == 454 or nParticular == 455) then 

if (IsCharged() ~= 1 or GetLevel() < 50) then 
Say("Ch� c� 50 c�p tr� l�n sung tr� gi� ��ch nh� ch�i m�i c� th� s� d�ng .", 0) 
return 0; 
end 
-- script viet hoa By http://tranhba.com  local ndate = tonumber(GetLocalDate("%m%d")); 
-- script viet hoa By http://tranhba.com  local nUseTimes = GetBitTask(MARK_DAJIANGJUN_TASK_NO, 0, 8) -- script viet hoa By http://tranhba.com  s� d�ng s� l�n 
-- script viet hoa By http://tranhba.com  local nLastUseDate = GetBitTask(MARK_DAJIANGJUN_TASK_NO, 8, 24) -- script viet hoa By http://tranhba.com  l�n tr��c th�i gian s� d�ng 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if( nLastUseDate ~= ndate) then 
-- script viet hoa By http://tranhba.com  nLastUseDate = ndate; 
-- script viet hoa By http://tranhba.com  nUseTimes = 0; 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if (nUseTimes >= 2) then 
-- script viet hoa By http://tranhba.com  Say("M�t ng�y ch� c� th� s� d�ng 2 l�n ��i t��ng qu�n d�ch dung m�t n� ", 0) 
-- script viet hoa By http://tranhba.com  return 0; 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com 		nUseTimes = nUseTimes + 1;
-- script viet hoa By http://tranhba.com  SetBitTask(MARK_DAJIANGJUN_TASK_NO, 0, 8, nUseTimes); 
-- script viet hoa By http://tranhba.com  SetBitTask(MARK_DAJIANGJUN_TASK_NO, 8, 24, nLastUseDate); 

return 1; 
end 

-- script viet hoa By http://tranhba.com  Nguy�n so�i d�ch dung 
if (nParticular == 447) then 

if (IsCharged() ~= 1) then 
Say("Ch� c� 50 c�p tr� l�n sung tr� gi� ��ch nh� ch�i m�i c� th� s� d�ng .", 0) 
return 0; 
end 

-- script viet hoa By http://tranhba.com  local ndate = tonumber(GetLocalDate("%m%d")); 
-- script viet hoa By http://tranhba.com  local nUseTimes = GetBitTask(MARK_YUANSUAI_TASK_NO, 0, 8) -- script viet hoa By http://tranhba.com  s� d�ng s� l�n 
-- script viet hoa By http://tranhba.com  local nLastUseDate = GetBitTask(MARK_YUANSUAI_TASK_NO, 8, 24) -- script viet hoa By http://tranhba.com  l�n tr��c th�i gian s� d�ng 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if( nLastUseDate ~= ndate) then 
-- script viet hoa By http://tranhba.com  nLastUseDate = ndate; 
-- script viet hoa By http://tranhba.com  nUseTimes = 0; 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if (nUseTimes >= 2) then 
-- script viet hoa By http://tranhba.com  Say("M�t ng�y ch� c� th� s� d�ng 2 l�n Nguy�n so�i d�ch dung m�t n� ", 0) 
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
