Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{
	{szName = "K�ch C�ng Tr� L�c Ho�n", tbProp = {6,1,2952,1,0,0}, nCount = 50},	
}


function main(nItemIndex)
	local nWidth = 1
	local nHeight = 1
	local nCount = 5
	if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nCount, nWidth, nHeight))
		return 1
	end
	tbAwardTemplet:GiveAwardByList(%tbAward, "S� d�ng Tr� L�c Ho�n L� Bao", 1)
	return 0
end