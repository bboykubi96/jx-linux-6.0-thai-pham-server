-- script viet hoa By http://tranhba.com zero 20070713 t�m b�ng g� cho g�i 
-- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng tr��c 16bit l�m t�m b�ng g� tr��c 8bit l�m nh�t k� , ghi ch�p ng�y , sau 8bit ghi ch�p s� l�n 
-- script viet hoa By http://tranhba.com  sau 16bit l�m ��ng b�i tr��c 8bit l�m ng�y , sau 8bit s� l�n 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  s� d�ng GetByte(TaskValue,1) l�y t�m b�ng g� ��ch nh�t k� 
-- script viet hoa By http://tranhba.com  GetByte(TaskValue,2) l�y t�m b�ng g� s� d�ng s� l�n 
-- script viet hoa By http://tranhba.com  GetByte(TaskValue,3) l�y ��ng b�i nh�t k� 
-- script viet hoa By http://tranhba.com  GetByte(TaskValue,4) l�y ��ng b�i s� d�ng s� l�n 
-- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� thay ��i l��ng ph��ng ph�p 
-- script viet hoa By http://tranhba.com  SetByte(TaskValue,i,n) trong �� i b�y t� th� m�y ch� ti�t , n b�y t� nh�t k� ho�c s� l�n 10 v�o ch� 
Include( "\\script\\event\\mengjiang2007\\callboss.lua" )
Include("\\script\\lib\\pay.lua");
mupai_Task=1826; 
function main( nItemIdx ) 
local TaskValue=GetTask(mupai_Task); 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if(nDate>20220820) then 
Say(" l�nh b�i �� qua k� s� d�ng , hi�u l�c bi�n m�t !",0) 
return 0; 
end 
if( IsCharged() == 0) then 
Say("Th�t l� ti�c nu�i , ch� c� �� sung tr� gi� nh� ch�i m�i c� th� s� d�ng .",0); 
return 1; 
end 
if( GetLevel() <90 ) then 
Say("Th�t l� ti�c nu�i , ch� c� �� sung tr� gi� 90 c�p tr� l�n nh� ch�i m�i c� th� s� d�ng .",0); 
return 1; 
end 
nDate = tonumber(GetLocalDate("%d")); 
if(nDate ~= GetByte(TaskValue,1) ) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� h�m nay s� l�n kh�i ph�c 
TaskValue=SetByte(TaskValue,1,nDate); -- script viet hoa By http://tranhba.com  thi�t tr� t�m b�ng g� nh�t k� th� 1 ch� ti�t 
TaskValue=SetByte(TaskValue,1,40); -- script viet hoa By http://tranhba.com  kh�i ph�c t�m b�ng g� s� l�n 40 th� 2 ch� ti�t 
SetTask(mupai_Task,TaskValue); -- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� nhi�m v� thay ��i l��ng 
end 
local temp_count=GetByte(TaskValue,1); 
if(temp_count > 0 ) then -- script viet hoa By http://tranhba.com  s� l�n l�n h�n 0 l�n 
if( CallBoss(1) == 0) then 
TaskValue=SetByte(TaskValue,1,temp_count-1); 
SetTask(mupai_Task,TaskValue); -- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� thay ��i l��ng 
return 0; 
else 
return 1; 
end 
else 
Say("H�m nay �� s� d�ng 40 c� t�m b�ng g� li�u # ch� ng�y mai m�i c� th� ti�p t�c s� d�ng !",0); 
return 1; 
end 

end 

function GetDesc(nItem) 

end
