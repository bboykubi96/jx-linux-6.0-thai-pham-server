IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t¸i nhËp SETTING ch©n vèn chØ thÞ kho 
IncludeLib("FILESYS") 
IncludeLib("TONG") 
IncludeLib("ITEM") 

ITEMPARAM_LIMITDATE = 2 
ITEMPARAM_TONGID = 1 
function main(nItemIndex) 
local szTongName , nTongID = GetTongName() 

if (xiulibao_checkdate(nItemIndex) == -1) then 
Say("<#> söa ch÷a tói ®· qua sö dông kú h¹n , kh«ng thÓ sö dông n÷a #", 0) 
Msg2Player("Söa ch÷a tói qua sö dông kú h¹n , h­ h¹i . ") 
return 
end 
-- script viet hoa By http://tranhba.com  ®iÒu söa ch÷a chØ thÞ 
-- script viet hoa By http://tranhba.com  dïng %d thay thÕ RepairCallBack tr­íc ba tham sæ , khi trë vÒ ®iÒu lóc ®iÒn vµo : nItemIdx, nPrice, nItemPrice , phÝa sau tham sæ t­¬ng tù Say(...) 
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

return "\n sö dông chÆn chØ nhËt kú v× #<color=blue>200"..nEndYear.." n¨m "..nEndMonth.." th¸ng "..nEndDay.." ngµy <color>"; 
end 

-- script viet hoa By http://tranhba.com  tè nh×n ws_tiangong.lua 
function RepairCallBack(nItemIdx, nPrice, nItemPrice, nParam) 
local nMaxDur = GetMaxDurability(nItemIdx) 
local nFixDur = nMaxDur - GetCurDurability(nItemIdx) 
if (nFixDur <= 0)then 
return 
end 
local quality = GetItemQuality(nItemIdx) 
-- script viet hoa By http://tranhba.com  hoµng kim trang bÞ söa ch÷a gi¸ c¶ c«ng thøc ®iÒu chØnh lµm #100*( trang bÞ cÊp bËc ^2)/ mçi ®iÓm n¹i l©u ®é 
if (quality == 1 or quality == 4)then 
if (quality == 4 and GetPlatinaLevel(nItemIdx) >= 6) then 
Say("Kh«ng thÓ söa ch÷a vËt nµy phÈm ", 0); 
return 1 
end 

local nItemLevel = GetItemLevel(nItemIdx); 
-- script viet hoa By http://tranhba.com  mçi n¹i l©u ®é ®Ých gi¸ c¶ 
local nDurPrice = 100 * nItemLevel * nItemLevel 
local nCheapPrice = nDurPrice * nFixDur 
local nCostlyPrice = nCheapPrice * 3; -- script viet hoa By http://tranhba.com  gi¶n söa gÊp ba 
local nLostDur = floor(nFixDur / 10); 
if (nLostDur < 1) then 
nLostDur = 1; 
end 
Say("<#>", 3, 
" gi¶n söa trang bÞ #"..nCheapPrice.." hai , n¹i l©u ®é gi¶m xuèng "..nLostDur.." ®iÓm /#Cheap_Repair("..nItemIdx..","..nCheapPrice..")", 
" tinh söa trang bÞ #"..nCostlyPrice.." hai /#Costly_Repair("..nItemIdx..","..nCostlyPrice..")", 
" kh«ng cÇn /cancel") 
return 
end 
Say("<#> söa ch÷a nµy trang bÞ cÇn tèn hao #"..nPrice.." hai , ng­¬i muèn söa ch÷a sao ? ", 2, 
" söa ch÷a /#TG_Repair("..nItemIdx..","..nPrice..")", 
" kh«ng cÇn /cancel") 
end 

-- script viet hoa By http://tranhba.com  tinh söa 
function Costly_Repair(nItemIdx, nCostPrice) 
local nCurMaxDur = GetMaxDurability(nItemIdx) 
if (GetCash() >= nCostPrice) then 
Pay(nCostPrice) 
-- script viet hoa By http://tranhba.com  Msg2Player("Ch÷a trÞ trang bÞ #") 
SetCurDurability(nItemIdx, nCurMaxDur) 
WriteLog(date("%H%M%S").."#"..GetAccount().."("..GetName()..") sö dông ("..nCostPrice..") l­îng b¹c , tinh söa hoµng kim trang bÞ (ItemGenTime:"..GetItemGenTime(nItemIdx).." CurDur:"..nCurMaxDur..")"); 
else 
Say("<#> ng­¬i ng©n l­îng ch­a ®ñ #", 0) 
return 
end 
end 
-- script viet hoa By http://tranhba.com  gi¶n söa 
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
Say("<#> ng­¬i ng©n l­îng ch­a ®ñ , chuÈn bÞ ®Çy ®ñ b¹c trë l¹i ®i #", 0) 
return 
end 
end 
-- script viet hoa By http://tranhba.com  phæ söa 
function TG_Repair(nItemIdx, nCostPrice) 
if (GetCash() < nCostPrice) then 
Say("<#> ng­¬i ng©n l­îng ch­a ®ñ , chuÈn bÞ ®Çy ®ñ b¹c trë l¹i ®i #", 0) 
return 
end 
Pay(nCostPrice) 
SetCurDurability(nItemIdx, GetMaxDurability(nItemIdx)) 
end
