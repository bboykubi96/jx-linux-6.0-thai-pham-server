IncludeLib("TIMER") 

TIMER_XINNIANLIHUA = 83 -- script viet hoa By http://tranhba.com  t�nh gi� kh� ; � settings\timertask.txt th�n th�nh 
XINNIANLIHUA_TIMES = 5*60 -- script viet hoa By http://tranhba.com  l� hoa ��t 5 ph�t 
XINNIAN_MAXEXP = 100000000 
TB_XINNIANLIHUA_SKILL = {757, 760}; 

TSK_XINNIANLIHUA_MAXEXP = 1587; 
TSK_XINNIANNIANGAO_MAXEXP = 1588; 

function isTakeXinNianItem(nItemIdx) 
if (GetLevel() < 80) then 
Say("Ng�i c�n 80 c�p sau n�y m�i c� th� s� d�ng !", 0); 
return 0; 
end; 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 

if (nDate > 20070306) then 
Say(GetItemName(nItemIdx).." �� qua s� d�ng k� , n�u nh� ti�p t�c s� d�ng �em c� h�i , c�n v�t b� ", 0); 
RemoveItemByIndex(nItemIdx); 
return 0; 
end; 
return 1; 
end; 
