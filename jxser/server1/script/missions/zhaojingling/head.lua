PREPARE_MAP = 961 -- script viet hoa By http://tranhba.com  chu�n b� n�i ch�n �� 
GAME_MAP = 958 -- script viet hoa By http://tranhba.com  n�i so t�i �� 
MAXGAMETIME = 3 -- script viet hoa By http://tranhba.com  m�i ng�y nhi�u nh�t tham gia tr�ng ��m 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  kh�o nghi�m 
MAXPLAYERCOUNT = 10 -- script viet hoa By http://tranhba.com  m�i ��u tr��ng nhi�u nh�t 10 ng��i , t�ng c�ng 12 c� ��u tr��ng 
GAMECOUNT = 12 -- script viet hoa By http://tranhba.com  m�i tr�ng c� 12 t�m b�n �� ,GAMECOUNT = 1 
ALL_MAXPLAYERCOUNT = 120 -- script viet hoa By http://tranhba.com  m�i tr�ng nhi�u nh�t 120 ng��i , m�i l�n m� ra tranh t�i c� th� c� r�t nhi�u tr�ng 
ALLPLAYERCOUNT = 360 -- script viet hoa By http://tranhba.com  m�i m� ra m�t l�n nhi�u nh�t cho ph�p 360 c� nh� ch�i tham gia 
LEASTPLAYERCOUNT = 2 -- script viet hoa By http://tranhba.com  m�i tr�ng cho ph�p ��ch �t nh�t nh� ch�i ��m 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - kh�o nghi�m 
PREPARETIME = 5 -- script viet hoa By http://tranhba.com  chu�n b� th�i gian , ��n v� ph�t 
GAMETIME = 10 -- script viet hoa By http://tranhba.com  tranh t�i th�i gian , ��n v� ph�t 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

MINLEVEL = 125 -- script viet hoa By http://tranhba.com  nh� ch�i c�p b�c h�n ch� , �t nh�t 125 c�p , xoay ng��i kh�ng h�n ch� c�p b�c 
PREPAREPOSENDLINE = 15 -- script viet hoa By http://tranhba.com "\\settings\\maps\\chrismas\\player.txt"����׼�������͵�Ľ�����
GAMEPOSLINECOUNT = 7 -- script viet hoa By http://tranhba.com "\\settings\\maps\\chrismas\\player.txt"�����������������͵������
TSK_LEAVERMAPID = 2323 -- script viet hoa By http://tranhba.com  t�n tr� r�i �i ghi danh �i�m ��ch mapid 
TSK_LEAVERPOSX = 2324 -- script viet hoa By http://tranhba.com  t�n tr� r�i �i ghi danh �i�m ��ch x t�a �� �i�m 
TSK_LEAVERPOSY = 2325 -- script viet hoa By http://tranhba.com  t�n tr� r�i �i ghi danh �i�m ��ch y t�a �� �i�m 

TSK_DAYKEY = 2326 -- script viet hoa By http://tranhba.com  ghi ch�p l� m�t ng�y kia 
TSK_PLAYTIMES = 2327 -- script viet hoa By http://tranhba.com  ghi ch�p m�t ng�y b�n trong ch�i s� l�n 

TSK_COUNT_ONETIME = 2328 -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c �i�m bao nhi�u c� 
TSK_RANK = 2329 -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c ��ch ��ng h�ng # 

TSK_GROUPID = 2330 -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch Group s� 

TSK_IS_AWARD = 2331 -- script viet hoa By http://tranhba.com  ghi ch�p c� hay kh�ng �� d�n t��ng 
TSK_IS_AWARD_DAYKEY = 2332 -- script viet hoa By http://tranhba.com  ghi ch�p l� ng�y n�o �� ��ch d�n t��ng 

POSPATH = "\\settings\\maps\\chrismas\\player.txt"

function ResetTaskA(TSK_A, TSK_DATE_A) 
local nCurDate = tonumber(GetLocalDate("%Y%m%d")) 
local nRecordDate = GetTask(TSK_DATE_A) 

if nCurDate ~= nRecordDate then 
SetTask(TSK_DATE_A, nCurDate) 
SetTask(TSK_A, 0) 
end 
end 

function AddTaskA(TSK_A, TSK_DATE_A, nAddValue) 
ResetTaskA(TSK_A, TSK_DATE_A) 
local nValue = GetTask(TSK_A) 
	return SetTask(TSK_A, nValue + nAddValue)	
end 

function GetTaskA(TSK_A, TSK_DATE_A) 
ResetTaskA(TSK_A, TSK_DATE_A) 
return GetTask(TSK_A) 
end 

function setentermapstate() 
ForbitSkill(1) 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,1) 
-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
SetFightState(0) 
-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetLogoutRV(1) 
-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(0) 
-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(0) 

-- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbitAura(1) 
-- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
ForbidEnmity(1) 
-- script viet hoa By http://tranhba.com  c�m ch� pk 
SetPKFlag(0) 
-- script viet hoa By http://tranhba.com  c�m ch� giao d�ch 
DisabledStall(1) 
ForbitTrade(0) 
-- script viet hoa By http://tranhba.com  c�m ch� s�a ��i PK tr�ng th�i 
ForbidChangePK(1) 
-- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh 
DisabledUseTownP(1) 
end 

function setleavemapstate() 
ForbitSkill(0) 

SetTaskTemp(200,0) 
SetFightState(0) 
SetPunish(1) 
SetCreateTeam(1) 

ForbitAura(0) 
ForbidEnmity(0) 
SetPKFlag(0) 
DisabledStall(0) 
ForbitTrade(0) 

ForbidChangePK(0) 
DisabledUseTownP(0) 
end 

function getplayermapid(nPlayerIndex) 
local _, _, nMapIndex = CallPlayerFunction(nPlayerIndex, GetPos) 
local nMapId = SubWorldIdx2ID(nMapIndex) 
return nMapId 
end 
