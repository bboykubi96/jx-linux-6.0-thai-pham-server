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
	--B�c N�n
	if (P == 3551) then
		tbAwardTemplet:GiveAwardByList({nJxb=1,nCount=1000000},"Nh�n ���c 100 V�n L��ng B�c")
	end
	--V�ng N�n
	if (P == 3552) then
		tbAwardTemplet:GiveAwardByList({nJxb=1,nCount=10000000},"Nh�n ���c 1000 V�n L��ng B�c")
	end
	--Ngan Phieu
	if (P == 3553) then
		tbAwardTemplet:GiveAwardByList({nJxb=1,nCount=100000000},"Nh�n ���c 10.000 V�n L��ng B�c")
	end
	--��i Ng�n Phi�u
	if (P == 5401) then
		tbAwardTemplet:GiveAwardByList({nJxb=1,nCount=500000000},"Nh�n ���c 50.000 V�n L��ng B�c")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
