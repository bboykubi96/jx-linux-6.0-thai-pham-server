if (not CHRISMAS_HEAD) then 
CHRISMAD_HEAD = 1; 

IncludeLib("BATTLE"); 
Include([[\script\missions\tong\collectgoods\npcpoint.lua]]); 
	Include("\\script\\lib\\common.lua")
	Include("\\script\\lib\\gb_taskfuncs.lua")
Include([[\script\missions\tong\tong_head.lua]]); 

-- script viet hoa By http://tranhba.com  th��ng tr� gi� b� ph�n 
COLLG_PREPAREMISSIONID = 44; 
COLLG_MISSIONID = 45; 
COLLG_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  m�i tr� ch�i nhi�u nh�t 10 ng��i # 
COLLG_ALL_MAXPLAYERCOUNT = 120; -- script viet hoa By http://tranhba.com  t�ng c�ng nhi�u nh�t 120 ng��i # 

COLLG_FRAME = 18; -- script viet hoa By http://tranhba.com  m�i gi�y 18 tr�nh 
COLLG_REFRASHTIME = 15 * COLLG_FRAME; -- script viet hoa By http://tranhba.com  m�i 15 gi�y c� m�t l�n tr�ch 
COLLG_VANISHTIME = 10 * COLLG_FRAME; -- script viet hoa By http://tranhba.com  gi�ng sinh tinh linh d�ng l�i 10 gi�y 
COLLG_RUNINTERVER = 30 * COLLG_FRAME; -- script viet hoa By http://tranhba.com 30 gi�y m�t l�n , c� th� th�ng b�o tr� ch�i 
COLLG_BOMBINTERVER = 30 * COLLG_FRAME; -- script viet hoa By http://tranhba.com 30 gi�y n� tung m�t l�n , 
COLLG_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  m�i ng��i nhi�u nh�t m�t ng�y ch�i 8 l�n 

COLLG_PREPARETIME = 75; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� kh� 
COLLG_SMALLTIMERID = 76; -- script viet hoa By http://tranhba.com  c� tr�ch t�nh gi� kh� 
COLLG_RUNTIMERID = 77; -- script viet hoa By http://tranhba.com RunMission d�ng t�nh gi� kh� # 

COLLG_INTERVER = 5 * COLLG_FRAME; -- script viet hoa By http://tranhba.com 5 gi�y x�c ph�t c� tr�ch h�a thanh s� tr�ch x�c ph�t kh� 
-- script viet hoa By http://tranhba.com  v�t ph�m ��ch index tr� gi� # 
COLLG_GOODSIDX = 1086; 
-- script viet hoa By http://tranhba.com GLB tr� gi� 
GLB_COLLG_PHASE = 918; 
-- script viet hoa By http://tranhba.com =============== c�ng tr�ch t��ng quan ================== 
COLLG_NPCID = 1121; -- script viet hoa By http://tranhba.com  c� ra tr�ch ��ch NCP index 
COLLG_MAPID = {827, 828}; -- script viet hoa By http://tranhba.com  gi�ng sinh ho�t ��ng b�n �� Id 

COLLG_SMALLMAPCOUNT = 23; -- script viet hoa By http://tranhba.com  t�ng c�ng c� 12 t� ti�u b�n �� 
COLLG_MOUSECOUNT = 10; -- script viet hoa By http://tranhba.com  m�t ti�u b�n �� m�t l�n �t nh�t c� ��a th� s� l��ng 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ========= nhi�m v� thay ��i l��ng =============== 
-- script viet hoa By http://tranhba.com  TK_LEAVERMAPID = 2423; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i mapid 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSX = 2424; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i x t�a �� �i�m 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSY = 2425; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i y t�a �� �i�m 

COLLG_TK_DAYKEY = 2402; -- script viet hoa By http://tranhba.com  ghi ch�p l� m�t ng�y kia 
COLLG_TK_PLAYTIMES = 2403; -- script viet hoa By http://tranhba.com  ghi ch�p m�t ng�y b�n trong ch�i s� l�n 

COLLG_COUNT_ONETIME = 2404; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c �i�m bao nhi�u c� 
COLLG_TK_RANK = 2408; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c ��ch ��ng h�ng # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  TK_GROUPID = 2430; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch Group s� 
-- script viet hoa By http://tranhba.com  TK_EXP_TIME = 2432; 

COLLG_TK_BOMB_MARK = 2409; -- script viet hoa By http://tranhba.com  ghi ch�p l� b� th� m�y c� t�c ��n n� trung 
-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com MS b� ph�n # 
COLLG_MS_STATE = 1; 
COLLG_MS_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  d�ng �� ghi ch�p d�ng cho giao th� ��ch ti�n h�nh c� tr�ch h�a thanh tr� tr�ch #0# thanh tr� tr�ch #1# c� ra tr�ch 
COLLG_MS_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
COLLG_MS_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi ch�p b�t ��u ��ch b�n �� ��ch ID 

