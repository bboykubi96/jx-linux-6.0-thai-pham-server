if (not __FESTIVAL_HEAD__) then 
__FESTIVAL_HEAD__ = 1; 

IncludeLib("BATTLE"); 
Include([[\script\missions\springfestival\festival_file_npc_head.lua]]); 
	Include("\\script\\lib\\gb_taskfuncs.lua") -- script viet hoa By http://tranhba.com 
	Include("\\script\\lib\\common.lua")
-- script viet hoa By http://tranhba.com  th��ng tr� gi� b� ph�n 
-- script viet hoa By http://tranhba.com DescLink_LiGuan = "<#><link=image[0,13]:\\spr\\npcres\\enemy\\enemy195\\enemy195_st.spr> �ng gi� n� en #<link>" 

FE_PREPAREMISSIONID = 30; 
FE_MISSIONID = 31; 

FE_FRAME = 18; -- script viet hoa By http://tranhba.com  m�i gi�y 18 tr�nh 
FE_REFRASHTIME = 15 * FE_FRAME; -- script viet hoa By http://tranhba.com  m�i 15 gi�y c� m�t l�n tr�ch 
FE_VANISHTIME = 10 * FE_FRAME; -- script viet hoa By http://tranhba.com  gi�ng sinh tinh linh d�ng l�i 10 gi�y 
FE_RUNINTERVER = 30 * FE_FRAME; -- script viet hoa By http://tranhba.com 30 gi�y m�t l�n , c� th� th�ng b�o tr� ch�i 
FE_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  m�i ng��i nhi�u nh�t m�t ng�y ch�i 5 l�n 
FE_LEVELLIMIT = 50; -- script viet hoa By http://tranhba.com  nh� ch�i tham gia c�n nh� nh�t c�p b�c 

FE_PREPARETIME = 57; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� kh� 
FE_FAIRY_SMALLTIMERID = 58; -- script viet hoa By http://tranhba.com  c� tr�ch t�nh gi� kh� 
FE_REPORT_SMALLTIMERID = 59; -- script viet hoa By http://tranhba.com RunMission d�ng t�nh gi� kh� # 
FE_INTERVER = 5 * FE_FRAME; -- script viet hoa By http://tranhba.com 5 gi�y x�c ph�t c� tr�ch h�a thanh s� tr�ch x�c ph�t kh� 

-- script viet hoa By http://tranhba.com GLB tr� gi� 
GLB_FE_PHASE = 849; -- script viet hoa By http://tranhba.com  m�a xu�n ho�t ��ng ��ch th�i gian 
-- script viet hoa By http://tranhba.com =============== c�ng tr�ch t��ng quan ================== 
FE_NPCID = 361; -- script viet hoa By http://tranhba.com  c� ra tr�ch ��ch NCP index 
FE_MAPID = {584, 585}; -- script viet hoa By http://tranhba.com  gi�ng sinh ho�t ��ng b�n �� Id 

FE_SMALLMAPCOUNT = 19; -- script viet hoa By http://tranhba.com  t�ng c�ng c� 12 t� ti�u b�n �� 
FE_MOUSECOUNT_MIN = 10; -- script viet hoa By http://tranhba.com  m�t ti�u b�n �� m�t l�n �t nh�t c� ��a th� s� l��ng 
FE_MOUSECOUNT_MAX = 10; -- script viet hoa By http://tranhba.com  m�t ti�u b�n �� m�t l�n nhi�u nh�t c� ��a th� s� l��ng 
FE_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  m�i tr� ch�i nhi�u nh�t 10 ng��i # 
FE_NIANSHOU_XUANYUN = 10; -- script viet hoa By http://tranhba.com  n�m th� m�i b� c�ng k�ch 10 l�n li�n b� h�n m� 
FE_ALL_MAXPLAYERCOUNT = 100; -- script viet hoa By http://tranhba.com  t�ng c�ng nhi�u nh�t 120 ng��i # 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ========= nhi�m v� thay ��i l��ng =============== 
TK_FE_LEAVERMAPID = 1123; -- script viet hoa By http://tranhba.com  t�n tr� tr�ng s�ng tr�n ��ch mapid 
TK_FE_LEAVERPOSX = 1124; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i x t�a �� �i�m 
TK_FE_LEAVERPOSY = 1125; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i y t�a �� �i�m 

