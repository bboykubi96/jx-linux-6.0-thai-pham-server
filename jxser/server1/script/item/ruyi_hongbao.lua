-- script viet hoa By http://tranhba.com  t� ��nh ngh�a kim ti�n s� l��ng ��ch bao ti�n l� x� 
IncludeLib("ITEM") 

function main(nItemIdx) 
local nMoney = GetItemParam(nItemIdx, 1) 
Earn(nMoney) 
Msg2Player("Ng�i thu ���c "..nMoney.." l��ng b�c ") 
end 

function GetDesc(nItemIdx) 
local nM1 = GetItemParam(nItemIdx, 2) 
local nM2 = GetItemParam(nItemIdx, 3) 
local nM3 = GetItemParam(nItemIdx, 4) 
	local nMoney = nM1 * 1000000 + nM2 * 1000 + nM3
-- script viet hoa By http://tranhba.com local szDesc = "" 

local szDesc = "\n bao ti�n l� x� trung bao h�m b�c <color=yellow>"..nMoney.."<color=> hai " 
return szDesc; 
end 
