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
Include("\\script\\missions\\newcitydefence\\head.lua")
function InitMission() 
for i = 1, 100 do -- script viet hoa By http://tranhba.com  m�i b�t ��u h�a thay ��i l��ng 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do -- script viet hoa By http://tranhba.com  m�i b�t ��u h�a thay ��i l��ng 
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
SetMissionV( MS_HOMEDEFENCE, NHOMEDEFENCE ) 
ClearMapNpc(mapid); 
ClearMapTrap(mapid); 
ClearMapObj(mapid); 

-- script viet hoa By http://tranhba.com  ��t ���c b�n �� t��ng ��i �ng ��ch thi�t ��nh v�n ki�n t�n 
local mapfile = GetMapInfoFile(mapid) 
local citysection = "MapInfo" 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  h�c l�y hai khu v�c ��ch ��i doanh b�n trong �i�m t�a �� 

-- script viet hoa By http://tranhba.com  d� ngo�i ��n l�n doanh ��ch t�a �� �i�m 
homeoutxy = GetIniFileData(mapfile, citysection , "homeout1") 
x,y = bt_str2xydata(homeoutxy) 
SetMissionV(MS_HOMEOUT_X1, x) -- script viet hoa By http://tranhba.com  b�i v� t�a �� ��i th�nh 4 v� cho n�n c�ng kh�ng c�n tr� l�y 32 
SetMissionV(MS_HOMEOUT_Y1, y) 

homeoutxy = GetIniFileData(mapfile, citysection , "homeout2") 
x,y = bt_str2xydata(homeoutxy) 
SetMissionV(MS_HOMEOUT_X2, x) 
SetMissionV(MS_HOMEOUT_Y2, y) 

-- script viet hoa By http://tranhba.com  ��i doanh ��n d� ngo�i ��ch t�a �� �i�m 
centerposxy = GetIniFileData(mapfile, citysection , "centerpos1") 
x,y = bt_str2xydata(centerposxy) 
SetMissionV(MS_CENTER_X1, x) 
SetMissionV(MS_CENTER_Y1, y) 

centerposxy = GetIniFileData(mapfile, citysection , "centerpos2") 
x,y = bt_str2xydata(centerposxy) 
SetMissionV(MS_CENTER_X2, x) 
SetMissionV(MS_CENTER_Y2, y) 

local guaifile = GetIniFileData(mapfile, citysection , "guai1") 
SetMissionS( MS_S_GUAI1, guaifile ) 

guaifile = GetIniFileData(mapfile, citysection , "guai2") 
SetMissionS( MS_S_GUAI2, guaifile ) 

guaifile = GetIniFileData(mapfile, citysection , "guai3") 
SetMissionS( MS_S_GUAI3, guaifile ) 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com  tr�ng b�y Trap �i�m 
-- script viet hoa By http://tranhba.com  ��i doanh ��n d� ngo�i ��ch trap �i�m -- script viet hoa By http://tranhba.com  ch� ch�t n�i n�y ��i ch�n v�n 
centertrapfile = GetIniFileData(mapfile, citysection, "home2centertrap1"); 
bt_addtrap(centertrapfile, FILE_CENTERTRAP1) 
centertrapfile = GetIniFileData(mapfile, citysection, "home2centertrap2"); 
bt_addtrap(centertrapfile, FILE_CENTERTRAP2) 

-- script viet hoa By http://tranhba.com  tr�ng b�y � tr�n ���ng ti�n h�nh ��y t�i ��ch trap# 
cd_buildtrapsonroad(); 


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

