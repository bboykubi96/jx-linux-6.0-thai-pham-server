-- script viet hoa By http://tranhba.com zero 20070713 ng�n b�i cho g�i 
-- script viet hoa By http://tranhba.com  ch� th� nh�t ti�t ghi ch�p ng�n ch� th� hai ti�t ghi ch�p kim ch� th� ba ti�t ghi ch�p ng�c , b�i v� ch� d�ng m�t l�n , ch� c�n ghi ch�p th�i gian 

Include( "\\script\\event\\mengjiang2007\\callboss.lua" )
Include("\\script\\lib\\pay.lua");
yinpai_Task=1827; 
function main( nItemIdx ) 
local TaskValue=GetTask(yinpai_Task); 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if(nDate>20080331) then 
Say(" l�nh b�i �� qua s� d�ng k� , m�t �i hi�u l�c !",0) 
return 0; 
end 
if( IsCharged() == 0) then 
Say("Th�t l� ti�c nu�i , ch� c� �� sung tr� gi� nh� ch�i m�i c� th� s� d�ng .",0); 
return 1; 
end 
if( GetLevel() <90 ) then 
Say("Th�t l� ti�c nu�i , ch� c� 90 c�p tr� l�n nh� ch�i m�i c� th� s� d�ng .",0); 
return 1; 
end 
nDate = tonumber(GetLocalDate("%d")); 
if(nDate ~= GetByte(TaskValue,1) ) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� h�m nay 
if( CallBoss(3) == 0) then 
TaskValue=SetByte(TaskValue,1,nDate); -- script viet hoa By http://tranhba.com  thi�t tr� ng�n b�i nh�t k� th� 1 ch� ti�t 
SetTask(yinpai_Task,TaskValue); 
return 0; 
else 
return 1; 
end 
else 
Say("H�m nay �� s� d�ng 1 c� ng�n b�i li�u , ch� ng�y mai m�i c� th� ti�p t�c s� d�ng !",0); 
return 1; 
end 

end 

function GetDesc(nItem) 

end
