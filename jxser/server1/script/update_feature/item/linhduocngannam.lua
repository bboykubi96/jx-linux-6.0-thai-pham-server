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

	--Thi�n Ni�n H� Th� �
	if (P == 2074) then
		if (GetTask(TSK_LinhDuocNganNam) < 20) then
			AddProp(nPoint) SetTask(TSK_LinhDuocNganNam,GetTask(TSK_LinhDuocNganNam)+1)
			Msg2Player("Ch�c M�ng Ng��i Nh�n ���c <color=yellow>"..nPoint.."<color> �i�m Ti�m N�ng")
		else
			Talk(1,"","M�i Nh�n V�t Ch� ���c S� D�ng T�i �a 20 Thi�n Ni�n H� Th� �")
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
