IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
-----------------------------------------------
function main(nItemIdx)
local nFaction = GetLastFactionNumber()
local G,D,P,nLevel = GetItemProp(nItemIdx)
	if (G ~= 6) then
		return 1
	end

	--Qu� Hoa B�o �i�n
	if (P == 5322) then
		if (nFaction ~= 0 or nFaction ~= 4 or nFaction ~= 5) then
			if (GetSex() == 0) then
				SetSex(1) KickOutSelf()
			else
				SetSex(0) KickOutSelf()
			end
		else
			Talk(1,"","M�n Ph�i Thi�u L�m - Nga My - Th�y Y�n Kh�ng Th� Chuy�n Gi�i") return 1
		end
	end
end
