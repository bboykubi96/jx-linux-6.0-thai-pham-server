Include("\\script\\missions\\citywar_city\\head.lua");
CityWarID = 221;-- script viet hoa By http://tranhba.com  c�ng th�nh chi�n ��ch b�n �� ID 
MSBegin = MS_GCCBEGIN; 
Count = g_nMaxGccPerDoor * g_nDoorCount; 
NpcTempl = 524; 
NpcLevel = 60; 

function main() 
-- script viet hoa By http://tranhba.com  nh�n tr��c m�t v� tr� c� ch�ng hay ch�a � c�ng th�nh chi�n ��a �� th��ng 
W,X,Y = GetWorldPos(); 
nSubWorldID = SubWorldIdx2ID(); 

if (nSubWorldID ~= CityWarID) then 
Msg2Player("Ng��i kh�ng th� � n�i n�y ��a ph��ng s� d�ng nghi�t long h��ng xe #") 
return 1; 
end 

if (GetCurCamp() ~= 2) then 
Msg2Player("Ch� c� c�ng th�nh nh�t ph��ng m�i c� th� s� d�ng nghi�t long h��ng xe #") 
return 1; 
end 

PosId = GetNearstPos(X*32,Y*32, GccPos); 
if (PosId == 0) then 
Say("Ng��i v� tr� ch� � c�ch nghi�t long h��ng xe �� ��a v� tr� qu� xa , kh�ng c�ch n�o s� d�ng #",0) 
return 1 
end; 



if (GetMissionV(MS_DOORBEGIN + PosId - 1)  == 0 ) then 
Msg2Player("Ng��i v� tr� v� tr� ph�a tr��c ��ch c�a th�nh �� b� c�ng h�m # kh�ng c�n s� d�ng nghi�t long h��ng xe . "); 
return 1 
end; 

if (GetMissionV(MSBegin + PosId - 1) == 0) then 
ToolIndex = AddNpc(NpcTempl, NpcLevel, SubWorld, GccPos[PosId][1], GccPos[PosId][2], 1, "", 1); 
if (ToolIndex > 0) then 
SetNpcCurCamp(ToolIndex, 2); 
		SetNpcDeathScript(ToolIndex, "\\script\\missions\\citywar_city\\tooldeath.lua");
		SetMissionV(MSBegin + PosId -1, ToolIndex); 
		SetSiegeVoitureParam(ToolIndex, GetMissionV(MS_DOORBEGIN + PosId - 1))
Msg2MSAll(MISSIONID, GetName().." �� ��a li�u m�t m�y nghi�t long h��ng xe , hi�p tr� c�ng th�nh . "); 
WriteLog(GetLoop()..GetName()..":AddCC"..ToolIndex) 
return 0 
end; 
else 
Msg2Player("Ng��i tr��c m�t v� tr� v� tr� ��i �ng nghi�t long h��ng xe �� t�n t�i , t�m th�i kh�ng th� l�n n�a �� ��a . "); 
return 1 
end; 

return 0; 
end; 
