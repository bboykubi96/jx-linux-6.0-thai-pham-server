
function main(nItemIndex)
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nPoint = 0
	if P == 4386 then 
	nPoint = 500 
	elseif P == 4387 then
	nPoint = 100
	elseif P == 4388 then
	nPoint = 50
	elseif P == 4389 then
	nPoint = 10
	end
	AddEnergy(nPoint)
	Msg2Player(format("ßi”m n®ng ÆÈng t®ng %d", nPoint))
	-- ReduceEnergy(nSum)
	Msg2Player("Hi÷n tπi Æπi hi÷p c„ Æi”m n®ng ÆÈng lµ <color=yellow>"..GetEnergy().."<color>")
end
-- 4386
-- 4387
-- 4388
-- 4389
