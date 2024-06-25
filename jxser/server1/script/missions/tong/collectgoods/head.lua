if (not CHRISMAS_HEAD) then 
CHRISMAD_HEAD = 1; 

IncludeLib("BATTLE"); 
Include([[\script\missions\tong\collectgoods\npcpoint.lua]]); 
	Include("\\script\\lib\\common.lua")
	Include("\\script\\lib\\gb_taskfuncs.lua")
Include([[\script\missions\tong\tong_head.lua]]); 

-- script viet hoa By http://tranhba.com  th­êng trÞ gi¸ bé phËn 
COLLG_PREPAREMISSIONID = 44; 
COLLG_MISSIONID = 45; 
COLLG_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  mçi trß ch¬i nhiÒu nhÊt 10 ng­êi # 
COLLG_ALL_MAXPLAYERCOUNT = 120; -- script viet hoa By http://tranhba.com  tæng céng nhiÒu nhÊt 120 ng­êi # 

COLLG_FRAME = 18; -- script viet hoa By http://tranhba.com  mçi gi©y 18 tr¸nh 
COLLG_REFRASHTIME = 15 * COLLG_FRAME; -- script viet hoa By http://tranhba.com  mçi 15 gi©y cµ mét lÇn tr¸ch 
COLLG_VANISHTIME = 10 * COLLG_FRAME; -- script viet hoa By http://tranhba.com  gi¸ng sinh tinh linh dõng l¹i 10 gi©y 
COLLG_RUNINTERVER = 30 * COLLG_FRAME; -- script viet hoa By http://tranhba.com 30 gi©y mét lÇn , cã thÓ th«ng b¸o trß ch¬i 
COLLG_BOMBINTERVER = 30 * COLLG_FRAME; -- script viet hoa By http://tranhba.com 30 gi©y næ tung mét lÇn , 
COLLG_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  mçi ng­êi nhiÒu nhÊt mét ngµy ch¬i 8 lÇn 

COLLG_PREPARETIME = 75; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê khÝ 
COLLG_SMALLTIMERID = 76; -- script viet hoa By http://tranhba.com  cµ tr¸ch tÝnh giê khÝ 
COLLG_RUNTIMERID = 77; -- script viet hoa By http://tranhba.com RunMission dïng tÝnh giê khÝ # 

COLLG_INTERVER = 5 * COLLG_FRAME; -- script viet hoa By http://tranhba.com 5 gi©y xóc ph¸t cµ tr¸ch hßa thanh së tr¸ch xóc ph¸t khÝ 
-- script viet hoa By http://tranhba.com  vËt phÈm ®Ých index trÞ gi¸ # 
COLLG_GOODSIDX = 1086; 
-- script viet hoa By http://tranhba.com GLB trÞ gi¸ 
GLB_COLLG_PHASE = 918; 
-- script viet hoa By http://tranhba.com =============== cïng tr¸ch t­¬ng quan ================== 
COLLG_NPCID = 1121; -- script viet hoa By http://tranhba.com  cµ ra tr¸ch ®Ých NCP index 
COLLG_MAPID = {827, 828}; -- script viet hoa By http://tranhba.com  gi¸ng sinh ho¹t ®éng b¶n ®å Id 

COLLG_SMALLMAPCOUNT = 23; -- script viet hoa By http://tranhba.com  tæng céng cã 12 tê tiÓu b¶n ®å 
COLLG_MOUSECOUNT = 10; -- script viet hoa By http://tranhba.com  mét tiÓu b¶n ®å mét lÇn Ýt nhÊt cµ ®Þa thö sè l­îng 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ========= nhiÖm vô thay ®æi l­îng =============== 
-- script viet hoa By http://tranhba.com  TK_LEAVERMAPID = 2423; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i mapid 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSX = 2424; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i x täa ®é ®iÓm 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSY = 2425; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i y täa ®é ®iÓm 

COLLG_TK_DAYKEY = 2402; -- script viet hoa By http://tranhba.com  ghi chÐp lµ mét ngµy kia 
COLLG_TK_PLAYTIMES = 2403; -- script viet hoa By http://tranhba.com  ghi chÐp mét ngµy bªn trong ch¬i sè lÇn 

