Include("\\script\\lib\\string.lua")

function GetDesc(nItem) 
local _, _, _, _, series = GetItemProp(nItem) 
return "<color=blue> phèi hîp huyÒn tinh qu¸ng th¹ch cã thÓ lÊy ra "..toSeries(series).."<color=blue> hÖ mµu xanh da trêi trang bŞ th­îng thø nhÊt vŞ trİ minh thuéc tİnh <color>" 
end 

function main(nItem) 
return 1 
end 