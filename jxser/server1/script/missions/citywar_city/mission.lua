Include("\\script\\missions\\citywar_city\\head.lua")
Include("\\script\\missions\\citywar_city\\camper.lua");

function InitMission() 
WriteLog(GetLoop()..": tranh t�i b�t ��u ") 
ClearMapNpc(221); -- script viet hoa By http://tranhba.com  thanh b�n trong s�n npc 
-- script viet hoa By http://tranhba.com ClearMapObj(221);-- script viet hoa By http://tranhba.com  c� mu�n hay kh�ng thanh ��y ? ? 
-- script viet hoa By http://tranhba.com ClearMapnpc c�ng kh�ng c�n DelNPc li�u �i 
-- script viet hoa By http://tranhba.com for i = 1, MS_SYMBOLCOUNT do DelNpc(StonePos[i].Name);end; 
for i = 1, getn(tb_CW_MEDICINE) do 
SetGlbValue(tb_CW_MEDICINE[i][1], 0); 
end; 

for i = 1, 100 do 
SetMissionV(i , 0); 
end; 

for i = 1, 5 do 
SetMissionS(i,"") 
end 


for i = 1, MS_SYMBOLCOUNT do 
		SetMissionV(MS_SYMBOLBEGIN + i - 1, 1);
end 

-- script viet hoa By http://tranhba.com  th�m t�i NPC 
NpcId1 = AddNpc(STONENPCID1, STONELEVEL1, SubWorld, StonePos[1].x, StonePos[1].y, 1, GetGamerName(1)..StonePos[1].Name, 1); 
NpcId2 = AddNpc(STONENPCID1, STONELEVEL1, SubWorld, StonePos[2].x, StonePos[2].y, 1, GetGamerName(1)..StonePos[2].Name, 1); 
NpcId3 = AddNpc(STONENPCID1, STONELEVEL1, SubWorld, StonePos[3].x, StonePos[3].y, 1, GetGamerName(1)..StonePos[3].Name, 1); 

WriteLog("Gia t�ng c�t �� "..NpcId1); 
WriteLog("Gia t�ng c�t �� "..NpcId2); 
WriteLog("Gia t�ng c�t �� "..NpcId3); 

SetNpcCurCamp(NpcId1, 1) ; 
SetNpcCurCamp(NpcId2, 1) ; 
SetNpcCurCamp(NpcId3, 1) ; 

WriteLog("C�i ��t v�n l� h� ") 
	SetNpcDeathScript(NpcId1, "\\script\\missions\\citywar_city\\symboldeath1.lua");
	SetNpcDeathScript(NpcId2, "\\script\\missions\\citywar_city\\symboldeath2.lua");
	SetNpcDeathScript(NpcId3, "\\script\\missions\\citywar_city\\symboldeath3.lua");


DoorId1 = AddNpc(DOORNPCID, DOORLEVEL, SubWorld, DoorPos[1].x, DoorPos[1].y, 1, DoorPos[1].Name, 1); 
DoorId2 = AddNpc(DOORNPCID, DOORLEVEL, SubWorld, DoorPos[2].x, DoorPos[2].y, 1, DoorPos[2].Name, 1); 
DoorId3 = AddNpc(DOORNPCID, DOORLEVEL, SubWorld, DoorPos[3].x, DoorPos[3].y, 1, DoorPos[3].Name, 1); 

WriteLog("Gia t�ng c�a th�nh "..DoorId1); 
WriteLog("Gia t�ng c�a th�nh "..DoorId2) 
WriteLog("Gia t�ng c�a th�nh "..DoorId3) 

SetNpcCurCamp(DoorId1, 1) ; 
SetNpcCurCamp(DoorId2, 1) ; 
SetNpcCurCamp(DoorId3, 1) ; 

SetMissionV(MS_DOORBEGIN, DoorId1); 
	SetMissionV(MS_DOORBEGIN + 1, DoorId2);
	SetMissionV(MS_DOORBEGIN + 2, DoorId3);

	SetNpcDeathScript(DoorId1, "\\script\\missions\\citywar_city\\doordeath.lua");
	SetNpcDeathScript(DoorId2, "\\script\\missions\\citywar_city\\doordeath.lua");
	SetNpcDeathScript(DoorId3, "\\script\\missions\\citywar_city\\doordeath.lua");

