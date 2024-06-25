--Vat pham tester by Zhu
Include( "\\script\\item\\checkmapid.lua" )
function EatMedicine() 
	local nHour = tonumber(GetLocalDate("%H%M"))
	if nHour < 2045 or nHour > 2300 then
		Msg2Player("VËt phÈm chØ cã hiÖu lùc trong trËn war bang")
		return -1
	end
AskClientForString("KickOutNow", "", 1, 512, "NhËp tªn tai khoan");
return -1
end
function KickOutNow(szName)
local nOld = PlayerIndex
local nCurCamp = GetCurCamp()
local nRe
for i=1,1200 do
	PlayerIndex = i
	if GetName()==szName and GetCurCamp()==nCurCamp then
		nRe = 1
		KickOutSelf()
		break
	end
end
PlayerIndex = nOld
if nRe == 1 then
Msg2Player("§· kÝch thµnh c«ng nh©n vËt ra khái chiÕn tr­êng.")
end
end