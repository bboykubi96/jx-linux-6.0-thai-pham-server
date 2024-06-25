Include("\\script\\missions\\tong\\tong_springfestival\\head.lua");

function OnTimer() 
	local nNewsValue = GetMissionV(MS_SF_NEWSVALUE) + 1;
SetMissionV(MS_SF_NEWSVALUE, nNewsValue); 

if (20 == nNewsValue) then 
CloseMission(SF_MISSIONID); 
return 
end; 

local i; 
for i = 1, SF_SMALLMAPCOUNT do 
if (nNewsValue >= 18) then 
groupsort(i, 1, SF_ANIMALNAME); 
			groupsort(i + SF_SMALLMAPCOUNT, 1, SF_MOUSENAME);
else 
groupsort(i, 0, SF_ANIMALNAME); 
			groupsort(i + SF_SMALLMAPCOUNT, 0, SF_MOUSENAME);
end; 
end; 

if (0 == mod(nNewsValue, 2)) then 
local nTime = floor(nNewsValue / 2); 
nTime = 10 - nTime; 
if (nTime > 0) then 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(SF_MAPID[2]); 
Msg2MSAll(SF_MISSIONID, format("C�n c� <color=yellow>%d<color> ph�t ho�t ��ng k�t th�c !",nTime)); 
SubWorld = OldSubWorld; 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  s�p x�p th� t� h�m s� ( c�n c� �i�m k�ch c� ��m t� nhi�u ��n thi�u x�c ��nh �em m�t t� th�nh vi�n ��ch h�ng )# 
function groupsort(nGroupId, bSave, szAnimalName) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(SF_MAPID[2]); 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local idx = 0; 
local pidx; 

local i; 
for i = 1, SF_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(SF_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(SF_COUNT_ONETIME); 
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
if (nGroupId > SF_SMALLMAPCOUNT) then 
szMsg = format("%s<enter> <color=green> ��ng h�ng %d: %s, b�t ���c %d %s", 
szMsg, i, GetName(), tabPlayer[i][2], SF_MOUSENAME); 
else 
szMsg = format("%s<enter> <color=orange> ��ng h�ng %d: %s, ��nh tr�ng %s %d l�n ", 
szMsg, i, GetName(), SF_ANIMALNAME, tabPlayer[i][2]); 
end; 
end 
end 
-- script viet hoa By http://tranhba.com  s�p x�p th� t� sau t� tr��c ��n sau ch�nh l� h�ng ��ch tr��c sau 
nCount = nCount; 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
if (bSave == 1) then 
SetTask(SF_TK_RANK, i); 
end; 
if (szMsg ~= nil and szMsg ~= "") then 
Msg2Player(szMsg) 
end 
if (nGroupId > SF_SMALLMAPCOUNT) then 
Msg2Player(format("Tr��c m�t ng��i b�t ��n <color=yellow>%d<color> %s, ��ng h�ng <color=yellow>%d<color>.", GetTask(SF_COUNT_ONETIME), szAnimalName, i)); 
else 
Msg2Player(format("Tr��c m�t ng��i ��nh tr�ng %s <color=yellow>%d<color> l�n , tr��c m�t ��ng h�ng <color=yellow>%d<color>.", szAnimalName, GetTask(SF_COUNT_ONETIME), i)); 
end; 
end; 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 
