Include("\\script\\event\\expansion\\201006\\fuguijinhe\\fuguijinhe.lua")

-- return 1: ��ɾ����ǰ����Ʒ�� return 0: ɾ����ǰ��Ʒ
-- �i�u Ch�nh Ph� Qu� C�m H�p - Created by AnhHH  20110919
tbMapList =
{
--	[11]	=	1,	
--	[1]		=	1,	
	[37]	=	1,	
--	[176]	=	1,	
	--[162]	=	1,	
	--[78]	=	1,	
	--[80]	=	1,	
}
function main(itemidx)

	-- �i�u Ch�nh Ph� Qu� C�m H�p - Created by AnhHH  20110919
	if (IsCityMap() ~=1) then
		Talk(1, "", "Ch� c� nh�n v�t �ang � bi�n kinh m�i c� th� s� d�ng")
		return 1
	end
	
		if GetLevel() < 90 then
		Talk(1, "", "Ch� c� nh�n v�t 90 m�i c� th� s� d�ng")
		return 1
	end
		local checkexp = GetExpPercent()
if checkexp < 0 then
Say("Hi�n t�i �i�m kinh nghi�m b� �m ch� c� th� s� d�ng b�n nh��c r�i h�y ti�p t�c.")
return 1
end

	if (tbBetInfo:IsActive() ~= 1 or tbBetInfo:UseJinhe() ~= 1) then
		return 1;
	else
		return 0;
	end
end    

	-- �i�u Ch�nh Ph� Qu� C�m H�p - Created by AnhHH  20110919
function IsCityMap()
 	local nMapID =GetWorldPos()
	if (tbMapList[nMapID] == 1 and GetFightState() == 0) then
		return 1
	else
		return 0
	end
end       
                                                  