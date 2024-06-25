Include("\\script\\maps\\newworldscript_default.lua")
tbNewSkillMap = {};
tbNewSkillMap.MapId_9x		= {75,321,322,227,225,226,340,144,93,124,152};	-- A�͵�ͼID

function OnNewWorld(szParam)
Msg2Player("chay ham am exp")
	local nMapType = tbNewSkillMap:checkMapId();
    local checkexp = GetExpPercent()
if checkexp < -50 and nMapType == 1 then
Say("Hi�n t�i �i�m kinh nghi�m v��t -50% kh�ng th� di chuy�n l�n map")
NewWorld (53,1600,3200)
--return 1
end

	SetFightState(1)
	Msg2Player("Nh�n tr�ng th�i ch�t t� ��ng v� th�nh....")
	SetDeathScript("\\script\\maps\\ondeath.lua")
	OnNewWorldDefault(szParam)
end

function OnLeaveWorld(szParam)
	SetDeathScript("")
	TM_StopTimer(116);
	OnLeaveWorldDefault(szParam)
end

function tbNewSkillMap:checkMapId()	
	
	local nSubWorldID = SubWorldIdx2ID();
	
	for i = 1, getn(self.MapId_9x) do
		if(nSubWorldID == self.MapId_9x[i]) then 
			return 1;
		end
	end
	return 0;	
end
