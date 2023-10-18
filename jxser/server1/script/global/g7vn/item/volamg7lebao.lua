Include("\\script\\lib\\awardtemplet.lua")

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/volamg7lebao.lua")

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tbAward = 
	{	
			{szName = "C�n Kh�n Gi�i Ch�", tbProp={0,428}, nQuality = 1, nCount=1,nRate=10, nExpiredTime = 20160},
			{szName = "Th�n m� X�ch Long C�u", tbProp={0,10,9,10,0,0,0}, nCount=1,nRate=10, nExpiredTime = 20160},

			{szName = "[C�c ph�m] ��ng S�t B�ch Kim �i�u Long Gi�i", tbProp={0,494}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[C�c ph�m] ��ng S�t B�ch Ng�c C�n Kh�n B�i", tbProp={0,495}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[C�c ph�m] ��ng S�t B�ch Kim T� Ph�ng Gi�i", tbProp={0,496}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[C�c ph�m] ��ng S�t Ph� Th�y Ng�c H�ng Khuy�n", tbProp={0,497}, nQuality = 1, nCount=1,nRate=10},

			{szName = "[C�c ph�m] ��nh Qu�c Thanh Sa Tr��ng Sam", tbProp={0,403}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[C�c ph�m] ��nh Qu�c Thanh Sa Ph�t Qu�n", tbProp={0,404}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[C�c ph�m] ��nh Qu�c X�ch Quy�n Nhuy�n Ngoa", tbProp={0,405}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[C�c ph�m] ��nh Qu�c T� ��ng H� Uy�n", tbProp={0,406}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[C�c ph�m] ��nh Qu�c Ng�n T�m Y�u ��i	", tbProp={0,407}, nQuality = 1, nCount=1,nRate=10},

			--{szName = "Th�n m� X�ch Long C�u", tbProp={0,10,11,10,0,0,0}, nCount=1,nRate=11, nExpiredTime = 20160},
			--{szName = "Th�n m� X�ch Long C�u", tbProp={0,10,12,10,0,0,0}, nCount=1,nRate=11, nExpiredTime = 20160},
			--{szName = "Th�n m� X�ch Long C�u", tbProp={0,10,13,10,0,0,0}, nCount=1,nRate=11, nExpiredTime = 20160},
			--{szName = "Th�n m� X�ch Long C�u", tbProp={0,10,14,10,0,0,0}, nCount=1,nRate=11, nExpiredTime = 20160},
			--{szName = "Th�n m� X�ch Long C�u", tbProp={0,10,15,10,0,0,0}, nCount=1,nRate=11, nExpiredTime = 20160},
			
	}
	tbAwardTemplet:Give(tbAward, 1, {"MoLeBaoG7", "MoLeBaoG7"})

end
