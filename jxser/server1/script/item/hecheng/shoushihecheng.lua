/* 
if not AMULET then 
	Include ("\\script\\item\\hecheng\\amulet.lua")
end 

if not PENDANT then 
	Include ("\\script\\item\\hecheng\\pendant.lua")
end 

if not RING then 
	Include ("\\script\\item\\hecheng\\ring.lua")
end 
if not SHOSHI then 
SHOUSHI = 1 
end 
*/ 

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
	Include ("\\script\\item\\hecheng\\worthanalyse.lua")
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
self.__ringtabfile = new(KTabFile,"/settings/event/juanzhouhecheng/ringlist.txt","RING") 
self.__amulettabfile = new(KTabFile,"/settings/event/juanzhouhecheng/amuletlist.txt","AMULET") 
self.__pendanttabfile = new(KTabFile,"/settings/event/juanzhouhecheng/pendantlist.txt","PENDANT") 
self.__pendantWorth = new(WorthAnalyse,80) 
self.__amuletWorth = new(WorthAnalyse,80) 
self.__ringWorth = new(WorthAnalyse,80) 
return 
end, 


-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #:convert(worth) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  t� gi� tr� l��ng worth t�nh to�n ra nh� ch�i �em mu�n ��n ��ch t��ng th��ng bi�n s� . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  worth# th�n b� l� v�t ��ch gi� tr� l��ng chi c�ng . 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  n�u nh� th�nh c�ng , l� tr� v� �o�t ���c ��n t��ng th��ng ��ch t�c d�n , n�u kh�ng v� nil 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
convertring = function(self,worth,mark) 
for i=1,self.__ringtabfile:getRow() do 
if (tonumber(self.__ringtabfile:getCell("Ng� h�nh ",i)) == mark or tonumber(self.__ringtabfile:getCell("Ng� h�nh ",i)) == 9) then 
self.__ringWorth:addWorth(i, tonumber(self.__ringtabfile:getCell("Worth",i)), tonumber(self.__ringtabfile:getCell("mID",i))) 
else 
self.__ringWorth:addWorth(i, 0, tonumber(self.__ringtabfile:getCell("mID",i))) 
end 
end 
self.__ringWorth:makeBaseP() 
self.__ringWorth:makeWorthP(worth) 
return self.__ringWorth:getFromWorth() 
end, 
convertpendant = function(self,worth, mark) 
for i=1,self.__pendanttabfile:getRow() do 
if (tonumber(self.__pendanttabfile:getCell("Ng� h�nh ",i)) == mark or tonumber(self.__pendanttabfile:getCell("Ng� h�nh ",i)) == 9) then 
self.__pendantWorth:addWorth(i, tonumber(self.__pendanttabfile:getCell("Worth",i)), tonumber(self.__pendanttabfile:getCell("mID",i))) 
else 
self.__pendantWorth:addWorth(i, 0, tonumber(self.__pendanttabfile:getCell("mID",i))) 
end 
end 
self.__pendantWorth:makeBaseP() 
self.__pendantWorth:makeWorthP(worth) 
return self.__pendantWorth:getFromWorth() 
end, 
convertamulet = function(self,worth, mark) 
for i=1,self.__amulettabfile:getRow() do 
if (tonumber(self.__amulettabfile:getCell("Ng� h�nh ",i)) == mark or tonumber(self.__amulettabfile:getCell("Ng� h�nh ",i)) == 9) then 
self.__amuletWorth:addWorth(i, tonumber(self.__amulettabfile:getCell("Worth",i)), tonumber(self.__amulettabfile:getCell("mID",i))) 
else 
self.__amuletWorth:addWorth(i, 0, tonumber(self.__amulettabfile:getCell("mID",i))) 
end 
end 
self.__amuletWorth:makeBaseP() 
self.__amuletWorth:makeWorthP(worth) 
return self.__amuletWorth:getFromWorth() 
end 
} 

