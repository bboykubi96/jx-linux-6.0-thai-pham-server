--»ØÌìÀñ°ü
Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{
	["6,1,4461"] = {szName="Håi Thiªn T¸i T¹o §¬n", tbProp={1,2,0,5,0,0,0},nBindState=-2},
}
	

function main(nItemIndex)
	local nCount = GetItemParam(nItemIndex, 1);
	if CalcFreeItemCellCount()<1 then
		Say("Hµnh trang cÇn cã 1 « trèng ®Ó më.", 0)
		return 1
	end
	local mapid = SubWorldIdx2ID(SubWorld)
		if mapid == 380 or mapid==355  then
			Say("VËt phÈm kh«ng thÓ sö dông ë map nµy.", 0)
				return 1
		end
	if nCount >= 300 then
		Say("§· rót hÕt toµn bé thuèc trong ®ã råi, cã thÓ vøt ®i.", 0)
		return 0
	end
	
	SetTaskTemp(114, nItemIndex)
--	AskClientForNumber("huitianjinlang_getpotion", 0,(300-nCount), "Xin mêi nhËp sè cÇn rót")
huitianjinlang_getpotion(300-nCount)


	return 1
end


function huitianjinlang_getpotion(nPickCount)
	local nFreeItemCellCount = CalcFreeItemCellCount()
	if nPickCount <= 0 then
		return
	end
	if nFreeItemCellCount < nPickCount then
		nPickCount = nFreeItemCellCount
	end
	local nItemIndex = GetTaskTemp(114)
	if IsMyItem(nItemIndex) == 1 then
		local Gid, Did, Pid = GetItemProp(nItemIndex);
		local szItemId = format("%d,%d,%d",Gid, Did, Pid)
		if not %tbItem[szItemId] then  --ÊÇ²»ÊÇÕâÀàµÀ¾ß
			return
		end
		
		local nCount = GetItemParam(nItemIndex, 1);
		local nLastCount = 300 - nCount;
		if nPickCount > nLastCount then
			nPickCount = nLastCount
		end
		
		
		%tbItem[szItemId].nCount = nPickCount
		if tbAwardTemplet:GiveAwardByList(%tbItem[szItemId], "Håi thiªn t¸i t¹o lÔ bao") == 1 then
			nCount = nCount + nPickCount
			if nCount >= 300 then
				RemoveItemByIndex(nItemIndex)
			else
				SetSpecItemParam(nItemIndex, 1, nCount)
				SyncItem(nItemIndex) --Í¬²½¿Í»§¶Ë
			end
		end
	else
		print("VËt phÈm kh«ng ë trªn ng­êi")
	end
	--print("Item:  "..nItemIndex)
	--print("Pickcount:  " ..nPickCount)
	--print("ncount:  " ..nCount)

end

function GetDesc(nItemIndex)
	local nCount= GetItemParam(nItemIndex, 1);

	return format("Cßn d­:  <color=yellow>%d<color>",(300 - nCount))
end