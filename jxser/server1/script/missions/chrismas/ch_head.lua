if (not CHRISMAS_HEAD) then 
CHRISMAD_HEAD = 1; 

IncludeLib("BATTLE"); 
Include([[\script\missions\chrismas\ch_file_npc_head.lua]]); 
	Include("\\script\\lib\\gb_taskfuncs.lua") -- script viet hoa By http://tranhba.com 
	Include("\\script\\lib\\common.lua")
-- script viet hoa By http://tranhba.com  th��ng tr� gi� b� ph�n 
DescLink_LiGuan = "<#><link=image[0,13]:\\spr\\npcres\\enemy\\enemy195\\enemy195_st.spr> �ng gi� n� en :<link>" 

CH_MISSIONID = 28; 
CH_PREPAREMISSIONID = 29; 
CH_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  m�i tr� ch�i nhi�u nh�t 10 ng��i # 
CH_ALL_MAXPLAYERCOUNT = 120; -- script viet hoa By http://tranhba.com  t�ng c�ng nhi�u nh�t 120 ng��i # 

CH_FRAME = 18; -- script viet hoa By http://tranhba.com  m�i gi�y 18 tr�nh 
CH_REFRASHTIME = 15 * CH_FRAME; -- script viet hoa By http://tranhba.com  m�i 15 gi�y c� m�t l�n tr�ch 
CH_VANISHTIME = 10 * CH_FRAME; -- script viet hoa By http://tranhba.com  gi�ng sinh l� t�i d�ng l�i 10 gi�y 
CH_RUNINTERVER = 30 * CH_FRAME; -- script viet hoa By http://tranhba.com 30 gi�y m�t l�n , c� th� th�ng b�o tr� ch�i 
CH_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  m�i ng��i nhi�u nh�t m�t ng�y ch�i 5 l�n 

CH_PREPARETIME = 54; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� kh� 
CH_SMALLTIMERID = 55; -- script viet hoa By http://tranhba.com  c� tr�ch t�nh gi� kh� 
CH_RUNTIMERID = 56; -- script viet hoa By http://tranhba.com RunMission d�ng t�nh gi� kh� # 
CH_INTERVER = 5 * CH_FRAME; -- script viet hoa By http://tranhba.com 5 gi�y x�c ph�t c� tr�ch h�a thanh s� tr�ch x�c ph�t kh� 
CH_TOTALINTERVER = 60 * 60 * CH_FRAME; -- script viet hoa By http://tranhba.com 1 gi� sau t�t Mission 

-- script viet hoa By http://tranhba.com GLB tr� gi� 
GLB_CH_PHASE = 848; 
CHRISMAS_SHREWMOUSE = " gi�ng sinh ho�t ��ng "; 
-- script viet hoa By http://tranhba.com =============== c�ng tr�ch t��ng quan ================== 
CH_NPCID = 1236; -- script viet hoa By http://tranhba.com  c� ra tr�ch ��ch NCP index 
CH_MAPID = {582, 583}; -- script viet hoa By http://tranhba.com  gi�ng sinh ho�t ��ng b�n �� Id 

CH_SMALLMAPCOUNT = 12; -- script viet hoa By http://tranhba.com  t�ng c�ng c� 12 t� ti�u b�n �� 
CH_MOUSECOUNT_MIN = 10; -- script viet hoa By http://tranhba.com  m�t ti�u b�n �� m�t l�n �t nh�t c� ��a th� s� l��ng 
CH_MOUSECOUNT_MAX = 10; -- script viet hoa By http://tranhba.com  m�t ti�u b�n �� m�t l�n nhi�u nh�t c� ��a th� s� l��ng 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ======================================= 
CHRIMAS_SALEID = 136; -- script viet hoa By http://tranhba.com  th��ng nh�n b�n �� ID 

