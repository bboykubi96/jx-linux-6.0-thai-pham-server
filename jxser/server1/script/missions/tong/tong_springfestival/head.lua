if (1) then -- script viet hoa By http://tranhba.com  not __FESTIVAL_HEAD__) then 
__FESTIVAL_HEAD__ = 1; 

IncludeLib("BATTLE"); 
	Include("\\script\\missions\\tong\\tong_springfestival\\npcpoint.lua");
	Include("\\script\\lib\\common.lua")
	Include("\\script\\lib\\gb_taskfuncs.lua")
	Include("\\script\\missions\\tong\\tong_head.lua");

-- script viet hoa By http://tranhba.com  th��ng tr� gi� b� ph�n 
SF_PREPAREMISSIONID = 39; 
SF_MISSIONID = 40; 

SF_FRAME = 18; -- script viet hoa By http://tranhba.com  m�i gi�y 18 tr�nh 
SF_REFRASHTIME = 15 * SF_FRAME; -- script viet hoa By http://tranhba.com  m�i 15 gi�y c� m�t l�n tr�ch 
SF_VANISHTIME = 10 * SF_FRAME; -- script viet hoa By http://tranhba.com  gi�ng sinh tinh linh d�ng l�i 10 gi�y 
SF_RUNINTERVER = 30 * SF_FRAME; -- script viet hoa By http://tranhba.com 30 gi�y m�t l�n , c� th� th�ng b�o tr� ch�i 
SF_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  m�i ng��i nhi�u nh�t m�t ng�y ch�i 5 l�n 
SF_LEVELLIMIT = 50; -- script viet hoa By http://tranhba.com  nh� ch�i tham gia c�n nh� nh�t c�p b�c 

SF_PREPARETIME = 68; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� kh� 
SF_FAIRY_SMALLTIMERID = 69; -- script viet hoa By http://tranhba.com  c� tr�ch t�nh gi� kh� 
SF_REPORT_SMALLTIMERID = 70; -- script viet hoa By http://tranhba.com RunMission d�ng t�nh gi� kh� # 
SF_INTERVER = 5 * SF_FRAME; -- script viet hoa By http://tranhba.com 5 gi�y x�c ph�t c� tr�ch h�a thanh s� tr�ch x�c ph�t kh� 

-- script viet hoa By http://tranhba.com GLB tr� gi� 
GLB_SF_PHASE = 853; -- script viet hoa By http://tranhba.com  m�a xu�n ho�t ��ng ��ch th�i gian 
-- script viet hoa By http://tranhba.com =============== c�ng tr�ch t��ng quan ================== 
SF_NPCID = 361; -- script viet hoa By http://tranhba.com  c� ra tr�ch ��ch NCP index 
SF_MAPID = {823, 824}; -- script viet hoa By http://tranhba.com  gi�ng sinh ho�t ��ng b�n �� Id 

SF_SMALLMAPCOUNT = 19; -- script viet hoa By http://tranhba.com  t�ng c�ng c� 12 t� ti�u b�n �� 
SF_MOUSECOUNT_MIN = 10; -- script viet hoa By http://tranhba.com  m�t ti�u b�n �� m�t l�n �t nh�t c� ��a th� s� l��ng 
SF_MOUSECOUNT_MAX = 10; -- script viet hoa By http://tranhba.com  m�t ti�u b�n �� m�t l�n nhi�u nh�t c� ��a th� s� l��ng 
SF_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  m�i tr� ch�i nhi�u nh�t 10 ng��i # 
SF_NIANSHOU_XUANYUN = 10; -- script viet hoa By http://tranhba.com  n�m th� m�i b� c�ng k�ch 10 l�n li�n b� h�n m� 
SF_ALL_MAXPLAYERCOUNT = 100; -- script viet hoa By http://tranhba.com  t�ng c�ng nhi�u nh�t 120 ng��i # 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ========= nhi�m v� thay ��i l��ng =============== 
-- script viet hoa By http://tranhba.com  TK_LEAVERMAPID = 2402; -- script viet hoa By http://tranhba.com  t�n tr� tr�ng s�ng tr�n ��ch mapid 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSX = 2403; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i x t�a �� �i�m 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSY = 2404; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i y t�a �� �i�m 

