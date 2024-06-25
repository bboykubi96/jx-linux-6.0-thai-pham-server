if (not CHRISMAS_HEAD) then 
CHRISMAD_HEAD = 1; 

IncludeLib("BATTLE"); 
Include([[\script\missions\chrismas\ch_file_npc_head.lua]]); 
	Include("\\script\\lib\\gb_taskfuncs.lua") -- script viet hoa By http://tranhba.com 
	Include("\\script\\lib\\common.lua")
-- script viet hoa By http://tranhba.com  th­êng trÞ gi¸ bé phËn 
DescLink_LiGuan = "<#><link=image[0,13]:\\spr\\npcres\\enemy\\enemy195\\enemy195_st.spr> «ng giµ n« en :<link>" 

CH_MISSIONID = 28; 
CH_PREPAREMISSIONID = 29; 
CH_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  mçi trß ch¬i nhiÒu nhÊt 10 ng­êi # 
CH_ALL_MAXPLAYERCOUNT = 120; -- script viet hoa By http://tranhba.com  tæng céng nhiÒu nhÊt 120 ng­êi # 

CH_FRAME = 18; -- script viet hoa By http://tranhba.com  mçi gi©y 18 tr¸nh 
CH_REFRASHTIME = 15 * CH_FRAME; -- script viet hoa By http://tranhba.com  mçi 15 gi©y cµ mét lÇn tr¸ch 
CH_VANISHTIME = 10 * CH_FRAME; -- script viet hoa By http://tranhba.com  gi¸ng sinh lÔ tói dõng l¹i 10 gi©y 
CH_RUNINTERVER = 30 * CH_FRAME; -- script viet hoa By http://tranhba.com 30 gi©y mét lÇn , cã thÓ th«ng b¸o trß ch¬i 
CH_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  mçi ng­êi nhiÒu nhÊt mét ngµy ch¬i 5 lÇn 

CH_PREPARETIME = 54; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê khÝ 
CH_SMALLTIMERID = 55; -- script viet hoa By http://tranhba.com  cµ tr¸ch tÝnh giê khÝ 
CH_RUNTIMERID = 56; -- script viet hoa By http://tranhba.com RunMission dïng tÝnh giê khÝ # 
CH_INTERVER = 5 * CH_FRAME; -- script viet hoa By http://tranhba.com 5 gi©y xóc ph¸t cµ tr¸ch hßa thanh së tr¸ch xóc ph¸t khÝ 
CH_TOTALINTERVER = 60 * 60 * CH_FRAME; -- script viet hoa By http://tranhba.com 1 giê sau t¾t Mission 

-- script viet hoa By http://tranhba.com GLB trÞ gi¸ 
GLB_CH_PHASE = 848; 
CHRISMAS_SHREWMOUSE = " gi¸ng sinh ho¹t ®éng "; 
-- script viet hoa By http://tranhba.com =============== cïng tr¸ch t­¬ng quan ================== 
CH_NPCID = 1236; -- script viet hoa By http://tranhba.com  cµ ra tr¸ch ®Ých NCP index 
CH_MAPID = {582, 583}; -- script viet hoa By http://tranhba.com  gi¸ng sinh ho¹t ®éng b¶n ®å Id 

CH_SMALLMAPCOUNT = 12; -- script viet hoa By http://tranhba.com  tæng céng cã 12 tê tiÓu b¶n ®å 
CH_MOUSECOUNT_MIN = 10; -- script viet hoa By http://tranhba.com  mét tiÓu b¶n ®å mét lÇn Ýt nhÊt cµ ®Þa thö sè l­îng 
CH_MOUSECOUNT_MAX = 10; -- script viet hoa By http://tranhba.com  mét tiÓu b¶n ®å mét lÇn nhiÒu nhÊt cµ ®Þa thö sè l­îng 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ======================================= 
CHRIMAS_SALEID = 136; -- script viet hoa By http://tranhba.com  th­¬ng nh©n b¸n ®å ID 

-- script viet hoa By http://tranhba.com ========= nhiÖm vô thay ®æi l­îng =============== ®Òu kh«ng cã ®Þnh , cÇn trªu chäc mét chót tra t×m 
TK_LEAVERMAPID = 2323; -- script viet hoa By http://tranhba.com  tån tr÷ tr¨ng s¸ng trÊn ®Ých mapid 
TK_LEAVERPOSX = 2324; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i x täa ®é ®iÓm 
TK_LEAVERPOSY = 2325; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i y täa ®é ®iÓm 

TK_DAYKEY = 2326; -- script viet hoa By http://tranhba.com  ghi chÐp lµ mét ngµy kia 
TK_PLAYTIMES = 2327; -- script viet hoa By http://tranhba.com  ghi chÐp mét ngµy bªn trong ch¬i sè lÇn 
TK_PLAYMAXTIMES = 2521;-- script viet hoa By http://tranhba.com  nhiÒu nhÊt tham gia 50 trµng 

TK_COUNT_ONETIME = 2328; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®iÓm bao nhiªu c¸ 

TK_RANK = 2329; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®Ých ®øng hµng # 

