-- script viet hoa By http://tranhba.com  t� ��nh ngh�a ��ng ti�n s� l��ng ��ch bao ti�n l� x� 
IncludeLib("ITEM") 

function main(nItemIdx) 
local nMoney = GetItemParam(nItemIdx,1) 
AddStackItem(nMoney,4,417,1,1,0,0,0) 
Msg2Player("Ng�i thu ���c "..nMoney.." mai ��ng ti�n ") 
end 

function GetDesc(nItemIdx) 
local nMoney = GetItemParam(nItemIdx, 1) 
-- script viet hoa By http://tranhba.com local szDesc = "" 
local szDesc = "\n bao ti�n l� x� trung bao h�m ��ng ti�n <color=yellow>"..nMoney.."<color=> mai " 
return szDesc; 
end