SF_TK_DAYKEY = 2405; -- script viet hoa By http://tranhba.com  ghi ch�p l� m�t ng�y kia 
SF_TK_PLAYTIMES = 2406; -- script viet hoa By http://tranhba.com  ghi ch�p m�t ng�y b�n trong ch�i s� l�n 

SF_COUNT_ONETIME = 2407; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c �i�m bao nhi�u c� 
SF_TK_RANK = 2408; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c ��ch ��ng h�ng # 

-- script viet hoa By http://tranhba.com  TK_GROUPID = 2409; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch Group s� 
-- script viet hoa By http://tranhba.com  TK_EXP_BEISHU = 2410; -- script viet hoa By http://tranhba.com  ��t ���c kinh nghi�m b�i s� 
-- script viet hoa By http://tranhba.com  TK_EXP_TIME = 2411; -- script viet hoa By http://tranhba.com  ��t ���c g�p ��i ��ch th�i gian 
-- script viet hoa By http://tranhba.com  
TK_ATTACKED_TIMES = 2412; -- script viet hoa By http://tranhba.com  ghi ch�p n�m th� b� c�ng k�ch s� l�n 
TK_ATTACKED_INTERVER = 2413; -- script viet hoa By http://tranhba.com  b�nh th��ng nh� ch�i s� d�ng ��o c� gian c�ch 

-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com MS b� ph�n # 
MS_SF_STATE = 1; 
MS_SF_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  d�ng �� ghi ch�p d�ng cho giao th� ��ch ti�n h�nh c� tr�ch h�a thanh tr� tr�ch #0# thanh tr� tr�ch #1# c� ra tr�ch 
MS_SF_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
MS_SF_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi ch�p b�t ��u ��ch b�n �� ��ch ID 
MS_SF_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� thay ��i l��ng 
MS_SF_GAMECOUNT = 6; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c b�t ��u ��ch tr� ch�i c� ��m 
-- script viet hoa By http://tranhba.com  th��ng l��ng b� ph�n # 
FESTIVAL_SHREWMOUSE = "TONG_SPFESTIVAL"; 
SF_ANIMALNAME = "Qu# th?"; 
SF_MOUSENAME = "#a tr?m nh� t chu h"; -- script viet hoa By http://tranhba.com  gi�ng sinh tinh linh t�n 
SF_GIFTNAME = "L?v# # l t�c "; -- script viet hoa By http://tranhba.com  l� v�t NPC ��ch t�n 
SF_SIGNNPCNAME = "<color=yellow>T b�c g qu# Ho# #ng ph#ng<color>: "; -- script viet hoa By http://tranhba.com  ghi danh �ng gi� n� en ��ch t�n 
SF_MAPPOINTFLORDER = "springfestival2006"; 
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
SubWorld = SubWorldID2Idx(SF_MAPID[2]) 
		local scriptfile = "\\script\\missions\\tong\\tong_springfestival\\npcs\\festival_shrewmouse.lua";

		local nBeginID = GetMissionV(MS_SF_BEGINGMAPID) + 1;
local nGameCount = GetMissionV(MS_SF_GAMECOUNT); 
		local nLoopLimit = nBeginID + nGameCount - 1;

for i = nBeginID, nLoopLimit do 
if (i > SF_SMALLMAPCOUNT) then 
j = mod(i, SF_SMALLMAPCOUNT); 
else 
j = i; 
end; 
nNPCCount = random(SF_MOUSECOUNT_MIN, SF_MOUSECOUNT_MAX); 
			local PosFile = format("\\settings\\maps\\%s\\elf_%d.txt", SF_MAPPOINTFLORDER, j);
PosTab = getndata(PosFile, nNPCCount) 

