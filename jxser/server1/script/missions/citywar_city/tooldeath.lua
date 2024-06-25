Include("\\script\\missions\\citywar_city\\head.lua");

function OnDeath(DeathIndex) 
WriteLog(GetLoop().." c¸i g× c«ng cô bÞ h­ h¹i "..DeathIndex) 
for i = 1, g_nMaxTscPerDoor * g_nDoorCount do 
		if ( DeathIndex == GetMissionV(MS_TSCBEGIN + i  - 1		)) then
			SetMissionV(MS_TSCBEGIN + i - 1, 0)
Msg2MSAll(MISSIONID,"C«ng thµnh dông cô tinh luyÖn b¶o r­¬ng liÖt ®· bÞ thñ thµnh ph­¬ng ph¸ h­ . "); 
WriteLog("C«ng thµnh dông cô tinh luyÖn b¶o r­¬ng liÖt ®· bÞ thñ thµnh ph­¬ng ph¸ h­ ") 
return 
end; 
end; 

for i = 1, g_nMaxGccPerDoor * g_nDoorCount do 
		if ( DeathIndex == GetMissionV(MS_GCCBEGIN + i  - 1		)) then
			SetMissionV(MS_GCCBEGIN + i - 1, 0)
Msg2MSAll(MISSIONID,"C«ng thµnh dông cô tinh luyÖn b¶o r­¬ng liÖt ®· bÞ thñ thµnh ph­¬ng ph¸ h­ . "); 
WriteLog("C«ng thµnh dông cô nghiÖt long h­íng xe ®· bÞ thñ thµnh ph­¬ng ph¸ h­ . "); 
return 
end; 
end; 

for i = 1, g_nMaxToolCount do 
		if (DeathIndex == GetMissionV(MS_TOOLBEGIN + i - 1 )) then
		SetMissionV(MS_TOOLBEGIN + i - 1, 0)
Msg2MSAll(MISSIONID,"Mét tªn c«ng thµnh binh lÝnh anh dòng hy sinh . "); 
WriteLog("Mét tªn thñ thµnh binh lÝnh anh dòng hy sinh . ") 
return 
end; 
end; 
end; 