IncludeLib("ITEM") 
function main( nItemIdx ) 
local nMon = GetItemParam(nItemIdx,1) 
local nDay = GetItemParam(nItemIdx,2) 
-- script viet hoa By http://tranhba.com Say("Ng��i ng��i xem kho�n ��ch s� d�ng nh�t k� v� <color=yellow>2005 n�m "..nMon.." th�ng "..nDay.." ng�y <color> . ng��i xem kho�n ch� c� th� s� d�ng m�t l�n , s� d�ng sau , l� ���c � ng��i xem kho�n ��ch nh�t k� l�c �o�n b�n trong ��ng v�o ��i h�i v� l�m t�ng quy�t cu�c so t�i ph�c v� kh� , xem cu�c chi�n . du k� kh�ng c� hi�u qu� . ng��i nh�t ��nh ph�i b�y gi� s� d�ng sao ? ", 2,"Ta mu�n b�y gi� s� d�ng /#sure2usewatchcard("..nItemIdx..")","C�n l� ch� �i /OnCancel") 
Say("Th�t xin l�i , ng��i s� d�ng ng��i xem cu�n �� qua k� #",0); 
end 

function sure2usewatchcard(nItemIdx) 
local count = CalcEquiproomItemCount( 6, 1, 443, 1 ) 
if ( count == 0 ) then 
Say("Di ? ng��i ng��i xem kho�n ��y ? kh�ng th�y n�a/r�i # kh�ng th�y s� d�ng kh�ng ���c a #", 0) 
return 
end 
local nMon = GetItemParam(nItemIdx,1) 
local nDay = GetItemParam(nItemIdx,2) 
	local nDate = nMon * 100 + nDay
AddExtPoint(1,nDate) 
Say("Ng��i ng��i xem kho�n ��ch s� d�ng nh�t k� v� <color=yellow>2005 n�m "..nMon.." th�ng "..nDay.." ng�y <color> , xin/m�i � h�u hi�u k� ng�y �� ��ng l�c ��i h�i v� l�m tranh t�i ph�c v� kh� quan s�t tranh t�i . ", 0) 
DelCommonItem(6,1,443) 
end 

function GetDesc( nItem ) 
local szDesc; 
local nIssueID, nIDCount; 
local nPayYear1, nPayMonth1, nPayDay1, nPayYear2, nPayMonth2, nPayDay2; 

nPayYear1 = 2005 
nPayMonth1 = GetItemParam( nItem, 1 ) 
nPayDay1 = GetItemParam( nItem, 2 ) 

szDesc = "" 
szDesc = szDesc..format( "\n ��i h�i v� l�m quy�t cu�c so t�i ng��i xem kho�n ng��i xem nh�t k� #<color=yellow>%04d n�m %02d th�ng %02d ng�y <color=> to�n ng�y ", nPayYear1, nPayMonth1, nPayDay1 ); 
return szDesc; 
end 
