--»ØÌìÀñ°ü
Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{
	["6,1,2527"] = {szName="Håi Thiªn T¸i T¹o §¬n", tbProp={1, 8, 0, 4, 0, 0}},
}
	
tbCD_MAP = {209, 210, 211,333,396.397,398,399.400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415}	
function main(nItemIndex)
--dofile("script/item/caiyao/huitianlibao.lua")
	local nCount = GetItemParam(nItemIndex, 1);
				local nMapId,x,y  = GetWorldPos();
	-------------------
			for i = 0, getn(tbCD_MAP) do			
			if (nMapId == tbCD_MAP[i]) then
			Msg2Player("Map nµy Kh«ng Sö Dông §­îc");
			return 1	
		end
		end
	if nCount >= 300 then
		Say("§· rót hÕt toµn bé thuèc trong ®ã råi, cã thÓ vøt ®i.", 0)
		return 0
	end
	
	SetTaskTemp(114, nItemIndex)
	--AskClientForNumber("huitianjinlang_getpotion", 0,(60-nCount), "Xin mêi nhËp sè cÇn rót")
	local n = CalcFreeItemCellCount()
	if n > 300-nCount then 
		n = 300-nCount

	end
	huitianjinlang_getpotion(n)

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