-- script viet hoa By http://tranhba.com eg. 
Convert:loadSettings() 
ringmsg = 
{ 
" ho�ng ng�c chi�c nh�n ", 
" � liu th�ch chi�c nh�n ", 
" ph� dung th�ch chi�c nh�n ", 
" ph� th�y chi�c nh�n ", 
" th�y l�u th�ch chi�c nh�n ", 
" t� m�u xanh bi�c chi�c nh�n ", 
" h�i lam b�o th�ch chi�c nh�n ", 
" h�ng b�o th�ch chi�c nh�n ", 
" lam b�o th�ch chi�c nh�n ", 
" nh�n kim c��ng " 
} 

pendantmsg = 
{ 
{"Hu�n y h��ng nang ","Hoa l�i h��ng nang ","Nh� h��ng h��ng nang ","Hoa lan h��ng nang ","H�p vui m�ng h��ng nang ","T� t� h��ng nang ","Ch�m ��n h��ng nang ","Ti�n x� h��ng nang ","Gi� nam h��ng nang "," Long Ti�n H��ng nang "}, 
{"Xanh bi�c du ng�c b�i ","Kinh b�ch ng�c b�i ","Hoa ��o ng�c b�i ","Hoa mai ng�c b�i ","N�m m�u ng�c b�i ","Thanh ng�c ng�c b�i ","B�ch ng�c ng�c b�i ","M�c ng�c ng�c b�i ","Ho�ng ng�c ng�c b�i ","D� chi b�ch ng�c "} 
} 

amuletmsg = 
{ 
{"��ng gi�y chuy�n ","Ng�n gi�y chuy�n ","D�y chuy�n v�ng ","B�ch kim gi�y chuy�n ","Ng�c ch�u gi�y chuy�n ","Xanh bi�c t�ng th�ch gi�y chuy�n ","Th�y tinh gi�y chuy�n ","Kh�ng t��c th�ch gi�y chuy�n ","Tr�n ch�u gi�y chuy�n ","Kim c��ng gi�y chuy�n "}, 
{"Xanh bi�c t�ng th�ch h� th�n ph� ","San h� h� th�n ph� ","M�t m�o h� th�n ph� ","H� t�nh h� th�n ph� ","Th�y tinh h� th�n ph� ","H� ph�ch h� th�n ph� ","B�ch ph� th�y h� th�n ph� ","H�ng ph� th�y h� th�n ph� ","T� ph� th�y h� th�n ph� ","Xanh bi�c ph� th�y h� th�n ph� "} 
} 

MAXGIVENUM = 20 -- script viet hoa By http://tranhba.com  c� th� cho l� v�t ��ch l�n nh�t th��ng h�n 
TF_GIFT_WORTH = 3 -- script viet hoa By http://tranhba.com giftlvl.txt trung worth h�ng ��ch nh�m ��m 

TF_BONUS_WORTH = 3 
TF_BONUS_SEED = 4 
TF_BONUS_P1 = 5 
TF_BONUS_P2 = 6 
TF_BONUS_P3 = 7 
TF_BONUS_P4 = 8 
TF_BONUS_P5 = 9 
TF_BONUS_P6 = 10 
TF_BONUS_P7 = 11 
TF_BONUS_F = 12 



function main() 
Talk(1, "GiveUIForThing","H�p th�nh chi�c nh�n # m�i l�n nhi�u nh�t b� v�o <color=yellow>20<color> c� g� n�m th�n b� l� v�t c�ng m�t m�n m�u xanh nh�t <color=yellow> v� kh� trang b� <color> , c� th� h�p th�nh ra thay v� t��ng �ng c�p b�c # ng� h�nh thu�c t�nh ��ch �� trang s�c �eo tay . b� v�o ��ch g� n�m th�n b� l� v�t ��ch ti�m ch�t c�ng cao , chi�c nh�n ��ch thu�c t�nh l�i c�ng h�o . <enter> ��i ph��ng ph�p # v� kh� ��i chi�c nh�n # ��nh ��i ho�c gi�y ��i y�u tr�y # y ph�c ho�c �ai l�ng ��i c�nh mang . ") 
end 

