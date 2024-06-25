-- script viet hoa By http://tranhba.com  tù ®Þnh nghÜa kim tiÒn sè l­îng ®Ých bao tiÒn l× x× 
IncludeLib("ITEM") 

function main(nItemIdx) 
local nMoney = GetItemParam(nItemIdx, 1) 
Earn(nMoney) 
Msg2Player("Ngµi thu ®­îc "..nMoney.." l­îng b¹c ") 
end 

function GetDesc(nItemIdx) 
local nM1 = GetItemParam(nItemIdx, 2) 
local nM2 = GetItemParam(nItemIdx, 3) 
local nM3 = GetItemParam(nItemIdx, 4) 
	local nMoney = nM1 * 1000000 + nM2 * 1000 + nM3
-- script viet hoa By http://tranhba.com local szDesc = "" 

local szDesc = "\n bao tiÒn l× x× trung bao hµm b¹c <color=yellow>"..nMoney.."<color=> hai " 
return szDesc; 
end 
