
-- script viet hoa By http://tranhba.com ======== lo�i ��nh ngh�a ====================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  lo�i t�n #Convert 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  ph� tr�ch t�nh to�n g� n�m th�n b� l� v�t th�ng c�p quan h� gi� tr� l��ng c�ng d�ng g� n�m th�n b� 
-- script viet hoa By http://tranhba.com  l� v�t ��i ph�n th��ng gi� tr� l��ng . c�ng v�i l�a ch�n ph�n th��ng . 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  th�nh vi�n thay ��i l��ng # 
-- script viet hoa By http://tranhba.com  __gifttabfile# th�n b� l� v�t gi� tr� l��ng tabfile 
-- script viet hoa By http://tranhba.com  __bonustabfile# ph�n th��ng tabfile 
-- script viet hoa By http://tranhba.com  __giftWorth# th�n b� l� v�t th�ng c�p ��ch gi� tr� l��ng bi�u 
-- script viet hoa By http://tranhba.com  __bonusWorth# ph�n th��ng gi� tr� l��ng bi�u 
-- script viet hoa By http://tranhba.com  th�nh vi�n h�m s� # 
-- script viet hoa By http://tranhba.com  :loadSettings()# t�i nh�p gi� tr� l��ng thi�t ��nh v�n ki�n . 
-- script viet hoa By http://tranhba.com  :giftLevelup(worth)# th�n b� l� v�t th�ng c�p 
-- script viet hoa By http://tranhba.com  :convert(worth)# d�ng worth ��i l�y ph�n th��ng 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  

if not STRING_HEAD then 
	Include ("\\script\\lib\\string.lua")
end 

if not MEM_HEAD then 
	Include ("\\script\\lib\\mem.lua")
end 

if not KTABFILE_HEAD then 
	Include ("\\script\\class\\ktabfile.lua")
end 

if not WORTHANALYSE_HEAD then 
	Include ("\\script\\class\\worthanalyse.lua")
end 

Convert = { 
-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #:loadSettings() 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  t�i nh�p ph�i tr� v�n ki�n c�ng ti�n h�nh gi� tr� l��ng ��ch t�nh to�n . n�n h�m s� ��u ti�n t�i nh�p 
-- script viet hoa By http://tranhba.com settings/event/chinesenewyear/giftlvlup.txt c�ng 
-- script viet hoa By http://tranhba.com settings/event/chinesenewyear/bounslist.txt v�n ki�n , 
-- script viet hoa By http://tranhba.com  sau �� c�n c� c�i n�y hai ph�n v�n ki�n chia ra t�nh to�n th�n b� l� v�t th�ng c�p ��ch gi� tr� l��ng bi�u c�ng 
-- script viet hoa By http://tranhba.com  th�n b� l� v�t ��i ph�n th��ng gi� tr� l��ng bi�u . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
loadSettings = function(self) 
self.__gifttabfile = new(KTabFile,"/settings/event/juanzhouhecheng/giftslvlup.txt","GIFT") 
self.__crystaltabfile = new(KTabFile,"/settings/event/juanzhouhecheng/crystal.txt","CRYSTAL") 
self.__giftWorth = new(WorthAnalyse,80) 
for i=1,self.__gifttabfile:getRow() do 
self.__giftWorth:addWorth(i,tonumber(self.__gifttabfile:getCell("Worth",i))) 
end 
self.__giftWorth:makeBaseP() 
return 
end, 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #:giftLevelup(worth) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  t� gi� tr� l��ng worth ch�n l�a �em mu�n th�ng c�p l�y ���c th�n b� l� v�t ��ch t�c d�n s� . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  worth# gi� tr� l��ng , n�i n�y l� t� nh� ch�i �� giao ��ch th�n b� l� v�t t�nh ra 
-- script viet hoa By http://tranhba.com  gi� tr� l��ng t�ng c�ng . 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  th�nh c�ng l� tr� v� �em mu�n th�ng c�p l�y ���c th�n b� l� v�t t�c d�n , n�u kh�ng v� nil 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
giftLevelup =function(self,worth) 
self.__giftWorth:makeWorthP(worth) 
return self.__giftWorth:getFromWorth() 
end, 
} 



TID_CLONECRYSTAL = 503 
MAX_CRYSTAL_WORTH = 50000000 -- script viet hoa By http://tranhba.com  l�n h�n 5000 v�n , d�nh l�u c� th�y tinh 