TK_FE_DAYKEY = 1126; -- script viet hoa By http://tranhba.com  ghi ch�p l� m�t ng�y kia 
TK_FE_PLAYTIMES = 1127; -- script viet hoa By http://tranhba.com  ghi ch�p m�t ng�y b�n trong ch�i s� l�n 

TK_FE_COUNT_ONETIME = 1128; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c �i�m bao nhi�u c� 

TK_FE_RANK = 1129; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c ��ch ��ng h�ng # 

TK_FE_GROUPID = 1130; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch Group s� 
TK_FE_EXP_BEISHU = 1131; -- script viet hoa By http://tranhba.com  ��t ���c kinh nghi�m b�i s� 
TK_FE_EXP_TIME = 1132; -- script viet hoa By http://tranhba.com  ��t ���c g�p ��i ��ch th�i gian 

TK_FE_ATTACKED_TIMES = 1133; -- script viet hoa By http://tranhba.com  ghi ch�p n�m th� b� c�ng k�ch s� l�n 
TK_FE_ATTACKED_INTERVER = 1134; -- script viet hoa By http://tranhba.com  b�nh th��ng nh� ch�i s� d�ng ��o c� gian c�ch 

-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com MS b� ph�n # 
MS_FE_STATE = 1; 
MS_FE_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  d�ng �� ghi ch�p d�ng cho giao th� ��ch ti�n h�nh c� tr�ch h�a thanh tr� tr�ch #0# thanh tr� tr�ch #1# c� ra tr�ch 
MS_FE_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
MS_FE_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi ch�p b�t ��u ��ch b�n �� ��ch ID 
MS_FE_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� thay ��i l��ng 
MS_FE_GAMECOUNT = 6; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c b�t ��u ��ch tr� ch�i c� ��m 
-- script viet hoa By http://tranhba.com  th��ng l��ng b� ph�n # 
FESTIVAL_SHREWMOUSE = "springfestival07"; 
FE_ANIMALNAME = " qu�i th� "; 
FE_MOUSENAME = " m�t t�ch ��a tr� "; -- script viet hoa By http://tranhba.com  gi�ng sinh tinh linh t�n 
FE_GIFTNAME = " l�u l�i l� v�t "; -- script viet hoa By http://tranhba.com  l� v�t NPC ��ch t�n 
FE_SIGNNPCNAME = "<color=yellow> nha m�n sai d�ch <color>:"; -- script viet hoa By http://tranhba.com  ghi danh �ng gi� n� en ��ch t�n 
FE_MAPPOINTFLORDER = "springfestival2006"; 
FE_NIGHT_BEGINTIME = 1900; 
FE_NIGHT_ENDTIME = 2300; 
FE_NOON_BEGINTIME = 1200; 
FE_NOON_ENDTIME = 1400; 
FE_DARK_BEGINTIME = 100; 
FE_DARK_ENDTIME = 300; 
FESTIVAL_OK = 1; -- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i kh�ng ��nh b�y t� 
FESTIVAL_NO = 0; -- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i h�y b� b�y t� 
FESTIVAL_ENTERSPEED = 16; -- script viet hoa By http://tranhba.com  ti�n h�nh tr� ch�i nh� ch�i ��ch t�c �� 
FESTIVAL_LEAVERSPEED = -1; -- script viet hoa By http://tranhba.com  r�i �i tr� ch�i nh� ch�i ��ch t�c �� 

-- script viet hoa By http://tranhba.com  b� x�c gi�ng sinh tinh linh 
function festival_putfairy() 
local nNPCCount; 
local PosTab; -- script viet hoa By http://tranhba.com  d�ng cho ghi ch�p 
local i, j; 
local nPosX, nPosY; 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(FE_MAPID[2]) 
local scriptfile = [[\script\missions\springfestival\npcs\festival_shrewmouse.lua]]; 

		local nBeginID = GetMissionV(MS_FE_BEGINGMAPID) + 1;