-- script viet hoa By http://tranhba.com  qu�n y ��ch tr�ng b�y -- script viet hoa By http://tranhba.com  ch� ch�t ��i qu�n y ch�n c�a v�n # ch� � qu�n y ��ch ti�u th� bi�n s� # 
doctorxy = GetIniFileData(mapfile, citysection, "doctornpc1"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(file_doctor, tnpc_doctor, x * 32 ,y * 32 , campname.." quan ti�p li�u "); 

doctorxy = GetIniFileData(mapfile, citysection, "doctornpc2"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(file_doctor, tnpc_doctor, x * 32 ,y * 32 , campname.." quan ti�p li�u "); 



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
SetMissionV( MS_MAXCOUNTNPC_1, FIRE_1RSTNPC_COUNT ) 
	SetMissionV( MS_MAXCOUNTNPC_1 + 1, FIRE_2CNDNPC_COUNT )
	SetMissionV( MS_MAXCOUNTNPC_1 + 2, FIRE_3RDNPC_COUNT )
	SetMissionV( MS_MAXCOUNTNPC_1 + 3, FIRE_4THNPC_COUNT )
	SetMissionV( MS_MAXCOUNTNPC_1 + 4, FIRE_5THNPC_COUNT )

if (citycamp == 1) then 
CreateChannel(cd_name, 9) 
else 
CreateChannel(cd_name, 10) 
end 
RestMin, RestSec = GetMinAndSec(1800); 
local szMsg = " v� qu�c gi� l�a li�n th�nh "..cd_name.." ho�t ��ng b�t ��u ghi danh , "..tbDEFENCE_ANNOUNCE[citycamp].."# tham chi�n �i�u ki�n # c�p b�c kh�ng thua k�m "..CD_LEVEL_LIMIT.." c�p " 
AddGlobalNews(szMsg) 
WriteLog("V� qu�c gi� l�a li�n th�nh "..cd_name.."\t ghi danh giai �o�n \t b�n �� d\t"..mapid.."\t th�i gian \t"..date("%H:%M")) 
-- script viet hoa By http://tranhba.com  BT_SetGameData(2, MISSIONID) 
-- script viet hoa By http://tranhba.com  BT_SetType2Task(PL_TOTALPOINT, TSKID_PLAYER_ZHANGONG); 
-- script viet hoa By http://tranhba.com  BT_SetView(PL_TOTALPOINT);-- script viet hoa By http://tranhba.com  bi�u hi�n c�ng th�ng k� t�ng t�ch ph�n 
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
-- script viet hoa By http://tranhba.com  cd_AddSkillTitle() 
-- script viet hoa By http://tranhba.com  BT_BroadView(); 
-- script viet hoa By http://tranhba.com  BT_BroadAllLadder(); 
-- script viet hoa By http://tranhba.com  BT_BroadGameData(); 
-- script viet hoa By http://tranhba.com  BT_SortLadder(); 
-- script viet hoa By http://tranhba.com  BT_BroadSelf() 
PlayerIndex = oldPlayerIndex; 
end; 

function EndMission() 
StopMissionTimer(MISSIONID, SMALLTIMERID); 
StopMissionTimer(MISSIONID ,TOTALTIMERID); 

GameOver(); 

DeleteChannel(GetMissionS(MS_S_CD_NAME)) 

for i = 1, 100 do 
SetMissionV(i , 0); 
end; 
for i = 1, 10 do 
SetMissionS(i, "") 
end 
local mapid = SubWorldIdx2ID(SubWorld) 
ClearMapNpc(mapid); 
ClearMapTrap(mapid); 
ClearMapObj(mapid); 
end 

function OnLeave(RoleIndex) 
local oldPlayerIndex = PlayerIndex 
PlayerIndex = RoleIndex; 
if (GetMissionV(MS_STATE) == 2) then 
cd_calc_sumexp(); 
end; 
LeaveTeam(); 
SetCurCamp(GetCamp()) 
DisableTeamChangeCamp(0) 
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
-- script viet hoa By http://tranhba.com  AddSkillState(440, 1, 0, 0, 1); 
-- script viet hoa By http://tranhba.com  AddSkillState(RANK_SKILL,5,0,0) -- script viet hoa By http://tranhba.com  thanh tr� nh� ch�i ��ch danh hi�u k� n�ng s� li�u 
-- script viet hoa By http://tranhba.com  Title_ActiveTitle(0); -- script viet hoa By http://tranhba.com  thanh tr� danh hi�u 
-- script viet hoa By http://tranhba.com  BT_LeaveBattle() 
PlayerIndex = oldPlayerIndex 
end 