tabadddiagnpc(PosTab, scriptfile, SF_NPCID, SF_MOUSENAME) 
end; 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  thanh tr� gi�ng sinh tinh linh 
function festival_clearfairy(szNPCName) 
if ("string" ~= type(szNPCName)) then 
return 
end; 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(SF_MAPID[2]); 
ClearMapNpcWithName(SF_MAPID[2], szNPCName); -- script viet hoa By http://tranhba.com  �em t�t c� n�m th� thanh tr� 
SubWorld = OldWorld; 
end; 

-- script viet hoa By http://tranhba.com  gia nh�p v�o trong tr� ch�i 
function joinspringfestival(nTongID, nWorkshopID) 
local nNowTime = tonumber(GetLocalDate("%y%m%d")); 
if (GetTask(SF_TK_DAYKEY) ~= nNowTime) then 
SetTask(SF_TK_DAYKEY, nNowTime); 
SetTask(SF_TK_PLAYTIMES, 0); 
end; 

-- script viet hoa By http://tranhba.com  ti�n h�nh ��m h�t 
local nTimes = GetTask(SF_TK_PLAYTIMES); 
if (nTimes >= SF_MAXPLAYTIMES) then 
Talk(1, "", SF_SIGNNPCNAME.."H# nay ng#i # #n 5 l# r m�nh , hay l?ngh?m khi�m ch l�u #!"); 
return 
end; 

if (GetLevel() < SF_LEVELLIMIT) then 
Talk(1, "", SF_SIGNNPCNAME.."#ng c# c# ng#i qu?th#, ta kh t�n g mu l�p ng#i g# nguy hi#, ch?#n c# 50 r m�nh quay l t�c ."); 
return 
end; 

local nPhase = gb_GetTask(FESTIVAL_SHREWMOUSE, 1); 
if (nPhase ~= 1) then 
if (nPhase == 3) then 
Talk(1, "", "T b�c g qu# Ho# #ng ph#ng: H# #t #i ho# #ng sau. B t�ng #u v k� 1h, 4h, 7h mang 22h, v k� ph l�u th?15, 30, 45 b t�ng #u cho b# danh."); 
return 
end; 
Talk(1, "", "T b�c g qu# Ho# #ng ph#ng: Ho# #ng #nh ni y�t th? s�n ng di c� ra, h# #i #t sau v#. M# #t b t�ng #u l b� 1h, 4h, 7h mang 22h, v k� ph l�u th?15, 30, 45 b t�ng #u cho b# danh."); 
return 
end 

-- script viet hoa By http://tranhba.com  ti�n h�nh bang h�i t��ng quan ph�n �o�n 
if (festival_tongjudge(2, nTongID, nWorkshopID) == 0) then 
return 
end; 

local ww, xx, yy = GetWorldPos(); 
SetTask(TK_LEAVERMAPID, ww); 
SetTask(TK_LEAVERPOSX, xx); 
SetTask(TK_LEAVERPOSY, yy); 
		local szFile = format("\\settings\\maps\\%s\\player.txt", SF_MAPPOINTFLORDER);
local nPosX, nPosY; 
nPosX, nPosY = getadatabetween(szFile, 2, 15); 
NewWorld(SF_MAPID[1], floor(nPosX / 32), floor(nPosY / 32)); 
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
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)); 
end; 
PlayerIndex = OldPlayer; 
SubWorld = OldWorld; 
end; 

-- script viet hoa By http://tranhba.com  ki�m so�t tr�ng th�i c�a m�nh 
function festival_get_exptimes() 
local exp_time = GetTask(TK_EXP_TIME) 
local gametime = GetGameTime() 
local nBeishu = GetTask(TK_EXP_BEISHU); 
		if (exp_time == 0 or exp_time + 30 <= gametime) then
return 1 
elseif (nBeishu ~= 2 or nBeishu ~= 4) then 
return 1 
else 
Msg2Player(nBeishu.." l#"); 
return nBeishu; 
end 
end 