COLLG_COUNT_ONETIME = 2404; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®iÓm bao nhiªu c¸ 
COLLG_TK_RANK = 2408; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®Ých ®øng hµng # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  TK_GROUPID = 2430; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých Group sè 
-- script viet hoa By http://tranhba.com  TK_EXP_TIME = 2432; 

COLLG_TK_BOMB_MARK = 2409; -- script viet hoa By http://tranhba.com  ghi chÐp lµ bÞ thø mÊy c¸ t¹c ®¹n næ trung 
-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com MS bé phËn # 
COLLG_MS_STATE = 1; 
COLLG_MS_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  dïng ®Ó ghi chÐp dïng cho giao thÕ ®Ých tiÕn hµnh cµ tr¸ch hßa thanh trõ tr¸ch #0# thanh trõ tr¸ch #1# cµ ra tr¸ch 
COLLG_MS_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
COLLG_MS_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi chÐp b¾t ®Çu ®Ých b¶n ®å ®Ých ID 

COLLG_MS_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê thay ®æi l­îng 
COLLG_MS_GAMECOUNT = 11; -- script viet hoa By http://tranhba.com  ghi chÐp cã bao nhiªu c¸ n¬i chèn 
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

-- script viet hoa By http://tranhba.com  b¸ xøc gi¸ng sinh tinh linh 
function collg_putfairy() 
local nNPCCount; 
local PosTab; -- script viet hoa By http://tranhba.com  dïng cho ghi chÐp 
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


-- script viet hoa By http://tranhba.com  thanh trõ gi¸ng sinh tinh linh 
function collg_clearfairy() 
ClearMapObj(COLLG_MAPID[2]); 
end; 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i cã hay kh«ng sung qu¸ t¹p 
function collg_IsCharged() 
if( GetExtPoint( 0 ) >= 1 ) then 
return 1; 
else 
return 0; 
end; 
end; 
-- script viet hoa By http://tranhba.com  gia nhËp vµo trong trß ch¬i 
function collg_joindisciple(nTongID, nWorkshopID) 
local nNowTime = tonumber(GetLocalDate("%y%m%d")); 
if (GetTask(COLLG_TK_DAYKEY) ~= nNowTime) then 
SetTask(COLLG_TK_DAYKEY, nNowTime); 
SetTask(COLLG_TK_PLAYTIMES, 0); 
end; 

-- script viet hoa By http://tranhba.com  tiÕn hµnh ®Õm hÕt 
local nTimes = GetTask(COLLG_TK_PLAYTIMES); 
if (GetTask(COLLG_TK_PLAYTIMES) >= COLLG_MAXPLAYTIMES) then 
Talk(1, "", "<color=yellow> ho¹t ®éng ph­êng tæng qu¶n <color>: mçi ngµy chØ cã thÓ tham gia 5 ®æi phiªn thu tËp vËt phÈm ho¹t ®éng !"); 
return 
end; 

local nPhase = gb_GetTask(COLLG_NAME, 1); 
if (nPhase ~= 1) then 
if (nPhase == 2) then 
Talk(1, "","ThËt lµ ng­îng ngïng , ng­êi dÉn ®­êng ®· mang mét Ýt hiÖp kh¸ch ®i råi , chê mét chót míi trë vÒ , xin chê chót mét lÇn ®i ."); 
Msg2Player("Ho¹t ®éng ®ang tiÕn hµnh , xin chê chót mét lÇn ®i ."); 
return 
end; 
Talk(1, "","Tr­íc m¾t cã rÊt nhiÒu cÇn lµm chuyÖn träng yÕu , ë 0h 00 ®Õn 1h 00, 12h00 ®ãi 14h00, 19h 00 ¸c 22h00 trë l¹i t×m ta ."); 
Msg2Player("Ho¹t ®éng kh«ng b¾t ®Çu ."); 
return 
end 

-- script viet hoa By http://tranhba.com  bang héi ®Ých ph¸n ®o¸n 
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

-- script viet hoa By http://tranhba.com  trß ch¬i kÕt thóc 
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

