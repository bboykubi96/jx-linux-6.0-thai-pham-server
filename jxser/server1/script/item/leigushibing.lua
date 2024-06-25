Include("\\script\\missions\\citywar_city\\head.lua");
CityWarID = 221;-- script viet hoa By http://tranhba.com  c�ng th�nh chi�n ��ch b�n �� ID 
MSBegin = MS_TOOLBEGIN; 
Count = g_nMaxToolCount; 
NpcTempl = 526; 
NpcLevel = 60; 

function main() 

-- script viet hoa By http://tranhba.com  nh�n tr��c m�t v� tr� c� ch�ng hay ch�a � c�ng th�nh chi�n ��a �� th��ng 
W,X,Y = GetWorldPos(); 
nSubWorldID = SubWorldIdx2ID(SubWorld); 

if (nSubWorldID ~= CityWarID) then 
Msg2Player("Ng��i kh�ng th� � n�i n�y ��a ph��ng s� d�ng ngoan c� binh ph� #") 
return 1; 
end 

if (GetCurCamp() ~= 1) then 
Msg2Player("Ch� c� th� th�nh nh�t ph��ng m�i c� th� s� d�ng ngoan c� binh ph� #") 
return 1; 
end 

bAdd = 0 
for i = 1, Count do 
	if (GetMissionV(MSBegin + i - 1) == 0) then 
ToolIndex = AddNpc(NpcTempl, NpcLevel, SubWorld, X * 32, Y * 32, 1, GetName().." l�nh ��nh thu� ", 1); 
if (ToolIndex > 0) then 
SetNpcCurCamp(ToolIndex, 1); 
			SetNpcDeathScript(ToolIndex, "\\script\\missions\\citywar_city\\tooldeath.lua");
			SetMissionV(MSBegin + i - 1, ToolIndex); 
Msg2MSAll(MISSIONID, GetName().." sai ph�i li�u m�t t�n ��nh tr�ng v� s� , gia nh�p chi�n ��u #"); 
WriteLog(GetLoop()..GetName().." sai ph�i li�u m�t t�n ��nh tr�ng v� s� , gia nh�p chi�n ��u #"); 
WriteLog("T�ng l�n m�t leigu"..ToolIndex); 
bAdd = 1 
return 0 
end; 
end; 
end 

if (bAdd == 0) then 
Msg2Player("Tr��c m�t ph�i t�i ��ch binh l�nh �� c�u , t�m th�i kh�ng c�n ph�i ") 
return 1 
end; 

return 0; 
end; 
