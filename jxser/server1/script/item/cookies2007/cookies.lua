-- script viet hoa By http://tranhba.com 2007 ��u th�ng ba ba -- script viet hoa By http://tranhba.com  thi�u b�nh 
-- script viet hoa By http://tranhba.com  ho�n m� thi�u b�nh 6,1,1395,1,0,0 
-- script viet hoa By http://tranhba.com  b�nh th��ng thi�u b�nh 6,1,1396,1,0,0 
-- script viet hoa By http://tranhba.com  kh�ng th�c ��ch thi�u b�nh 6,1,1397,1,0,0 

Include("\\script\\event\\cookies2007\\head.lua");

function main(nItemIdx) 
if (checkcookies2007Date(20070506) ~= 1) then 
Say("N�n b�nh �� qua s� d�ng k� , nhanh l�n m�t ch�t v�t b� ", 0); 
return 0; 
end; 

if (checkcookies2007Limit() ~= 1) then 
Say("Th�t l� ng��ng ng�ng , ch� c� nh� ch�i <color=yellow>50 c�p tr� l�n th� sung tr� gi� <color> m�i c� th� �n b�nh .", 0); 
return 1; 
end; 

local ng, nd, np = GetItemProp(nItemIdx); 
local nexp = 1; 
if (np == 1395) then 
nexp = 800000; 
elseif (np == 1396) then 
nexp = 500000; 
elseif (np == 1397) then 
nexp = 300000; 
else 
print("Error!! It's not Rose for Valentine 2007!!"); 
return 1; 
end; 

local ncurexp = GetTask(TSK_33_COOKIES_ADDEXP); 
if (ncurexp >= 300000000) then 
Say("Ng�i �� �n r�t nhi�u b�nh li�u , kh�ng th� �n n�a li�u .", 0); 
Msg2Player("�n b�nh l�c , m�i ng��i ch� ��t ���c 3 �c kinh nghi�m tr� gi� ."); 
return 1; 
	elseif ((ncurexp + nexp) > 300000000) then
nexp = 300000000 - ncurexp 
end; 

AddOwnExp(nexp); 
	SetTask(TSK_33_COOKIES_ADDEXP, ncurexp + nexp)
Msg2Player(format("Ng�i ��t ���c %d kinh nghi�m tr� gi� ", nexp)); 
local szlog = format("[2007 3 th�ng 3]\t%s\tName:%s\tAccount:%s\t s� d�ng %s ��t ���c %d kinh nghi�m tr� gi� ", 
GetLocalDate("%Y-%m-%d %H:%M:%S"),GetName(),GetAccount(),GetItemName(nItemIdx),nexp); 
WriteLog(szlog); 
end;