COLLG_MS_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� thay ��i l��ng 
COLLG_MS_GAMECOUNT = 11; -- script viet hoa By http://tranhba.com  ghi ch�p c� bao nhi�u c� n�i ch�n 
COLLG_NAME = "Thu th# v# ph# bang h#"; 

COLLG_SKILLIDBOMB = 736; 
COLLG_SKILLLVLBOMB = 10; 

function collg_settobomber() 
SetTask(COLLG_TK_BOMB_MARK, -1); 
AddTempMagic(COLLG_SKILLIDBOMB, COLLG_SKILLLVLBOMB); 
SetImmedSkill(0, COLLG_SKILLIDBOMB) 
SetAForbitSkill(COLLG_SKILLIDBOMB,0) 
AddSkillState(705, 10, 0, 20000 * 18); 
end; 

function collg_settonormal() 
SetTask(COLLG_TK_BOMB_MARK, 0); 
SetAForbitSkill(COLLG_SKILLIDBOMB, 1); 
AddTempMagic(COLLG_SKILLIDBOMB, -1 * COLLG_SKILLLVLBOMB); 
SetImmedSkill(0, 1); 
AddSkillState(705, 10, 0, 0); 
end; 

-- script viet hoa By http://tranhba.com  b� x�c gi�ng sinh tinh linh 
function collg_putfairy() 
local nNPCCount; 
local PosTab; -- script viet hoa By http://tranhba.com  d�ng cho ghi ch�p 
local i, j; 
local nPosX, nPosY; 
local OldWorld = SubWorld; 

		local nBeginID = GetMissionV(COLLG_MS_BEGINGMAPID) + 1;
local nGameCount = GetMissionV(COLLG_MS_GAMECOUNT); 
		local nLoopLimit = nBeginID + nGameCount - 1;

for i = nBeginID, nLoopLimit do 
if (i > COLLG_SMALLMAPCOUNT) then 
j = mod(i, COLLG_SMALLMAPCOUNT); 
else 
j = i; 
end; 

if (j >= 20 and j <= 23) then 
				j = j + 4;
end; 
			local PosFile = format("\\settings\\maps\\dragonboatfestival_06\\elf_%d.txt", j);
PosTab = getndata(PosFile, COLLG_MOUSECOUNT) 

tabaddgoods(PosTab); 
end; 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  thanh tr� gi�ng sinh tinh linh 
function collg_clearfairy() 
ClearMapObj(COLLG_MAPID[2]); 
end; 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i c� hay kh�ng sung qu� t�p 
function collg_IsCharged() 
if( GetExtPoint( 0 ) >= 1 ) then 
return 1; 
else 
return 0; 
end; 
end; 
-- script viet hoa By http://tranhba.com  gia nh�p v�o trong tr� ch�i 
function collg_joindisciple(nTongID, nWorkshopID) 
local nNowTime = tonumber(GetLocalDate("%y%m%d")); 
if (GetTask(COLLG_TK_DAYKEY) ~= nNowTime) then 
SetTask(COLLG_TK_DAYKEY, nNowTime); 
SetTask(COLLG_TK_PLAYTIMES, 0); 
end; 

-- script viet hoa By http://tranhba.com  ti�n h�nh ��m h�t 
local nTimes = GetTask(COLLG_TK_PLAYTIMES); 
if (GetTask(COLLG_TK_PLAYTIMES) >= COLLG_MAXPLAYTIMES) then 
Talk(1, "", "<color=yellow> ho�t ��ng ph��ng t�ng qu�n <color>: m�i ng�y ch� c� th� tham gia 5 ��i phi�n thu t�p v�t ph�m ho�t ��ng !"); 
return 
end; 

local nPhase = gb_GetTask(COLLG_NAME, 1); 
if (nPhase ~= 1) then 
if (nPhase == 2) then 
Talk(1, "","Th�t l� ng��ng ng�ng , ng��i d�n ���ng �� mang m�t �t hi�p kh�ch �i r�i , ch� m�t ch�t m�i tr� v� , xin ch� ch�t m�t l�n �i ."); 
Msg2Player("Ho�t ��ng �ang ti�n h�nh , xin ch� ch�t m�t l�n �i ."); 
return 
end; 
Talk(1, "","Tr��c m�t c� r�t nhi�u c�n l�m chuy�n tr�ng y�u , � 0h 00 ��n 1h 00, 12h00 ��i 14h00, 19h 00 �c 22h00 tr� l�i t�m ta ."); 
Msg2Player("Ho�t ��ng kh�ng b�t ��u ."); 
return 
end 

-- script viet hoa By http://tranhba.com  bang h�i ��ch ph�n �o�n 
if (festival_tongjudge(3, nTongID, nWorkshopID) == 0) then 
return 
end; 