function festival_setplayertoprepare() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o chu�n b� tr�ng 
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

function festival_setplayerleaverstate() -- script viet hoa By http://tranhba.com  nh� ch�i r�i �i tr� ch�i th�i �i�m 
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

function festival_setplayertogame() -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o tr� ch�i 
ForbitSkill(FESTIVAL_OK); 
SetMoveSpeed(FESTIVAL_ENTERSPEED); 


-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,1); 

		SetTask(SF_TK_PLAYTIMES, GetTask(SF_TK_PLAYTIMES) + 1);
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
function make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 

-- script viet hoa By http://tranhba.com  ki�m tra n�n nh� ch�i c� hay kh�ng c�n �ang trong tr� ch�i , th�nh c�ng tr� v� PlayerIndex n�u kh�ng tr� v� nil 
function festival_check_pl(szPlayName) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � tr��c m�t ph�c v� kh� 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(SF_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � ch� ��nh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
-- script viet hoa By http://tranhba.com  ki�m tra ��o c� c� ���c hay kh�ng b� s� d�ng 
function itemuseplacecheck(nType) -- script viet hoa By http://tranhba.com nType :1�� c�ng c�ng ��o c� #2�� n�m th� chuy�n d�ng ��o c� #3�� b�nh th��ng nh� ch�i chuy�n nghi�p ��o c� 

if (GetTask(TK_GROUPID) <= SF_SMALLMAPCOUNT and 2 == nType) then 
Talk(1, "", "Ch?c?ng#i ch b�i Qu# th?m# c?th?s?d#g M# n?n ph� "); 
return 0; 
end; 

if (GetTask(TK_GROUPID) > SF_SMALLMAPCOUNT and 3 == nType) then 
Talk(1, "", "Ch?c?ng#i ch b�i b#h th#ng m# s?d#g ## v# ph# n ph� ."); 
return 0; 
end; 

return 1 
end; 
-- script viet hoa By http://tranhba.com  t�m ���c ��i l�p tr�n doanh , n�m th� ��> nh� ch�i , nh� ch�i ��> n�m th� 
function festival_getgroupid(nGroupId) 
if (nGroupId < 1) then 
return nil 
end; 

if (nGroupId > SF_SMALLMAPCOUNT) then 
return nGroupId - SF_SMALLMAPCOUNT; 
else 
	        return nGroupId + SF_SMALLMAPCOUNT;
end; 
end; 

function festival_go_other_place() -- script viet hoa By http://tranhba.com  ng�u nhi�n truy�n t�i �i�m ban ��u 
local nBeginMapID = GetMissionV(MS_SF_BEGINGMAPID); 
local nGroupId = GetTask(TK_GROUPID); 

    	local nMapId = nBeginMapID + nGroupId - 1;
    	nMapId = mod(nMapId, SF_SMALLMAPCOUNT) + 1;
    	local szFile = format("\\settings\\maps\\%s\\elf_%d.txt", SF_MAPPOINTFLORDER, nMapId);
local PosX, PosY = getadata(szFile); 
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_go_back(nBeginMapID) -- script viet hoa By http://tranhba.com  ng�u nhi�n truy�n t�i �i�m ban ��u 
local nGroupId = GetTask(TK_GROUPID); 

    	local nMapId = nBeginMapID + nGroupId - 1;
    	nMapId = mod(nMapId, SF_SMALLMAPCOUNT) + 1;
    	local szFile = format("\\settings\\maps\\%s\\player.txt", SF_MAPPOINTFLORDER);
		local PosX, PosY = getadatabetween(szFile, 8 + 8 * nMapId, 15 + 8 * nMapId);
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_checkinterver() 
local gametime = GetGameTime(); 
if (GetTask(TK_ATTACKED_INTERVER) > gametime) then 
return 0; 
else 
	        SetTask(TK_ATTACKED_INTERVER, gametime + 2);
return 1; 
end; 
end; 
end; 
