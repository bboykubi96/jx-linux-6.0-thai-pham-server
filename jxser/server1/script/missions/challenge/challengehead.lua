-- script viet hoa By http://tranhba.com  khi�u chi�n cu�c so t�i m� th�c 

-- script viet hoa By http://tranhba.com 1# t� GM cho c�c khu ��ch cao gi�o ng��i ph� tr�ch . s� tr��ng m�c th�m ph� th�m �i�m 
-- script viet hoa By http://tranhba.com 2# cao gi�o ng��i ph� tr�ch � tranh t�i ghi danh giai �o�n ��n cu�c so t�i tr�ng , c�ng Npc ��i tho�i ��t ���c ��o c� , theo th� t� l� �ang # t� # b�ch # ba tr�n doanh b�t ��ng m�n b�i . 
-- script viet hoa By http://tranhba.com 3# ng��i ph� tr�ch b�t ���c ��o c� sau giao cho tranh t�i song ph��ng ��i tr��ng . 
-- script viet hoa By http://tranhba.com 4# ��i tr��ng l�y ���c ��o c� sau , h�p th�nh ��i m�nh ��ch 5 ng��i ��i ng� . sau �� c�m phi�u v�o tr�ng . 
-- script viet hoa By http://tranhba.com 5# v�o tr�ng sau , l�m cu�c so t�i chu�n b� tr��c . 
-- script viet hoa By http://tranhba.com 6# sau khi cu�c tranh t�i k�t th�c . ng��i ph� tr�ch ghi ch�p tranh t�i th�nh t�ch , h��ng quan ph��ng th�ng b�o . 


-- script viet hoa By http://tranhba.com  b�o t�n tr��c m�t k�ch s�ng nhi�m v� thu�c v� lo�i n�o nhi�m v� MissionV thay ��i l��ng index , b�i v� di�n v� tr��ng n�i ch�n tr��c m�t d�ng cho b�nh th��ng di�n v� tr��ng c�ng cao gi�o khi�u chi�n cu�c so t�i trung , 
-- script viet hoa By http://tranhba.com  c�ng l�c �o�n ch� c� th� c� m�t ch� d�ng . cho n�n d�ng c�i n�y thay ��i l��ng t�i khu ph�n . 
-- script viet hoa By http://tranhba.com 0 b�y t� kh�ng c� nhi�m v� nhi�m v� k�ch ho�t , 1 b�y t� b�nh th��ng di�n v� tr��ng , 2 b�y t� cao gi�o khi�u chi�n cu�c so t�i 

ACTIVEMISSION = 40; 

FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr�nh tr� ch�i th�i gian t��ng ���ng v�i 1 gi�y 

TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi�y c�ng b� m�t c�i chi�n hu�ng 
TIMER_2 = 20 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chi�n t�ng th�i gian l� 20 ph�t 
GO_TIME = 300 * FRAME2TIME / TIMER_1; -- script viet hoa By http://tranhba.com  ghi danh th�i gian l� n�a gi� 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p nhi�m v� tr�ng th�i thay ��i l��ng ID 
-- script viet hoa By http://tranhba.com  n�n thay ��i l��ng ch� h��ng ��ch tr�ng th�i tr� gi� 0 b�y t� chi�n d�ch v� m� ra , 1 b�y t� chi�n d�ch ghi danh trung , 2 b�y t� chi�n d�ch chi�n ��u ti�n h�nh trung , 3 b�y t� chi�n d�ch m�i v�a k�t th�c 

MS_STORETASKID = 240; 
MS_S_DEATHCOUNT = 3; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p 1 nh� ch�i s� th��ng vong l��ng ��ch thay ��i l��ng ID 
MS_J_DEATHCOUNT = 4; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p 2 nh� ch�i s� th��ng vong l��ng ��ch thay ��i l��ng ID 

MS_S_SIGHCOUNT = 5;-- script viet hoa By http://tranhba.com  nhi�m v� trung t�ng ph��ng c�ng ghi danh nh�n s� c�a 
MS_J_SIGHCOUNT = 6;-- script viet hoa By http://tranhba.com  nhi�m v� trung kim ph��ng c�ng ghi danh nh�n s� c�a 
MS_S_JOINED = 7; -- script viet hoa By http://tranhba.com  nhi�m v� trung t�ng ph��ng �� ti�n v�o n�i so t�i thay ��i l��ng ID 
MS_J_JOINED = 8; -- script viet hoa By http://tranhba.com  nhi�m v� trung kim ph��ng �� ti�n v�o n�i so t�i thay ��i l��ng ID 

MS_NEWSVALUE = 10; -- script viet hoa By http://tranhba.com  nhi�m v� trung c�t gi� tin t�c thay ��i l��ng ��ch ��a ph��ng 
PLAYER_KILLCOUNT = 240; -- script viet hoa By http://tranhba.com  t�m th�i thay ��i l��ng ,temptask 
PLAYER_DEATHCOUNT = 241; 
JOINSTATE = 242; 
MISSIONID = 4; 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nh� ch�i y�u c�u r�i �i tr� ch�i 
function LeaveGame(leavetype) 
-- script viet hoa By http://tranhba.com leavetype = 0 b�y t� , �em v� tr� thi�t tr�n ��t �� ��ch b�n ngo�i s�n khu v�c # kh�ng ph�i l� chi�n ��u khu v�c # 
-- script viet hoa By http://tranhba.com leavetype = 1 b�y t� , �em v� tr� thi�t � m�t ch� kh�c �� , t�c ho�n to�n r�i �i chi�n tr��ng 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh�i ph�c nguy�n th�y tr�n doanh 
SetRevPos(CS_RevId, CS_RevData) 
SetFightState(1) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
SetCreateTeam(1); 
if (leavetype == 0) then 
SetCurCamp(camp) 
SetFightState(0) 
SetPos(CS_OuterPos[2], CS_OuterPos[3]); 
else 
SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
NewWorld(GetLeavePos()); 
end; 
end; 

