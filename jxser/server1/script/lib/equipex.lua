
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online th� gi�i ch�n ho�t ��ng th�t th� x� l� v�n ki�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/05/31 PM 16:13 

-- script viet hoa By http://tranhba.com  n�m gi� r�ng s�ng , c�m gi�c b�n ng��i n�m c� g�i mu�n ��ng d�y r�i �i . 
-- script viet hoa By http://tranhba.com  th�t d�i ph�t bi�n qu�t qua , tr�n ng��i qu�n �i�p ph�t ra tu�n r�i ti�ng vang . 
-- script viet hoa By http://tranhba.com  t� da t�n m�t ra ��ch �m �p nh� ti�u th� ��ch h�i th� , v�n nh� c� quen thu�c . 
-- script viet hoa By http://tranhba.com  h�n gi�t m�nh t�nh l�i , th�y n�ng d�a l�ng v�o t��ng ng�i � gi��ng ��ch b�n trong , l�ng l�ng h��ng v� ph�a chi�u v�o ��ch �nh tr�ng r�t ra m�t chi kh�i . 
-- script viet hoa By http://tranhba.com  nh�n h�n , nh� gi�ng m�m c��i , 
-- script viet hoa By http://tranhba.com  n�i , ta � ch� n�y . 
-- script viet hoa By http://tranhba.com  ta c�n kh�ng �i . 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  h�c v�o DEBUG th�u xu�t x� l� v�n ki�n 
Include("\\script\\task\\system\\task_debug.lua");

IncludeLib("ITEM"); 

-- script viet hoa By http://tranhba.com  sinh ra m�t m�n c�ng truy�n v�o ��ch Index ��ch nMagicType t��ng t� ho�ng kim trang b� 
-- script viet hoa By http://tranhba.com  truy�n v�o tham s� 
-- script viet hoa By http://tranhba.com  nIndex: nguy�n th�y trang b� ��ch Index 
-- script viet hoa By http://tranhba.com  nNeedGold: mu�n sinh th�nh ho�ng kim trang b� t�c d�n 
-- script viet hoa By http://tranhba.com  nMagicType: mu�n c� ��nh trang b� ma ph�p thu�c t�nh lo�i h�nh 
-- script viet hoa By http://tranhba.com  nCount: t�nh to�n ��ch s� l�n 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� 
-- script viet hoa By http://tranhba.com  int: kh�ng ph�i l� s� kh�ng l� v� �ang ph�c v� kh� trung sinh ra trang b� ��ch t� s� , 0 l� v� th�t b�i 
-- script viet hoa By http://tranhba.com  ary: tr� v� sinh ra t�t c� trang b� ��ch Index ��m t� 
function createLikeEquip(nIndex, nNeedGold, nNeedMagicType, nCount) 
local nGoldIndex = 0; 
local nCreateIndex = 0; 

local nMagicIndex = 0; 
local nNeedValue = 0; 

local aryIndex = {}; 

local nMagicType, nP1, nP2, nP3 
local i=0; 

if nIndex<1 or nIndex==nil then 
return 0; 
end; 

CDebug:MessageOut("B�t ��u sinh ra t�m th�i trang b� #"); 

nGoldIndex = GetGlodEqIndex(nIndex); 

CDebug:MessageOut(" l�y ���c ��n truy�n v�o ��ch ho�ng kim trang b� t� s� v� #"..nGoldIndex); 

-- script viet hoa By http://tranhba.com  l�y ���c ch� ��nh ma ph�p thu�c t�nh ��ch tr� gi� 
for i=1, 6 do 
nMagicType, nP1, nP2, nP3 = GetItemMagicAttrib(nIndex, i); 
if nMagicType==nNeedMagicType then 
nMagicIndex = i; 
nNeedValue = nP1; 
CDebug:MessageOut(" l�y ���c ��n ch� ��nh thu�c t�nh v� tr� � #"..i.." tr� s� v� #"..nNeedValue); 
end; 
end; 

if nNeedValue==0 then 
return 0; 
end; 

-- script viet hoa By http://tranhba.com  // ch�c n�ng # gia t�ng ch� ��nh c�n k� tin t�c v�t ph�m ��n tr� ch�i th� gi�i // 
-- script viet hoa By http://tranhba.com  // c�ch th�c #NewItemEx( nVersion, uRandSeed, nQuality, nItemClass, nDetailType, nParticualrType, nLevel, nSeries, nLuck, nItemLevel..6 ) 
-- script viet hoa By http://tranhba.com // tr� v� #nItemIdx // Fanghao_Wu 2006.06.01 //-- script viet hoa By http://tranhba.com  
for i=1, nCount do 

nCreateIndex = NewItemEx(4, 0, 1, 0, nNeedGold - 1, 0, 0, 0, 0, 0); 
nMagicType, nP1, nP2, nP3 = GetItemMagicAttrib(nCreateIndex, nMagicIndex); 

CDebug:MessageOut("Sinh ra v�t ph�m t� s� #"..nCreateIndex.." ma ph�p thu�c t�nh v� #"..nP1); 

tinsert(aryIndex, nCreateIndex); 

if nMagicType==nNeedMagicType and nP1==nNeedValue then 
CDebug:MessageOut("C�ng ch� ��nh thu�c t�nh t��ng ��ng #"..nCreateIndex); 
return nCreateIndex, aryIndex; 
end; 
end; 

return 0, aryIndex; 
end;
