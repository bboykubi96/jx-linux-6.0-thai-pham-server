Include("\\script\\lib\\awardtemplet.lua")

tbPirate_Box_Key_Require = {
	["nguhanhkythach"] = {6, 1, 2125},
}

tbPirateBoxNewAward = 
{	
	["nguhanhkythach"] = 
	{
		{szName = "�� ph� Ho�ng Kim - Ph�c Ma T� Kim C�n", tbProp={6,1,244,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - T� Kh�ng Gi�ng Ma Gi�i �ao", tbProp={6,1,249,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y", tbProp={6,1,254,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - K� Nghi�p B�n L�i To�n Long Th��ng", tbProp={6,1,259,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - Ng� Long L��ng Ng�n B�o �ao", tbProp={6,1,264,1,1,0,0}, nCount=1,nRate=5.2},

		{szName = "�� ph� Ho�ng Kim - V� Gian � Thi�n Ki�m", tbProp={6,1,269,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - V� Ma T�y T��ng Ng�c Kh�u", tbProp={6,1,277,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - T� Ho�ng Ph�ng Nghi �ao", tbProp={6,1,284,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - B�ch H�i Uy�n ��ng Li�n Ho�n �ao", tbProp={6,1,289,1,1,0,0}, nCount=1,nRate=5.2},

		{szName = "�� ph� Ho�ng Kim - Minh �o T� S�t ��c Nh�n", tbProp={6,1,299,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - B�ng H�n ��n Ch� Phi �ao", tbProp={6,1,309,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - Thi�n Quang Hoa V� M�n Thi�n", tbProp={6,1,314,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - S�m Hoang Phi Tinh �o�t H�n", tbProp={6,1,319,1,1,0,0}, nCount=1,nRate=5.2},

		{szName = "�� ph� Ho�ng Kim - ��ng C�u Kh�ng Long H� Uy�n", tbProp={6,1,332,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - ��ch Kh�i L�c Ng�c Tr��ng", tbProp={6,1,334,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "�� ph� Ho�ng Kim - Ma S�t Qu� C�c U Minh Th��ng	", tbProp={6,1,339,1,1,0,0}, nCount=1,nRate=5.2},

		{szName = "�� ph� ho�ng kim - L�ng Nh�c Th�i C�c Ki�m", tbProp={6,1,354,1,1,0,0}, nCount=1,nRate=5.6},
		{szName = "�� ph� Ho�ng Kim - C�p Phong Ch�n V� Ki�m", tbProp={6,1,359,1,1,0,0}, nCount=1,nRate=5.6},
		{szName = "�� ph� Ho�ng Kim - S��ng Tinh Thi�n Ni�n H�n Thi�t", tbProp={6,1,364,1,1,0,0}, nCount=1,nRate=5.6},
	},	
}

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)
	
	--dofile("script/global/g7vn/item/camnanghkmpvk.lua")

	local tbKey2 = tbPirate_Box_Key_Require["nguhanhkythach"]
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount2 < 15 then
		Say("C�n ph�i c� 15 ng� h�nh k� th�ch", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tbOpt = {}
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng 15 ng� h�nh k� th�ch/#VnPirateBoxGiveAward(%d, '%s')", nIndexItem, "nguhanhkythach"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng 15 ng� h�nh k� th�ch �� m�:", getn(tbOpt), tbOpt)
	end
	return 1	
end
function Oncancel()end

function VnPirateBoxGiveAward(nItemIdx, strKeyType)
	local tbKey = tbPirate_Box_Key_Require[strKeyType]
	local tbAward = tbPirateBoxNewAward[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 15, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C�n ph�i 15 ng� h�nh k� th�ch �� m�", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 4339, -1) ~= 1 then
		Say("Kh�ng t�m th�y C�m Nang �� Ph� V� Kh� Ho�ng Kim", 1, "��ng/no")
		return
	end

	--if GetLevel() > 100 and  GetLevel() < 155 then
	--	local tbExpAward = 
	--	{
	--		[1] = {szName = "�i�m kinh nghi�m", nExp_tl = 1000000000},
	--	}
	--	tbAwardTemplet:Give(tbExpAward, 1 , {"ThuongThemMoCamnanghkmp", "ThuongThemMoCamnanghkmp"})
	--end

	tbAwardTemplet:Give(tbAward, 1, {"MoCamNangDoPhoVKHKMP", "MoCamNangDoPhoVKHKMP"})		
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� m� <color=yellow>C�m Nang �� Ph� V� Kh� Ho�ng Kim <color> th�nh c�ng")
end