IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
function main(nItemIdx)
local Free = CalcFreeItemCellCount()
local G,D,P,nLevel = GetItemProp(nItemIdx)
	if (G ~= 6) then
		return 1
	end
	--Tinh Lùc §¬n TiÓu
	if (P == 5078) then
		AddEnergy(10)
	end
	--Tinh Lùc §¬n Trung
	if (P == 5079) then
		AddEnergy(100)
	end
	--Tinh Lùc §¬n §¹i
	if (P == 5080) then
		AddEnergy(1000)
	end
	--Tói §¸ Tinh Lùc
	if (P == 3055) then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,3051,1,0,0},nCount=100},1)
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