local szFile = [[\settings\maps\dragonboatfestival_06\player.txt]]; 
ww, xx, yy = GetWorldPos() 
local nPosX, nPosY; 
SetTask(TK_LEAVERMAPID, ww); 
SetTask(TK_LEAVERPOSX, xx); 
SetTask(TK_LEAVERPOSY, yy); 
nPosX, nPosY = getadatatow(szFile, 2, 15); 
NewWorld(COLLG_MAPID[1], floor(nPosX / 32), floor(nPosY / 32)); 
end; 

-- script viet hoa By http://tranhba.com  tr� ch�i k�t th�c 
function collg_gameover(nMapid, nMissionID) 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(nMapid); 

local pidx; 
local idx = 0; 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local i; 
for i = 1, 400 do 
idx, pidx = GetNextPlayer(nMissionID, idx, 0); 
if (pidx > 0) then 
tabPlayer[i] = pidx; 
end; 

if (0 == idx) then 
break; 
end; 

end; 

local nLoop = getn(tabPlayer); 
for i = 1, nLoop do 
PlayerIndex = tabPlayer[i]; 
collg_setplayerleaverstate(); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)); 
end; 
PlayerIndex = OldPlayer; 
SubWorld = OldWorld; 
end; 

-- script viet hoa By http://tranhba.com  ki�m so�t tr�ng th�i c�a m�nh 
function collg_get_exptimes() 
local exp_time = GetTask(TK_EXP_TIME) 
local gametime = GetGameTime() 
local nBeishu = GetTask(TK_EXP_BEISHU); 
		if (exp_time == 0 or exp_time + 30 <= gametime) then
return 1 
elseif (nBeishu ~= 2 or nBeishu ~= 4) then 
return 1 
else 
return nBeishu; 
end 
end 

function collg_setplayerreadystate() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o chu�n b� tr�ng 
ForbitSkill(1); 
SetMoveSpeed(18); 

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

-- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbitAura(1) 
-- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
ForbidEnmity( 1 ) 
-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 

-- script viet hoa By http://tranhba.com  b�t ��u h�n c�ng kh�ng th� PK 
SetPKFlag(0) 
-- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
DisabledStall(1); 
ForbitTrade(0); 

ForbidChangePK(1); 
DisabledUseTownP(1); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
end; 

function collg_setplayerleaverstate() -- script viet hoa By http://tranhba.com  nh� ch�i r�i �i tr� ch�i tr�ng 
ForbitSkill(0); 
SetMoveSpeed(-1); 

SetAForbitSkill(COLLG_SKILLIDBOMB, 1); 
-- script viet hoa By http://tranhba.com  �i tr� t�c ��n ng��i d�u hi�u 
collg_settonormal(); 
-- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbitAura(0) 
-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,0); 
-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
SetFightState(0); 
-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
-- script viet hoa By http://tranhba.com SetLogoutRV(0); 
-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(1); 
-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(0); 
-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 

-- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
ForbidEnmity( 0 ) 
-- script viet hoa By http://tranhba.com  b�t ��u h�n c�ng kh�ng th� PK 
SetPKFlag(0) 
-- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
DisabledStall(0); 
ForbitTrade(0); 

local nCamp = GetCamp(); 
SetCurCamp(nCamp); 

ForbidChangePK(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
end; 

function collg_setplayerjoinstate() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o tr� ch�i 
ForbitSkill(1); 
SetMoveSpeed(18); 

		SetTask(COLLG_TK_PLAYTIMES, GetTask(COLLG_TK_PLAYTIMES) + 1);
		SetTask(TK_TIME_ALL, GetTask(TK_TIME_ALL) + 1);
SetTask(COLLG_TK_BOMB_MARK, 0); 
-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,1); 
-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
SetFightState(1); 
-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetLogoutRV(1); 

-- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbitAura(1) 
SetFightState(1); 
-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(0); 
-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(0); 
-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 

-- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
ForbidEnmity( 1 ) 
-- script viet hoa By http://tranhba.com  b�t ��u h�n c�ng kh�ng th� PK 
SetPKFlag(1) 
-- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
DisabledStall(1); 
ForbitTrade(0); 

ForbidChangePK(1); 
SetCurCamp(4); -- script viet hoa By http://tranhba.com  thi�t tr� t�m th�i tr�n doanh 
DisabledUseTownP(1); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
end; 

-- script viet hoa By http://tranhba.com  sinh th�nh m�t t��ng ��i vu tr��c m�t nh� ch�i ��ch ch�n h�ng 
function ch_make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 

-- script viet hoa By http://tranhba.com  ki�m tra n�n nh� ch�i c� hay kh�ng c�n �ang trong tr� ch�i , th�nh c�ng tr� v� PlayerIndex n�u kh�ng tr� v� nil 
function ch_check_pl(szPlayName) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � tr��c m�t ph�c v� kh� 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(COLLG_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � ch� ��nh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
function OnCancel() 
end; 
end; 
