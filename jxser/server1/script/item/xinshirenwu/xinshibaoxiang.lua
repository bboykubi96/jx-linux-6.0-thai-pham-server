Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

function GetDesc(nItem) 
return "" 
end 

function main(nItem) 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> th�nh an ��ng h�ng m�t c�i trang b� , �t nh�t ph�i l�u m�t ch� tr�ng , sau �� m� ra b�o r��ng ") 
return 1 
end 
local nCount = CalcItemCount(3, 6, 1, 2744, -1) 
if nCount >= 1 then 
-- script viet hoa By http://tranhba.com  khi b� v�o c�i r��ng , Fix sai l�m kh�ng m�t �i nh� � c�i ch�a kh�a - Modified by DinhHQ -20110812 
if ConsumeItem(3, 1, 6, 1, 2744, -1) ~= 1 then 
Msg2Player("C�n nh� � c�i ch�a kh�a m�i c� th� m� ra b�o r��ng ") 
return 1 
end 
-- script viet hoa By http://tranhba.com ConsumeEquiproomItem(1, 6, 2812, 1, -1);-- script viet hoa By http://tranhba.com  kh�u tr� tin/th� khi�n cho b�o r��ng 

tbAward = { 
{szName=" kinh nghi�m tr� gi� 1", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(1500000,"Tin/th� khi�n cho b�o r��ng ") 
end, 
nRate = 60, 
}, 
{szName=" kinh nghi�m tr� gi� 2", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(2000000,"Tin/th� khi�n cho b�o r��ng ") 
end, 
nRate = 97.20, 
}, 
{szName=" kinh nghi�m tr� gi� 3", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(5000000,"Tin/th� khi�n cho b�o r��ng ") 
end, 
nRate = 2, 
}, 
{szName=" kinh nghi�m tr� gi� 4", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(10000000,"Tin/th� khi�n cho b�o r��ng ") 
end, 
nRate = 0.05, 
}, 
{szName=" kinh nghi�m tr� gi� 5", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(20000000,"Tin/th� khi�n cho b�o r��ng ") 
end, 
nRate = 0.02, 
}, 
{szName=" kinh nghi�m tr� gi� 6", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(50000000,"Tin/th� khi�n cho b�o r��ng ") 
end, 
nRate = 0.01, 
}, 
{szName = " ti�n th�o l� ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " ti�n th�o l� ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " ti�n th�o l� ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " ti�n th�o l� ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " ti�n th�o l� ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " ti�n th�o l� ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " huy�n vi�n l�m ", tbProp = {6, 1, 2351, 1, 0, 0}, nRate = 0.10}, 
{szName = " t� m�ng l�m ", tbProp = {6, 1, 2350, 1, 0, 0}, nRate = 0.05}, 
{szName = " nh� � c�i ch�a kh�a ", tbProp = {6, 1, 2744, 1, 0, 0}, nRate = 0.1}, 
{szName = " h�n nguy�n linh l� ", tbProp = {6, 1, 2312, 1, 0, 0}, nRate = 0.01}, 
{szName = " ng�c lon ", tbProp = {6, 1, 2311, 1, 0, 0}, nRate = 0.01}, 
{szName = " h�i thi�n t�i t�o c�m nang ", tbProp = {6, 1, 1781, 1, 0, 0}, nRate = 0.1, tbParam = {60}}, 
{szName = " ��c hi�u ti�n th�o l� ", tbProp = {6, 1, 1181, 1, 0, 0}, nRate = 0.1}, 
} 

tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseCityAward"}) 
return 0 
else 
Msg2Player("C�n m�t nh� � c�i ch�a kh�a m�i c� th� m� ra b�o r��ng ") 
return 1 
end 
end 
