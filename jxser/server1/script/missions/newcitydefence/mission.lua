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
Include("\\script\\missions\\newcitydefence\\head.lua")
function InitMission() 
for i = 1, 100 do -- script viet hoa By http://tranhba.com  míi b¾t ®Çu hãa thay ®æi l­îng 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do -- script viet hoa By http://tranhba.com  míi b¾t ®Çu hãa thay ®æi l­îng 
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
SetMissionV( MS_HOMEDEFENCE, NHOMEDEFENCE ) 
ClearMapNpc(mapid); 
ClearMapTrap(mapid); 
ClearMapObj(mapid); 

-- script viet hoa By http://tranhba.com  ®¹t ®­îc b¶n ®å t­¬ng ®èi øng ®Ých thiÕt ®Þnh v¨n kiÖn tªn 
local mapfile = GetMapInfoFile(mapid) 
local citysection = "MapInfo" 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  häc lÊy hai khu vùc ®Ých ®¹i doanh bªn trong ®iÓm täa ®é 

-- script viet hoa By http://tranhba.com  d· ngo¹i ®Õn lín doanh ®Ých täa ®é ®iÓm 
homeoutxy = GetIniFileData(mapfile, citysection , "homeout1") 
x,y = bt_str2xydata(homeoutxy) 
SetMissionV(MS_HOMEOUT_X1, x) -- script viet hoa By http://tranhba.com  bëi v× täa ®é ®æi thµnh 4 vÞ cho nªn còng kh«ng cÇn trõ lÊy 32 
SetMissionV(MS_HOMEOUT_Y1, y) 

homeoutxy = GetIniFileData(mapfile, citysection , "homeout2") 
x,y = bt_str2xydata(homeoutxy) 
SetMissionV(MS_HOMEOUT_X2, x) 
SetMissionV(MS_HOMEOUT_Y2, y) 

-- script viet hoa By http://tranhba.com  ®¹i doanh ®Õn d· ngo¹i ®Ých täa ®é ®iÓm 
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

-- script viet hoa By http://tranhba.com  tr­ng bµy Trap ®iÓm 
-- script viet hoa By http://tranhba.com  ®¹i doanh ®Õn d· ngo¹i ®Ých trap ®iÓm -- script viet hoa By http://tranhba.com  chê chót n¬i nµy ®æi ch©n vèn 
centertrapfile = GetIniFileData(mapfile, citysection, "home2centertrap1"); 
bt_addtrap(centertrapfile, FILE_CENTERTRAP1) 
centertrapfile = GetIniFileData(mapfile, citysection, "home2centertrap2"); 
bt_addtrap(centertrapfile, FILE_CENTERTRAP2) 

-- script viet hoa By http://tranhba.com  tr­ng bµy ë trªn ®­êng tiÕn hµnh ®Èy tíi ®Ých trap# 
cd_buildtrapsonroad(); 


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

-- script viet hoa By http://tranhba.com  qu©n y ®Ých tr­ng bµy -- script viet hoa By http://tranhba.com  chê chót ®æi qu©n y ch©n cña vèn # chó ý qu©n y ®Ých tiªu thô biªn sè # 
doctorxy = GetIniFileData(mapfile, citysection, "doctornpc1"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(file_doctor, tnpc_doctor, x * 32 ,y * 32 , campname.." quan tiÕp liÖu "); 

doctorxy = GetIniFileData(mapfile, citysection, "doctornpc2"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(file_doctor, tnpc_doctor, x * 32 ,y * 32 , campname.." quan tiÕp liÖu "); 



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
local szMsg = " vÖ quèc giã löa liªn thµnh "..cd_name.." ho¹t ®éng b¾t ®Çu ghi danh , "..tbDEFENCE_ANNOUNCE[citycamp].."# tham chiÕn ®iÒu kiÖn # cÊp bËc kh«ng thua kÐm "..CD_LEVEL_LIMIT.." cÊp " 
AddGlobalNews(szMsg) 
WriteLog("VÖ quèc giã löa liªn thµnh "..cd_name.."\t ghi danh giai ®o¹n \t b¶n ®å d\t"..mapid.."\t thêi gian \t"..date("%H:%M")) 
-- script viet hoa By http://tranhba.com  BT_SetGameData(2, MISSIONID) 
-- script viet hoa By http://tranhba.com  BT_SetType2Task(PL_TOTALPOINT, TSKID_PLAYER_ZHANGONG); 
-- script viet hoa By http://tranhba.com  BT_SetView(PL_TOTALPOINT);-- script viet hoa By http://tranhba.com  biÓu hiÖn cïng thèng kª tæng tÝch ph©n 
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
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nhµ ch¬i r¬i tuyÕn còng sÏ tõ Mission trung OnLeave , v× vËy kh«ng thÓ ë chç nµy ®iÒu dông SetLogoutRV(0) , nhÊt ®Þnh ph¶i ë ®em nhµ ch¬i NewWorld ra Mission b¶n ®å ®Ých ®Þa ph­¬ng ®iÒu dông Fanghao_Wu 2006-3-21 
ForbidChangePK(0); 
SetPKFlag(0); 
RestoreOwnFeature(); 
SetTaskTemp(200,0); 
SetPunish(0); 
SetFightState(0); 
DisabledUseTownP(0); 
SetDeathScript("") 
-- script viet hoa By http://tranhba.com  AddSkillState(440, 1, 0, 0, 1); 
-- script viet hoa By http://tranhba.com  AddSkillState(RANK_SKILL,5,0,0) -- script viet hoa By http://tranhba.com  thanh trõ nhµ ch¬i ®Ých danh hiÖu kü n¨ng sè liÖu 
-- script viet hoa By http://tranhba.com  Title_ActiveTitle(0); -- script viet hoa By http://tranhba.com  thanh trõ danh hiÖu 
-- script viet hoa By http://tranhba.com  BT_LeaveBattle() 
PlayerIndex = oldPlayerIndex 
end 
