-- script viet hoa By http://tranhba.com zero 20070713 kim b�i cho g�i 
-- script viet hoa By http://tranhba.com  ch� th� nh�t ti�t ghi ch�p ng�n ch� th� hai ti�t ghi ch�p kim ch� th� ba ti�t ghi ch�p ng�c , b�i v� ch� d�ng m�t l�n , ch� c�n ghi ch�p th�i gian 
-- script viet hoa By http://tranhba.com tinhpn 20100720: forbid item 
Include("\\script\\item\\forbid_jinpai_yupai.lua");


Include( "\\script\\event\\mengjiang2007\\callboss.lua" )
Include("\\script\\lib\\pay.lua");

-- script viet hoa By http://tranhba.com tinhpn 20100803: Patch Request 
local tbUseOnlyInMap = 
{ 
586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604, 
} 
local checkOnlyUseInMap = function() 
local nMapId = SubWorldIdx2MapCopy(SubWorld) 
for i = 1, getn( %tbUseOnlyInMap ) do -- script viet hoa By http://tranhba.com  ��c th� b�n �� c�m d�ng 
if( %tbUseOnlyInMap[i] == nMapId ) then 
return 1 
end 
end 
return 0 
end 


jinpai_Task=1827; 
function main( nItemIdx ) 
local TaskValue=GetTask(jinpai_Task); 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
-- script viet hoa By http://tranhba.com if(nDate>20080331) then 
-- script viet hoa By http://tranhba.com  Say(" l�nh b�i qua s� d�ng k� h�n , kh�ng c� hi�u qu� li�u , ch� c� th� v�t b� ",0) 
-- script viet hoa By http://tranhba.com  return 0; 
-- script viet hoa By http://tranhba.com end 

-- script viet hoa By http://tranhba.com tinhpn 20100803: Patch ReQuest 
if %checkOnlyUseInMap() ~= 1 then 
Msg2Player("Kh�ng th� � ta ��y s� d�ng v�t ph�m .") 
return 1 
end 

-- script viet hoa By http://tranhba.com tinhpn 20100720: forbid item 
if (ForbidMap() == 1) then 
return 1 
end 

if( IsCharged() == 0) then 
Say("Th�t ti�c nu�i , ch� c� �� sung tr� gi� nh� ch�i m�i c� th� s� d�ng .",0); 
return 1; 
end 
if( GetLevel() <90 ) then 
Say("Th�t ti�c nu�i , ch� c� �� sung tr� gi� nh� ch�i m�i c� th� s� d�ng .",0); 
return 1; 
end 
nDate = tonumber(GetLocalDate("%d")); 
if(nDate ~= GetByte(TaskValue,2) ) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� h�m nay 
if( CallBoss(4) == 0) then 
TaskValue=SetByte(TaskValue,2,nDate); -- script viet hoa By http://tranhba.com  thi�t tr� kim b�i nh�t k� th� 1 ch� ti�t 
SetTask(jinpai_Task,TaskValue); 
return 0; 
else 
return 1; 
end 
else 
Say("H�m nay �� s� d�ng 1 c� kim b�i li�u # ch� ng�y mai m�i c� th� ti�p t�c s� d�ng !",0); 
return 1; 
end 

end 

function GetDesc(nItem) 

end
