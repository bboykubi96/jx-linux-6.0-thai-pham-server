-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: mission.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cu�i tu�n ho�t ��ng # v� qu�c chi�n tranh chi gi� l�a li�n th�nh 
-- script viet hoa By http://tranhba.com  ch�c n�ng 1#InitMission m�i b�t ��u h�a Mission 
-- script viet hoa By http://tranhba.com  ch�c n�ng 2#RunMission kh�i ��ng Mission 
-- script viet hoa By http://tranhba.com  ch�c n�ng 3#EndMission k�t th�c Mission 
-- script viet hoa By http://tranhba.com  ch�c n�ng 4#OnLeave r�i �i Mission l�c �i�u d�ng 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\citydefence\\head.lua")
function InitMission() 
for i = 1, 100 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

local mapid = SubWorldIdx2ID(SubWorld) 
local citycamp = 0 
if ( mapid == tbDEFENCE_MAPID[1] ) then 
citycamp = 1; 
cd_name = " t�ng ph��ng th� th�nh " 
elseif ( mapid == tbDEFENCE_MAPID[2] ) then 
citycamp = 2; 
cd_name = " kim ph��ng th� th�nh " 
else 
print("defencecity open map error mpaid == "..mapid) 
return 
end 

SetMissionV( MS_CITYCAMP, citycamp ) 
SetMissionV( MS_MISSIONID, MISSIONID ) 
SetMissionV( MS_RANDKEY, random(1000000) ) 
SetMissionS( MS_S_CD_NAME, cd_name) 

ClearMapNpc(mapid); 
-- script viet hoa By http://tranhba.com  ClearMapTrap(mapid); 
ClearMapObj(mapid); 

-- script viet hoa By http://tranhba.com  ��t ���c b�n �� t��ng ��i �ng ��ch thi�t ��nh v�n ki�n t�n 
local mapfile = GetMapInfoFile(mapid) 
local citysection = "MapInfo" 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  h�c l�y hai khu v�c ��ch ��i doanh b�n trong �i�m t�a �� 

-- script viet hoa By http://tranhba.com  d� ngo�i ��n l�n doanh ��ch t�a �� �i�m 
homeoutxy = GetIniFileData(mapfile, citysection , "homeout1") 

x,y = bt_str2xydata(homeoutxy) 
SetMissionV(MS_HOMEOUT_X1, floor(x/32)) 
SetMissionV(MS_HOMEOUT_Y1, floor(y/32)) 

homeoutxy = GetIniFileData(mapfile, citysection , "homeout2") 
x,y = bt_str2xydata(homeoutxy) 
SetMissionV(MS_HOMEOUT_X2, floor(x/32)) 
SetMissionV(MS_HOMEOUT_Y2, floor(y/32)) 

homeoutxy = GetIniFileData(mapfile, citysection , "homeout3") 
x,y = bt_str2xydata(homeoutxy) 
SetMissionV(MS_HOMEOUT_X3, floor(x/32)) 
SetMissionV(MS_HOMEOUT_Y3, floor(y/32)) 

-- script viet hoa By http://tranhba.com  ��i doanh ��n d� ngo�i ��ch t�a �� �i�m 
centerposxy = GetIniFileData(mapfile, citysection , "centerpos1") 
x,y = bt_str2xydata(centerposxy) 
SetMissionV(MS_CENTER_X1, floor(x/32)) 
SetMissionV(MS_CENTER_Y1, floor(y/32)) 

centerposxy = GetIniFileData(mapfile, citysection , "centerpos2") 
x,y = bt_str2xydata(centerposxy) 
SetMissionV(MS_CENTER_X2, floor(x/32)) 
SetMissionV(MS_CENTER_Y2, floor(y/32)) 

centerposxy = GetIniFileData(mapfile, citysection , "centerpos3") 
x,y = bt_str2xydata(centerposxy) 
SetMissionV(MS_CENTER_X3, floor(x/32)) 
SetMissionV(MS_CENTER_Y3, floor(y/32)) 

commonnpcfile = GetIniFileData(mapfile, citysection , "commonnpc") 
SetMissionS( MS_S_CMNPCFILE, commonnpcfile ) 

juniorbossfile = GetIniFileData(mapfile, citysection , "juniorboss") 
SetMissionS( MS_S_JRNPCFILE, juniorbossfile ) 

seniorbossfile = GetIniFileData(mapfile, citysection , "seniorboss") 
SetMissionS( MS_S_SRNPCFILE, seniorbossfile ) 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com  tr�ng b�y Trap �i�m 
-- script viet hoa By http://tranhba.com  ��i doanh ��n d� ngo�i ��ch trap �i�m 
centertrapfile = GetIniFileData(mapfile, citysection, "home2centertrap1"); 
bt_addtrap(centertrapfile, FILE_CENTERTRAP1) 
centertrapfile = GetIniFileData(mapfile, citysection, "home2centertrap2"); 
bt_addtrap(centertrapfile, FILE_CENTERTRAP2) 
centertrapfile = GetIniFileData(mapfile, citysection, "home2centertrap3"); 
bt_addtrap(centertrapfile, FILE_CENTERTRAP3) 


-- script viet hoa By http://tranhba.com  tr�ng b�y ��i tho�i lo�i h�nh Npc 
if (citycamp == 1) then 
campname = " t�ng qu�n "; 
tnpc_doctor = TNPC_DOCTOR1 
file_doctor = FILE_DOCTOR1 
tnpc_symbol = TNPC_SYMBOL1 