function GameOver() 
idx = 0; 
OldPlayer = PlayerIndex; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 
if (idx == 0) then 
break 
end; 
PlayerIndex = pidx; 
LeaveGame(0); 
end; 
PlayerIndex = OldPlayer; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function JoinCamp(Camp) 
-- script viet hoa By http://tranhba.com  � th� hai Mission b�n trong th�m tr��c m�t nh� ch�i 
LeaveTeam() 
if (GetMSPlayerCount(MISSIONID,Camp) >= MAX_MEMBER_COUNT) then 
Say("Ph��ng n�y b�y gi� ng��i �� �� , kh�ng th� gia nh�p !",0) 
return 
end; 

AddMSPlayer(MISSIONID, Camp); 
SetTaskTemp(JOINSTATE, 1); 
SetCurCamp(Camp); 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,1); 

-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
SetFightState(0); 

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
SetRevPos(CS_RevId, CS_RevData); 
-- script viet hoa By http://tranhba.com  nh� ch�i t� vong sau , s�ng l�i ��ch ��a ph��ng li�n thi�t �ang ��a nh� mu�n th�i lui ra ��ch ��a �i�m # � b�n ��a �� th��ng kh�ng ph�i l� chi�n ��u khu v�c ) 
W,X,Y = GetWorldPos(); 

-- script viet hoa By http://tranhba.com  thi�t tr� tr��c m�t nh� ch�i ��ch t� vong ch�n v�n 
if (Camp == 1) then 
		SetDeathScript("\\script\\missions\\challenge\\challengedeath.lua");
elseif (Camp == 2) then 
		SetDeathScript("\\script\\missions\\challenge\\challengedeath1.lua");
end 


-- script viet hoa By http://tranhba.com  thi�t tr� l�n sau t� vong s�ng l�i �i�m 
if (Camp == 1) then 
SetTempRevPos(W, CS_OuterPos[2] * 32, CS_OuterPos[3] * 32); 
str = GetName().."<#> gia nh�p ho�ng ph��ng , b�y gi� nh�n s� l� "..GetMSPlayerCount(MISSIONID,1); 
SetPos(CS_CampPos1[2], CS_CampPos1[3]) 
elseif (Camp == 2) then 
SetTempRevPos(W, CS_OuterPos[2] * 32, CS_OuterPos[3] * 32); 
str = GetName().."<#> gia nh�p t� ph��ng , b�y gi� nh�n s� l� "..GetMSPlayerCount(MISSIONID,2); 
SetPos(CS_CampPos2[2], CS_CampPos2[3]) 
elseif (Camp == 6) then 
SetTempRevPos(GetTask(300), GetTask(301) * 32, GetTask(302)* 32); 
str = GetName().."<#> tham gia qu�n chi�n , b�y gi� nh�n s� l� "..GetMSPlayerCount(MISSIONID,6); 
SetPos(CS_CampPos0[2], CS_CampPos0[3]) 
end; 

-- script viet hoa By http://tranhba.com  h��ng t�t c� t� v�i ng��i ph�t tin t�c 
Msg2MSAll(MISSIONID, str); 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - �em gi�y truy�n ��i th�nh ph�n c�ng gi�y , t� nh� 62s = 1m2s 
function GetMinAndSec(nSec) 
nRestMin = floor(nSec / 60); 
nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com  th�i lui ra tr� ch�i sau ��ch s�ng l�i �i�m ID, c�ng ch�nh l� ghi danh ��ch ch� �� �i 
CS_RevId = 80; 
CS_RevData = 36; 

-- script viet hoa By http://tranhba.com  r�i �i l�n n�y tr� ch�i sau ��ch v� tr� worldid, x, y, m�t lo�i ch�nh l� ghi danh �i�m 
-- script viet hoa By http://tranhba.com CS_LeavePos = {20, 3546, 6226}; 

-- script viet hoa By http://tranhba.com  b�n ngo�i h�i tr��ng ��ch v� tr� 
CS_OuterPos = {209, 1548, 3297}; 


-- script viet hoa By http://tranhba.com  gia nh�p song ph��ng tr�n doanh l�c ��ch v� tr� 
CS_CampPos0 = {209, 1631, 3203}; -- script viet hoa By http://tranhba.com  m�u tr�ng 
CS_CampPos1 = {209, 1608, 3167}; -- script viet hoa By http://tranhba.com  m�u v�ng 
CS_CampPos2 = {209, 1674, 3246}; -- script viet hoa By http://tranhba.com  m�u �� 


-- script viet hoa By http://tranhba.com  tr� ch�i m�i m�t tr�n doanh ��ch l�n nh�t nh�n s� 
MAX_MEMBER_COUNT = 5; 

MS_CAMP1 = 1; -- script viet hoa By http://tranhba.com  song ph��ng tr�n doanh s� 
MS_CAMP2 = 2; 

function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 