-- script viet hoa By http://tranhba.com  kiÓm so¸t tr¹ng th¸i cña m×nh 
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

function collg_setplayerreadystate() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo chuÈn bÞ trµng 
ForbitSkill(1); 
SetMoveSpeed(18); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,1); 
-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
SetFightState(0); 
-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
SetLogoutRV(1); 
-- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetPunish(0); 
-- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
SetCreateTeam(0); 

-- script viet hoa By http://tranhba.com  cÊm chØ hµo quang 
ForbitAura(1) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
ForbidEnmity( 1 ) 
-- script viet hoa By http://tranhba.com  më ra PK chèt më 

-- script viet hoa By http://tranhba.com  b¾t ®Çu h¼n còng kh«ng thÓ PK 
SetPKFlag(0) 
-- script viet hoa By http://tranhba.com  cÊm chØ giao dÞch ; 
DisabledStall(1); 
ForbitTrade(0); 

ForbidChangePK(1); 
DisabledUseTownP(1); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
end; 

function collg_setplayerleaverstate() -- script viet hoa By http://tranhba.com  nhµ ch¬i rêi ®i trß ch¬i trµng 
ForbitSkill(0); 
SetMoveSpeed(-1); 

SetAForbitSkill(COLLG_SKILLIDBOMB, 1); 
-- script viet hoa By http://tranhba.com  ®i trõ t¹c ®¹n ng­êi dÊu hiÖu 
collg_settonormal(); 
-- script viet hoa By http://tranhba.com  cÊm chØ hµo quang 
ForbitAura(0) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,0); 
-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
SetFightState(0); 
-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
-- script viet hoa By http://tranhba.com SetLogoutRV(0); 
-- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetPunish(1); 
-- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
SetCreateTeam(0); 
-- script viet hoa By http://tranhba.com  më ra PK chèt më 

-- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
ForbidEnmity( 0 ) 
-- script viet hoa By http://tranhba.com  b¾t ®Çu h¼n còng kh«ng thÓ PK 
SetPKFlag(0) 
-- script viet hoa By http://tranhba.com  cÊm chØ giao dÞch ; 
DisabledStall(0); 
ForbitTrade(0); 

local nCamp = GetCamp(); 
SetCurCamp(nCamp); 

ForbidChangePK(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
end; 

function collg_setplayerjoinstate() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo trß ch¬i 
ForbitSkill(1); 
SetMoveSpeed(18); 

		SetTask(COLLG_TK_PLAYTIMES, GetTask(COLLG_TK_PLAYTIMES) + 1);
		SetTask(TK_TIME_ALL, GetTask(TK_TIME_ALL) + 1);
SetTask(COLLG_TK_BOMB_MARK, 0); 
-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,1); 
-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
SetFightState(1); 
-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
SetLogoutRV(1); 

-- script viet hoa By http://tranhba.com  cÊm chØ hµo quang 
ForbitAura(1) 
SetFightState(1); 
-- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetPunish(0); 
-- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
SetCreateTeam(0); 
-- script viet hoa By http://tranhba.com  më ra PK chèt më 

-- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
ForbidEnmity( 1 ) 
-- script viet hoa By http://tranhba.com  b¾t ®Çu h¼n còng kh«ng thÓ PK 
SetPKFlag(1) 
-- script viet hoa By http://tranhba.com  cÊm chØ giao dÞch ; 
DisabledStall(1); 
ForbitTrade(0); 

ForbidChangePK(1); 
SetCurCamp(4); -- script viet hoa By http://tranhba.com  thiÕt trÝ t¹m thêi trËn doanh 
DisabledUseTownP(1); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
end; 

-- script viet hoa By http://tranhba.com  sinh thµnh mét t­¬ng ®èi vu tr­íc mÆt nhµ ch¬i ®Ých chän h¹ng 
function ch_make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra nªn nhµ ch¬i cã hay kh«ng cßn ®ang trong trß ch¬i , thµnh c«ng trë vÒ PlayerIndex nÕu kh«ng trë vÒ nil 
function ch_check_pl(szPlayName) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë tr­íc mÆt phôc vô khÝ 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(COLLG_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë chØ ®Þnh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
function OnCancel() 
end; 
end; 
