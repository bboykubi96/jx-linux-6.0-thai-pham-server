Include([[\script\missions\libfestival\head.lua]]); 

function OnTimer() 
	local nNewsValue = GetMissionV(MS_CO_NEWSVALUE) + 1;
SetMissionV(MS_CO_NEWSVALUE, nNewsValue); 

if (20 == nNewsValue) then 
CloseMission(CO_MISSIONID); 
return 
end; 

ontimer_add(nNewsValue); 
if (0 == mod(nNewsValue, 2)) then 
local nTime = floor(nNewsValue / 2); 
nTime = 10 - nTime; 
if (nTime > 0) then 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CO_MAPID[2]); 
Msg2MSAll(CO_MISSIONID,"Ho�t ��ng c�n c� <color=yellow>"..nTime.."<color> ph�t k�t th�c !"); 
SubWorld = OldSubWorld; 
end; 
end; 
end; 

function sort(table) 
local j; 
local temptab = {}; 
local nCount = getn(table); 
for i = 2, nCount do -- script viet hoa By http://tranhba.com  �p d�ng m�t m�o phao s�p x�p th� t� 
for j = nCount, i, -1 do 
if (table[j][2] > table[j - 1][2]) then -- script viet hoa By http://tranhba.com  �p d�ng h�ng t� s�p x�p th� t� 
temptab = table[j]; 
table[j] = table[j - 1]; 
table[j - 1] = temptab; 
end; 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  s�p x�p th� t� h�m s� ( c�n c� �i�m k�ch c� ��m t� nhi�u ��n thi�u x�c ��nh �em m�t t� th�nh vi�n ��ch h�ng )# 
function report(nGroupId, bSave) 
local i, pidx, idx = 0; 
local OldSubWorld = SubWorld; 
local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 

SubWorld = SubWorldID2Idx(CO_MAPID[2]); 
for i = 1, CO_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(CO_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(TK_CO_COUNT_ONETIME); 
end; 

if (0 == idx) then 
break; 
end; 
end; 

sort(tabPlayer); 
report_add(tabPlayer, nGroupId); 
PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 
