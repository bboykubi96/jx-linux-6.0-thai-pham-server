Include([[\script\missions\chrismas\ch_head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

SetMissionV(MS_TIMERSTATE, 1); 
SetMissionS(MSS_MOUSENAME,"M�t m�c ��ch l� v�t "); -- script viet hoa By http://tranhba.com  c� ra qu�i v�t ��ch t�n 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CH_MAPID[2]); 

StartMissionTimer(CH_MISSIONID, CH_RUNTIMERID, CH_RUNINTERVER); -- script viet hoa By http://tranhba.com  
StartMissionTimer(CH_MISSIONID, CH_SMALLTIMERID, CH_INTERVER); -- script viet hoa By http://tranhba.com  m� ra t�nh gi� kh� 
end; 

function EndMission() 
local i; 
for i = 1, CH_SMALLMAPCOUNT do 
if (GetMSPlayerCount(CH_MISSIONID, i) > 0) then 
groupsort(i); 
end; 
end; 
clearfairy(); -- script viet hoa By http://tranhba.com  thanh tr� n�i ch�n b�n trong t�t c� tr�ch 
gameover(); -- script viet hoa By http://tranhba.com  �em t�t c� nh� ch�i thanh tr� ra b�n �� 
strGlbNews = " c�c v� �� quay tr� v� ." 
AddGlobalNews(strGlbNews); 

StopMissionTimer(CH_MISSIONID, CH_SMALLTIMERID); 
StopMissionTimer(CH_MISSIONID, CH_RUNTIMERID); 
end; 

function OnLeave() 
SetLogoutRV(0); 
end 

-- script viet hoa By http://tranhba.com  s�p x�p th� t� h�m s� ( c�n c� �i�m k�ch c� ��m t� nhi�u ��n thi�u x�c ��nh �em m�t t� th�nh vi�n ��ch h�ng )# 
function groupsort(nGroupId) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CH_MAPID[2]); 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local idx = 0; 
local pidx; 

local i; 
for i = 1, CH_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(CH_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(TK_COUNT_ONETIME); 
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
szMsg = szMsg.."<enter> <color=green>"..i.." "..GetName()..", t�m ���c "..tabPlayer[i][2].." l� v�t " 
end 
end 
-- script viet hoa By http://tranhba.com  s�p x�p th� t� sau t� tr��c ��n sau ch�nh l� h�ng ��ch tr��c sau 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
SetTask(TK_RANK, i); 
if (szMsg ~= nil and szMsg ~= "") then 
Msg2Player(szMsg) 
end 
Msg2Player("Ng��i ��ng h�ng th� <color=yellow>"..i.."<color>, c� th� �i th�y <color=yellow> �ng gi� n� en <color> d�n t��ng !"); 
end; 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 
