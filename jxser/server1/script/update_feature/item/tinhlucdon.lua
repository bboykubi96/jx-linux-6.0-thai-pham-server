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
	--Tinh L�c ��n Ti�u
	if (P == 5078) then
		AddEnergy(10)
	end
	--Tinh L�c ��n Trung
	if (P == 5079) then
		AddEnergy(100)
	end
	--Tinh L�c ��n ��i
	if (P == 5080) then
		AddEnergy(1000)
	end
	--T�i �� Tinh L�c
	if (P == 3055) then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,3051,1,0,0},nCount=100},1)
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
