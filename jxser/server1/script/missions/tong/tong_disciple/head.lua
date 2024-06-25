if (not CHRISMAS_HEAD) then 
CHRISMAD_HEAD = 1; 

IncludeLib("BATTLE"); 
Include([[\script\missions\tong\tong_disciple\npcpoint.lua]]); 
	Include("\\script\\lib\\common.lua")
	Include("\\script\\lib\\gb_taskfuncs.lua")
Include([[\script\missions\tong\tong_head.lua]]); 

-- script viet hoa By http://tranhba.com  th��ng tr� gi� b� ph�n 
DIS_MISSIONID = 38; 
DIS_PREPAREMISSIONID = 37; 
DIS_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  m�i tr� ch�i nhi�u nh�t 10 ng��i # 
DIS_ALL_MAXPLAYERCOUNT = 120; -- script viet hoa By http://tranhba.com  t�ng c�ng nhi�u nh�t 120 ng��i # 

DIS_FRAME = 18; -- script viet hoa By http://tranhba.com  m�i gi�y 18 tr�nh 
DIS_REFRASHTIME = 15 * DIS_FRAME; -- script viet hoa By http://tranhba.com  m�i 15 gi�y c� m�t l�n tr�ch 
DIS_VANISHTIME = 10 * DIS_FRAME; -- script viet hoa By http://tranhba.com  gi�ng sinh tinh linh d�ng l�i 10 gi�y 
DIS_RUNINTERVER = 30 * DIS_FRAME; -- script viet hoa By http://tranhba.com 30 gi�y m�t l�n , c� th� th�ng b�o tr� ch�i 
DIS_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  m�i ng��i nhi�u nh�t m�t ng�y ch�i 3 l�n 

DIS_PREPARETIME = 65; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� kh� 
DIS_SMALLTIMERID = 66; -- script viet hoa By http://tranhba.com  c� tr�ch t�nh gi� kh� 
DIS_RUNTIMERID = 67; -- script viet hoa By http://tranhba.com RunMission d�ng t�nh gi� kh� # 
DIS_INTERVER = 5 * DIS_FRAME; -- script viet hoa By http://tranhba.com 5 gi�y x�c ph�t c� tr�ch h�a thanh s� tr�ch x�c ph�t kh� 

-- script viet hoa By http://tranhba.com GLB tr� gi� 
GLB_DIS_PHASE = 852; 
CHRISMAS_SHREWMOUSE = "TONG_SHREWMOUSE"; 
-- script viet hoa By http://tranhba.com =============== c�ng tr�ch t��ng quan ================== 
DIS_NPCID = 323; -- script viet hoa By http://tranhba.com  c� ra tr�ch ��ch NCP index 
DIS_MAPID = {821, 822}; -- script viet hoa By http://tranhba.com  gi�ng sinh ho�t ��ng b�n �� Id 

DIS_SMALLMAPCOUNT = 12; -- script viet hoa By http://tranhba.com  t�ng c�ng c� 12 t� ti�u b�n �� 
DIS_MOUSECOUNT = 10; -- script viet hoa By http://tranhba.com  m�t ti�u b�n �� m�t l�n �t nh�t c� ��a th� s� l��ng 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ========= nhi�m v� thay ��i l��ng =============== 
-- script viet hoa By http://tranhba.com  TK_LEAVERMAPID = 2392; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i mapid 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSX = 2393; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i x t�a �� �i�m 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSY = 2394; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i y t�a �� �i�m 

DIS_TK_DAYKEY = 2395; -- script viet hoa By http://tranhba.com  ghi ch�p l� m�t ng�y kia 
DIS_TK_PLAYTIMES = 2396; -- script viet hoa By http://tranhba.com  ghi ch�p m�t ng�y b�n trong ch�i s� l�n 

DIS_COUNT_ONETIME = 2397; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c �i�m bao nhi�u c� 
DIS_TK_RANK = 2398; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c ��ch ��ng h�ng # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  TK_GROUPID = 2399; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch Group s� 
-- script viet hoa By http://tranhba.com  TK_EXP_BEISHU = 2400; -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  TK_EXP_TIME = 2401; 
-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com MS b� ph�n # 
MS_STATE = 1; 
MS_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  d�ng �� ghi ch�p d�ng cho giao th� ��ch ti�n h�nh c� tr�ch h�a thanh tr� tr�ch #0# thanh tr� tr�ch #1# c� ra tr�ch 
MS_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
MS_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi ch�p b�t ��u ��ch b�n �� ��ch ID 

