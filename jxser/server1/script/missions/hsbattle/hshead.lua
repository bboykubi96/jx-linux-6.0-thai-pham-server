-- script viet hoa By http://tranhba.com  th�i lui ra tr� ch�i sau ��ch s�ng l�i �i�m ID, c�ng ch�nh l� ghi danh ��ch ch� �� �i 
CS_RevId = 2 
CS_RevData = 72; 

-- script viet hoa By http://tranhba.com  gia nh�p song ph��ng tr�n doanh l�c ��ch v� tr� 
CS_CampPos1 = {212, 1819, 2992}; -- script viet hoa By http://tranhba.com  m�u v�ng 
CS_CampPos2 = {212, 1568, 3079}; -- script viet hoa By http://tranhba.com  m�u t�m 
FRAME2TIME = 18; 
-- script viet hoa By http://tranhba.com  tr� ch�i l�n nh�t nh�n s� 
MAX_MEMBER_COUNT = 200; 
MS_STATE = 1; 
MS_TONG1ID = 10;-- script viet hoa By http://tranhba.com  hai bang h�i ��ch bang h�i ID 
MS_TONG2ID = 11; 

MS_SIGN_MONEY = 5000000; -- script viet hoa By http://tranhba.com  ti�n ghi danh 
MS_WIN_MONEY = 8000000; -- script viet hoa By http://tranhba.com  m�i l�n th�ng l�i l�c , ��t ���c ��ch thu v�o 
WIN_TONGEXP = 12000; 
LOSE_TONGEXP = 14000; 

MS_TOTALPK = 250;-- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��nh ch�t k� tha nh� ch�i ��ch t�ng s� l�n 
MS_TOTALKO = 251;-- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i � PK chi�n d�ch trung b� ��nh ch�t ��ch t�ng s� l�n 

MS_TONG1VALUE = 13; -- script viet hoa By http://tranhba.com  ghi ch�p bang h�i 1 ��ch tranh t�i tr��c m�t ��ch t�ch ph�n 
MS_TONG2VALUE = 14; 

PKWINBONUS = 3; 
LOSEBONUS = 1; 

TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi�y c�ng b� m�t c�i chi�n hu�ng 
TIMER_2 = 60 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chi�n t�ng th�i gian l� 1Hour 
GO_TIME = 600 * FRAME2TIME / TIMER_1; -- script viet hoa By http://tranhba.com  ghi danh th�i gian l� 10 gi� 

MS_NEWSVALUE = 9; -- script viet hoa By http://tranhba.com  nhi�m v� trung c�t gi� tin t�c thay ��i l��ng ��ch ��a ph��ng 
JOINSTATE = 242; 
MISSIONID = 7; 

function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nh� ch�i y�u c�u r�i �i tr� ch�i 
function LeaveGame() 
-- script viet hoa By http://tranhba.com leavetype = 0 b�y t� , �em v� tr� thi�t tr�n ��t �� ��ch b�n ngo�i s�n khu v�c # kh�ng ph�i l� chi�n ��u khu v�c # 
-- script viet hoa By http://tranhba.com leavetype = 1 b�y t� , �em v� tr� thi�t � m�t ch� kh�c �� , t�c ho�n to�n r�i �i chi�n tr��ng 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh�i ph�c nguy�n th�y tr�n doanh 
SetRevPos(CS_RevId, CS_RevData) 
SetFightState(0) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 

SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
NewWorld(GetLeavePos()); 
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
-- script viet hoa By http://tranhba.com  � th� hai Mission b�n trong th�m tr��c m�t nh� ch�i 

LeaveTeam() 
if (GetMSPlayerCount(MISSIONID,Camp) >= MAX_MEMBER_COUNT) then 
Say("V�n ��i phi�n nh�n s� �� �� , kh�ng th� gia nh�p li�u !",0) 
return 
end; 

AddMSPlayer(MISSIONID, Camp); 
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
SetRevPos(CS_RevId, CS_RevData); 

-- script viet hoa By http://tranhba.com  thi�t tr� tr��c m�t nh� ch�i ��ch t� vong ch�n v�n 
	SetDeathScript("\\script\\missions\\hsbattle\\hsbattledeath.lua");

-- script viet hoa By http://tranhba.com  thi�t tr� l�n sau t� vong s�ng l�i �i�m 
if (Camp == 1) then 
SetTempRevPos(GetTask(300), GetTask(301) * 32, GetTask(302)* 32); 
str = GetName().."<#> �� ti�n v�o "..GetMissionS(1).."<#> 1 b�n , tr��c m�t th�nh vi�n nh�n s� v� "..GetMSPlayerCount(MISSIONID,1); 
NewWorld(CS_CampPos1[1], CS_CampPos1[2], CS_CampPos1[3]) 
elseif (Camp == 2) then 
SetTempRevPos(GetTask(300), GetTask(301) * 32, GetTask(302)* 32); 
str = GetName().."<#> �� ti�n v�o "..GetMissionS(2).."<#> 1 b�n , tr��c m�t th�nh vi�n nh�n s� v� "..GetMSPlayerCount(MISSIONID,2); 
NewWorld(CS_CampPos2[1], CS_CampPos2[2], CS_CampPos2[3]) 
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
-- script viet hoa By http://tranhba.com  AddTongExp(GetMissionS(1), WIN_TONGEXP ) 
AddTongMoney(GetMissionS(1), MS_WIN_MONEY); 
-- script viet hoa By http://tranhba.com  SubTongExp(GetMissionS(2), LOSE_TONGEXP) 
MoveTongExp(WIN_TONGEXP, GetMissionS(1), GetMissionS(2)) 
else 
-- script viet hoa By http://tranhba.com  AddTongExp(GetMissionS(2), WIN_TONGEXP ) 
AddTongMoney(GetMissionS(2), MS_WIN_MONEY); 
-- script viet hoa By http://tranhba.com  SubTongExp(GetMissionS(1), LOSE_TONGEXP) 
MoveTongExp(WIN_TONGEXP, GetMissionS(2), GetMissionS(1)) 
end; 
end;
