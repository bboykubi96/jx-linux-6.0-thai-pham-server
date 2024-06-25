-- script viet hoa By http://tranhba.com  tù ®Þnh nghÜa ®ång tiÒn sè l­îng ®Ých bao tiÒn l× x× 
IncludeLib("ITEM") 

function main(nItemIdx) 
local nMoney = GetItemParam(nItemIdx,1) 
AddStackItem(nMoney,4,417,1,1,0,0,0) 
Msg2Player("Ngµi thu ®­îc "..nMoney.." mai ®ång tiÒn ") 
end 

function GetDesc(nItemIdx) 
local nMoney = GetItemParam(nItemIdx, 1) 
-- script viet hoa By http://tranhba.com local szDesc = "" 
local szDesc = "\n bao tiÒn l× x× trung bao hµm ®ång tiÒn <color=yellow>"..nMoney.."<color=> mai " 
return szDesc; 
end