function GiveUIForThing() 
GiveItemUI("�� trang s�c �eo tay h�p th�nh gi�i m�t ","T�i h� m�t ��ch v�t ph�m lan trong b� v�o nhi�u nh�t 20 c� g� n�m th�n b� l� v�t c�ng m�t m�n v� kh� trang b� . ", "ConvertThing", "onCancel" ); 
end 

function ConvertThing(nCount) 
local worth = 0 -- script viet hoa By http://tranhba.com  l� v�t gi� tr� l��ng 
local maxCount = 0 -- script viet hoa By http://tranhba.com  l� v�t ��ch t�ng s� 
local wnum = 0 
local thindex = 0 
if(nCount == 0) then 
Talk(1,"GiveUIForThing","<#> g� c�ng kh�ng cho , ng��i ngh� l�m g� nha . ") 
return nil 
end 
for i=1,nCount do 
itemIdx = GetGiveItemUnit( i ) 
g, d, p, l, f = GetItemProp(itemIdx) 
if((g ~= 4 or (d < 508 or d > 518)) and (g ~= 0 or (d~=0 and d~=1 and d ~= 2 and d ~= 5 and d ~= 6 and d ~= 7 ))) then -- script viet hoa By http://tranhba.com  sai l�m ��o c� -- script viet hoa By http://tranhba.com and d~=2 and d~=5 and d~=6 and d~=7 
Talk(1,"GiveUIForThing","<#> ng��i cho l� t�m th��c �� nha , ng��i xem kh�ng hi�u chi�p ? ") 
return nil 
end 
if(g == 0 ) then -- script viet hoa By http://tranhba.com  v� kh� trang b� 
magictype = GetItemMagicAttrib(itemIdx, 1) 
if (not magictype) then 
Talk(1, "GiveUIForThing", "<#> ng��i cho ta ph�i l� m�t m�n c� m�u xanh da tr�i thu�c t�nh ��ch v� kh� trang b� . ") 
return 
end 
if (magictype == 0 ) then 
Talk(1, "GiveUIForThing", "<#> ng��i cho ta ph�i l� m�t m�n c� m�u xanh da tr�i thu�c t�nh ��ch v� kh� trang b� . ") 
return 
end 
			wnum = wnum + 1
thindex = itemIdx 
else -- script viet hoa By http://tranhba.com  th�n b� l� v�t 

end 
end 
if (wnum > 1) then -- script viet hoa By http://tranhba.com  ch� c� th� �� m�t m�n trang b� 
Talk(1, "GiveUIForThing", "<#> nhi�u nh� v�y trang b� , ta kh�ng ph�i l� th�ng r�c a , ti�u h�a kh�ng ���c nhi�u nh� v�y ��") 
return nil 
end 
if (wnum < 1) then 
Talk(1, "GiveUIForThing", "<#> c�i n�y �� ng��i c�i g� v� kh� trang b� ��u kh�ng �� , mu�n ��i ra �� trang s�c �eo tay t�i ? ") 
return 
end 
gg, dd = GetItemProp(thindex) 
if(gg == 0 and (dd == 0 or dd == 1)) then -- script viet hoa By http://tranhba.com  chi�c nh�n 
ConvertRing(nCount) 
elseif (gg == 0 and (dd == 2 or dd == 6)) then -- script viet hoa By http://tranhba.com  c�nh mang 
ConvertAmulet(nCount) 
elseif (gg == 0 and (dd == 7 or dd == 5)) then -- script viet hoa By http://tranhba.com  y�u tr�y 
ConvertPendant(nCount) 
end 
end 

function onCancel() 
end