local nGameCount = GetMissionV(MS_FE_GAMECOUNT); 
		local nLoopLimit = nBeginID + nGameCount - 1;

for i = nBeginID, nLoopLimit do 
if (i > FE_SMALLMAPCOUNT) then 
j = mod(i, FE_SMALLMAPCOUNT); 
else 
j = i; 
end; 
nNPCCount = random(FE_MOUSECOUNT_MIN, FE_MOUSECOUNT_MAX); 
			local PosFile = format("\\settings\\maps\\"..FE_MAPPOINTFLORDER.."\\elf_%d.txt", j);
PosTab = getndata(PosFile, nNPCCount) 

tabadddiagnpc(PosTab, scriptfile, FE_NPCID, FE_MOUSENAME) 
end; 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  thanh tr� gi�ng sinh tinh linh 
function festival_clearfairy(szNPCName) 
if ("string" ~= type(szNPCName)) then 
return 
end; 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(FE_MAPID[2]); 
ClearMapNpcWithName(FE_MAPID[2], szNPCName); -- script viet hoa By http://tranhba.com  �em t�t c� n�m th� thanh tr� 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  gia nh�p v�o trong tr� ch�i 
function festival_joingame() 
local nNowTime = tonumber(date("%y%m%d")); 
if (GetTask(TK_FE_DAYKEY) ~= nNowTime) then 
SetTask(TK_FE_DAYKEY, nNowTime); 
SetTask(TK_FE_PLAYTIMES, 0); 
end; 

-- script viet hoa By http://tranhba.com  ti�n h�nh ��m h�t 
local nTimes = GetTask(TK_FE_PLAYTIMES); 
if (nTimes >= FE_MAXPLAYTIMES) then 
Talk(1, "", FE_SIGNNPCNAME.." h�m nay ng��i �� t�i 5 l�n , n�u kh�ng ngh� ng�i m�t ch�t �i !"); 
return 
end; 

if (GetLevel() < FE_LEVELLIMIT) then 
Talk(1, "", FE_SIGNNPCNAME.." c�p b�c c�a ng��i qu� th�p , ta kh�ng mu�n ng��i g�p nguy hi�m , ��i ��n 50 c�p sau tr� l�i �i ."); 
return 
end; 


if (gb_GetTask(FESTIVAL_SHREWMOUSE, 1) ~= 1) then 
local nNowTime = tonumber(GetLocalDate("%H%M")); 
local bOn = 0; 
if ((nNowTime >= FE_NIGHT_BEGINTIME and nNowTime <= FE_NIGHT_ENDTIME) or 
(nNowTime >= FE_NOON_BEGINTIME and nNowTime <= FE_NOON_ENDTIME) or 
(nNowTime >= FE_DARK_BEGINTIME and nNowTime <= FE_DARK_ENDTIME)) then 
bOn = 1; 
end; 
if (bOn == 0) then 
Talk(1, "", FE_SIGNNPCNAME.." ch�ng ta �ang chu�n b� ��i ph� qu�i th� k� ho�ch , ho�t ��ng �em t� 12:00 ��n 14:00, bu�i t�i 19:00 ��n 23:00, n�a ��m 1:00 ��n 3:00, ��n l�c �� mu�n t�i nga !"); 
return 
else 
Talk(1, "", FE_SIGNNPCNAME.." ng��i c�ng mu�n �i ��nh qu�i v�t a ? d�n ���ng ng��i c�a �� �i r�i , � 0 ph�n , 15 ph�n , 30 ph�n , 45 ph�n �em tr� l�i ."); 
return 
end; 
end; 

local ww, xx, yy = GetWorldPos(); 
SetTask(TK_FE_LEAVERMAPID, ww); 
SetTask(TK_FE_LEAVERPOSX, xx); 
SetTask(TK_FE_LEAVERPOSY, yy); 
local szFile = [[\settings\maps\]]..FE_MAPPOINTFLORDER..[[\player.txt]]; 
local nPosX, nPosY; 
nPosX, nPosY = getadatabetween(szFile, 2, 15); 
NewWorld(FE_MAPID[1], floor(nPosX / 32), floor(nPosY / 32)); 
end; 