TK_GROUPID = 2330; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých Group sè 
TK_EXP_BEISHU = 2331; -- script viet hoa By http://tranhba.com  
TK_EXP_TIME = 2332; 
-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com ============= dïng ®Ó biÓu hiÖn chiÕn b¸o ®Ých ============== 
CH_TOTALPOINT = 1; 
CH_GETITEM = 17; 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com MS bé phËn # 
MS_STATE = 1; 
MS_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  dïng ®Ó ghi chÐp dïng cho giao thÕ ®Ých tiÕn hµnh cµ tr¸ch hßa thanh trõ tr¸ch #0# thanh trõ tr¸ch #1# cµ ra tr¸ch 
MS_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
MS_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi chÐp b¾t ®Çu ®Ých b¶n ®å ®Ých ID 

MS_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê thay ®æi l­îng 

MSS_MOUSENAME = 1; -- script viet hoa By http://tranhba.com  gi¸ng sinh lÔ tói ®Ých tªn 


-- script viet hoa By http://tranhba.com  b¸ xøc gi¸ng sinh lÔ tói 
function putfairy() 
local nNPCCount; 
local PosTab; -- script viet hoa By http://tranhba.com  dïng cho ghi chÐp 
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


-- script viet hoa By http://tranhba.com  thanh trõ gi¸ng sinh lÔ tói 
function clearfairy() 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CH_MAPID[2]); 
ClearMapNpcWithName(CH_MAPID[2],"Gi¸ng sinh lÔ tói "); 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  gia nhËp vµo trong trß ch¬i 
function joingame() 
local nNowTime = tonumber(date("%y%m%d")); 
if (GetTask(TK_PLAYMAXTIMES) >= 50) then 
Talk(1, "", "<color=yellow> «ng giµ n« en <color>: mçi ng­êi nhiÒu nhÊt chØ cã thÓ tham gia 50 lÇn t×m kiÕm lÔ vËt , ng­¬i kh«ng thÓ tham gia n÷a liÔu !"); 
return 
end; 

if (GetTask(TK_DAYKEY) ~= nNowTime) then 
SetTask(TK_DAYKEY, nNowTime); 
SetTask(TK_PLAYTIMES, 0); 
end; 

-- script viet hoa By http://tranhba.com  tiÕn hµnh ®Õm hÕt 
local nTimes = GetTask(TK_PLAYTIMES); 
if (GetTask(TK_PLAYTIMES) >= CH_MAXPLAYTIMES) then 
Talk(1, "", "<color=yellow> «ng giµ n« en <color>: 1 ngµy chØ so víi cuéc so tµi 5 trµng !"); 
return 
end; 


if (gb_GetTask("Gi¸ng sinh ho¹t ®éng ", 1) ~= 1) then 
local nNowTime = tonumber(GetLocalDate("%H%M")); 
local bOn = 0; 
if ((nNowTime >=1900 and nNowTime <=2300) or (nNowTime >=1200 and nNowTime <=1400)) then 
bOn = 1; 
end; 
if (bOn == 0) then 
Talk(1, "", "<color=yellow> «ng giµ n« en <color>: tõ mçi ngµy 12:00-4:00 cïng buæi tèi 19:00-23:00 khai triÓn gi¸ng sinh ho¹t ®éng , b©y giê cßn kh«ng cã ®Õn ho¹t ®éng thêi gian hoÆc lµ ho¹t ®éng cßn ch­a cã b¾t ®Çu !"); 
return 
else 
Talk(1, "", "<color=yellow> «ng giµ n« en <color>: trß ch¬i ®ang tiÕn hµnh , theo nh­ thø tù tíi # mçi trµng 15#30#45 ph©n c¶ b¾t ®Çu ."); 
return 
end; 
end; 

local szFile = [[\settings\maps\chrismas\player.txt]]; 
local nPosX, nPosY; 
nPosX, nPosY = getadatatow(szFile, 2, 15); 
NewWorld(CH_MAPID[1], floor(nPosX / 32), floor(nPosY / 32)); 
end; 

-- script viet hoa By http://tranhba.com  trß ch¬i kÕt thóc 
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

-- script viet hoa By http://tranhba.com  kiÓm so¸t tr¹ng th¸i cña m×nh 
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

function setplayerreadystate() -- script viet hoa By http://tranhba.com  nhµ ch¬i rêi ®i trß ch¬i trµng thêi ®iÓm tiÕn hµnh tr¹ng th¸i thiÕt trÝ 
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

function setplayerleaverstate() -- script viet hoa By http://tranhba.com  nhµ ch¬i rêi ®i trß ch¬i trµng thêi ®iÓm tiÕn hµnh tr¹ng th¸i thiÕt trÝ 
ForbitSkill(0); 
SetMoveSpeed(-1); 

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

function setplayerjoinstate() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo trß ch¬i thêi ®iÓm tiÕn hµnh tr¹ng th¸i thiÕt trÝ 
ForbitSkill(1); 
SetMoveSpeed(18); 

		SetTask(TK_PLAYTIMES, GetTask(TK_PLAYTIMES) + 1);
		SetTask(TK_PLAYMAXTIMES, GetTask(TK_PLAYMAXTIMES) + 1);
-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,1); 
-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
-- script viet hoa By http://tranhba.com  SetFightState(1); 
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
local nPlMsIdx = PIdx2MSDIdx(CH_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë chØ ®Þnh Mission trung 
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