MAXGIVENUM = 20 -- script viet hoa By http://tranhba.com  c� th� cho l� v�t ��ch l�n nh�t th��ng h�n 
TF_GIFT_WORTH = 3 -- script viet hoa By http://tranhba.com giftlvl.txt trung worth h�ng ��ch nh�m ��m 
TF_GIFT_P1 = 4 
TF_GIFT_P2 = 5 
TF_GIFT_P3 = 6 
TF_GIFT_P4 = 7 
TF_GIFT_CRYPTIC = 8 
TF_CRYSTAL_WORTH = 2 

Convert:loadSettings() 


-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #ComputeWorth(nCount) 
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
function ComputeWorth(nCount) 
local worth = 0 -- script viet hoa By http://tranhba.com  l� v�t gi� tr� l��ng 
local crystal = 0 -- script viet hoa By http://tranhba.com  th�y tinh gi� tr� l��ng 
local maxCount = 0 -- script viet hoa By http://tranhba.com  l� v�t ��ch t�ng s� 

if(nCount == 0) then 
Talk(1, "GiveUIForGift", "<#> g� c�ng kh�ng cho , ng��i ngh� l�m g� nha . ") 
return nil 
end 
for i=1,nCount do 
local itemIdx = GetGiveItemUnit( i ) 
local g,d,_ = GetItemProp(itemIdx) 

if(g ~= 4 or d<468 or (d >486 and d < 508) or d > 518) then -- script viet hoa By http://tranhba.com  sai l�m ��o c� 
Talk(1,"GiveUIForGift","<#> ng��i cho l� t�m th��c �� nha , ng��i xem kh�ng hi�u chi�p ? ") 
return nil 
end 
if(d > 467 and d < 487) then -- script viet hoa By http://tranhba.com  b�ng tinh 
			crystal = crystal + GetItemStackCount(itemIdx)* tonumber(Convert.__crystaltabfile:getCell(TF_CRYSTAL_WORTH,(d-467)))
else -- script viet hoa By http://tranhba.com  th�n b� l� v�t 
function checkGiftCount(idx,count) -- script viet hoa By http://tranhba.com  ki�m tr�c th�n b� n�i c� ��ch s� l��ng 
local num = GetItemStackCount(idx) 
				if(count + num > MAXGIVENUM) then -- script viet hoa By http://tranhba.com  ����̫��
Talk(1, "GiveUIForGift", "<#> ng��i cho �� qu� nhi�u , kh�ng th�y r� a . ") 
return nil 
end 
return num 
end 
local num = checkGiftCount(itemIdx,maxCount) 
if(not num) then 
return nil 
else 
if (d == 518) then 
Say("Ng��i b� v�o ��ch g� n�m th�n b� l� v�t trung c� 10 c�p ��ch g� n�m th�n b� l� v�t , kh� n�ng n�y s� ��a ��n h�p th�nh th�t b�i , c� mu�n hay kh�ng l�n n�a h�p th�nh ? ", 2,"T�t , l�n n�a h�p th�nh /GiveUIForGift","T�nh / ch�n , l�n sau �i /onCancel") 
return nil 
end 
				maxCount = maxCount + num
local lvl = d - 507 
				worth = worth + num * tonumber(Convert.__gifttabfile:getCell(TF_GIFT_WORTH,lvl))
end 
end 
end 
if(crystal > MAX_CRYSTAL_WORTH) then -- script viet hoa By http://tranhba.com  gi� tr� l��ng l�n h�n 5000w , d�nh l�u c� b�ng tinh 
		SetTask(TID_CLONECRYSTAL,GetTask(TID_CLONECRYSTAL)+1)
return -1 
end 
if(worth ==0) then 
Talk(1, "GiveUIForGift", "<#> th�t xin l�i , �t nh�t c�n m�t g� n�m th�n b� l� v�t . ") 
return nil 
end 

	return worth + crystal
