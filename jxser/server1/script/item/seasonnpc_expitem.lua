
Include("\\script\\task\\task_addplayerexp.lua");

function main(nItemIdx) 
-- script viet hoa By http://tranhba.com  m�t nh�c tr�ng th�i 
	local nDate = (GetItemParam(nItemIdx, 2)+2000) * 10000 + GetItemParam(nItemIdx, 3);
local nCurDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nCurDate > nDate) then 
Say("N�n v�t ph�m �� qua s� d�ng k� !", 0); 
return 0; 
else 
if (GetTiredDegree() == 2) then 
Say("�ang ��ng � m�i m�t tr�ng th�i , kh�ng th� s� d�ng n�n v�t ph�m .", 0); 
return 1; 
else 
local nExp= GetItemParam(nItemIdx, 1) * 1000; 
tl_addPlayerExp(nExp); 
Msg2Player(format("Ng�i ��t ���c %d kinh nghi�m tr� gi� ", nExp)); 
WriteLog(format("[ m�t m�i k� d� t�u ]\t%s\tName:%s\tAccount:%s\t ��t ���c %d kinh nghi�m tr� gi� .", 
GetLocalDate("%Y%m%d %X"), 
GetName(), 
GetAccount(), 
nExp)); 
return 0; 
end; 
end; 
return 1; 
end; 

function GetDesc(nItemIdx) 
local nExp= GetItemParam(nItemIdx, 1) * 1000; 
	local nYear = (GetItemParam(nItemIdx, 2)+2000)
local nMMDD = GetItemParam(nItemIdx, 3) 
local nMonth = floor(nMMDD / 100); 
local nDate = mod(nMMDD , 100); 

return format("# kinh nghi�m tr� gi� : %d<enter> th�i gian s� d�ng : %d-%d-%d", nExp, nYear, nMonth,nDate); 
end;
