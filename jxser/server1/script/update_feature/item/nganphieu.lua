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
	--Bπc N–n
	if (P == 3551) then
		tbAwardTemplet:GiveAwardByList({nJxb=1,nCount=1000000},"NhÀn ß≠Óc 100 Vπn L≠Óng Bπc")
	end
	--Vµng N–n
	if (P == 3552) then
		tbAwardTemplet:GiveAwardByList({nJxb=1,nCount=10000000},"NhÀn ß≠Óc 1000 Vπn L≠Óng Bπc")
	end
	--Ngan Phieu
	if (P == 3553) then
		tbAwardTemplet:GiveAwardByList({nJxb=1,nCount=100000000},"NhÀn ß≠Óc 10.000 Vπn L≠Óng Bπc")
	end
	--ßπi Ng©n Phi’u
	if (P == 5401) then
		tbAwardTemplet:GiveAwardByList({nJxb=1,nCount=500000000},"NhÀn ß≠Óc 50.000 Vπn L≠Óng Bπc")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