-- script viet hoa By http://tranhba.com  theo qu�n thu�c y 
for i = 1, getn(DoctorPos) do 
local nDoctIdx = AddNpc(DOCTORNPCID, 1, SubWorld, DoctorPos[i][1],DoctorPos[i][2], 1, DoctorPos[i][3]); 
		SetNpcScript(nDoctIdx, "\\script\\missions\\citywar_city\\chengzhan_map\\yaoshang.lua");
end; 
-- script viet hoa By http://tranhba.com  th�m n�i th� v� 
local nAndaoIdx = AddNpc(48, 1, SubWorld, 1597 * 32, 3470 * 32, 1,"Th�m n�i th� v� "); 
	SetNpcScript(nAndaoIdx, "\\script\\missions\\citywar_city\\chengzhan_map\\andaoshouwei.lua");
-- script viet hoa By http://tranhba.com  tr� v�t r��ng 
local nChuwuIdx = AddNpc(625, 1, SubWorld, 1534*32, 3240*32, 1,"Tr� v�t r��ng "); 
	SetNpcScript(nChuwuIdx, "\\script\\missions\\citywar_city\\chengzhan_map\\chuwuxiang.lua");
nChuwuIdx = AddNpc(625, 1, SubWorld, 1882*32, 3582*32, 1,"Tr� v�t r��ng "); 
	SetNpcScript(nChuwuIdx, "\\script\\missions\\citywar_city\\chengzhan_map\\chuwuxiang.lua");
-- script viet hoa By http://tranhba.com  th�m t�i NPC 

WriteLog("Thanh tr� ch��ng ng�i "); 
for i = 1, getn(ObstaclePos) do 
CreateObstacle(ObstaclePos[i][1], ObstaclePos[i][2]); 
end; 

Tong2,Tong1 = GetCityWarBothSides(GetWarOfCity()); 
SetMissionS(1, Tong1); 
SetMissionS(2, Tong2); 

logstr = format("%s: %s th�nh �� ��nh vang c�ng th�nh chi�n ! ph�ng th� m�i l� # %s %s", date("%m%d-%H:%M"), GetGameCity(), Tong2, Tong1); 
WriteLog(logstr); 

-- script viet hoa By http://tranhba.com  k� ph�n b�i bi�u hi�n 
bt_setnormaltask2type() -- script viet hoa By http://tranhba.com  c�i n�y h�u d�ng 
BT_SetView(PL_TOTALPOINT);-- script viet hoa By http://tranhba.com  bi�u hi�n c�ng th�ng k� t�ng t�ch ph�n 
BT_SetView(PL_KILLPLAYER);-- script viet hoa By http://tranhba.com  gi�t nh� ch�i s� l��ng 
BT_SetView(PL_BEKILLED);-- script viet hoa By http://tranhba.com  v�n nh� ch�i b� gi�t s� l�n 
BT_SetView(PL_MAXSERIESKILL);-- script viet hoa By http://tranhba.com  ch�m li�n t�c s� l�n 
BT_SetMissionName("C�ng th�nh chi�n "); 
BT_SetGameData(GAME_BATTLEID, MISSIONID);-- script viet hoa By http://tranhba.com  thi�t tr� chi�n d�ch ��ch ID , l�y missionid kh�c nhau 
ResetBonus() 
-- script viet hoa By http://tranhba.com  k� ph�n b�i bi�u hi�n 

SetMissionV(MS_KEY, random(100000)) 
-- script viet hoa By http://tranhba.com  m� ra t�nh gi� kh� 
StartMissionTimer(MISSIONID, 12, REPORTTIME); 
StartMissionTimer(MISSIONID, 13, GAMETIME); 

SetMissionV(MS_STATE, 1);-- script viet hoa By http://tranhba.com  cho ph�p b�o danh 
end; 

function RunMission() 
SetMissionV(MS_STATE, 2) 
str = format("%s c�ng th�nh chi�n ch�nh th�c b�t ��u ! th� th�nh m�i l� #%s, khi�u chi�n m�i l� #%s. ng��i n�o s� l�y ���c th�ng l�i cu�i c�ng ?", GetGameCity(), GetGamerName(1), GetGamerName(2)); 
AddGlobalNews(str); 
end; 

