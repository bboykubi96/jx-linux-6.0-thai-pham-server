
IncludeLib("ITEM")

function main(nItemIdx)		
	--dofile("script/item/ruyi_hongbao.lua")
	local nMoney = random(40000,60000)
	Earn(nMoney)
	Msg2Player("B¹n ®¹t ®­îc "..nMoney.." l­îng")
	Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color> më <color=green>Bao L× X× Nh­ ý<color> nhËn ®­îc ng©n l­îng")
end
