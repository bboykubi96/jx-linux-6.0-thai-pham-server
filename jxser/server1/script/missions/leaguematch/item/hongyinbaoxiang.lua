Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{
{szName=" H�ng �nh Th�m Vi�n Uy�n ", nQuality=1, tbProp={0, 434},nExpiredTime = 10080, nBindState = -2}, 
{szName=" H�ng �nh Ki�m B�i ", nQuality=1, tbProp={0, 435},nExpiredTime = 10080, nBindState = -2}, 
{szName="H�ng �nh M�c T�c ", nQuality=1, tbProp={0, 436},nExpiredTime = 10080, nBindState = -2}, 
{szName=" H�ng �nh T� Chi�u ", nQuality=1, tbProp={0, 437},nExpiredTime = 10080, nBindState = -2},  
}
function main()
	
	if  CountFreeRoomByWH(2, 5, 1) < 1 then
       Talk(1, "", format("V� b�o ��m ��i hi�p t�i s�n an to�n , xin/m�i l�u l�i %d %dx%d trang b� ch� tr�ng ", 1, 2, 5)) 
		return 1
	end
	tbAwardTemplet:GiveAwardByList(%tbItem, "hongying baoxiang")
	
end