IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
tbAward = {
	{szName="Even",tbProp={6,1,3074,1,0,0},nCount=10000},
}

function main(nItemIdx)
local Free = CalcFreeItemCellCount()
local G,D,P,nLevel = GetItemProp(nItemIdx)
if (G ~= 6) then return 1 end
	if (P == 4837) then
		if (Free >= 20) then
			tbAwardTemplet:GiveAwardByList(tbAward,1)
		else
			Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng")
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
