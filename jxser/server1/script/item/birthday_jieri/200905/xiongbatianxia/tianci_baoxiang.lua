-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n Vi�t Nam b�n - tr�i ban b�o r��ng 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##tianci_baoxiang.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2009-05-21 14:38:37 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\lib\\awardtemplet.lua")

local tbItem = 
{ 
{szName=" h�ng ", tbProp={6, 1, 2062, 1, 0, 0}, nRate = 25, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime1}, 
{szName=" ph�ch ", tbProp={6, 1, 2063, 1, 0, 0}, nRate = 25, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime1}, 
{szName=" ng�y ", tbProp={6, 1, 2064, 1, 0, 0}, nRate = 25, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime1}, 
{szName=" h� ", tbProp={6, 1, 2065, 1, 0, 0}, nRate = 25, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime1}, 
} 

function main(nItemIndex) 

if GetItemParam(nItemIndex, 1) == 0 or GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","N�n v�t ph�m �� qua k� ") 
return 0 
end 
if CalcFreeItemCellCount() < 1 then 
Talk(1,"", format("Trang b� ch� tr�ng ch�a �� %d ch� tr�ng , xin/m�i l�n n�a an b�i m�t c�i .", 1)) 
return 1 
end 
tbAwardTemplet:GiveAwardByList(%tbItem, "use "..GetItemName(nItemIndex)); 

end 

function IsPickable(nItemIndex) 

local nExpiredTime = tbBirthday0905.tbTask.item_expiredtime1; 
if tonumber(GetLocalDate("%Y%m%d")) >= nExpiredTime then 
Msg2Player("N�n v�t ph�m �� qua k� "); 
return 0 
end 

if ITEM_GetExpiredTime(nItemIndex) == 0 then 
tbAwardTemplet:ITEM_SetExpiredTime(nItemIndex, nExpiredTime); 
end 

return 1 
end