-- script viet hoa By http://tranhba.com ========= nhi�m v� thay ��i l��ng =============== ��u kh�ng c� ��nh , c�n tr�u ch�c m�t ch�t tra t�m 
TK_LEAVERMAPID = 2323; -- script viet hoa By http://tranhba.com  t�n tr� tr�ng s�ng tr�n ��ch mapid 
TK_LEAVERPOSX = 2324; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i x t�a �� �i�m 
TK_LEAVERPOSY = 2325; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i y t�a �� �i�m 

TK_DAYKEY = 2326; -- script viet hoa By http://tranhba.com  ghi ch�p l� m�t ng�y kia 
TK_PLAYTIMES = 2327; -- script viet hoa By http://tranhba.com  ghi ch�p m�t ng�y b�n trong ch�i s� l�n 
TK_PLAYMAXTIMES = 2521;-- script viet hoa By http://tranhba.com  nhi�u nh�t tham gia 50 tr�ng 

TK_COUNT_ONETIME = 2328; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c �i�m bao nhi�u c� 

TK_RANK = 2329; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c ��ch ��ng h�ng # 

TK_GROUPID = 2330; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch Group s� 
TK_EXP_BEISHU = 2331; -- script viet hoa By http://tranhba.com  
TK_EXP_TIME = 2332; 
-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com ============= d�ng �� bi�u hi�n chi�n b�o ��ch ============== 
CH_TOTALPOINT = 1; 
CH_GETITEM = 17; 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com MS b� ph�n # 
MS_STATE = 1; 
MS_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  d�ng �� ghi ch�p d�ng cho giao th� ��ch ti�n h�nh c� tr�ch h�a thanh tr� tr�ch #0# thanh tr� tr�ch #1# c� ra tr�ch 
MS_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
MS_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi ch�p b�t ��u ��ch b�n �� ��ch ID 

MS_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� thay ��i l��ng 

MSS_MOUSENAME = 1; -- script viet hoa By http://tranhba.com  gi�ng sinh l� t�i ��ch t�n 


-- script viet hoa By http://tranhba.com  b� x�c gi�ng sinh l� t�i 
function putfairy() 
local nNPCCount; 
local PosTab; -- script viet hoa By http://tranhba.com  d�ng cho ghi ch�p 
local i, j; 
local nPosX, nPosY; 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CH_MAPID[2]) 
local scriptfile = [[\script\missions\chrismas\npcs\shrewmouse.lua]]; 

local name = GetMissionS(MSS_MOUSENAME); 
for i = 1, CH_SMALLMAPCOUNT do 
nNPCCount = random(CH_MOUSECOUNT_MIN, CH_MOUSECOUNT_MAX); 
			local PosFile = format("\\settings\\maps\\chrismas\\elf_%d.txt", i);
PosTab = getndata(PosFile, nNPCCount) 

tabadddiagnpc(PosTab, scriptfile, CH_NPCID, name) 
end; 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  thanh tr� gi�ng sinh l� t�i 
function clearfairy() 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CH_MAPID[2]); 
ClearMapNpcWithName(CH_MAPID[2],"Gi�ng sinh l� t�i "); 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  gia nh�p v�o trong tr� ch�i 
function joingame() 
local nNowTime = tonumber(date("%y%m%d")); 
if (GetTask(TK_PLAYMAXTIMES) >= 50) then 
Talk(1, "", "<color=yellow> �ng gi� n� en <color>: m�i ng��i nhi�u nh�t ch� c� th� tham gia 50 l�n t�m ki�m l� v�t , ng��i kh�ng th� tham gia n�a li�u !"); 
return 
end; 

if (GetTask(TK_DAYKEY) ~= nNowTime) then 
SetTask(TK_DAYKEY, nNowTime); 
SetTask(TK_PLAYTIMES, 0); 
end; 

-- script viet hoa By http://tranhba.com  ti�n h�nh ��m h�t 
local nTimes = GetTask(TK_PLAYTIMES); 
if (GetTask(TK_PLAYTIMES) >= CH_MAXPLAYTIMES) then 
Talk(1, "", "<color=yellow> �ng gi� n� en <color>: 1 ng�y ch� so v�i cu�c so t�i 5 tr�ng !"); 
return 
end; 


