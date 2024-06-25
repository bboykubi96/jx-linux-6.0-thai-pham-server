Include("\\script\\missions\\tongwar\\match\\head.lua")

function InitMission() 
for i = 1, 100 do 
SetMissionV(i , 0) 
end 
for i = 1, 10 do 
SetMissionS(i, "") 
end 


bt_setnormaltask2type() -- script viet hoa By http://tranhba.com  c¸i nµy h÷u dông 
BT_SetView(PL_TOTALPOINT);-- script viet hoa By http://tranhba.com  biÓu hiÖn cïng thèng kª tæng tÝch ph©n 
BT_SetView(PL_KILLPLAYER);-- script viet hoa By http://tranhba.com  giÕt nhµ ch¬i sè l­îng 
BT_SetView(PL_BEKILLED);-- script viet hoa By http://tranhba.com  vèn nhµ ch¬i bÞ giÕt sè lÇn 
BT_SetView(PL_MAXSERIESKILL);-- script viet hoa By http://tranhba.com  chÐm liªn tôc sè lÇn 

-- script viet hoa By http://tranhba.com  BT_SetGameData(GAME_CAMP1, 0) -- script viet hoa By http://tranhba.com  thiÕt trÝ tr­íc mÆt tèng ph­¬ng nh©n sè 
-- script viet hoa By http://tranhba.com  BT_SetGameData(GAME_CAMP2, 0) -- script viet hoa By http://tranhba.com  thiÕt trÝ tr­íc mÆt kim ph­¬ng nh©n sè 

subworldid = SubWorldIdx2ID(SubWorld) 
ClearMapNpc(subworldid); 
ClearMapTrap(subworldid); 
ClearMapObj(subworldid); 


-- script viet hoa By http://tranhba.com  ®¹t ®­îc b¶n ®å t­¬ng ®èi øng ®Ých thiÕt ®Þnh v¨n kiÖn tªn 
local mapfile = GetMapInfoFile(subworldid) 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nªn b¶n ®å cã mÊy khu vùc 
areacount = tonumber(GetIniFileData(mapfile, "MapInfo", "Area_Count")) 
if (areacount <= 1) then 
print("tongwar error! "..subworldid.." areacount <= 1"); 
return 
end 

-- script viet hoa By http://tranhba.com  ngÉu nhiªn tõ tÊt c¶ khu vùc trung rót ra lÊy hai , lµm song ph­¬ng chñ khu vùc 
s_area, j_area = bt_autoselectmaparea(mapfile,areacount) 

SetMissionV(MS_CAMP1AREA, s_area) 
SetMissionV(MS_CAMP2AREA, j_area) 

area_section1 = "Area_"..s_area; 
area_section2 = "Area_"..j_area; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  häc lÊy hai khu vùc ®Ých ®¹i doanh bªn trong ®iÓm täa ®é 
-- script viet hoa By http://tranhba.com  tõ ®¹i doanh ®Õn sau doanh lóc ®Ých täa ®é ®iÓm 
file = GetIniFileData(mapfile, area_section1 , "centertohomepos") 
x,y =bt_getadata(file) 
SetMissionV(MS_HOMEIN_X1, floor(x/32)) 
SetMissionV(MS_HOMEIN_Y1, floor(y/32)) 

file = GetIniFileData(mapfile, area_section2 , "centertohomepos") 
x,y = bt_getadata(file) 
SetMissionV(MS_HOMEIN_X2, floor(x/32)) 
SetMissionV(MS_HOMEIN_Y2, floor(y/32)) 

-- script viet hoa By http://tranhba.com  tõ sau doanh ®Õn lín doanh ®Ých täa ®é ®iÓm 
file = GetIniFileData(mapfile, area_section1 , "hometocenterpos") 
SetMissionS(1, file) 
x,y = bt_getadata(file) 
SetMissionV(MS_HOMEOUT_X1, floor(x/32)) 
SetMissionV(MS_HOMEOUT_Y1, floor(y/32)) 

file = GetIniFileData(mapfile, area_section2 , "hometocenterpos") 
SetMissionS(2,file) 
x,y = bt_getadata(file) 
SetMissionV(MS_HOMEOUT_X2, floor(x/32)) 
SetMissionV(MS_HOMEOUT_Y2, floor(y/32)) 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com  tr­ng bµy Trap ®iÓm 
-- script viet hoa By http://tranhba.com  tr­ng bµy song ph­¬ng sau doanh ®Ých Trap ®iÓm 

hometrapfile = GetIniFileData(mapfile, "Area_"..s_area, "hometrap") 
bt_addtrap(hometrapfile, FILE_HOMETRAP1) 
hometrapfile = GetIniFileData(mapfile, "Area_"..j_area, "hometrap"); 
bt_addtrap(hometrapfile, FILE_HOMETRAP2) 


hometrapfile = GetIniFileData(mapfile, "Area_"..s_area, "centertohometrap") 
bt_addtrap(hometrapfile, FILE_CENTERTOHOMETRAP1) 
hometrapfile = GetIniFileData(mapfile, "Area_"..j_area, "centertohometrap"); 
bt_addtrap(hometrapfile, FILE_CENTERTOHOMETRAP2) 


