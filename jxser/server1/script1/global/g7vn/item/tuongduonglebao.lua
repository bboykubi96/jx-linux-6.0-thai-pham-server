Include("\\script\\lib\\awardtemplet.lua")

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/tuongduonglebao.lua")
	--do Say("T��ng d��ng l� bao T�m th�i ch�a s� ��ng d��c") return end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tbAward = 
	{	
			--{szName = "Vi Minh Chi B�o",tbProp={6,1,4319,1,0,0},nCount=1,nRate=10},
			--{szName = "C�n Kh�n Chi B�o",tbProp={6,1,4324,1,0,0},nCount=1,nRate=50},
			--{szName="Th�t tinh th�ch",tbProp={6,1,4334,1,0,0},nCount=1,nRate=10},

			{szName = "H�ng �nh vi�n uy�n", tbProp={0,204},nCount=1,nRate=1,nQuality = 1,nExpiredTime=7 * 24 * 60,},
			{szName = "H�ng �nh ki�m b�i", tbProp={0,205},nCount=1,nRate=1,nQuality = 1,nExpiredTime=7 * 24 * 60,},
			{szName = "H�ng �nh m�c t�c", tbProp={0,206},nCount=1,nRate=1,nQuality = 1,nExpiredTime=7 * 24 * 60,},
			{szName = "H�ng �nh t� chi�u", tbProp={0,207},nCount=1,nRate=1,nQuality = 1,nExpiredTime=7 * 24 * 60,},
			{szName = "Th�n m� Phi�n V�",	tbProp = {0, 10, 7, 1, 0, 0}, nRate = 0.01, nExpiredTime = 7 * 24 * 60},

			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=1,nRate=40},
			{szName = "�i�m Kinh Nghi�m", nExp=5000000,nRate=40},
			{szName = "�i�m Kinh Nghi�m", nExp=10000000,nRate=10},
			{szName = "�i�m Kinh Nghi�m", nExp=15000000,nRate=3},

			{szName = "�i�m Kinh Nghi�m", nExp=20000000,nRate=1},
			{szName = "�i�m Kinh Nghi�m", nExp=25000000,nRate=1},
	}
	tbAwardTemplet:Give(tbAward, 1, {"MoTDLeBao", "MoTDLeBao"})

end