else 
campname = " kim qu�n "; 
tnpc_doctor = TNPC_DOCTOR2 
file_doctor = FILE_DOCTOR2 
tnpc_symbol = TNPC_SYMBOL2 

end 

-- script viet hoa By http://tranhba.com  qu�n y ��ch tr�ng b�y 
doctorxy = GetIniFileData(mapfile, citysection, "doctornpc1"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(file_doctor, tnpc_doctor, x * 32 ,y * 32 , campname.." quan ti�p li�u "); 

doctorxy = GetIniFileData(mapfile, citysection, "doctornpc2"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(file_doctor, tnpc_doctor, x * 32 ,y * 32 , campname.." quan ti�p li�u "); 


-- script viet hoa By http://tranhba.com  ��p trai k� ��ch tr�ng b�y 
-- script viet hoa By http://tranhba.com  symbolnpcfile = GetIniFileData(mapfile, citysection, "symbolnpc"); 
-- script viet hoa By http://tranhba.com  bt_adddiagnpc(symbolnpcfile, FILE_SYMBOLNPC, tnpc_symbol, ""); 


-- script viet hoa By http://tranhba.com  tr� v�t r��ng ��ch tr�ng b�y 
depositxy = GetIniFileData(mapfile, citysection, "depositobj1"); 
x,y = bt_str2xydata(depositxy) 
bt_add_a_diagnpc( FILE_BOX, TNPC_DEPOSIT, x * 32,y * 32); 

depositxy = GetIniFileData(mapfile, citysection, "depositobj2"); 
x,y = bt_str2xydata(depositxy) 
bt_add_a_diagnpc( FILE_BOX, TNPC_DEPOSIT, x * 32,y * 32); 


-- script viet hoa By http://tranhba.com  phu xe ��ch tr�ng b�y 
chefuxy = GetIniFileData(mapfile, citysection, "chefu"); 
x,y = bt_str2xydata(chefuxy) 
bt_add_a_diagnpc( FILE_CD_TRANSER, TNPC_CHEFU, x * 32,y * 32, campname.." phu xe "); 


-- script viet hoa By http://tranhba.com  kh�i ��ng ��nh l�c kh� 
StartMissionTimer(MISSIONID, SMALLTIMERID, SMALL_TIME); 
StartMissionTimer(MISSIONID, TOTALTIMERID, TOTAL_TIME); 

SetMissionV(MS_STATE,1);-- script viet hoa By http://tranhba.com  cho ph�p b�o danh 
SetMissionV( MS_1RSTNPC_TCNT, FIRE_1RSTNPC_COUNT ) 
	SetMissionV( MS_1RSTNPC_TCNT + 1, FIRE_2CNDNPC_COUNT )
	SetMissionV( MS_1RSTNPC_TCNT + 2, FIRE_3RDNPC_COUNT )
	SetMissionV( MS_1RSTNPC_TCNT + 3, FIRE_4THNPC_COUNT )
	SetMissionV( MS_1RSTNPC_TCNT + 4, FIRE_5THNPC_COUNT )

if (citycamp == 1) then 
CreateChannel(cd_name, 9) 
else 
CreateChannel(cd_name, 10) 
end 
RestMin, RestSec = GetMinAndSec(1800); 
local szMsg = " v� qu�c gi� l�a li�n th�nh "..cd_name.." ho�t ��ng b�t ��u ti�p nh�n ghi danh , "..tbDEFENCE_ANNOUNCE[citycamp].." tham chi�n �i�u ki�n : c�p b�c kh�ng thua k�m "..CD_LEVEL_LIMIT.." c�p " 
AddGlobalNews(szMsg) 
WriteLog("V� qu�c gi� l�a li�n th�nh "..cd_name.."\t ti�n v�o ghi danh giai �o�n \t b�n �� d\t"..mapid.."\t th�i gian \t"..date("%H:%M")) 

end 

function RunMission() 
SetMissionV( MS_STATE, 2 ) 
end 

function JoinMission(RoleIndex, Camp) 
local oldPlayerIndex = PlayerIndex; 
PlayerIndex = RoleIndex; 
if (Camp ~= 1 and Camp ~= 2) then 
return 
end 
cd_join(Camp); 
PlayerIndex = oldPlayerIndex; 
end; 

function EndMission() 
StopMissionTimer(MISSIONID, 21); 
StopMissionTimer(MISSIONID ,22); 

GameOver(); 

DeleteChannel(GetMissionS(MS_S_CD_NAME)) 

for i = 1, 100 do 
SetMissionV(i , 0); 
end; 
for i = 1, 10 do 
SetMissionS(i, "") 
end 
end 

function OnLeave(RoleIndex) 
local oldPlayerIndex = PlayerIndex 
PlayerIndex = RoleIndex 
LeaveTeam(); 
SetCurCamp(GetCamp()) 
LeaveChannel(PlayerIndex, GetMissionS(MS_S_CD_NAME)) 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nh� ch�i r�i tuy�n c�ng s� t� Mission trung OnLeave , v� v�y kh�ng th� � ch� n�y �i�u d�ng SetLogoutRV(0) , nh�t ��nh ph�i � �em nh� ch�i NewWorld ra Mission b�n �� ��ch ��a ph��ng �i�u d�ng Fanghao_Wu 2006-3-21 
ForbidChangePK(0); 
SetPKFlag(0); 
RestoreOwnFeature(); 
SetTaskTemp(200,0); 
SetPunish(0); 
SetFightState(0); 
DisabledUseTownP(0); 
SetDeathScript("") 
PlayerIndex = oldPlayerIndex 
end
