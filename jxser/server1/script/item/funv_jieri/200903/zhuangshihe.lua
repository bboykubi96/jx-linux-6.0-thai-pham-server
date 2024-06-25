Include("\\script\\event\\funv_jieri\\200903\\class.lua")
Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{ 
{szName=" mi�ng h�ng con ", tbProp={6, 1, 1960, 1, 0, 0}, nRate = 10, nExpiredTime = tbFunv0903.nComposeEndDate}, 
{szName=" ph�t g�p ", tbProp={6, 1, 1961, 1, 0, 0}, nRate = 40, nExpiredTime = tbFunv0903.nComposeEndDate}, 
{szName=" g��ng ", tbProp={6, 1, 1962, 1, 0, 0}, nRate = 20, nExpiredTime = tbFunv0903.nComposeEndDate}, 
{szName=" s� t� ", tbProp={6, 1, 1963, 1, 0, 0}, nRate = 30, nExpiredTime = tbFunv0903.nComposeEndDate}, 
} 

function main(nItemIndex) 



if GetItemParam(nItemIndex, 1) ~= 0 and GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","N�n v�t ph�m �� qua k� ") 
return 0 
end 
if CalcFreeItemCellCount() < 1 then 
Talk(1,"", format("Trang b� ch� tr�ng ch�a �� %d v� �ch , xin/m�i l�n n�a an b�i .", 1)) 
return 1 
end 
tbAwardTemplet:GiveAwardByList(%tbItem, "use "..GetItemName(nItemIndex)) 

end 

function IsPickable(nItemIndex) 

local nExpiredTime = tbFunv0903.nComposeEndDate 
if tonumber(GetLocalDate("%Y%m%d")) >= nExpiredTime then 
Msg2Player("N�n v�t ph�m �� qua k� ") 
return 0 
end 

if ITEM_GetExpiredTime(nItemIndex) == 0 then 
tbAwardTemplet:ITEM_SetExpiredTime(nItemIndex, nExpiredTime) 
end 

return 1 
end