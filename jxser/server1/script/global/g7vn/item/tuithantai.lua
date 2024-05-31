Include("\\script\\lib\\awardtemplet.lua")

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/tuithantai.lua")
	do Say("T�i th�n t�i T�m th�i ch�a s� ��ng d��c") return end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tbAward = 
	{	
			{szName="An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={0,164},nCount=1,nRate=2,nQuality = 1},
			{szName="An Bang C�c Hoa Th�ch Ch� ho�n	",tbProp={0,165},nCount=1,nRate=7,nQuality = 1},
			{szName="An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={0,166},nCount=1,nRate=7,nQuality = 1},
			{szName="An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={0,167},nCount=1,nRate=7,nQuality = 1},

			{szName = "Ng�a Chi�u D� Ng�c S� T�", tbProp={0,10,5,5,0,0,0}, nCount=1,nRate=7},
			{szName = "Ng�a Phi V�n", tbProp={0,10,8,1,5,0,0}, nCount=1,nRate=7},
			{szName = "Ng�a B�n Ti�u", tbProp={0,10,6,1,5,0,0}, nCount=1,nRate=7},
			{szName = "Ng�a Phi�n V�", tbProp={0,10,7,1,5,0,0}, nCount=1,nRate=2},

			{szName= "H�ng �nh Th�m vi�n uy�n", tbProp={0,204},nCount=1,nRate=2,nQuality = 1,},
			{szName= "H�ng �nh ki�m b�i", tbProp={0,205},nCount=1,nRate=7,nQuality = 1,},
			{szName= "H�ng �nh m�c t�c", tbProp={0,206},nCount=1,nRate=7,nQuality = 1,},
			{szName= "H�ng �nh t� chi�u", tbProp={0,207},nCount=1,nRate=7,nQuality = 1,},

			{szName = "��ng s�t B�ch Kim �i�u Long Gi�i", tbProp={0,143}, nQuality = 1, nCount=1,nRate=7},
			{szName = "��ng s�t B�ch Ng�c C�n Kh�n B�i", tbProp={0,144}, nQuality = 1, nCount=1,nRate=2},
			{szName = "��ng s�t B�ch Kim T� Ph�ng Gi�i", tbProp={0,145}, nQuality = 1, nCount=1,nRate=7},
			{szName = "��ng s�t Ph� Th�y Ng�c H�ng Li�n", tbProp={0,146}, nQuality = 1, nCount=1,nRate=7},

			{szName = "�i�m Kinh Nghi�m", nExp=200000000,nRate=10},
	}
	tbAwardTemplet:Give(tbAward, 1, {"MoTuiThanTai", "MoTuiThanTai"})

end
