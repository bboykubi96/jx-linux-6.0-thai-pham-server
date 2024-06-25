--�������
Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{
	["6,1,4461"] = {szName="H�i Thi�n T�i T�o ��n", tbProp={1,2,0,5,0,0,0},nBindState=-2},
}
	

function main(nItemIndex)
	local nCount = GetItemParam(nItemIndex, 1);
	if CalcFreeItemCellCount()<1 then
		Say("H�nh trang c�n c� 1 � tr�ng �� m�.", 0)
		return 1
	end
	local mapid = SubWorldIdx2ID(SubWorld)
		if mapid == 380 or mapid==355  then
			Say("V�t ph�m kh�ng th� s� d�ng � map n�y.", 0)
				return 1
		end
	if nCount >= 300 then
		Say("�� r�t h�t to�n b� thu�c trong �� r�i, c� th� v�t �i.", 0)
		return 0
	end
	
	SetTaskTemp(114, nItemIndex)
--	AskClientForNumber("huitianjinlang_getpotion", 0,(300-nCount), "Xin m�i nh�p s� c�n r�t")
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
		if not %tbItem[szItemId] then  --�ǲ����������
			return
		end
		
		local nCount = GetItemParam(nItemIndex, 1);
		local nLastCount = 300 - nCount;
		if nPickCount > nLastCount then
			nPickCount = nLastCount
		end
		
		
		%tbItem[szItemId].nCount = nPickCount
		if tbAwardTemplet:GiveAwardByList(%tbItem[szItemId], "H�i thi�n t�i t�o l� bao") == 1 then
			nCount = nCount + nPickCount
			if nCount >= 300 then
				RemoveItemByIndex(nItemIndex)
			else
				SetSpecItemParam(nItemIndex, 1, nCount)
				SyncItem(nItemIndex) --ͬ���ͻ���
			end
		end
	else
		print("V�t ph�m kh�ng � tr�n ng��i")
	end
	--print("Item:  "..nItemIndex)
	--print("Pickcount:  " ..nPickCount)
	--print("ncount:  " ..nCount)

end

function GetDesc(nItemIndex)
	local nCount= GetItemParam(nItemIndex, 1);

	return format("C�n d�:  <color=yellow>%d<color>",(300 - nCount))
end