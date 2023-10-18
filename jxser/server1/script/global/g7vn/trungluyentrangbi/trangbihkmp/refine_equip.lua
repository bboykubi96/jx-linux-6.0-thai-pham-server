Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\g7vn\\trungluyentrangbi\\trangbihkmp\\equiptable.lua")

tbBaiHuRefineEquip = tbActivityCompose:new()

tbBaiHuRefineList = 
{
	[1]= {szName="Trang B� HKMP", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
--	[2]= {szName="HKMP Kh�i",   nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	--[3]= {szName="HKMP Th��ng Gi�i Ch�", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	--[4]= {szName="HKMP H� Uy�n", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	--[5]= {szName="HKMP Y�u ��i", nStone = 2, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	--[6]= {szName="HKMP Y Ph�c",   nStone = 3, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
--	[7]= {szName="HKMP V� Kh�", nStone = 4, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	--[8]= {szName="HKMP H�i",   nStone = 3, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
--	[9]= {szName="HKMP B�i",   nStone = 3, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
--	[10]={szName="HKMP H� Gi�i Ch�", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbBaiHuRefineEquip:ComposeGiveUI()
	
	local szTitle = format("  %-15s\t%s", "Trang b� HKMP","Tr�ng Luy�n Ng�c \nTrang b� HKMP")
	local strDesc = format("   %-21s\t%d", "Mang Nguy�n Li�u B� V�o D�y ", 2)
	
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbBaiHuRefineEquip:Compose(nComposeCount)
	local nCurTime = GetCurServerTime()
	nComposeCount = nComposeCount or 1
	
	if type(self.tbFormula.pLimitFun) == "function" then
		if self.tbFormula:pLimitFun(nComposeCount) ~= 1 then
			return 0
		end
	end
	
	-- xet cai gi do
  local tbRoomItems =  self:GetRoomItems(self.nRoomType) --  cai gi do
	local tbGoldEquip = nil
	local nEquType = 0		-- mac dinh
	local nEqIndex = 0
	for i = 1, getn(tbRoomItems) do 
		nItemQuality = GetItemQuality(tbRoomItems[i])
		local nItemTime = ITEM_GetExpiredTime(tbRoomItems[i])
		local nTimeLeftCount=(nItemTime - nCurTime)/(60*60*24)
	--	Msg2Player("---"..nTimeLeftCount.."-----")
		--cai gi do
		if nItemQuality == 1 then
		tbEquip_Hkmp1= {
	[1] = {
	{szName="M�ng Long Ch�nh H�ng T�ng M�o",tbProp={0,1,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60},
	{szName="M�ng Long Kim Ti Ch�nh H�ng C� Sa",tbProp={0,2,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="M�ng Long Huy�n Ti Ph�t ��i",tbProp={0,3,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="M�ng Long Ph�t Ph�p Huy�n B�i",tbProp={0,4,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="M�ng Long ��t Ma T�ng h�i",tbProp={0,5,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ph�c Ma T� Kim C�n",tbProp={0,6,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={0,7,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ph�c Ma � Kim Nhuy�n �i�u",tbProp={0,8,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ph�c Ma Ph�t T�m Nhuy�n Kh�u",tbProp={0,9,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ph�c Ma Ph� �� T�ng h�i",tbProp={0,10,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,11,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="T� Kh�ng T� Kim C� Sa",tbProp={0,12,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="T� Kh�ng H� ph�p Y�u ��i",tbProp={0,13,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="T� Kh�ng Nhuy�n B� H� Uy�n",tbProp={0,14,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="T� Kh�ng Gi�i Lu�t Ph�p gi�i",tbProp={0,15,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",tbProp={0,16,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="H�m Thi�n V� Th�n T��ng Kim Gi�p",tbProp={0,17,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="H�m Thi�n Uy V� Th�c y�u ��i",tbProp={0,18,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="H�m Thi�n H� ��u Kh�n Th�c Uy�n",tbProp={0,19,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="H�m Thi�n Th�a Long Chi�n Ngoa",tbProp={0,20,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="K� Nghi�p B�n L�i To�n Long th��ng",tbProp={0,21,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={0,22,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="K� Nghi�p B�ch H� V� Song kh�u",tbProp={0,23,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="K� Nghi�p H�aV�n K� L�n Th� ",tbProp={0,24,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="K� Nghi�p Chu T��c L�ng V�n Ngoa",tbProp={0,25,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ng� Long L��ng Ng�n B�o �ao",tbProp={0,26,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ng� Long Chi�n Th�n Phi Qu�i gi�p",tbProp={0,27,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ng� Long Thi�n M�n Th�c Y�u ho�n",tbProp={0,28,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ng� Long T�n Phong H� y�n",tbProp={0,29,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ng� Long Tuy�t M�nh Ch� ho�n",tbProp={0,30,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Gian � Thi�n Ki�m",tbProp={0,31,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Gian Thanh Phong Truy Y",tbProp={0,32,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Gian Ph�t V�n Ti ��i",tbProp={0,33,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Gian C�m V�n H� Uy�n",tbProp={0,34,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Gian B�ch Ng�c B�n Ch� ",tbProp={0,35,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Ma Ma Ni qu�n",tbProp={0,36,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Ma T� Kh�m C� Sa",tbProp={0,37,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Ma B�ng Tinh Ch� Ho�n",tbProp={0,38,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Ma T�y T��ng Ng�c Kh�u ",tbProp={0,39,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Ma H�ng Truy Nhuy�n Th�p h�i",tbProp={0,40,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Tr�n Ng�c N� T� T�m qu�n",tbProp={0,41,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Tr�n Thanh T�m H��ng Thi�n Ch�u",tbProp={0,42,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Tr�n T� Bi Ng�c Ban Ch� ",tbProp={0,43,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",tbProp={0,44,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� Tr�n Ph�t Quang Ch� Ho�n",tbProp={0,45,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="T� Ho�ng Ph�ng Nghi �ao",tbProp={0,46,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="T� Ho�ng Tu� T�m Khinh Sa Y",tbProp={0,47,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",tbProp={0,48,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="T� Ho�ng B�ng Tung C�m uy�n",tbProp={0,49,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="T� Ho�ng Th�y Ng�c Ch� Ho�n",tbProp={0,50,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B�ch H�i Uy�n ��ng Li�n Ho�n �ao",tbProp={0,51,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B�ch H�i Ho�n Ch�u V� Li�n",tbProp={0,52,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B�ch H�i H�ng Linh Kim Ti ��i",tbProp={0,53,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B�ch H�i H�ng L�ng Ba",tbProp={0,54,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B�ch H�i Khi�n T� Ch� ho�n",tbProp={0,55,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="U Lung Kim X� Ph�t ��i",tbProp={0,56,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="U Lung X�ch Y�t M�t trang",tbProp={0,57,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="U Lung Thanh Ng� Tri�n y�u",tbProp={0,58,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="U Lung Ng�n Th�m H� Uy�n",tbProp={0,59,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="U Lung M�c Th� Nhuy�n L� ",tbProp={0,60,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Minh �o T� S�t ��c Nh�n",tbProp={0,61,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Minh �o U ��c �m Y",tbProp={0,62,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Minh �o ��c Y�t Ch� Ho�n",tbProp={0,63,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Minh �o H� C�t H� uy�n",tbProp={0,64,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Minh �o Song Ho�n X� H�i",tbProp={0,65,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ch� Ph��c Ph� gi�p ��u ho�n",tbProp={0,66,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ch� Ph��c Di�t L�i C�nh Ph� ",tbProp={0,67,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ch� Ph��c U �o Ch� Ho�n",tbProp={0,68,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ch� Ph��c Xuy�n T�m ��c Uy�n",tbProp={0,69,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ch� Ph��c B�ng H�a Th�c C�t Ngoa",tbProp={0,70,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B�ng H�n ��n Ch� Phi �ao",tbProp={0,71,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B�ng H�n Huy�n Y Th�c Gi�p",tbProp={0,72,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B�ng H�n T�m Ti�n Y�u Kh�u",tbProp={0,73,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B�ng H�n Huy�n Thi�n B�ng H�a B�i",tbProp={0,74,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B�ng H�n Nguy�t �nh Ngoa",tbProp={0,75,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Thi�n Quang Hoa V� M�n Thi�n",tbProp={0,76,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ",tbProp={0,77,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Thi�n Quang S�m La Th�c ��i",tbProp={0,78,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Thi�n Quang Song B�o H�n Thi�t Tr�c",tbProp={0,79,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",tbProp={0,80,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S�m Hoang Phi Tinh �o�t H�n",tbProp={0,81,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S�m Hoang KimTi�n Li�n Ho�n Gi�p",tbProp={0,82,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S�m Hoang H�n Gi�o Y�u Th�c",tbProp={0,83,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",tbProp={0,84,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S�m Hoang Tinh V�n Phi L� ",tbProp={0,85,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",tbProp={0,86,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��a Ph�ch H�c Di�m Xung Thi�n Li�n",tbProp={0,87,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��a Ph�ch T�ch L�ch L�i H�a Gi�i",tbProp={0,88,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��a Ph�ch Kh�u T�m tr�c",tbProp={0,89,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��a Ph�ch ��a H�nh Thi�n L� Ngoa",tbProp={0,90,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��ng C�u Phi Long ��u ho�n",tbProp={0,91,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��ng C�u Gi�ng Long C�i Y",tbProp={0,92,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��ng C�u Ti�m Long Y�u ��i",tbProp={0,93,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��ng C�u Kh�ng Long H� Uy�n",tbProp={0,94,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,95,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��ch Kh�i L�c Ng�c Tr��ng",tbProp={0,96,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��ch Kh�i C�u ��i C�i Y",tbProp={0,97,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��ch Kh�i Tri�n M�ng y�u ��i",tbProp={0,98,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��ch Kh�i C�u T�ch B� H� uy�n",tbProp={0,99,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="��ch Kh�i Th�o Gian Th�ch gi�i",tbProp={0,100,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma S�t Qu� C�c U Minh Th��ng",tbProp={0,101,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={0,102,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma S�t X�ch K� T�a Y�u Kh�u",tbProp={0,103,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma S�t C� H�a Li�u Thi�n uy�n",tbProp={0,104,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma S�t V�n Long Th� Ch�u gi�i",tbProp={0,105,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Ho�ng Kim Gi�p Kh�i",tbProp={0,106,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Ho�ng �n Xu�t H� H�ng Khuy�n",tbProp={0,107,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Ho�ng Kh� C�c Th�c y�u ��i",tbProp={0,108,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Ho�ng Huy�t Y Th� Tr�c",tbProp={0,109,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Ho�ng ��ng ��p Ngoa",tbProp={0,110,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Th� Li�t Di�m Qu�n Mi�n",tbProp={0,111,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Th� L� Ma Ph� T�m Li�n",tbProp={0,112,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Th� Nghi�p H�a U Minh Gi�i",tbProp={0,113,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={0,114,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Th� s�n  H�i Phi H�ng L� ",tbProp={0,115,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,116,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L�ng Nh�c V� Ng� ��o b�o",tbProp={0,117,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L�ng Nh�c N� L�i Gi�i",tbProp={0,118,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L�ng Nh�c V� C�c Huy�n Ng�c B�i",tbProp={0,119,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",tbProp={0,120,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="C�p Phong Ch�n V� Ki�m",tbProp={0,121,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="C�p Phong Tam Thanh Ph� ",tbProp={0,122,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="C�p Phong Huy�n Ti Tam �o�n c�m",tbProp={0,123,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",tbProp={0,124,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="C�p Phong Thanh T�ng Ph�p gi�i",tbProp={0,125,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S��ng Tinh Thi�n Ni�n H�n Thi�t",tbProp={0,126,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S��ng Tinh Ng�o S��ng ��o b�o",tbProp={0,127,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S��ng Tinh Thanh Phong L� ��i",tbProp={0,128,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S��ng Tinh Thi�n Tinh B�ng Tinh th� ",tbProp={0,129,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S��ng Tinh Phong B�o ch� ho�n",tbProp={0,130,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L�i Khung H�n Tung B�ng B�ch quan",tbProp={0,131,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L�i Khung Thi�n ��a H� ph� ",tbProp={0,132,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L�i Khung Phong L�i Thanh C�m ��i",tbProp={0,133,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L�i Khung Linh Ng�c U�n L�i",tbProp={0,134,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L�i Khung C�u Thi�n D�n L�i gi�i",tbProp={0,135,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� �o B�c Minh ��o qu�n",tbProp={0,136,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� �o Ki B�n ph� ch� ",tbProp={0,137,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� �o Th�c T�m ch� ho�n",tbProp={0,138,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� �o Thanh �nh Huy�n Ng�c B�i",tbProp={0,139,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V� �o Tung Phong Tuy�t �nh ngoa",tbProp={0,140,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	},
}

			nEqIndex = GetGlodEqIndex(tbRoomItems[i])
			if nEqIndex >= 1 and nEqIndex <= 140 then -- ID trang bi tu bao nhieu den bao nhieu xem trong ex_goldequi_head
				--cai gi do
				local nBindState = GetItemBindState(tbRoomItems[i])
				if nBindState ~= 0 then
					Say("Trang b� c�a ng��i �ang trong tr�ng th�i kh�a, kh�ng th� tr�ng luy�n.")
					return 0
				end
				
				--cai gi do
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang b� c�a ng��i �� b� h� h�i kh�ng th� tr�ng luy�n.")
					return 0
				end
				
				nEquType = 1 -----------------trung luyen ID trang bi
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng��i ch�a ��t trang b� HKMP n�o v�o ��y c� 8.")
		return 0	
	end
		
	--local nFreeItemCellLimit = tbBaiHuRefineList[nEquType].nFreeItemCellLimit or 1
	
	--nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	
	--if tbBaiHuRefineList[nEquType].nWidth ~= 0 and tbBaiHuRefineList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbBaiHuRefineList[nEquType].nWidth, tbBaiHuRefineList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
	--	Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, tbBaiHuRefineList[nEquType].nWidth, tbBaiHuRefineList[nEquType].nHeight))
	--	return 0
--	end	

  local tbItem = {szName = "Ng�c Tr�ng Luy�n", tbProp = {6,1,30104,1,0,0}, nCount = 1} ----------------------------ID ngoc trung luyen
  local nCount = self:CalcItemCount(tbRoomItems, tbItem)
  if nCount < tbBaiHuRefineList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>HKMP Tr�ng Luy�n Ng�c m� ng��i ��t v�o kh�ng ��. <color>"
		Talk(1, "", szMsg)
		return 0;
  end
	
	local nIdx = floor((nEqIndex - 1)/10) + 1 ----------------------ID trung luyen trang bi
	local tbProduct = tbEquip_Hkmp1[1][nEqIndex] --------------------lay danh sach ID ra --------tbEquip_BaiHu trong table
	local tbMaterial = {{szName = tbProduct.szName, tbProp = tbGoldEquip, nCount = 1}, tbItem}

	if self:ConsumeMaterial(tbMaterial, nComposeCount, self.szLogTitle) ~= 1 then
		--Say("noi gi do",0)
		Msg2Player("Ch� t�o th�t b�i, m�t �i m�t s� nguy�n li�u.")
		return 0;
	end
	

	tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount)
	Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> Tr�ng Luy�n Th�nh C�ng <color=green>Trang B� HKMP!")
	if type(self.tbFormula.pProductFun) == "function" then
		self.tbFormula:pProductFun(nComposeCount)
	end
	return 1;
end

function refine_HKMP()
		
	local strDesc = "<npc>L�y <color=yellow>trang b� HKMP <color> mu�n tr�ng luy�n  v� s� l��ng <color=yellow> Ng�c Tr�ng Luy�n<color> t��ng �ng ��t v�o ph�a d��i"
	local tbOpt = {}
	local tbMate =	{
			tbMaterial = 
			{
				{szName = "Trang b� HKMP", tbProp = {0, {1,140}}, nQuality = 1 },----------------------ID trung luyen trang bi tu ID dau ----cuoi
				{szName = "Ng�c Tr�ng Luy�n", tbProp = {6,1,30104,1,0,0},}, ----------------------------ID ngoc trung luyen
			},
			tbProduct = {szName="Trang b� HKMP", tbProp={0, {1,140}}}, --------------------------------------------ID trung luyen trang bi tu ID dau --- cuoi
		}
	local p = tbBaiHuRefineEquip:new(tbMate, "BaiHuRefineEquip", INVENTORY_ROOM.room_giveitem)-------------BaiHu
	tinsert(tbOpt, {"Tr�ng luy�n trang b� HKMP", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"H�y b� "})
	CreateNewSayEx(strDesc, tbOpt);
end
