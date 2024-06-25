IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
TSK_BANHKYNANG = 5091
TSK_BANHTIEMNANG = 5092

function main(nItemIdx)
local Free = CalcFreeItemCellCount()
local G,D,P,nLevel = GetItemProp(nItemIdx)

	if (G ~= 6) then
		return 1
	end

	--B�nh K� N�ng
	if (P == 127) then
		if (GetTask(TSK_BANHKYNANG) < 10) then
			AddMagicPoint(1) SetTask(TSK_BANHKYNANG,GetTask(TSK_BANHKYNANG)+1) Msg2Player("Ch�c M�ng Ng��i Nh�n ���c 1 �i�m K� N�ng")
		else
			Talk(1,"","M�i Nh�n V�t Ch� ���c S� D�ng T�i �a 10 B�nh K� N�ng")
		end
	end
	--B�nh Ti�m N�ng
	if (P == 128) then
		if (GetTask(TSK_BANHTIEMNANG) < 10) then
			AddProp(5) SetTask(TSK_BANHTIEMNANG,GetTask(TSK_BANHTIEMNANG)+1) Msg2Player("Ch�c M�ng Ng��i Nh�n ���c 5 �i�m Ti�m N�ng")
		else
			Talk(1,"","M�i Nh�n V�t Ch� ���c S� D�ng T�i �a 10 B�nh Ti�m N�ng")
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
