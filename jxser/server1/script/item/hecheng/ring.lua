/* 
if not RING then 
RING = 1 
end 

if not SHOSHI then 
	Include ("\\script\\item\\hecheng\\shoushihecheng.lua")
end 
*/ 
-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #ComputeJewelWorth(nCount) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  c�n c� cho c�ng gi�i m�t ��ch v�t ph�m , t�nh to�n ra k� gi� tr� l��ng . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  nCount# cho c�ng gi�i m�t trung v�t ki�n ��ch t�ng s� 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  th�nh c�ng l� tr� v� gi� tr� l��ng , n�u kh�ng tr� v� nil 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function ComputeRingWorth(nCount) 
local worth = 0 -- script viet hoa By http://tranhba.com  l� v�t gi� tr� l��ng 
local maxCount = 0 -- script viet hoa By http://tranhba.com  l� v�t ��ch t�ng s� 
local wnum = 0 
if(nCount == 0) then 
Talk(1,"GiveUIForThing","<#> g� c�ng kh�ng cho , ng��i ngh� l�m g� nha . ") 
return nil 
end 
for i=1,nCount do 
local itemIdx = GetGiveItemUnit( i ) 
local g, d, p, l, f = GetItemProp(itemIdx) 
if((g ~= 4 or (d < 508 or d > 518)) and (g ~= 0 or (d~=0 and d~=1 ))) then -- script viet hoa By http://tranhba.com  sai l�m ��o c� -- script viet hoa By http://tranhba.com and d~=2 and d~=5 and d~=6 and d~=7 
Talk(1,"GiveUIForThing","<#> ng��i cho l� t�m th��c �� nha , ng��i xem kh�ng hi�u chi�p ? ") 
return nil 
end 
if(g == 0) then -- script viet hoa By http://tranhba.com  v� kh� 
			wnum = wnum + 1
if (wnum > 1) then -- script viet hoa By http://tranhba.com  ch� c� th� �� m�t m�n trang b� 
Talk(1, "GiveUIForThing", "<#> nhi�u nh� v�y trang b� , ta kh�ng ph�i l� th�ng r�c a , ti�u h�a kh�ng ���c nhi�u nh� v�y ��") 
return nil 
end 
det = d 
par = p 
lvl = l 
five = f 
else -- script viet hoa By http://tranhba.com  th�n b� l� v�t 
function checkGiftCount(idx,count) -- script viet hoa By http://tranhba.com  ki�m tr�c th�n b� n�i c� ��ch s� l��ng 
local num = GetItemStackCount(idx) 
				if(count + num > MAXGIVENUM) then -- script viet hoa By http://tranhba.com  ����̫��
Talk(1,"GiveUIForRing","<#> ng��i cho �� qu� nhi�u , kh�ng th�y r� a ��") 
return nil 
end 
return num 
end 
local num = checkGiftCount(itemIdx,maxCount) 
if(not num) then 
return nil 
else 
				maxCount = maxCount + num
local ll = d - 508 
if(ll ==0) then 
					worth = worth + num * 100000
else 
					worth = worth + num * Convert.__gifttabfile:getCell(TF_GIFT_WORTH,ll)
end 
end 
end 
end 
if(worth ==0) then 
Talk(1,"GiveUIForThing","<#> th�t xin l�i , �t nh�t c�n m�t g� n�m th�n b� l� v�t . ") 
return nil 
end 
if (wnum == 0) then 
Talk(1,"GiveUIForThing","<#> th�t xin l�i , nh�t ��nh ph�i m�t m�n v� kh� . ") 
return nil 
end 
return worth, det, par, lvl, five 
end 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #ConvertRing(nCount) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-27 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-27 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  d�ng g� n�m th�n b� l� v�t ��i ph�n th��ng . n�y h�m s� b� cho c�ng gi�i m�t ��ng l� ��nh c�i n�t 
-- script viet hoa By http://tranhba.com  tr� v� �i�u . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  nCount# cho c�ng gi�i m�t trung ��ch v�t ph�m t�ng s� 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function ConvertRing(nCount) 
local worth, d, p, lvl, five = ComputeRingWorth(nCount) 
if(not worth) then return end 
-- script viet hoa By http://tranhba.com  �� l�y ���c h�p l� ��ch gi� tr� l��ng , th� ti�u t�t c� v�t ph�m , l�a ch�n ��i �ng t��ng th��ng 
local idx = Convert:convertring(worth, five) 
if(not idx) then -- script viet hoa By http://tranhba.com  th�t b�i , kh�ng c� ch�n l�a b�t k� v�t g� 
Talk(1,"GiveUIForThing", "<#> l�m sao s� th�t b�i a , kh�ng th� n�o ## v�y l�m sao chuy�n ? l�m l�i # l�m l�i ��") 
return 
end 
for i=1,nCount do -- script viet hoa By http://tranhba.com  kh�u tr� t�t c� ��o c� 
RemoveItemByIndex(GetGiveItemUnit(i)) 
end 
return PayRing(idx, lvl, five) 
end 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #PayBonus(bonusIdx) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-27 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-27 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  cho nh� ch�i ph�t ra settings/event/chinesenewyear/bonuslist.txt 
-- script viet hoa By http://tranhba.com  trung th� bonusIdx h�ng ��ch ph�n th��ng 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  bonusIdx# ph�n th��ng h�ng bi�n s� , � tabfile trung ��ch ���c ��m -1 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function PayRing(ringIdx, level, five) 
local num = tonumber(Convert.__ringtabfile:getCell(TF_BONUS_SEED, ringIdx)) 
local _nSeed = SetRandSeed(num) 
AddItem(0, 3, 0, level, five, 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P1,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P2,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P3,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P4,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P5,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P6,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P7,ringIdx))) 

WriteLog(date("%H%M%S").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().. 
" , ��i l�y ���c "..ringmsg[level].." , gi� tr� l��ng v� #".. 
Convert.__ringtabfile:getCell(TF_BONUS_WORTH,ringIdx)) 
Talk(1, "","Ng��i h�p th�nh ra kh�i m�t qu� "..ringmsg[level]) 
Msg2Player("Ng��i ��t ���c m�t qu� "..ringmsg[level]) 
return 
end 
