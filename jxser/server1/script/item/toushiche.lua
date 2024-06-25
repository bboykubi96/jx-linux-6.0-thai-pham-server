Include("\\script\\missions\\citywar_city\\head.lua");
CityWarID = 221;-- script viet hoa By http://tranhba.com  c�ng th�nh chi�n ��ch b�n �� ID 
MSBegin = MS_TSCBEGIN; 
Count = g_nMaxTscPerDoor * g_nDoorCount; 
NpcTempl = 525; 
NpcLevel = 60; 

function main() 
if GetTask(5859)> 0  then
		Say("V�n Ti�u �i R�i H�y SD Th�n H�nh Ph�")
		return 1
	end;
          if GetTask(3920)> 0  then
		Say("Ng��i �ang v�n chuy�n Bao L��ng . Mau di chuy�n ��n �i�m t�p k�t �i.")
		return 1
	end;
-- script viet hoa By http://tranhba.com  nh�n tr��c m�t v� tr� c� ch�ng hay ch�a � c�ng th�nh chi�n ��a �� th��ng 
W,X,Y = GetWorldPos(); 
nSubWorldID = SubWorldIdx2ID(); 

if (nSubWorldID ~= CityWarID) then 
Msg2Player("Ng��i kh�ng th� � n�i n�y ��a ph��ng s� d�ng h�n th�ch r�ch #") 
return 1; 
end 

if (GetCurCamp() ~= 2) then 
Msg2Player("Ch� c� c�ng th�nh nh�t ph��ng m�i c� th� s� d�ng h�n th�ch r�ch #") 
return 1 
end; 

PosId = GetNearstPos(X*32,Y*32, TscPos); 

if (PosId == 0) then 
Say("Ng��i v� tr� ch� � c�ch h�n th�ch r�ch �� ��a v� tr� qu� xa , kh�ng c�ch n�o s� d�ng #",0) 
return 1 
end; 

DoorId = floor( (PosId - 1) / g_nMaxTscPerDoor ) + 1;

if (GetMissionV(MS_DOORBEGIN + DoorId - 1)  ~= 0 and (mod(PosId, 3) == 2) ) then 
Msg2Player("Ng��i v� tr� v� tr� ph�a tr��c ��ch c�a th�nh c�n ch�a c�ng h�m , v� tr� n�y tr��c m�t kh�ng c�ch n�o s� d�ng h�n th�ch r�ch !") 
return 1 
end; 

if (GetMissionV(MSBegin + PosId - 1) == 0) then 
ToolIndex = AddNpc(NpcTempl, NpcLevel, SubWorld, TscPos[PosId][1], TscPos[PosId][2], 1, "", 1); 
if (ToolIndex > 0) then 
SetNpcCurCamp(ToolIndex, 2); 
		SetNpcDeathScript(ToolIndex, "\\script\\missions\\citywar_city\\tooldeath.lua");
		SetMissionV(MSBegin + PosId -1, ToolIndex); 
Msg2MSAll(MISSIONID, GetName().." �� ��a li�u m�t m�y h�n th�ch r�ch , hi�p tr� c�ng th�nh . "); 
SetMangonelParam(ToolIndex, TscPos[PosId][3], TscPos[PosId][4], 200); 
WriteLog(GetLoop()..GetName()..":AddHSL"..ToolIndex) 
return 0 
end; 
else 
Msg2Player("Ng��i tr��c m�t v� tr� v� tr� ��i �ng h�n th�ch r�ch �� t�n t�i , t�m th�i kh�ng th� l�n n�a �� ��a . "); 
return 1 
end; 

return 0; 
end; 
