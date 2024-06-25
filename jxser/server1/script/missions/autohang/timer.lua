Include("\\script\\missions\\autohang\\head.lua");

g_nPassTimes = 0; 
g_bFreeTime = 0; -- script viet hoa By http://tranhba.com  mi�n ph� th�i gian 

function OnTimer() 

g_bFreeTime = AEXP_IsFreeTimeDoubleExp(); 

-- script viet hoa By http://tranhba.com  thi�t tr� c� hay kh�ng mi�n ph� , c�ng v�i kinh nghi�m b�i s� (>=1) 
SetAutoHangFreeFlag(g_bFreeTime, AEXP_FREEDATE_EXPFACTOR); 

-- script viet hoa By http://tranhba.com  n�m th� �i tr�nh t� b�n b�n ��ch OnTimer x� l� h�m s� 
nRun = TimerFuncForAutoHang(); 

-- script viet hoa By http://tranhba.com  ph�c v� kh� thi�t tr� OnTimer x� l� v� tr�nh t� b�n b�n ( kh�ng h� n�a xu�ng ph�a d��i thi h�nh ) 
if (nRun > 0) then 
return 1; 
end 

PlayerTab = {}; 
pidx = GetFirstPlayerAtSW(); 
i = 1; 
while (pidx > 0) do 
PlayerTab[i] = pidx; 
pidx = GetNextPlayerAtSW(); 
		i = i + 1;
end 

PCount = getn(PlayerTab); 

-- script viet hoa By http://tranhba.com  print("Tr��c m�t hoa ��o ��o nh�n s� : "..PCount); 

OldPlayer = PlayerIndex; 
-- script viet hoa By http://tranhba.com  ng�u nhi�n sinh ra may m�n nh� ch�i , c�ng ��t ���c ng�u nhi�n v�t ph�m - start 
nLockNum = floor(PCount / 100); 
for i = 1, nLockNum do 
nTemp = random(1, PCount); 
PlayerIndex = PlayerTab[nTemp]; 
if (g_bFreeTime == 1) then -- script viet hoa By http://tranhba.com  mi�n ph� th�i gian 
AddItemForAutoHang(); -- script viet hoa By http://tranhba.com  may m�n v�t ph�m 
else 
nPointTime = GetTask(AEXP_TASKID); 
if (nPointTime >= AEXP_TIME_UPDATE) then -- script viet hoa By http://tranhba.com  n�u ng��i n�y treo ky �i�m ��m ch�a �� , th� kh�ng th� l�y ���c may m�n v�t ph�m li�u 
AddItemForAutoHang(); 
end 
end 
end 
-- script viet hoa By http://tranhba.com  ng�u nhi�n sinh ra may m�n nh� ch�i , c�ng ��t ���c ng�u nhi�n v�t ph�m - end 

-- script viet hoa By http://tranhba.com  gia t�ng kinh nghi�m tr� gi� - start 
nValidCount = 0; -- script viet hoa By http://tranhba.com  h�u hi�u treo ky nh� ch�i nh�n s� 
nRet = 0; 
for i = 1, PCount do 
PlayerIndex = PlayerTab[i]; 
nRet = AEXP_AddHangExp(); 
if (nRet > 0) then 
			nValidCount = nValidCount + 1;
end 
end 
-- script viet hoa By http://tranhba.com  gia t�ng kinh nghi�m tr� gi� - end 
PlayerIndex = OldPlayer; 

-- script viet hoa By http://tranhba.com  th�ng k� t� ��ng treo ky nh�n s� 
	g_nPassTimes = g_nPassTimes + 1;
if (g_nPassTimes >= AEXP_STAT_FREQ) then 
CalcAutoHangPlayerCount(SubWorldIdx2ID(), PCount, nValidCount); 
g_nPassTimes = 0; 
end 
end; 

-- script viet hoa By http://tranhba.com  gia t�ng m�t treo ky nh� ch�i ��ch kinh nghi�m tr� gi� 
-- script viet hoa By http://tranhba.com  n�y h�m s� � OnTimer l�c b� AutoAddExpForAllPlayers �i�u d�ng 
function AEXP_AddHangExp() 

nLevel = GetLevel(); 
if (nLevel < AEXP_NEEDLEVEL) then 
Msg2Player("<#> c�ng l�c c�a ng��i qu� k�m # ��n "..AEXP_NEEDLEVEL.."<#> c�p tr� v� n�a �i #"); 
return -1; 
end 

nExp = 0; 
nPointTime = 0; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
if (g_bFreeTime == 1) then-- script viet hoa By http://tranhba.com  mi�n ph� t�ng g�p b�i kinh nghi�m ng�y 
-- script viet hoa By http://tranhba.com  kh�ng c�n t�ch t�m ch�o 
-- script viet hoa By http://tranhba.com  kinh nghi�m t�ng g�p b�i 
nExp = GetAutoHangExpValue(nLevel); 
nExp = nExp * AEXP_FREEDATE_EXPFACTOR; 
else -- script viet hoa By http://tranhba.com  b�nh th��ng ng�y 
nPointTime = GetTask(AEXP_TASKID); 

if (nPointTime == 0) then 
Msg2Player("Ch� c� t�ch t�m ch�o m�i c� th� h�p thu c�i n�y ��o ��ch tinh hoa , m�i/xin ng��i ��n hoa ��o �n s� ch� mua ch�t ch�o ."); -- script viet hoa By http://tranhba.com  Todo 
return -1; 
elseif (nPointTime < AEXP_TIME_UPDATE) then 
Msg2Player("T�ch t�m ch�o ��ch hi�u l�c mau kh�ng c� , ng��i ph�i hoa ��o �n s� n�i �� mua n�a �i�m m�i c� th� gia t�ng c�ng l�c ."); -- script viet hoa By http://tranhba.com  Todo 
return -1; 
end 

nExp = GetAutoHangExpValue(nLevel); 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com  ph�n l�c �o�n - start 
szHour = date("%H"); 
nHour = tonumber(szHour); 

if (nHour < 9) then -- script viet hoa By http://tranhba.com  r�ng s�ng (0~9) 
nExp = floor(nExp * 1.2); 
elseif (nHour < 18) then -- script viet hoa By http://tranhba.com  ban ng�y (9~18) 
nExp = nExp; 
elseif (nHour < 24) then -- script viet hoa By http://tranhba.com  bu�i t�i (18~24) 
nExp = floor(nExp * 0.8); 
end; 
-- script viet hoa By http://tranhba.com  ph�n l�c �o�n - end 

if (nExp > 0) then 
if (g_bFreeTime == 0) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� mi�n ph� , tr� th�i gian 
SetTask(AEXP_TASKID, nPointTime - AEXP_TIME_UPDATE); -- script viet hoa By http://tranhba.com  tr� th�i gian 
end 

AddOwnExp(nExp); -- script viet hoa By http://tranhba.com  th�m kinh nghi�m 
Msg2Player("<#> ng��i kinh nghi�m gia t�ng "..nExp.."<#> �i�m ."); -- script viet hoa By http://tranhba.com  Todo 
else 
WriteLog(GetLoop()..date("%m%d-%H:%M").."Auto AddExp Error!") 
end 

return 1; 
end; 
