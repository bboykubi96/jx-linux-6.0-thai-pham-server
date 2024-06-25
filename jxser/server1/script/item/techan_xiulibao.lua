IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t�i nh�p SETTING ch�n v�n ch� th� kho 
IncludeLib("FILESYS") 
IncludeLib("TONG") 
IncludeLib("ITEM") 

ITEMPARAM_LIMITDATE = 2 
ITEMPARAM_TONGID = 1 
function main(nItemIndex) 
local szTongName , nTongID = GetTongName() 

if (xiulibao_checkdate(nItemIndex) == -1) then 
Say("<#> s�a ch�a t�i �� qua s� d�ng k� h�n , kh�ng th� s� d�ng n�a #", 0) 
Msg2Player("S�a ch�a t�i qua s� d�ng k� h�n , h� h�i . ") 
return 
end 
-- script viet hoa By http://tranhba.com  �i�u s�a ch�a ch� th� 
-- script viet hoa By http://tranhba.com  d�ng %d thay th� RepairCallBack tr��c ba tham s� , khi tr� v� �i�u l�c �i�n v�o : nItemIdx, nPrice, nItemPrice , ph�a sau tham s� t��ng t� Say(...) 
TRepair("RepairCallBack(%d,%d,%d,"..nTongID..")") 
return 1 
end 

function xiulibao_checkdate(nItemIndex) 
local nItemdate = GetItemParam(nItemIndex, 1); 
if (GetCurServerTime() <= nItemdate) then 
return 1; 
else 
return -1; 
end; 
end 

function GetDesc(nItem) 
	local nEndYear = GetItemParam(nItem, 2) + 2000;
local nEndMMDD = GetItemParam(nItem, 3); 
local nEndMon = floor(nEndMMDD / 100); 
local nEndDay = mod(nEndMMDD, 100); 
local nEndHour = GetItemParam(nItem, 4); 

return "\n s� d�ng ch�n ch� nh�t k� v� #<color=blue>200"..nEndYear.." n�m "..nEndMonth.." th�ng "..nEndDay.." ng�y <color>"; 
end 

-- script viet hoa By http://tranhba.com  t� nh�n ws_tiangong.lua 
function RepairCallBack(nItemIdx, nPrice, nItemPrice, nParam) 
local nMaxDur = GetMaxDurability(nItemIdx) 
local nFixDur = nMaxDur - GetCurDurability(nItemIdx) 
if (nFixDur <= 0)then 
return 
end 
local quality = GetItemQuality(nItemIdx) 
-- script viet hoa By http://tranhba.com  ho�ng kim trang b� s�a ch�a gi� c� c�ng th�c �i�u ch�nh l�m #100*( trang b� c�p b�c ^2)/ m�i �i�m n�i l�u �� 
if (quality == 1 or quality == 4)then 
if (quality == 4 and GetPlatinaLevel(nItemIdx) >= 6) then 
Say("Kh�ng th� s�a ch�a v�t n�y ph�m ", 0); 
return 1 
end 

local nItemLevel = GetItemLevel(nItemIdx); 
-- script viet hoa By http://tranhba.com  m�i n�i l�u �� ��ch gi� c� 
local nDurPrice = 100 * nItemLevel * nItemLevel 
local nCheapPrice = nDurPrice * nFixDur 
local nCostlyPrice = nCheapPrice * 3; -- script viet hoa By http://tranhba.com  gi�n s�a g�p ba 
local nLostDur = floor(nFixDur / 10); 
if (nLostDur < 1) then 
nLostDur = 1; 
end 
Say("<#>", 3, 
" gi�n s�a trang b� #"..nCheapPrice.." hai , n�i l�u �� gi�m xu�ng "..nLostDur.." �i�m /#Cheap_Repair("..nItemIdx..","..nCheapPrice..")", 
" tinh s�a trang b� #"..nCostlyPrice.." hai /#Costly_Repair("..nItemIdx..","..nCostlyPrice..")", 
" kh�ng c�n /cancel") 
return 
end 
Say("<#> s�a ch�a n�y trang b� c�n t�n hao #"..nPrice.." hai , ng��i mu�n s�a ch�a sao ? ", 2, 
" s�a ch�a /#TG_Repair("..nItemIdx..","..nPrice..")", 
" kh�ng c�n /cancel") 
end 

-- script viet hoa By http://tranhba.com  tinh s�a 
function Costly_Repair(nItemIdx, nCostPrice) 
local nCurMaxDur = GetMaxDurability(nItemIdx) 
if (GetCash() >= nCostPrice) then 
Pay(nCostPrice) 
-- script viet hoa By http://tranhba.com  Msg2Player("Ch�a tr� trang b� #") 
SetCurDurability(nItemIdx, nCurMaxDur) 
WriteLog(date("%H%M%S").."#"..GetAccount().."("..GetName()..") s� d�ng ("..nCostPrice..") l��ng b�c , tinh s�a ho�ng kim trang b� (ItemGenTime:"..GetItemGenTime(nItemIdx).." CurDur:"..nCurMaxDur..")"); 
else 
Say("<#> ng��i ng�n l��ng ch�a �� #", 0) 
return 
end 
end 
-- script viet hoa By http://tranhba.com  gi�n s�a 
function Cheap_Repair(nItemIdx, nCostPrice) 
local nCurMaxDur = GetMaxDurability(nItemIdx) 
local nFixDur = nCurMaxDur - GetCurDurability(nItemIdx) 
local nLostDur = floor(nFixDur / 10); 
if (nLostDur < 1) then 
nLostDur = 1; 
end 
if (GetCash() >= nCostPrice) then 
Pay(nCostPrice) 
local nFixMaxDur = nCurMaxDur - nLostDur; 
SetMaxDurability(nItemIdx, nFixMaxDur); 
SetCurDurability(nItemIdx, nFixMaxDur); 
else 
Say("<#> ng��i ng�n l��ng ch�a �� , chu�n b� ��y �� b�c tr� l�i �i #", 0) 
return 
end 
end 
-- script viet hoa By http://tranhba.com  ph� s�a 
function TG_Repair(nItemIdx, nCostPrice) 
if (GetCash() < nCostPrice) then 
Say("<#> ng��i ng�n l��ng ch�a �� , chu�n b� ��y �� b�c tr� l�i �i #", 0) 
return 
end 
Pay(nCostPrice) 
SetCurDurability(nItemIdx, GetMaxDurability(nItemIdx)) 
end
