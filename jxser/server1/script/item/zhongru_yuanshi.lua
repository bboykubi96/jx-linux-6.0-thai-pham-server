Include("\\script\\lib\\string.lua")

function GetDesc(nItem) 
local _, _, _, _, series = GetItemProp(nItem) 
return "<color=blue> ph�i h�p huy�n tinh qu�ng th�ch c� th� l�y ra "..toSeries(series).."<color=blue> h� m�u xanh da tr�i trang b� th��ng th� s�u v� tr� <color=dblue> th�m thu�c t�nh <color>" 
end 

function main(nItem) 
return 1 
end 