if (gb_GetTask("Gi�ng sinh ho�t ��ng ", 1) ~= 1) then 
local nNowTime = tonumber(GetLocalDate("%H%M")); 
local bOn = 0; 
if ((nNowTime >=1900 and nNowTime <=2300) or (nNowTime >=1200 and nNowTime <=1400)) then 
bOn = 1; 
end; 
if (bOn == 0) then 
Talk(1, "", "<color=yellow> �ng gi� n� en <color>: t� m�i ng�y 12:00-4:00 c�ng bu�i t�i 19:00-23:00 khai tri�n gi�ng sinh ho�t ��ng , b�y gi� c�n kh�ng c� ��n ho�t ��ng th�i gian ho�c l� ho�t ��ng c�n ch�a c� b�t ��u !"); 
return 
else 
Talk(1, "", "<color=yellow> �ng gi� n� en <color>: tr� ch�i �ang ti�n h�nh , theo nh� th� t� t�i # m�i tr�ng 15#30#45 ph�n c� b�t ��u ."); 
return 
end; 
end; 

local szFile = [[\settings\maps\chrismas\player.txt]]; 
local nPosX, nPosY; 
nPosX, nPosY = getadatatow(szFile, 2, 15); 
NewWorld(CH_MAPID[1], floor(nPosX / 32), floor(nPosY / 32)); 
end; 

-- script viet hoa By http://tranhba.com  tr� ch�i k�t th�c 
function gameover() 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CH_MAPID[2]); 

local pidx; 
local idx = 0; 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local i; 
for i = 1, 400 do 
idx, pidx = GetNextPlayer(CH_MISSIONID, idx, 0); 
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
setplayerleaverstate(); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)); 
end; 
PlayerIndex = OldPlayer; 
SubWorld = OldWorld; 
end; 

-- script viet hoa By http://tranhba.com  ki�m so�t tr�ng th�i c�a m�nh 
function get_exptimes() 
local exp_time = GetTask(TK_EXP_TIME) 
local gametime = GetGameTime() 
local nBeishu = GetTask(TK_EXP_BEISHU); 
		if (exp_time == 0 or exp_time + 30 <= gametime) then
return 1 
elseif (nBeishu ~= 2 and nBeishu ~= 4) then 
return 1 
else 
return nBeishu; 
end 
end 

function setplayerreadystate() -- script viet hoa By http://tranhba.com  nh� ch�i r�i �i tr� ch�i tr�ng th�i �i�m ti�n h�nh tr�ng th�i thi�t tr� 
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

function setplayerleaverstate() -- script viet hoa By http://tranhba.com  nh� ch�i r�i �i tr� ch�i tr�ng th�i �i�m ti�n h�nh tr�ng th�i thi�t tr� 
ForbitSkill(0); 
SetMoveSpeed(-1); 

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

function setplayerjoinstate() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o tr� ch�i th�i �i�m ti�n h�nh tr�ng th�i thi�t tr� 
ForbitSkill(1); 
SetMoveSpeed(18); 

		SetTask(TK_PLAYTIMES, GetTask(TK_PLAYTIMES) + 1);
		SetTask(TK_PLAYMAXTIMES, GetTask(TK_PLAYMAXTIMES) + 1);
-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,1); 
-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
-- script viet hoa By http://tranhba.com  SetFightState(1); 
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
local nPlMsIdx = PIdx2MSDIdx(CH_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � ch� ��nh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
end; 

function isXmasTime(bAward) 
local nDate = tonumber(GetLocalDate("%y%m%d")); 
if (bAward == 1) then 
if (nDate >= 061222 and nDate <= 070114) then 
return 1; 
end; 
elseif (nDate >= 061222 and nDate <= 070114) then 
return 1; 
end; 
return 0; 
end;
