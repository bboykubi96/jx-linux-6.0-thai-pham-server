IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
TSK_LinhDuocNganNam = 5093

function main(nItemIdx)
local Free = CalcFreeItemCellCount()
local G,D,P,nLevel = GetItemProp(nItemIdx)
local nPoint = random(5,20)

	if (G ~= 6) then
		return 1
	end

	--Thiªn Niªn Hµ Thñ ¤
	if (P == 2074) then
		if (GetTask(TSK_LinhDuocNganNam) < 20) then
			AddProp(nPoint) SetTask(TSK_LinhDuocNganNam,GetTask(TSK_LinhDuocNganNam)+1)
			Msg2Player("Chóc Mõng Ng­¬i NhËn §­îc <color=yellow>"..nPoint.."<color> §iÓm TiÒm N¨ng")
		else
			Talk(1,"","Mçi Nh©n VËt ChØ §­îc Sö Dông Tèi §a 20 Thiªn Niªn Hµ Thñ ¤")
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
