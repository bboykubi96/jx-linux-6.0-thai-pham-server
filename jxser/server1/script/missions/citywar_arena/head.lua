-- script viet hoa By http://tranhba.com  th�i lui ra tr� ch�i sau ��ch s�ng l�i �i�m ID, c�ng ch�nh l� ghi danh ��ch ch� �� �i 
CS_RevId = 20 
CS_RevData = 10; 

-- script viet hoa By http://tranhba.com  gia nh�p song ph��ng tr�n doanh l�c ��ch v� tr� 
CampPos1 = {1536 , 3223 }; -- script viet hoa By http://tranhba.com  m�u v�ng 
CampPos2 = {1563 , 3195 }; -- script viet hoa By http://tranhba.com  m�u t�m 
CampPos0 = {1633 , 3292 }; -- script viet hoa By http://tranhba.com  ti�n v�o cu�c so t�i tr�ng l�c ��ch t�a �� 

FRAME2TIME = 18; 
-- script viet hoa By http://tranhba.com  tr� ch�i l�n nh�t nh�n s� 
MAX_MEMBER_COUNT = 16; 
MS_STATE = 1; 
MS_TONG1ID = 10;-- script viet hoa By http://tranhba.com  hai bang h�i ��ch bang h�i ID 
MS_TONG2ID = 11; 

WIN_TONGEXP = 1200; 
LOSE_TONGEXP = 1400; 

MS_TOTALPK = 250;-- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��nh ch�t k� tha nh� ch�i ��ch t�ng s� l�n 
MS_TOTALKO = 251;-- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i � PK chi�n d�ch trung b� ��nh ch�t ��ch t�ng s� l�n 

MS_TONG1VALUE = 13; -- script viet hoa By http://tranhba.com  ghi ch�p bang h�i 1 ��ch tranh t�i tr��c m�t ��ch t�ch ph�n 
MS_TONG2VALUE = 14; 
MS_ARENAID = 15; 

PKWINBONUS = 3; 
LOSEBONUS = 1; 

TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi�y c�ng b� m�t c�i chi�n hu�ng 
TIMER_2 = 25 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chi�n t�ng th�i gian l� 1Hour 
GO_TIME = 480 * FRAME2TIME / TIMER_1; -- script viet hoa By http://tranhba.com  ghi danh th�i gian l� 10 

MS_NEWSVALUE = 9; -- script viet hoa By http://tranhba.com  nhi�m v� trung c�t gi� tin t�c thay ��i l��ng ��ch ��a ph��ng 
JOINSTATE = 242; 
MISSIONID = 5; 
WORLDIDXBEGIN = 213; 

function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nh� ch�i y�u c�u r�i �i tr� ch�i 
function LeaveGame() 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh�i ph�c nguy�n th�y tr�n doanh 
SetRevPos(CS_RevId, CS_RevData) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
SetFightState(0); 

SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
NewWorld(GetLeavePos()) 
end; 

function GameOver() 
PTab = {}; 
for i = 1, 500 do 
idx , pidx = GetNextPlayer(MISSIONID, idx, 0); 
if (idx == 0 ) then 
break 
end 
PTab[i] = pidx; 
end 

PCount = getn(PTab); 
OldPlayer = PlayerIndex; 
for i = 1, PCount do 
PlayerIndex = PTab[i] 
LeaveGame() 
end; 
PlayerIndex = OldPlayer; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function JoinCamp(Camp) 
SetFightState(0) 
LeaveTeam() 
if (GetMSPlayerCount(MISSIONID, Camp) >= MAX_MEMBER_COUNT) then 
Say("Ph��ng n�y b�y gi� s� ng��i �� �� , kh�ng th� gia nh�p !",0) 
return 
end; 

AddMSPlayer(MISSIONID, Camp); 
SetTaskTemp(JOINSTATE, 1); 
SetCurCamp(Camp); 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � chi�n tr��ng trung s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200, 1); 

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

-- script viet hoa By http://tranhba.com  thi�t tr� tr��c m�t nh� ch�i ��ch t� vong ch�n v�n 
	SetDeathScript("\\script\\missions\\citywar_arena\\death.lua");
W,X,Y = GetWorldPos(); 
-- script viet hoa By http://tranhba.com  thi�t tr� l�n sau t� vong t�m th�i s�ng l�i �i�m 
if (Camp == 1) then 
SetTempRevPos(GetLeavePos()); 
str = GetName().."<#> �� ti�n v�o "..GetMissionS(1).."<#> 1 ph��ng , b�y gi� th�nh vi�n ��m l� "..GetMSPlayerCount(MISSIONID,1); 
SetPos(CampPos1[1], CampPos1[2]) 
elseif (Camp == 2) then 
SetTempRevPos(GetLeavePos()); 
str = GetName().."<#> �� ti�n v�o "..GetMissionS(2).."<#> 1 ph��ng , b�y gi� th�nh vi�n ��m l� "..GetMSPlayerCount(MISSIONID,2); 
SetPos(CampPos2[1], CampPos2[2]) 
else 
return 
end; 

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
-- script viet hoa By http://tranhba.com  phe th�ng l�i ��t ���c 1800 v�n kim ti�n , ��t ���c 12000 bang h�i kinh nghi�m # phe th�t b�i gi�m b�t 14000 bang h�i kinh nghi�m 
function WinBonus(camp) 
if (camp == 1) then 
NotifyArenaResult(GetMissionV(MS_ARENAID), 1); -- script viet hoa By http://tranhba.com  th�ng b�o th� nh�t ph��ng th�ng l�i 
AddTongExp(GetMissionS(1), WIN_TONGEXP ) 
-- script viet hoa By http://tranhba.com  SubTongExp(GetMissionS(2), LOSE_TONGEXP) 
else 
NotifyArenaResult(GetMissionV(MS_ARENAID), 0); -- script viet hoa By http://tranhba.com  th�ng b�o th� hai ph��ng th�ng l�i 
AddTongExp(GetMissionS(2), WIN_TONGEXP ) 
-- script viet hoa By http://tranhba.com  SubTongExp(GetMissionS(1), LOSE_TONGEXP) 
end; 
end;