function EndMission() 

WriteLog(GetLoop()..date("%m%d-%H:%M")..":CloseMission!"); 
for i = 1, MS_SYMBOLCOUNT do DelNpc(GetMissionS(1) .. StonePos[i].Name);end; 
for i = 1, MS_SYMBOLCOUNT do DelNpc(GetMissionS(2) .. StonePos[i].Name);end; 


WriteLog("GameOver") 
GameOver() 

-- script viet hoa By http://tranhba.com  WriteLog("Th� ti�u t�t c� c�ng c� Npc") 
-- script viet hoa By http://tranhba.com  for i = 1, g_nMaxToolCount do 
-- script viet hoa By http://tranhba.com 		DelIndex = GetMissionV(MS_TOOLBEGIN + i - 1) ;
-- script viet hoa By http://tranhba.com  if (DelIndex > 0) then 
-- script viet hoa By http://tranhba.com  DelNpcSafe(DelIndex) 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  WriteLog("Th� ti�u t�t c� GCC") 
-- script viet hoa By http://tranhba.com  for i = 1, g_nMaxGccPerDoor * g_nDoorCount do 
-- script viet hoa By http://tranhba.com 		DelIndex = GetMissionV(MS_GCCBEGIN + i - 1) ;
-- script viet hoa By http://tranhba.com  if (DelIndex > 0) then 
-- script viet hoa By http://tranhba.com  DelNpcSafe(DelIndex) 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  WriteLog("Th� ti�u t�t c� TSC") 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  for i = 1, g_nDoorCount * g_nMaxTscPerDoor do 
-- script viet hoa By http://tranhba.com 		DelIndex = GetMissionV(MS_TSCBEGIN + i - 1)
-- script viet hoa By http://tranhba.com  if (DelIndex > 0) then 
-- script viet hoa By http://tranhba.com  DelNpcSafe(DelIndex) 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  WriteLog("Th� ti�u t�t c� c�a ") 
-- script viet hoa By http://tranhba.com  for i = 1, g_nDoorCount do 
-- script viet hoa By http://tranhba.com 		DelIndex = GetMissionV(MS_DOORBEGIN + i - 1)
-- script viet hoa By http://tranhba.com  if (DelIndex > 0) then 
-- script viet hoa By http://tranhba.com  DelNpcSafe(DelIndex) 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  end; 

for i = 1, g_nDoorCount do 
ClearObstacle(ObstaclePos[i][1], ObstaclePos[i][2]); 
end; 

ClearMapNpc(221); 
for i = 1, 100 do 
SetMissionV(i , 0); 
end; 

StopMissionTimer(MISSIONID, 12); 
StopMissionTimer(MISSIONID, 13); 
BT_ClearBattle(); 
end; 


function OnLeave(RoleIndex) 
local oldPlayer = PlayerIndex; 
PlayerIndex = RoleIndex; 
str2 = GetName().." r�i �i chi�n tr��ng , "; 
SetFightState(0) 
-- script viet hoa By http://tranhba.com SetLogoutRV(0); 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
ForbidChangePK(0); 
SetPunish(1) 
DisabledUseTownP(0) 
-- script viet hoa By http://tranhba.com  Msg2MSAll(MISSIONID, str2); 
SetTaskTemp(200, 0); 

-- script viet hoa By http://tranhba.com BT_LeaveBattle() 
if (GetCurCamp() == 1) then 
-- script viet hoa By http://tranhba.com LeaveChannel(PlayerIndex, GetGameCity().." ph� th� ph��ng "); 
else 
-- script viet hoa By http://tranhba.com LeaveChannel(PlayerIndex, GetGameCity().." ph� c�ng ph��ng "); 
end 
sf_onplayerleave() 
AddSkillState(661,5,0,0) -- script viet hoa By http://tranhba.com  thanh tr� nh� ch�i ��ch danh hi�u k� n�ng s� li�u 
Title_ActiveTitle(0); 
if (GetMissionV(MS_STATE) == 2) then 
BT_UpdateMemberCount(); 
end 
SetCurCamp(GetCamp()) 
PlayerIndex = oldPlayer 
end; 
