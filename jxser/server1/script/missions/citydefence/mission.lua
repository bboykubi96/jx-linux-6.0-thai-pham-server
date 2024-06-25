-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: mission.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cuèi tuÇn ho¹t ®éng # vÖ quèc chiÕn tranh chi giã löa liªn thµnh 
-- script viet hoa By http://tranhba.com  chøc n¨ng 1#InitMission míi b¾t ®Çu hãa Mission 
-- script viet hoa By http://tranhba.com  chøc n¨ng 2#RunMission khëi ®éng Mission 
-- script viet hoa By http://tranhba.com  chøc n¨ng 3#EndMission kÕt thóc Mission 
-- script viet hoa By http://tranhba.com  chøc n¨ng 4#OnLeave rêi ®i Mission lóc ®iÒu dông 
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
cd_name = " tèng ph­¬ng thñ thµnh " 
elseif ( mapid == tbDEFENCE_MAPID[2] ) then 
citycamp = 2; 
cd_name = " kim ph­¬ng thñ thµnh " 
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

-- script viet hoa By http://tranhba.com  ®¹t ®­îc b¶n ®å t­¬ng ®èi øng ®Ých thiÕt ®Þnh v¨n kiÖn tªn 
local mapfile = GetMapInfoFile(mapid) 
local citysection = "MapInfo" 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  häc lÊy hai khu vùc ®Ých ®¹i doanh bªn trong ®iÓm täa ®é 

-- script viet hoa By http://tranhba.com  d· ngo¹i ®Õn lín doanh ®Ých täa ®é ®iÓm 
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

-- script viet hoa By http://tranhba.com  ®¹i doanh ®Õn d· ngo¹i ®Ých täa ®é ®iÓm 
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

-- script viet hoa By http://tranhba.com  tr­ng bµy Trap ®iÓm 
-- script viet hoa By http://tranhba.com  ®¹i doanh ®Õn d· ngo¹i ®Ých trap ®iÓm 
centertrapfile = GetIniFileData(mapfile, citysection, "home2centertrap1"); 
bt_addtrap(centertrapfile, FILE_CENTERTRAP1) 
centertrapfile = GetIniFileData(mapfile, citysection, "home2centertrap2"); 
bt_addtrap(centertrapfile, FILE_CENTERTRAP2) 
centertrapfile = GetIniFileData(mapfile, citysection, "home2centertrap3"); 
bt_addtrap(centertrapfile, FILE_CENTERTRAP3) 


-- script viet hoa By http://tranhba.com  tr­ng bµy ®èi tho¹i lo¹i h×nh Npc 
if (citycamp == 1) then 
campname = " tèng qu©n "; 
tnpc_doctor = TNPC_DOCTOR1 
file_doctor = FILE_DOCTOR1 
tnpc_symbol = TNPC_SYMBOL1 

else 
campname = " kim qu©n "; 
tnpc_doctor = TNPC_DOCTOR2 
file_doctor = FILE_DOCTOR2 
tnpc_symbol = TNPC_SYMBOL2 

end 

-- script viet hoa By http://tranhba.com  qu©n y ®Ých tr­ng bµy 
doctorxy = GetIniFileData(mapfile, citysection, "doctornpc1"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(file_doctor, tnpc_doctor, x * 32 ,y * 32 , campname.." quan tiÕp liÖu "); 

doctorxy = GetIniFileData(mapfile, citysection, "doctornpc2"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(file_doctor, tnpc_doctor, x * 32 ,y * 32 , campname.." quan tiÕp liÖu "); 


-- script viet hoa By http://tranhba.com  ®Ñp trai kú ®Ých tr­ng bµy 
-- script viet hoa By http://tranhba.com  symbolnpcfile = GetIniFileData(mapfile, citysection, "symbolnpc"); 
-- script viet hoa By http://tranhba.com  bt_adddiagnpc(symbolnpcfile, FILE_SYMBOLNPC, tnpc_symbol, ""); 


-- script viet hoa By http://tranhba.com  tr÷ vËt r­¬ng ®Ých tr­ng bµy 
depositxy = GetIniFileData(mapfile, citysection, "depositobj1"); 
x,y = bt_str2xydata(depositxy) 
bt_add_a_diagnpc( FILE_BOX, TNPC_DEPOSIT, x * 32,y * 32); 

depositxy = GetIniFileData(mapfile, citysection, "depositobj2"); 
x,y = bt_str2xydata(depositxy) 
bt_add_a_diagnpc( FILE_BOX, TNPC_DEPOSIT, x * 32,y * 32); 


-- script viet hoa By http://tranhba.com  phu xe ®Ých tr­ng bµy 
chefuxy = GetIniFileData(mapfile, citysection, "chefu"); 
x,y = bt_str2xydata(chefuxy) 
bt_add_a_diagnpc( FILE_CD_TRANSER, TNPC_CHEFU, x * 32,y * 32, campname.." phu xe "); 


-- script viet hoa By http://tranhba.com  khëi ®éng ®Þnh lóc khÝ 
StartMissionTimer(MISSIONID, SMALLTIMERID, SMALL_TIME); 
StartMissionTimer(MISSIONID, TOTALTIMERID, TOTAL_TIME); 

SetMissionV(MS_STATE,1);-- script viet hoa By http://tranhba.com  cho phÐp b¸o danh 
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
local szMsg = " vÖ quèc giã löa liªn thµnh "..cd_name.." ho¹t ®éng b¾t ®Çu tiÕp nhËn ghi danh , "..tbDEFENCE_ANNOUNCE[citycamp].." tham chiÕn ®iÒu kiÖn : cÊp bËc kh«ng thua kÐm "..CD_LEVEL_LIMIT.." cÊp " 
AddGlobalNews(szMsg) 
WriteLog("VÖ quèc giã löa liªn thµnh "..cd_name.."\t tiÕn vµo ghi danh giai ®o¹n \t b¶n ®å d\t"..mapid.."\t thêi gian \t"..date("%H:%M")) 

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
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nhµ ch¬i r¬i tuyÕn còng sÏ tõ Mission trung OnLeave , v× vËy kh«ng thÓ ë chç nµy ®iÒu dông SetLogoutRV(0) , nhÊt ®Þnh ph¶i ë ®em nhµ ch¬i NewWorld ra Mission b¶n ®å ®Ých ®Þa ph­¬ng ®iÒu dông Fanghao_Wu 2006-3-21 
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
