-- script viet hoa By http://tranhba.com  d�o ch�i ti�n du 



Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")

function main(nItemIndex) 
-- script viet hoa By http://tranhba.com  d�o ch�i h�p 
local tbItem = 
{ 
{szName=" con b��m ��n l�ng ", tbProp={6, 1, 1796, 1, 0, 0}, nRate = 1}, 
{szName=" sao ��n l�ng ", tbProp={6, 1, 1797, 1, 0, 0}, nRate = 33}, 
{szName=" tr��ng qu�n ��n l�ng ", tbProp={6, 1, 1798, 1, 0, 0}, nRate = 33}, 
{szName=" vi�n ��n l�ng ", tbProp={6, 1, 1799, 1, 0, 0}, nRate = 33}, 
} 
-- script viet hoa By http://tranhba.com  ti�n v� h�p 
local tbItem2 = 
{ 
{szName=" con b��m ��n l�ng ", tbProp={6, 1, 1796, 1, 0, 0}, nRate = 97}, 
{szName=" sao ��n l�ng ", tbProp={6, 1, 1797, 1, 0, 0}, nRate = 1}, 
{szName=" tr��ng qu�n ��n l�ng ", tbProp={6, 1, 1798, 1, 0, 0}, nRate = 1}, 
{szName=" vi�n ��n l�ng ", tbProp={6, 1, 1799, 1, 0, 0}, nRate = 1}, 
} 

zhongqiu0808_ResetTask() 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > zhongqiu0808_liheEndTime then 
Say("N�n v�t ph�m �� qua s� d�ng k� .",0) 
return 0; 
end 
if zhongqiu0808_PlayerLimit() ~= 1 then 
Say("Y�u c�u 50 c�p tr� l�n th� �� sung tr� gi� ", 0) 
return 1 
end 
local nG, nD, nP = GetItemProp(nItemIndex) 
-- script viet hoa By http://tranhba.com local nCount = getn(tbItem) 
-- script viet hoa By http://tranhba.com if nP == 1795 then 
-- script viet hoa By http://tranhba.com for i=1, nCount do 
			-- script viet hoa By http://tranhba.com tbItem[i].nRate =  (nCount - i + 1)*10
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com end 

if nP == 1794 then 
tbAwardTemplet:GiveAwardByList(tbItem, format("%s", GetItemName(nItemIndex))) 
elseif nP == 1795 then 
tbAwardTemplet:GiveAwardByList(tbItem2, format("%s", GetItemName(nItemIndex))) 
else 
return 1 
end 
end 
