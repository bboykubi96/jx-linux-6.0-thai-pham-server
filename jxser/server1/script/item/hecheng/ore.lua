if not STRING_HEAD then 
	Include ("\\script\\lib\\string.lua")
end 

if not KTABFILE_HEAD then 
	Include ("\\script\\class\\ktabfile.lua")
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
self.__oretabfile = new(KTabFile,"/settings/item/004/itemvalue/ore.txt","ORE") 
end 
} 

MAXGIVENUM = 50 -- script viet hoa By http://tranhba.com  c� th� cho l�n nh�t th��ng h�n 
TF_ORE_WORTH = 2 

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
local maxCount = 0 -- script viet hoa By http://tranhba.com  l� v�t ��ch t�ng s� 
local mark = 0 

if(nCount == 0) then 
Talk(1,"GiveUIForOre","<#> ng��i g� th��c ��u kh�ng �� , th� n�o h�p th�nh chi�p ? ") 
return nil 
end 
for i=1,nCount do 
local itemIdx = GetGiveItemUnit(i) 
local g,d,p,lvl = GetItemProp(itemIdx) 

if (mark ~= 0) then 
if (mark ~= lvl) then 

Talk(1,"GiveUIForOre","<#> ng��i b� v�o ��ch ��u l� g� th��c �� ? gi�ng nh� c�p b�c ��u kh�ng c�ng sao . ") 
return nil 
end 
end 
mark = lvl 

if (lvl > 4) then 
Talk(1, "GiveUIForOre", "<#> ng��i b� v�o ��ch huy�n tinh qu�ng th�ch c�p b�c qu� cao , v��t ra kh�i n�ng l�c c�a ta ph�m vi . ") 
return nil 
end 
if(g ~= 6 or p ~= 147) then -- script viet hoa By http://tranhba.com  sai l�m ��o c� 
Talk(1, "GiveUIForOre", "<#> ng��i b� v�o ��ch ��u l� g� th��c �� ? l� huy�n tinh qu�ng th�ch sao ? ") 
return nil 
end 
function checkGiftCount(idx,count) -- script viet hoa By http://tranhba.com  ki�m tr�c th�n b� n�i c� ��ch s� l��ng 
local num = GetItemStackCount(idx) 
			if(count + num > MAXGIVENUM) then -- script viet hoa By http://tranhba.com  ����̫��
Talk(1,"GiveUIForOre","<#> ng��i cho �� qu� nhi�u , kh�ng th�y r� a , h�n m� ��") 
return nil 
end 
return num 
end 
local num = checkGiftCount(itemIdx,maxCount) 
if(not num) then 
return nil 
else 
			maxCount = maxCount + num
			worth = worth + num * tonumber(Convert.__oretabfile:getCell(TF_ORE_WORTH,lvl))
end 

end 

return worth, mark 
end 
-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #GiveUIForOre() 
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
function GiveUIForOre() 
GiveItemUI("Huy�n tinh qu�ng th�ch h�p th�nh ","�em nhi�u nh�t 50 c� c�ng m�t ��ng c�p ��ch huy�n tinh qu�ng th�ch b� v�o v�t ph�m lan b�n trong , li�n c� th� h�p th�nh ra t��ng �ng gi� tr� ��i �ng c� ��m ��ch l�p m��i c�p b�c ��ch huy�n tinh qu�ng th�ch . ", "OreLevelUp", "onCancel" ); 
end 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #OreLevelUp(nCount) 
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
function OreLevelUp(nCount) 
local worth, lvl = ComputeWorth(nCount) 
if(not worth) then return end 
-- script viet hoa By http://tranhba.com  �� l�y ���c h�p l� ��ch gi� tr� l��ng , th� ti�u t�t c� v�t ph�m , l�a ch�n ��i �ng ��c th� th�n b� l� v�t 
local num, worth2 = ConvertWorth(worth, lvl) 
	local lvl2 = lvl + 1

for i=1,nCount do 
RemoveItemByIndex(GetGiveItemUnit( i )) 
end 
if (num < 1) then 
Talk(1, "","Ai nha nha , h�p th�nh th�t b�i , c�m �t nh� v�y ��ch huy�n tinh qu�ng th�ch t�i h�p th�nh cao c�p nh�ng l� c� r�t l�n nguy hi�m t�nh ��y #") 
return 
end 

if(not num) then -- script viet hoa By http://tranhba.com  th�t b�i , kh�ng c� ch�n l�a b�t k� v�t g� 
Talk(1,"","<#> di , th�t b�i , ng��i chuy�n a ? c�i n�y # c�i n�y # ng��i h��ng GM h�i b�o m�t ch�t �i , ta kh�ng bi�t l�m sao b�y gi� a #") 
print("Error: the number of ore is non.") 
return 
end 

AddStackItem(num, 6, 1, 147, lvl2, 1, 1, 1) 
WriteLog(date("%H%M%S").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().. 
" , d�ng c�ng "..worth.." gi� tr� l��ng ��ch "..lvl.." c�p b�c ��ch huy�n tinh qu�ng th�ch , h�p th�nh l�y ���c ".. 
num.." c� "..lvl2.." c�p b�c ��ch huy�n tinh qu�ng th�ch , h� th�ng l�y ���c ".. 
worth-worth2.." c�n th�a l�i gi� tr� l��ng . ") 
Talk(1, "","Ng��i h�p th�nh ra kh�i <color=yellow>"..num.."<color> c� <color=yellow>"..lvl2.."<color> c�p b�c ��ch huy�n tinh qu�ng th�ch #") 
Msg2Player("Ng��i thu ���c "..num.." c� huy�n tinh qu�ng th�ch ") 
return 
end 

function ConvertWorth(worth, lvl) 
	local lvlworth = tonumber(Convert.__oretabfile:getCell(TF_ORE_WORTH,lvl + 1))
count = floor(worth / lvlworth) 
	value = count * tonumber(Convert.__oretabfile:getCell(TF_ORE_WORTH,lvl + 1))
if ( random( lvlworth) < (worth - value) and (worth - value) ~= 0) then 
		count = count + 1
end 
return count, value 
end 


function main() 
Talk(1, "GiveUIForOre","H�p th�nh cao c�p huy�n tinh qu�ng th�ch # m�i l�n nhi�u nh�t b� v�o <color=yellow>50<color> c� <color=yellow> c�ng m�t ��ng c�p <color> ��ch huy�n tinh qu�ng th�ch , li�n c� th� h�p th�nh ra l�p m��i c�p b�c ��ch huy�n tinh qu�ng th�ch . nh�ng l� , cao nh�t ch� c� th� h�p th�nh ra c�p b�c v� <color=yellow>5<color> ��ch huy�n tinh qu�ng th�ch . ") 
return 
end 

function onCancel() 
end
