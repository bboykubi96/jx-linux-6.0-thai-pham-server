Include([[\script\missions\tong\tong_disciple\head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

SetMissionV(MS_TIMERSTATE, 1); 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(DIS_MAPID[2]); 

StartMissionTimer(DIS_MISSIONID, DIS_RUNTIMERID, DIS_RUNINTERVER); -- script viet hoa By http://tranhba.com  
StartMissionTimer(DIS_MISSIONID, DIS_SMALLTIMERID, DIS_INTERVER); -- script viet hoa By http://tranhba.com  m� ra t�nh gi� kh� 
end; 

function EndMission() 
local i; 
for i = 1, DIS_SMALLMAPCOUNT do 
if (GetMSPlayerCount(DIS_MISSIONID, i) > 0) then 
groupsort(i); 
end; 
end; 
clearfairy(); -- script viet hoa By http://tranhba.com  thanh tr� n�i ch�n b�n trong t�t c� tr�ch 
gameover(DIS_MAPID[2], DIS_MISSIONID); -- script viet hoa By http://tranhba.com  �em t�t c� nh� ch�i thanh tr� ra b�n �� 
strGlbNews = " chi�u m� �� t� ng��i c�a s� �� tr� l�i , c�c v� tr� tu�i c��ng tr�ng �� t� �� cho m�i ng��i l�i ngh� t�i m�nh anh d�ng qu� kh� c�a , c�ng v� bang h�i ��ch t��ng lai m� cao h�ng ." 
AddGlobalNews(strGlbNews); 

StopMissionTimer(DIS_MISSIONID, DIS_SMALLTIMERID); 
StopMissionTimer(DIS_MISSIONID, DIS_RUNTIMERID); 
gb_SetTask(CHRISMAS_SHREWMOUSE, 1, 0); 
SetGlbValue(GLB_DIS_PHASE, 0); 
end; 

function OnLeave() 
SetLogoutRV(0); 
end 

-- script viet hoa By http://tranhba.com  s�p x�p th� t� h�m s� ( c�n c� �i�m k�ch c� ��m t� nhi�u ��n thi�u x�c ��nh �em m�t t� th�nh vi�n ��ch h�ng )# 
function groupsort(nGroupId) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(DIS_MAPID[2]); 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local idx = 0; 
local pidx; 

local i; 
for i = 1, DIS_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(DIS_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(DIS_COUNT_ONETIME); 
end; 

if (0 == idx) then 
break; 
end; 
end; 

local j; 
local temptab = {}; 
local nCount = getn(tabPlayer); 
for i = 2, nCount do -- script viet hoa By http://tranhba.com  �p d�ng m�t m�o phao s�p x�p th� t� 
for j = nCount, i, -1 do 
if (tabPlayer[j][2] > tabPlayer[j - 1][2]) then -- script viet hoa By http://tranhba.com  �p d�ng h�ng t� s�p x�p th� t� 
temptab = tabPlayer[j]; 
tabPlayer[j] = tabPlayer[j - 1]; 
tabPlayer[j - 1] = temptab; 
end; 
end; 
end; 
local szMsg = "" 
local nRankCount = getn(tabPlayer); 
if (nRankCount > 3) then 
nRankCount = 3; 
end; 
for i=1,nRankCount do 
if ( tabPlayer[i][1] ~= nil ) then 
PlayerIndex = tabPlayer[i][1] 
szMsg = szMsg.."<enter> <color=green>"..i.." "..GetName()..", chi�u m� ��n "..tabPlayer[i][2].." c� "..DIS_MOUSENAME 
end 
end 
-- script viet hoa By http://tranhba.com  s�p x�p th� t� sau t� tr��c ��n sau ch�nh l� h�ng ��ch tr��c sau 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
SetTask(DIS_TK_RANK, i); 
if (szMsg ~= nil and szMsg ~= "") then 
Msg2Player(szMsg) 
end 
Msg2Player("Ng��i ��ng h�ng th� <color=yellow>"..i.."<color>, c� th� t�i th�y <color=yellow> ho�t ��ng ph��ng t�ng qu�n <color> d�n t��ng !"); 
end; 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 