MS_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� thay ��i l��ng 

DIS_MOUSENAME = " �� t� "; -- script viet hoa By http://tranhba.com  gi�ng sinh tinh linh t�n 


-- script viet hoa By http://tranhba.com  b� x�c gi�ng sinh tinh linh 
function putfairy() 
local nNPCCount; 
local PosTab; -- script viet hoa By http://tranhba.com  d�ng cho ghi ch�p 
local i, j; 
local nPosX, nPosY; 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(DIS_MAPID[2]) 
local scriptfile = [[\script\missions\tong\tong_disciple\npcs\shrewmouse.lua]]; 

for i = 1, DIS_SMALLMAPCOUNT do 
nNPCCount = DIS_MOUSECOUNT; 
			local PosFile = format("\\settings\\maps\\chrismas\\elf_%d.txt", i);
PosTab = getndata(PosFile, nNPCCount) 

tabadddiagnpc(PosTab, scriptfile, DIS_NPCID, DIS_MOUSENAME) 
end; 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  thanh tr� gi�ng sinh tinh linh 
function clearfairy() 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(DIS_MAPID[2]); 
ClearMapNpcWithName(DIS_MAPID[2], DIS_MOUSENAME); 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  gia nh�p v�o trong tr� ch�i 
function joindisciple(nTongID, nWorkshopID) 
local nNowTime = tonumber(GetLocalDate("%y%m%d")); 
if (GetTask(DIS_TK_DAYKEY) ~= nNowTime) then 
SetTask(DIS_TK_DAYKEY, nNowTime); 
SetTask(DIS_TK_PLAYTIMES, 0); 
end; 

-- script viet hoa By http://tranhba.com  ti�n h�nh ��m h�t 
local nTimes = GetTask(DIS_TK_PLAYTIMES); 
if (GetTask(DIS_TK_PLAYTIMES) >= DIS_MAXPLAYTIMES) then 
Talk(1, "", "<color=yellow> ho�t ��ng ph��ng t�ng qu�n <color>: m�i ng�y ch� c� th� tham gia 5 l�n �� t� chi�u m� ho�t ��ng "); 
return 
end; 

local nPhase = gb_GetTask(CHRISMAS_SHREWMOUSE, 1); 
if (nPhase ~= 1) then 
if (nPhase == 3) then 
Talk(1, "","Ho�t ��ng ph��ng t�ng qu�n : xin ch� ch�t l�n b�t ��u . ghi danh th�i gian l� 0h, 3h, 6h , 21h, ��ch 15 ph�n , 30 ph�n c�ng 45 ph�t ."); 
return 
end; 
Talk(1, "","Ho�t ��ng ph��ng t�ng qu�n : chi�u m� ho�t ��ng �ang ti�n h�nh , ghi danh th�i gian l� 0h, 3h, 6h , 21h, ��ch 15 ph�n , 30 ph�n c�ng 45 ph�t ."); 
return 
end 

-- script viet hoa By http://tranhba.com  bang h�i ��ch ph�n �o�n 
if (festival_tongjudge(1, nTongID, nWorkshopID) == 0) then 
return 
end; 

local szFile = [[\settings\maps\chrismas\player.txt]]; 
ww, xx, yy = GetWorldPos() 
local nPosX, nPosY; 
SetTask(TK_LEAVERMAPID, ww); 
SetTask(TK_LEAVERPOSX, xx); 
SetTask(TK_LEAVERPOSY, yy); 
nPosX, nPosY = getadatatow(szFile, 2, 15); 
NewWorld(DIS_MAPID[1], floor(nPosX / 32), floor(nPosY / 32)); 
end; 

-- script viet hoa By http://tranhba.com  tr� ch�i k�t th�c 
function gameover(nMapid, nMissionID) 
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
elseif (nBeishu ~= 2 or nBeishu ~= 4) then 
return 1 
else 
return nBeishu; 
end 
end 

function setplayerreadystate() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o chu�n b� tr�ng 
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

function setplayerleaverstate() -- script viet hoa By http://tranhba.com  nh� ch�i r�i �i tr� ch�i tr�ng 
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

function setplayerjoinstate() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o tr� ch�i 
ForbitSkill(1); 
SetMoveSpeed(18); 

		SetTask(DIS_TK_PLAYTIMES, GetTask(DIS_TK_PLAYTIMES) + 1);
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
local nPlMsIdx = PIdx2MSDIdx(DIS_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � ch� ��nh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
end; 
