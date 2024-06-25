Include("\\script\\lib\\awardtemplet.lua")

tbItemAward = { 
{szName = " t� m�ng linh ", tbProp = {6, 1, 2350, 1, 0, 0}, nRate = 0.01}, 
{szName = " huy�n vi�n l�m ", tbProp = {6, 1, 2351, 1, 0, 0}, nRate = 0.05}, 
{szName = " th��ng lang l�m ", tbProp = {6, 1, 2352, 1, 0, 0}, nRate = 1}, 
{szName = " v�n l�c l�m ", tbProp = {6, 1, 2353, 1, 0, 0}, nRate = 3}, 
{szName = " h�n nguy�n linh l� ", tbProp = {6, 1, 2312, 1, 0, 0}, nRate = 10}, 
{szName = " ��i l�c ho�n ", tbProp = {6, 0, 3, 1, 0, 0}, nRate = 5}, 
{szName = " nhanh ch�ng ho�n ", tbProp = {6, 0, 6, 1, 0, 0}, nRate = 5}, 
{szName = " ho�ng kim chi qu� ", tbProp = {6, 1, 907, 1, 0, 0}, nRate = 10, nExpiredTime = 10080}, 
{szName = " ng�n n�m ho�ng kim chi qu� ", tbProp = {6, 1, 2270, 1, 0, 0}, nRate = 20}, 
{szName = " v�n n�m ho�ng kim chi qu� ", tbProp = {6, 1, 2271, 1, 0, 0}, nRate = 7.94}, 
{szName = " tr�m n�m ho�ng kim chi qu� ", tbProp = {6, 1, 2269, 1, 0, 0}, nRate = 30}, 
{szName = " th�n b� qu�ng th�ch ", tbProp = {6, 1, 398, 1, 0, 0}, nRate = 1}, 
{szName = " huy�n th�t �an ", tbProp = {6, 1, 1678, 1, 0, 0}, nRate = 5, tbParam={15e8}}, 
{szName = " t�m b�m th�t �an ", tbProp = {6, 1, 2263, 1, 0, 0}, nRate = 2, tbParam={20e8}}, 
} 

tbExpAward = {szName = "# kinh nghi�m tr� gi� ", nExp_tl = 50000000} 

TASK_USECOUNT = 2789 
TASK_MONTH = 2790 


function main(nItemIndex) 
local nMonth =tonumber(GetLocalDate("%m")) 

local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex))); 
local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M")); 
if n_cur_date > n_item_date then 
Msg2Player("N�n v�t ph�m qua s� d�ng k� , t� ��ng bi�n m�t .") 
return 0; 
end 

if CalcFreeItemCellCount() < 1 then 
Talk(1, "","��i hi�p ��ch trang b� ch�a �� 1 c� ch� tr�ng !."); 
return 1 
end 

if (GetTask(TASK_MONTH) ~= nMonth) then 
SetTask(TASK_MONTH, nMonth) 
SetTask(TASK_USECOUNT, 0) 
end 

if (GetTask(TASK_USECOUNT) < 9) then 
		SetTask(TASK_USECOUNT, GetTask(TASK_USECOUNT)+1)
tbAwardTemplet:GiveAwardByList(tbExpAward ,"��t ���c bao ti�n l� x� c�u l�c b� "); 
tbAwardTemplet:GiveAwardByList(tbItemAward ,"��t ���c bao ti�n l� x� c�u l�c b� "); 
return 0 
else 
Msg2Player("V�t ph�m nhi�u nh�t ch� c� th� m�t th�ng s� d�ng 9 l�n !") 
return 1 
end 

end 