end 
-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #GiveUIForGift() 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-27 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-27 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  m� ra cho c�ng gi�i m�t , d�ng cho h�p th�nh g� n�m th�n b� l� v�t . b� l� quan ��ch ��i tho�i 
-- script viet hoa By http://tranhba.com  �i�u d�ng . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function GiveUIForGift() 
GiveItemUI("G� n�m th�n b� l� v�t h�p th�nh ","Ng��i nhi�u nh�t b� v�o 20 c� g� n�m th�n b� l� v�t c�ng nhi�u gi�ng sinh ho�t ��ng l�c c�n d� l�i b�ng tinh . ", "GiftLevelUp", "onCancel" ); 
end 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #GiftLevelUp(nCount) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  nh� ch�i l�a ch�n th�ng c�p th�n b� v�t ph�m sau , b�n ra cho c�ng gi�i m�t , n�y h�m s� v� 
-- script viet hoa By http://tranhba.com  n�n cho c�ng gi�i m�t �i�m k�ch x�c ��nh c�i n�t sau ��ch tr� v� �i�u h�m s� . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  cho c�ng gi�i m�t trung ��o c� v�t ph�m ��ch t�ng s� , n�n s� l��ng b�t k� coi l� �i�p gia ��ch s� l��ng . 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function GiftLevelUp(nCount) 
local worth = ComputeWorth(nCount) 
if(not worth) then return end 
-- script viet hoa By http://tranhba.com  �� l�y ���c h�p l� ��ch gi� tr� l��ng , th� ti�u t�t c� v�t ph�m , l�a ch�n ��i �ng ��c th� th�n b� l� v�t 
for i=1,nCount do 
RemoveItemByIndex(GetGiveItemUnit( i )) 
end 
if(worth < 0) then 
-- script viet hoa By http://tranhba.com  d�nh l�u c� th�y tinh , c�p t�t c� v�t ph�m , c�ng ghi ch�p ng�y ch� 
WriteLog(date("%H%M%S").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().. 
" � h�p th�nh th�n b� l� v�t ��ch th�i �i�m , s� d�ng v��t qua 5000 v�n gi� tr� l��ng ��ch b�ng tinh , d�nh l�u c� b�ng tinh , c�n k� ki�m tra sau , c�n nh�c ��ng n�n s� tr��ng m�c . ") 
if(GetTask(TID_CLONECRYSTAL) > 3) then 
WriteLog(date("%H%M%S").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().. 
" �� th� "..GetTask(TID_CLONECRYSTAL).." l�n s� d�ng gi� tr� l��ng ��ch c�c k� ng�n b�ng tinh , k� sao ch�p b�ng tinh ��ch c� th� t�nh l�n v� c�ng , �� ngh� gia nh�p danh s�ch �en ") 
end 
-- script viet hoa By http://tranhba.com  l�i n�i th�n sao tho�i ��y ? m� ho�c m�t c�i 
Talk(1,"","<#> di , th�t b�i , ng��i chuy�n a ? ng��i n�y # ng��i c� nha ��") 
return 
end 
local idx = Convert:giftLevelup(worth) 
if(not idx) then -- script viet hoa By http://tranhba.com  th�t b�i , kh�ng c� ch�n l�a b�t k� v�t g� 
Talk(1,"","<#> di , th�t b�i , ng��i chuy�n a ? ng��i n�y # ng��i c� nha ��") 
return 
end 
if (idx == 1) then 
Talk(1,"","<#> di , th�t b�i , ng��i chuy�n a ? ng��i n�y # ng��i c� nha ��") 
return 
end 

AddItem(tonumber(Convert.__gifttabfile:getCell(TF_GIFT_P1,idx)), 
tonumber(Convert.__gifttabfile:getCell(TF_GIFT_P2,idx)), 
tonumber(Convert.__gifttabfile:getCell(TF_GIFT_P3,idx)), 
tonumber(Convert.__gifttabfile:getCell(TF_GIFT_P4,idx)), 
0,0,0,0,0,0,0,0) 
WriteLog(date("%H%M%S").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().. 
" , d�ng "..worth.." gi� tr� l��ng ��ch th�n b� l� v�t , h�p th�nh l�y ���c ".. 
Convert.__gifttabfile:getCell(TF_GIFT_WORTH,idx).." gi� tr� l��ng ��ch th�n b� l� v�t , h� th�ng l�y ���c ".. 
tostring(worth-Convert.__gifttabfile:getCell(TF_GIFT_WORTH,idx)).." c�n th�a l�i gi� tr� l��ng . ") 
Talk(1, "","<#> ng��i h�p th�nh ra kh�i m�t ti�m ch�t v� "..Convert.__gifttabfile:getCell(TF_GIFT_CRYPTIC,idx).." ��ch g� n�m th�n b� l� v�t ") 
Msg2Player("Ng��i thu ���c m�t g� n�m th�n b� l� v�t ") 
return 
end 

function main() 
Talk(1, "GiveUIForGift","H�p th�nh g� n�m th�n b� l� v�t # ch� c� th� b� v�o nhi�u nh�t 20 c� <color=yellow> g� n�m th�n b� l� v�t <color> , li�n c� th� c� th� h�p th�nh cao c�p h�n ��ch g� n�m th�n b� l� v�t . n�u nh� ng��i c� gi�ng sinh ho�t ��ng l�c c�n d� l�i <color=yellow> b�ng tinh <color> c�ng c� th� b� v�o nh�c t�i cao h�p th�nh t� l� . ") 
end 

function onCancel() 
end
