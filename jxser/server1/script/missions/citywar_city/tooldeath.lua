Include("\\script\\missions\\citywar_city\\head.lua");

function OnDeath(DeathIndex) 
WriteLog(GetLoop().." c�i g� c�ng c� b� h� h�i "..DeathIndex) 
for i = 1, g_nMaxTscPerDoor * g_nDoorCount do 
		if ( DeathIndex == GetMissionV(MS_TSCBEGIN + i  - 1		)) then
			SetMissionV(MS_TSCBEGIN + i - 1, 0)
Msg2MSAll(MISSIONID,"C�ng th�nh d�ng c� tinh luy�n b�o r��ng li�t �� b� th� th�nh ph��ng ph� h� . "); 
WriteLog("C�ng th�nh d�ng c� tinh luy�n b�o r��ng li�t �� b� th� th�nh ph��ng ph� h� ") 
return 
end; 
end; 

for i = 1, g_nMaxGccPerDoor * g_nDoorCount do 
		if ( DeathIndex == GetMissionV(MS_GCCBEGIN + i  - 1		)) then
			SetMissionV(MS_GCCBEGIN + i - 1, 0)
Msg2MSAll(MISSIONID,"C�ng th�nh d�ng c� tinh luy�n b�o r��ng li�t �� b� th� th�nh ph��ng ph� h� . "); 
WriteLog("C�ng th�nh d�ng c� nghi�t long h��ng xe �� b� th� th�nh ph��ng ph� h� . "); 
return 
end; 
end; 

for i = 1, g_nMaxToolCount do 
		if (DeathIndex == GetMissionV(MS_TOOLBEGIN + i - 1 )) then
		SetMissionV(MS_TOOLBEGIN + i - 1, 0)
Msg2MSAll(MISSIONID,"M�t t�n c�ng th�nh binh l�nh anh d�ng hy sinh . "); 
WriteLog("M�t t�n th� th�nh binh l�nh anh d�ng hy sinh . ") 
return 
end; 
end; 
end; 