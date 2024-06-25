Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\global\\signet_head.lua")

function main(nItemIndex) 
local nItemTime = GetItemParam(nItemIndex,1); 

if (signet_clude_use(nItemIndex) == 0) then 
return 1 
end 

if (GetWeeklyOffer() >= MAX_WEEK_CONTRIBUTION) then 
Say("Ng��i �� c�ng hi�n ��t ���c �� ��t chu th��ng h�n , ch� c� th� gia t�ng bang h�i ��ch x�y d�ng c� kim c�ng chi�n b� c� kim . ng��i c� hay kh�ng mu�n s� d�ng ��o n�y c� ? ", 
2, 
" s� d�ng /#signet_sure_use("..nItemIndex..")", 
" h�y b� /cancel") 
return 1 
end 
-- script viet hoa By http://tranhba.com  gia t�ng ng��i �� c�ng hi�n c�ng bang h�i c� kim 
tongaward_fenglingdui() 
end 


function GetDesc(nItemIndex) 
local nYear = GetItemParam(nItemIndex, 2) 
local nMonth = GetItemParam(nItemIndex, 3) 
local nDate = GetItemParam(nItemIndex, 4) 

return " s� d�ng k� h�n #<color=blue>"..nYear.." n�m "..nMonth.." th�ng "..nDate.." ng�y " 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
local _, nTongID = GetTongName() 
if (nTongID > 0) then 
TONG_ApplyAddTaskValue(nTongID, TONGTSK_MONEYBOX_DROPMAX, 1) 
end 
return 1 
end 

function signet_sure_use(nItemIndex) 
if (signet_clude_use(nItemIndex) == 0) then 
return 0 
end 

if (RemoveItemByIndex(nItemIndex) == 1) then 
tongaward_fenglingdui() 
else 
print("Th� ti�u th� ng��i chi �n sai l�m thao t�c #") 
end 
end 

function signet_clude_use(nItemIndex) 
local nParam1 = GetItemParam(nItemIndex, 1) 
local nCurTime = GetCurServerTime() -- script viet hoa By http://tranhba.com / gi�y 
local szItemName = GetItemName(nItemIndex) 
if (nCurTime >= nParam1) then 
Msg2Player(szItemName.." �� h� h�i , kh�ng th� s� d�ng #") 
RemoveItemByIndex(nItemIndex) 
return 0 
end 
local _, nTongID = GetTongName() 

if (nTongID == 0) then 
Msg2Player("Ng��i kh�ng c� � ��y bang h�i trung , kh�ng th� s� d�ng ��o n�y c� . ") 
return 0 
end 

if (TONGM_GetFigure(nTongID, GetName()) == TONG_RETIRE) then 
Msg2Player(" �n s� kh�ng th� s� d�ng ��o n�y c� . ") 
return 0 
end 
return 1 
end
