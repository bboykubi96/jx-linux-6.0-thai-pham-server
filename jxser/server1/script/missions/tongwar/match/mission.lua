Include("\\script\\missions\\tongwar\\match\\head.lua")

function InitMission() 
for i = 1, 100 do 
SetMissionV(i , 0) 
end 
for i = 1, 10 do 
SetMissionS(i, "") 
end 


bt_setnormaltask2type() -- script viet hoa By http://tranhba.com  c�i n�y h�u d�ng 
BT_SetView(PL_TOTALPOINT);-- script viet hoa By http://tranhba.com  bi�u hi�n c�ng th�ng k� t�ng t�ch ph�n 
BT_SetView(PL_KILLPLAYER);-- script viet hoa By http://tranhba.com  gi�t nh� ch�i s� l��ng 
BT_SetView(PL_BEKILLED);-- script viet hoa By http://tranhba.com  v�n nh� ch�i b� gi�t s� l�n 
BT_SetView(PL_MAXSERIESKILL);-- script viet hoa By http://tranhba.com  ch�m li�n t�c s� l�n 

-- script viet hoa By http://tranhba.com  BT_SetGameData(GAME_CAMP1, 0) -- script viet hoa By http://tranhba.com  thi�t tr� tr��c m�t t�ng ph��ng nh�n s� 
-- script viet hoa By http://tranhba.com  BT_SetGameData(GAME_CAMP2, 0) -- script viet hoa By http://tranhba.com  thi�t tr� tr��c m�t kim ph��ng nh�n s� 

subworldid = SubWorldIdx2ID(SubWorld) 
ClearMapNpc(subworldid); 
ClearMapTrap(subworldid); 
ClearMapObj(subworldid); 


-- script viet hoa By http://tranhba.com  ��t ���c b�n �� t��ng ��i �ng ��ch thi�t ��nh v�n ki�n t�n 
local mapfile = GetMapInfoFile(subworldid) 

-- script viet hoa By http://tranhba.com  l�y ���c n�n b�n �� c� m�y khu v�c 
areacount = tonumber(GetIniFileData(mapfile, "MapInfo", "Area_Count")) 
if (areacount <= 1) then 
print("tongwar error! "..subworldid.." areacount <= 1"); 
return 
end 

-- script viet hoa By http://tranhba.com  ng�u nhi�n t� t�t c� khu v�c trung r�t ra l�y hai , l�m song ph��ng ch� khu v�c 
s_area, j_area = bt_autoselectmaparea(mapfile,areacount) 

SetMissionV(MS_CAMP1AREA, s_area) 
SetMissionV(MS_CAMP2AREA, j_area) 

area_section1 = "Area_"..s_area; 
area_section2 = "Area_"..j_area; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  h�c l�y hai khu v�c ��ch ��i doanh b�n trong �i�m t�a �� 
-- script viet hoa By http://tranhba.com  t� ��i doanh ��n sau doanh l�c ��ch t�a �� �i�m 
file = GetIniFileData(mapfile, area_section1 , "centertohomepos") 
x,y =bt_getadata(file) 
SetMissionV(MS_HOMEIN_X1, floor(x/32)) 
SetMissionV(MS_HOMEIN_Y1, floor(y/32)) 

file = GetIniFileData(mapfile, area_section2 , "centertohomepos") 
x,y = bt_getadata(file) 
SetMissionV(MS_HOMEIN_X2, floor(x/32)) 
SetMissionV(MS_HOMEIN_Y2, floor(y/32)) 

-- script viet hoa By http://tranhba.com  t� sau doanh ��n l�n doanh ��ch t�a �� �i�m 
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

-- script viet hoa By http://tranhba.com  tr�ng b�y Trap �i�m 
-- script viet hoa By http://tranhba.com  tr�ng b�y song ph��ng sau doanh ��ch Trap �i�m 

hometrapfile = GetIniFileData(mapfile, "Area_"..s_area, "hometrap") 
bt_addtrap(hometrapfile, FILE_HOMETRAP1) 
hometrapfile = GetIniFileData(mapfile, "Area_"..j_area, "hometrap"); 
bt_addtrap(hometrapfile, FILE_HOMETRAP2) 