-- script viet hoa By http://tranhba.com  tr� ch�i k�t th�c 
function festival_gameover(nMapID, nMissionID) 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(nMapID); 

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
festival_setplayerleaverstate(); 
NewWorld(GetTask(TK_FE_LEAVERMAPID), GetTask(TK_FE_LEAVERPOSX), GetTask(TK_FE_LEAVERPOSY)); 
end; 
PlayerIndex = OldPlayer; 
SubWorld = OldWorld; 
end; 

-- script viet hoa By http://tranhba.com  ki�m so�t tr�ng th�i c�a m�nh 
function festival_get_exptimes() 
local exp_time = GetTask(TK_FE_EXP_TIME) 
local gametime = GetGameTime() 
local nBeishu = GetTask(TK_FE_EXP_BEISHU); 
		if (exp_time == 0 or exp_time + 30 <= gametime) then
return 1 
elseif (nBeishu ~= 2 and nBeishu ~= 4) then 
return 1 
else 
return nBeishu; 
end 
end 

function festival_setplayertoprepare() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o chu�n b� tr�ng th�i �i�m ti�n h�nh tr�ng th�i thi�t tr� 
ForbitSkill(FESTIVAL_OK); 
SetMoveSpeed(FESTIVAL_ENTERSPEED); 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200, 1); 
-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
SetFightState(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetLogoutRV(FESTIVAL_OK); 
-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(FESTIVAL_NO); 

-- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbitAura(FESTIVAL_OK) 
-- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
ForbidEnmity(FESTIVAL_OK) 
-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 

-- script viet hoa By http://tranhba.com  b�t ��u h�n c�ng kh�ng th� PK 
SetPKFlag(FESTIVAL_NO) 
-- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
DisabledStall(FESTIVAL_OK); 
ForbitTrade(FESTIVAL_NO); 

ForbidChangePK(FESTIVAL_OK); 
DisabledUseTownP(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
end; 

function festival_setplayerleaverstate() -- script viet hoa By http://tranhba.com  nh� ch�i r�i �i tr� ch�i th�i �i�m ti�n h�nh tr�ng th�i thi�t tr� 
ForbitSkill(FESTIVAL_NO); 
SetMoveSpeed(FESTIVAL_LEAVERSPEED); 

RestoreOwnFeature(); -- script viet hoa By http://tranhba.com  �em t�t c� m�i ng��i bi�n th�nh th� ra l� d�ng v� 
local i; 
for i = 1035, 1048 do 
ConsumeItem( -1, 1000, 6, 1, i, 1 ); 
end; 

-- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbitAura(FESTIVAL_NO) 
-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,0); 
-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
SetFightState(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(FESTIVAL_OK); 
-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 

-- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
ForbidEnmity( FESTIVAL_NO ) 
-- script viet hoa By http://tranhba.com  b�t ��u h�n c�ng kh�ng th� PK 
SetPKFlag(FESTIVAL_NO) 
-- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
DisabledStall(FESTIVAL_NO); 
ForbitTrade(FESTIVAL_NO); 

local nCamp = GetCamp(); 
SetCurCamp(nCamp); 

ForbidChangePK(FESTIVAL_NO); 
DisabledUseTownP(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
end; 

function festival_setplayertogame() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o tr� ch�i th�i �i�m ti�n h�nh tr�ng th�i thi�t tr� 
ForbitSkill(FESTIVAL_OK); 
SetMoveSpeed(FESTIVAL_ENTERSPEED); 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,1); 

		SetTask(TK_FE_PLAYTIMES, GetTask(TK_FE_PLAYTIMES) + 1);
-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetLogoutRV(FESTIVAL_OK); 

-- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbitAura(FESTIVAL_OK) 
SetFightState(FESTIVAL_OK); 
-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 

-- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
ForbidEnmity( FESTIVAL_OK ) 
-- script viet hoa By http://tranhba.com  b�t ��u h�n c�ng kh�ng th� PK 
SetPKFlag(FESTIVAL_OK) 
-- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
DisabledStall(FESTIVAL_OK); 
ForbitTrade(FESTIVAL_NO); 

ForbidChangePK(FESTIVAL_OK); 
SetCurCamp(1); -- script viet hoa By http://tranhba.com  thi�t tr� t�m th�i tr�n doanh 
DisabledUseTownP(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
end; 

-- script viet hoa By http://tranhba.com  sinh th�nh m�t t��ng ��i vu tr��c m�t nh� ch�i ��ch ch�n h�ng 
function festival_make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 

-- script viet hoa By http://tranhba.com  ki�m tra n�n nh� ch�i c� hay kh�ng c�n �ang trong tr� ch�i , th�nh c�ng tr� v� PlayerIndex n�u kh�ng tr� v� nil 
function festival_check_pl(szPlayName) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � tr��c m�t ph�c v� kh� 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(FE_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � ch� ��nh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
-- script viet hoa By http://tranhba.com  ki�m tra ��o c� c� ���c hay kh�ng b� s� d�ng 
function itemuseplacecheck(nType) -- script viet hoa By http://tranhba.com nType :1�� c�ng c�ng ��o c� #2�� n�m th� chuy�n d�ng ��o c� #3�� b�nh th��ng nh� ch�i chuy�n nghi�p ��o c� 
local ww, xx, yy = GetWorldPos(); 
if (FE_MAPID[2] ~= ww) then 
Talk(1, "","N�n v�t ph�m ch� d�ng v�i m�a xu�n ho�t ��ng ."); 
return 0; 
end; 

if (GetTask(TK_FE_GROUPID) <= FE_SMALLMAPCOUNT and 2 == nType) then 
Talk(1, "","Ch� c� ��nh tr�ch nh� ch�i m�i c� th� s� d�ng n�n m�t n� "); 
return 0; 
end; 

if (GetTask(TK_FE_GROUPID) > FE_SMALLMAPCOUNT and 3 == nType) then 
Talk(1, "","Ch� c� m�t lo�i nh� ch�i m�i c� th� s� d�ng n�n v�t ph�m ."); 
return 0; 
end; 

return 1 
end; 
-- script viet hoa By http://tranhba.com  t�m ���c ��i l�p tr�n doanh , n�m th� ��> nh� ch�i , nh� ch�i ��> n�m th� 
function festival_getgroupid(nGroupId) 
if (nGroupId < 1) then 
return nil 
end; 

if (nGroupId > FE_SMALLMAPCOUNT) then 
return nGroupId - FE_SMALLMAPCOUNT; 
else 
	        return nGroupId + FE_SMALLMAPCOUNT;
end; 
end; 

function festival_go_other_place() -- script viet hoa By http://tranhba.com  ng�u nhi�n truy�n t�i �i�m ban ��u 
local nBeginMapID = GetMissionV(MS_FE_BEGINGMAPID); 
local nGroupId = GetTask(TK_FE_GROUPID); 

    	local nMapId = nBeginMapID + nGroupId - 1;
    	nMapId = mod(nMapId, FE_SMALLMAPCOUNT) + 1;
local szFile = [[\settings\maps\]]..FE_MAPPOINTFLORDER..[[\elf_]]..nMapId..[[.txt]]; 
local PosX, PosY = getadata(szFile); 
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_go_back(nBeginMapID) -- script viet hoa By http://tranhba.com  ng�u nhi�n truy�n t�i �i�m ban ��u 
local nGroupId = GetTask(TK_FE_GROUPID); 

    	local nMapId = nBeginMapID + nGroupId - 1;
    	nMapId = mod(nMapId, FE_SMALLMAPCOUNT) + 1;
local szFile = [[\settings\maps\]]..FE_MAPPOINTFLORDER..[[\player.txt]]; 
		local PosX, PosY = getadatabetween(szFile, 8 + 8 * nMapId, 15 + 8 * nMapId);
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_checkinterver() 
local gametime = GetGameTime(); 
if (GetTask(TK_FE_ATTACKED_INTERVER) > gametime) then 
return 0; 
else 
	        SetTask(TK_FE_ATTACKED_INTERVER, gametime + 2);
return 1; 
end; 
end; 
end; 
