-- script viet hoa By http://tranhba.com  2007 gi�ng sinh ho�t ��ng gi�ng sinh ���ng 
-- script viet hoa By http://tranhba.com  th�i gian s� d�ng 2007/11/23 00#00~24#00 
-- script viet hoa By http://tranhba.com  gi�ng sinh ���ng # nh� nh�t # 6 1 1622 
-- script viet hoa By http://tranhba.com  gi�ng sinh ���ng # ti�u # 6 1 1623 
-- script viet hoa By http://tranhba.com  gi�ng sinh ���ng # trung # 6 1 1624 
-- script viet hoa By http://tranhba.com  gi�ng sinh ���ng # ��i # 6 1 1625 
-- script viet hoa By http://tranhba.com  gi�ng sinh ���ng # c�c l�n # 6 1 1626 
-- script viet hoa By http://tranhba.com  s� d�ng kinh nghi�m th��ng h�n 1 �c 

XMASCANDY2007_DATE = 20071224 -- script viet hoa By http://tranhba.com  gi�ng sinh ���ng s� d�ng k� h�n 
XMASCANDY2007_EXPLM = 100000000 -- script viet hoa By http://tranhba.com  gi�ng sinh ���ng kinh nghi�m th��ng h�n 
TSK_XMASCANDY2007_EXP = 1861 -- script viet hoa By http://tranhba.com  gi�ng sinh ���ng kinh nghi�m m�t m�i k� ghi ch�p thay ��i l��ng 

function main(nItemIdx) 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 

if (nDate > XMASCANDY2007_DATE) then -- script viet hoa By http://tranhba.com  th�i gian s� d�ng ph�n �o�n 
Msg2Player("�� qua s� d�ng k� , n�u nh� ti�p t�c s� d�ng s� c� nguy h�i , c�n bu�ng tha cho "); 
Say("�� qua s� d�ng k� , n�u nh� ti�p t�c s� d�ng s� c� nguy h�i , c�n bu�ng tha cho ", 0); 
WriteLog(format("[XMASCANDY2007]\t%s\t%s\t%s\t%s", 
GetLocalDate("%Y%m%d %X"), 
GetName(), 
GetAccount(), 
"Delete_Dated_XMASCANDY" )); 
return 0; 
end; 

local tb_candy_exp = { 
[1622] = 15000, 
[1623] = 25000, 
[1624] = 40000, 
[1625] = 50000, 
[1626] = 100000, 
}; 
local ng, nd, np = GetItemProp(nItemIdx); 
local szItemName = GetItemName(); 
if (tb_candy_exp[np]) then 
		local nCurExp = tb_candy_exp[np] + GetTask(TSK_XMASCANDY2007_EXP);
if (nCurExp >= XMASCANDY2007_EXPLM) then 
Msg2Player("��t ���c ��ch kinh nghi�m tr� gi� �� ��t 1 �c th��ng h�n , kh�ng th� s� d�ng n�a li�u ."); 
Say("��t ���c ��ch kinh nghi�m tr� gi� �� ��t 1 �c th��ng h�n , kh�ng th� s� d�ng n�a li�u ."); 
return 1; 
else 
AddOwnExp(tb_candy_exp[np]); 
SetTask(TSK_XMASCANDY2007_EXP, nCurExp); 
WriteLog(format("[XMASCANDY2007]\t%s\t%s\t%s\t%s%d", 
GetLocalDate("%Y%m%d %X"), 
GetName(), 
GetAccount(), 
"Use_XMASCANDY_Exp:", 
tb_candy_exp[np] )); 
end; 
else 
return 1; 
end; 
end;