-- script viet hoa By http://tranhba.com  tr­ng bµy ®èi tho¹i lo¹i h×nh Npc 
-- script viet hoa By http://tranhba.com  qu©n y ®Ých tr­ng bµy 
doctorxy = GetIniFileData(mapfile, "Area_"..s_area, "doctornpc"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(FILE_DOCTOR1, TNPC_DOCTOR1, x * 32 ,y * 32 ,"Quan tiÕp liÖu ( tèng ) "); 


doctorxy = GetIniFileData(mapfile, "Area_"..j_area, "doctornpc"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(FILE_DOCTOR2, TNPC_DOCTOR2, x * 32, y * 32,"Quan tiÕp liÖu ( kim ) "); 


-- script viet hoa By http://tranhba.com  ®Ñp trai kú ®Ých tr­ng bµy 
symbolnpcfile = GetIniFileData(mapfile, "Area_"..s_area, "symbolnpc"); 
bt_adddiagnpc(symbolnpcfile, FILE_SYMBOLNPC, TNPC_SYMBOL1, " "); 
symbolnpcfile = GetIniFileData(mapfile, "Area_"..j_area, "symbolnpc"); 
bt_adddiagnpc(symbolnpcfile, FILE_SYMBOLNPC, TNPC_SYMBOL2, " "); 


-- script viet hoa By http://tranhba.com  tr÷ vËt r­¬ng ®Ých tr­ng bµy 
depositxy = GetIniFileData(mapfile, "Area_"..s_area, "depositobj"); 
x,y = bt_str2xydata(depositxy) 
bt_add_a_diagnpc( FILE_DEPOSIT, TNPC_DEPOSIT, x * 32,y * 32); 



depositxy = GetIniFileData(mapfile, "Area_"..j_area, "depositobj"); 
x,y = bt_str2xydata(depositxy) 
bt_add_a_diagnpc( FILE_DEPOSIT, TNPC_DEPOSIT, x * 32, y * 32); 


StartMissionTimer(MISSIONID, 62, TIMER_2); 
-- script viet hoa By http://tranhba.com  ngÉu nhiªn m« thøc cÇn më ra mçi X phót xóc ph¸t mét lÇn xóc ph¸t khÝ , lÊy sinh ra míi kú 
StartMissionTimer(MISSIONID, 61, TIMER_1); 

SetMissionV(MS_STATE, 1);-- script viet hoa By http://tranhba.com  cho phÐp b¸o danh 
	SetMissionV(MS_KEYNUMBER, random(1000000+tonumber(date("%y%m%d"))))

local str = " vâ l©m ®Ö nhÊt bang ®ang chuÈn bÞ giai ®o¹n . ë h«m nay tham chiÕn danh s¸ch ®Ých bang héi nhanh lªn mét chót ®i minh chñ vâ l©m chç tiÕn vµo chuÈn bÞ khu vùc . " 
AddGlobalNews(str); 

BT_SetMissionName("TrËn chiÕn ®Çu tiªn gióp ") 

end 

function RunMission() 
CreateChannel(GetMissionS(MS_S_CITYNAME_S), 9) 
CreateChannel(GetMissionS(MS_S_CITYNAME_J), 10) 
SetMissionV(MS_STATE,2); 
end; 

function EndMission() 
SetMissionV(MS_STATE,3) 
StopMissionTimer(MISSIONID, 61); 
StopMissionTimer(MISSIONID ,62); 

SetMissionV(MS_STATE, 3) 

GameOver() 
DeleteChannel(GetMissionS(MS_S_CITYNAME_S)) 
DeleteChannel(GetMissionS(MS_S_CITYNAME_J)) 

ClearMapNpc(SubWorldIdx2ID(SubWorld)); 
ClearMapTrap(SubWorldIdx2ID(SubWorld)); 
ClearMapObj(SubWorldIdx2ID(SubWorld)); 

for i = 1, 100 do 
SetMissionV(i , 0); 
end; 
for i = 1, 10 do 
SetMissionS(i, "") 
end 
end; 

function JoinMission(RoleIndex, Camp) 
PlayerIndex = RoleIndex; 
if (Camp ~= 1 and Camp ~= 2) then 
return 
end 
sf_join(Camp) 
end; 

function OnLeave(RoleIndex) 
oldPlayerIndex = PlayerIndex 
PlayerIndex = RoleIndex; 
SetFightState(0) 
SetLogoutRV(1) 
ForbidChangePK(0); 
SetPKFlag(0) 
SetPunish(1) 
ForbidEnmity(0) 
DisabledUseTownP(0) 
BT_LeaveBattle() 
if (GetCurCamp() == 1) then 
LeaveChannel(PlayerIndex, GetMissionS(MS_S_CITYNAME_S)) 
else 
LeaveChannel(PlayerIndex, GetMissionS(MS_S_CITYNAME_J)) 
end 
sf_onplayerleave() 
AddSkillState(661,5,0,0) -- script viet hoa By http://tranhba.com  thanh trõ nhµ ch¬i ®Ých danh hiÖu kü n¨ng sè liÖu 

Title_ActiveTitle(0); 
if (GetMissionV(MS_TIMER1) < (TIMER_2 / TIMER_1)) then 
BT_UpdateMemberCount(); 
end 
SetCurCamp(GetCamp()) 
PlayerIndex = oldPlayerIndex 
end; 
