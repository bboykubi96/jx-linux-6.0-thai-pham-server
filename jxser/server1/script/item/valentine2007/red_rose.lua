-- script viet hoa By http://tranhba.com 2007 n�m l� t�nh nh�n -- script viet hoa By http://tranhba.com  hoa h�ng 
-- script viet hoa By http://tranhba.com  ho�n m� hoa h�ng �� 6,1,1362,1,0,0 
-- script viet hoa By http://tranhba.com  b�nh th��ng hoa h�ng �� 6,1,1363,1,0,0 
-- script viet hoa By http://tranhba.com  hoa h�ng �� hoa l�i 6,1,1364,1,0,0 

Include("\\script\\event\\valentine2007\\head.lua");

function main(nItemIdx) 
if (checkValentine2007Date(20070306) ~= 1) then 
Say("��a hoa h�ng n�y c�t gi� th�� gian qu� d�i , �� kh� h�o . ", 0); 
return 0; 
end; 

if (checkValentine2007Limit() ~= 1) then 
Say("Ng��ng ng�ng , ch� c� ch� c�p ��t t�i <color=yellow>80 c�p <color> tr� l�n d�ng h� , m�i c� th� s� d�ng hoa h�ng . ", 0); 
return 1; 
end; 

local ng, nd, np = GetItemProp(nItemIdx); 
local nexp = 1; 
if (np == 1362) then 
nexp = 1500000; 
elseif (np == 1363) then 
nexp = 1000000; 
elseif (np == 1364) then 
nexp = 500000; 
else 
print("Error!! It's not Rose for Valentine 2007!!"); 
return 1; 
end; 

local ncurexp = GetTask(TSK_VALENTINE_ROSE_ADDEXP); 
if (ncurexp >= 100000000) then 
Say("Ng��i s� d�ng r�t nhi�u hoa h�ng , c�i n�y ��a hoa h�ng ��i v�i ng��i �� kh�ng c� hi�u d�ng li�u ", 0); 
Msg2Player("M�i ng��i th�ng qua s� d�ng hoa h�ng nhi�u nh�t ��t ���c m�t �c kinh nghi�m "); 
return 1; 
	elseif ((ncurexp + nexp) > 100000000) then
nexp = 100000000 - ncurexp 
end; 

AddOwnExp(nexp); 
	SetTask(TSK_VALENTINE_ROSE_ADDEXP, ncurexp + nexp)
Msg2Player(format("Ng��i thu ���c %d kinh nghi�m tr� gi� ", nexp)); 
local szlog = format("[2007 l� t�nh nh�n ]\t%s\tName:%s\tAccount:%s\t s� d�ng %s thu ���c %d kinh nghi�m tr� gi� ", 
GetLocalDate("%Y-%m-%d %H:%M:%S"),GetName(),GetAccount(),GetItemName(nItemIdx),nexp); 
WriteLog(szlog); 
end;
