-- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i l� giao chi�n hai bang h�i m�t trong l�i c�a , l� � nh�n s� kh�ng c� ��t t�i th��ng h�n ��ch �i�u ki�n ti�n quy�t , �� cho h�n ti�n v�o b�n �� 
-- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i kh�ng ph�i l� giao chi�n hai bang h�i m�t trong l�i c�a , n�u nh� tr�n ng��i c� h�p ph�p phi�u tho�i , �� cho h�n ti�n v�o b�n �� 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nh� ch�i y�u c�u r�i �i tr� ch�i 
function LeaveGame() 
curcamp= GetCurCamp(); 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh�i ph�c nguy�n th�y tr�n doanh 
SetRevPos(GetPlayerRev()) 
SetFightState(0) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
NewWorld(OuterPos[curcamp][1], OuterPos[curcamp][2], OuterPos[curcamp][3]) 
end; 

function GameOver() 
local OldPlayer = PlayerIndex; 
local PTab = {}; 
for i = 1, 1000 do 
idx , pidx = GetNextPlayer(MISSIONID, idx, 0); 
if (idx == 0 ) then 
break 
end 
PTab[i] = pidx; 
end 

local PCount = getn(PTab); 

-- script viet hoa By http://tranhba.com  t��ng th��ng ng�u nhi�n 5 t�n nh� ch�i huy ho�ng chi qu� h�p qu� 
local tbRandPlayer = {}; 
local nRandCount = 0; 
for i =1, PCount do 
if (nRandCount >= 5) then 
break 
end 
local nrand = random(PCount); 
if (not tbRandPlayer[nrand]) then 
			nRandCount = nRandCount + 1;
tbRandPlayer[nrand] = nrand; 
end 
end 


-- script viet hoa By http://tranhba.com  t��ng th��ng tr�n b�ng x�p h�ng tr��c 10 t�n 
for i = 1, 10 do 
local szName,nZhanGong = BT_GetTopTenInfo(i, PL_TOTALPOINT); 
if szName ~= nil and szName ~= "" then 
local nTopPlayerIdx = SearchPlayer(szName); 
if (nTopPlayerIdx > 0) then 
PlayerIndex = nTopPlayerIdx; 
AddOwnExp(CITYWAR_TOP10_EXP); 
local szLog = format("%d kinh nghi�m ", CITYWAR_TOP10_EXP); 
szLog = format("Ng��i l�y ���c c�ng th�nh chi�n t��ng th��ng %s", szLog); 
Msg2Player(szLog); 
WriteLog(format("[citywar_award]\t%s\tName:%s\tAccount:%s\t%s", 
GetLocalDate("%Y-%m-%d_%H:%M"), 
szName, 
GetAccount(), 
szLog 
)); 
end 
end 
end 
OldPlayer = PlayerIndex; 


for i = 1, PCount do 
PlayerIndex = PTab[i] 

if (tbRandPlayer[i]) then 
citywar_awardplayer(); 
end 
LeaveGame() 
SetFightState(0) 
end; 
PlayerIndex = OldPlayer; 
end; 

function citywar_awardplayer() 
AddItem(6,1,1075,1,1,0); 
local szLog = format("Ng��i l�y ���c c�ng th�nh chi�n t��ng th��ng %s","Huy ho�ng chi qu� h�p qu� ") 
Msg2Player(szLog); 
WriteLog(format("[citywar_award]\t%s\tName:%s\tAccount:%s\t%s", 
GetLocalDate("%Y-%m-%d_%H:%M"), 
GetName(), 
GetAccount(), 
szLog 
)); 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function JoinCamp(Camp, Type) 
-- script viet hoa By http://tranhba.com type == 1 b�y t� l� qu�n ch�nh quy , 2 b�y t� l� kh�ng ph�i l� qu�n ch�nh quy t�c kh�ng ph�i l� b�n bang s� th�nh vi�n 
LeaveTeam(); 
if (Type == 1) then 
if (Camp == 1) then 
if (GetMSPlayerCount(MISSIONID,Camp) >= MAX_CAMP1COUNT) then 
Say("B�y gi� tham gia th� th�nh bang h�i nh�n s� c�a �� �� r�i , t�m th�i kh�ng th� gia nh�p !",0) 
return 
end; 
else 
if (GetMSPlayerCount(MISSIONID, Camp) >= MAX_CAMP2COUNT) then 
Say("B�y gi� tham gia th� th�nh bang h�i nh�n s� c�a �� �� r�i , t�m th�i kh�ng th� gia nh�p !",0) 
return 
end 
end; 
else 
if (Camp == 1) then 
			if (GetMSPlayerCount(MISSIONID,Camp + 2 ) >= MAX_CAMP3COUNT) then
Say("B�y gi� tham gia th� th�nh bang h�i nh�n s� c�a �� �� r�i , t�m th�i kh�ng th� gia nh�p !",0) 
return 
end; 
else 
			if (GetMSPlayerCount(MISSIONID, Camp + 2) >= MAX_CAMP4COUNT) then
Say("B�y gi� tham gia tr� gi�p th� th�nh ��ch ngh�a s� nh�n s� �� �� r�i , t�m th�i kh�ng th� gia nh�p !",0) 
return 
end 
end; 
end; 

if (Type == 1) then 
AddMSPlayer(MISSIONID, Camp); 
else 
		AddMSPlayer(MISSIONID, Camp + 2);
end; 

SetTaskTemp(JOINSTATE, 1); 
SetCurCamp(Camp); 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,1); 

-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetLogoutRV(1); 

-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(0); 

-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(0); 

-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 
SetPKFlag(1) 
ForbidChangePK(1); 

-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m , m�t lo�i l� l�a ch�n ti�n v�o n�n khu ��ch th�nh ph� 
SetRevPos(GetPlayerRev()) 

-- script viet hoa By http://tranhba.com  thi�t tr� tr��c m�t nh� ch�i ��ch t� vong ch�n v�n 
	SetDeathScript("\\script\\missions\\citywar_city\\playerdeath.lua");

SetFightState(0) 
-- script viet hoa By http://tranhba.com  thi�t tr� l�n sau t� vong s�ng l�i �i�m 
if (Camp == 1) then 
SetTempRevPos(CS_CampPos1[1], CS_CampPos1[2]*32, CS_CampPos1[3]*32); 

NewWorld(CS_CampPos1[1], CS_CampPos1[2], CS_CampPos1[3]) 
elseif (Camp == 2) then 
SetTempRevPos(CS_CampPos2[1], CS_CampPos2[2]*32, CS_CampPos2[3]*32); 

NewWorld(CS_CampPos2[1], CS_CampPos2[2], CS_CampPos2[3]) 
else 
return 
end; 

-- script viet hoa By http://tranhba.com  bi�u hi�n t�nh gi� b�i 
local gametime = floor(GetMSRestTime(MISSIONID, 13) / 18); 
BT_UpdateMemberCount(); 
BT_BroadView(); 
BT_BroadAllLadder(); 
BT_SetRestTime(gametime); 
BT_BroadGameData(); 
BT_SortLadder(); 
BT_BroadSelf() 
-- script viet hoa By http://tranhba.com  bi�u hi�n t�nh gi� b�i 

-- script viet hoa By http://tranhba.com  quan h�m 
bt_JudgePLAddTitle() 
end; 
