Include([[\script\missions\tong\collectgoods\schedule\bombout.lua]]); 

function OnTimer() 
	local nNewsValue = GetMissionV(COLLG_MS_NEWSVALUE) + 1;
SetMissionV(COLLG_MS_NEWSVALUE, nNewsValue); 

if (20 == nNewsValue) then 
CloseMission(COLLG_MISSIONID); 
return 
end; 

local i; 
for i = 1, COLLG_SMALLMAPCOUNT do 
if (nNewsValue >= 18) then 
groupsort(i, 1); 
else 
groupsort(i, 0); 
end; 
end; 

if (0 == mod(nNewsValue, 2)) then 
local nTime = floor(nNewsValue / 2); 
nTime = 10 - nTime; 
if (nTime > 0) then 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(COLLG_MAPID[2]); 
Msg2MSAll(COLLG_MISSIONID,"Ho�t ��ng c�n c� <color=yellow>"..nTime.."<color> ph�t k�t th�c !"); 
SubWorld = OldSubWorld; 
end; 
end; 
-- script viet hoa By http://tranhba.com  �em t�t c� t�c ��n n� tung 
bombout() 
end; 

-- script viet hoa By http://tranhba.com  s�p x�p th� t� h�m s� ( c�n c� �i�m k�ch c� ��m t� nhi�u ��n thi�u x�c ��nh �em m�t t� th�nh vi�n ��ch h�ng )# 
function groupsort(nGroupId, bSave) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(COLLG_MAPID[2]); 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local idx = 0; 
local pidx; 

local i; 
for i = 1, COLLG_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(COLLG_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(COLLG_COUNT_ONETIME); 
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
szMsg = szMsg.."<enter> <color=green>"..i.." "..GetName()..", ��t ���c "..tabPlayer[i][2].." h�ng h�a ��i " 
end 
end 
-- script viet hoa By http://tranhba.com  s�p x�p th� t� sau t� tr��c ��n sau ch�nh l� h�ng ��ch tr��c sau 
nCount = nCount; 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
if (bSave == 1) then 
SetTask(COLLG_TK_RANK, i); 
end; 
if (szMsg ~= nil and szMsg ~= "") then 
Msg2Player(szMsg) 
end 
Msg2Player("Tr��c m�t thu t�p ���c <color=yellow>"..GetTask(COLLG_COUNT_ONETIME).."<color> h�ng h�a ��i , ��ng h�ng th� <color=yellow>"..i.."<color>, ti�p t�c c� g�ng !"); 
end; 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 