hometrapfile = GetIniFileData(mapfile, "Area_"..s_area, "centertohometrap") 
bt_addtrap(hometrapfile, FILE_CENTERTOHOMETRAP1) 
hometrapfile = GetIniFileData(mapfile, "Area_"..j_area, "centertohometrap"); 
bt_addtrap(hometrapfile, FILE_CENTERTOHOMETRAP2) 


-- script viet hoa By http://tranhba.com  tr�ng b�y ��i tho�i lo�i h�nh Npc 
-- script viet hoa By http://tranhba.com  qu�n y ��ch tr�ng b�y 
doctorxy = GetIniFileData(mapfile, "Area_"..s_area, "doctornpc"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(FILE_DOCTOR1, TNPC_DOCTOR1, x * 32 ,y * 32 ,"Quan ti�p li�u ( t�ng ) "); 


doctorxy = GetIniFileData(mapfile, "Area_"..j_area, "doctornpc"); 
x,y = bt_str2xydata(doctorxy) 
bt_add_a_diagnpc(FILE_DOCTOR2, TNPC_DOCTOR2, x * 32, y * 32,"Quan ti�p li�u ( kim ) "); 


-- script viet hoa By http://tranhba.com  ��p trai k� ��ch tr�ng b�y 
symbolnpcfile = GetIniFileData(mapfile, "Area_"..s_area, "symbolnpc"); 
bt_adddiagnpc(symbolnpcfile, FILE_SYMBOLNPC, TNPC_SYMBOL1, " "); 
symbolnpcfile = GetIniFileData(mapfile, "Area_"..j_area, "symbolnpc"); 
bt_adddiagnpc(symbolnpcfile, FILE_SYMBOLNPC, TNPC_SYMBOL2, " "); 


-- script viet hoa By http://tranhba.com  tr� v�t r��ng ��ch tr�ng b�y 
depositxy = GetIniFileData(mapfile, "Area_"..s_area, "depositobj"); 
x,y = bt_str2xydata(depositxy) 
bt_add_a_diagnpc( FILE_DEPOSIT, TNPC_DEPOSIT, x * 32,y * 32); 



depositxy = GetIniFileData(mapfile, "Area_"..j_area, "depositobj"); 
x,y = bt_str2xydata(depositxy) 
bt_add_a_diagnpc( FILE_DEPOSIT, TNPC_DEPOSIT, x * 32, y * 32); 


StartMissionTimer(MISSIONID, 62, TIMER_2); 
-- script viet hoa By http://tranhba.com  ng�u nhi�n m� th�c c�n m� ra m�i X ph�t x�c ph�t m�t l�n x�c ph�t kh� , l�y sinh ra m�i k� 
StartMissionTimer(MISSIONID, 61, TIMER_1); 

SetMissionV(MS_STATE, 1);-- script viet hoa By http://tranhba.com  cho ph�p b�o danh 
	SetMissionV(MS_KEYNUMBER, random(1000000+tonumber(date("%y%m%d"))))

local str = " v� l�m �� nh�t bang �ang chu�n b� giai �o�n . � h�m nay tham chi�n danh s�ch ��ch bang h�i nhanh l�n m�t ch�t �i minh ch� v� l�m ch� ti�n v�o chu�n b� khu v�c . " 
AddGlobalNews(str); 

BT_SetMissionName("Tr�n chi�n ��u ti�n gi�p ") 

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
AddSkillState(661,5,0,0) -- script viet hoa By http://tranhba.com  thanh tr� nh� ch�i ��ch danh hi�u k� n�ng s� li�u 

Title_ActiveTitle(0); 
if (GetMissionV(MS_TIMER1) < (TIMER_2 / TIMER_1)) then 
BT_UpdateMemberCount(); 
end 
SetCurCamp(GetCamp()) 
PlayerIndex = oldPlayerIndex 
end; 
