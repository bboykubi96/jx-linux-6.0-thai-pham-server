if (1) then -- script viet hoa By http://tranhba.com  not __FESTIVAL_HEAD__) then 
__FESTIVAL_HEAD__ = 1; 

IncludeLib("BATTLE"); 
	Include("\\script\\missions\\tong\\tong_springfestival\\npcpoint.lua");
	Include("\\script\\lib\\common.lua")
	Include("\\script\\lib\\gb_taskfuncs.lua")
	Include("\\script\\missions\\tong\\tong_head.lua");

-- script viet hoa By http://tranhba.com  th­êng trÞ gi¸ bé phËn 
SF_PREPAREMISSIONID = 39; 
SF_MISSIONID = 40; 

SF_FRAME = 18; -- script viet hoa By http://tranhba.com  mçi gi©y 18 tr¸nh 
SF_REFRASHTIME = 15 * SF_FRAME; -- script viet hoa By http://tranhba.com  mçi 15 gi©y cµ mét lÇn tr¸ch 
SF_VANISHTIME = 10 * SF_FRAME; -- script viet hoa By http://tranhba.com  gi¸ng sinh tinh linh dõng l¹i 10 gi©y 
SF_RUNINTERVER = 30 * SF_FRAME; -- script viet hoa By http://tranhba.com 30 gi©y mét lÇn , cã thÓ th«ng b¸o trß ch¬i 
SF_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  mçi ng­êi nhiÒu nhÊt mét ngµy ch¬i 5 lÇn 
SF_LEVELLIMIT = 50; -- script viet hoa By http://tranhba.com  nhµ ch¬i tham gia cÇn nhá nhÊt cÊp bËc 

SF_PREPARETIME = 68; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê khÝ 
SF_FAIRY_SMALLTIMERID = 69; -- script viet hoa By http://tranhba.com  cµ tr¸ch tÝnh giê khÝ 
SF_REPORT_SMALLTIMERID = 70; -- script viet hoa By http://tranhba.com RunMission dïng tÝnh giê khÝ # 
SF_INTERVER = 5 * SF_FRAME; -- script viet hoa By http://tranhba.com 5 gi©y xóc ph¸t cµ tr¸ch hßa thanh së tr¸ch xóc ph¸t khÝ 

-- script viet hoa By http://tranhba.com GLB trÞ gi¸ 
GLB_SF_PHASE = 853; -- script viet hoa By http://tranhba.com  mïa xu©n ho¹t ®éng ®Ých thêi gian 
-- script viet hoa By http://tranhba.com =============== cïng tr¸ch t­¬ng quan ================== 
SF_NPCID = 361; -- script viet hoa By http://tranhba.com  cµ ra tr¸ch ®Ých NCP index 
SF_MAPID = {823, 824}; -- script viet hoa By http://tranhba.com  gi¸ng sinh ho¹t ®éng b¶n ®å Id 

SF_SMALLMAPCOUNT = 19; -- script viet hoa By http://tranhba.com  tæng céng cã 12 tê tiÓu b¶n ®å 
SF_MOUSECOUNT_MIN = 10; -- script viet hoa By http://tranhba.com  mét tiÓu b¶n ®å mét lÇn Ýt nhÊt cµ ®Þa thö sè l­îng 
SF_MOUSECOUNT_MAX = 10; -- script viet hoa By http://tranhba.com  mét tiÓu b¶n ®å mét lÇn nhiÒu nhÊt cµ ®Þa thö sè l­îng 
SF_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  mçi trß ch¬i nhiÒu nhÊt 10 ng­êi # 
SF_NIANSHOU_XUANYUN = 10; -- script viet hoa By http://tranhba.com  n¨m thó mçi bÞ c«ng kÝch 10 lÇn liÒn bÞ h«n mª 
SF_ALL_MAXPLAYERCOUNT = 100; -- script viet hoa By http://tranhba.com  tæng céng nhiÒu nhÊt 120 ng­êi # 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ========= nhiÖm vô thay ®æi l­îng =============== 
-- script viet hoa By http://tranhba.com  TK_LEAVERMAPID = 2402; -- script viet hoa By http://tranhba.com  tån tr÷ tr¨ng s¸ng trÊn ®Ých mapid 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSX = 2403; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i x täa ®é ®iÓm 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSY = 2404; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i y täa ®é ®iÓm 

SF_TK_DAYKEY = 2405; -- script viet hoa By http://tranhba.com  ghi chÐp lµ mét ngµy kia 
SF_TK_PLAYTIMES = 2406; -- script viet hoa By http://tranhba.com  ghi chÐp mét ngµy bªn trong ch¬i sè lÇn 

SF_COUNT_ONETIME = 2407; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®iÓm bao nhiªu c¸ 
SF_TK_RANK = 2408; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®Ých ®øng hµng # 

-- script viet hoa By http://tranhba.com  TK_GROUPID = 2409; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých Group sè 
-- script viet hoa By http://tranhba.com  TK_EXP_BEISHU = 2410; -- script viet hoa By http://tranhba.com  ®¹t ®­îc kinh nghiÖm béi sè 
-- script viet hoa By http://tranhba.com  TK_EXP_TIME = 2411; -- script viet hoa By http://tranhba.com  ®¹t ®­îc gÊp ®«i ®Ých thêi gian 
-- script viet hoa By http://tranhba.com  
TK_ATTACKED_TIMES = 2412; -- script viet hoa By http://tranhba.com  ghi chÐp n¨m thó bÞ c«ng kÝch sè lÇn 
TK_ATTACKED_INTERVER = 2413; -- script viet hoa By http://tranhba.com  b×nh th­êng nhµ ch¬i sö dông ®¹o cô gian c¸ch 

-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com MS bé phËn # 
MS_SF_STATE = 1; 
MS_SF_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  dïng ®Ó ghi chÐp dïng cho giao thÕ ®Ých tiÕn hµnh cµ tr¸ch hßa thanh trõ tr¸ch #0# thanh trõ tr¸ch #1# cµ ra tr¸ch 
MS_SF_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
MS_SF_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi chÐp b¾t ®Çu ®Ých b¶n ®å ®Ých ID 
MS_SF_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê thay ®æi l­îng 
MS_SF_GAMECOUNT = 6; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc b¾t ®Çu ®Ých trß ch¬i c¸ ®Õm 
-- script viet hoa By http://tranhba.com  th­êng l­îng bé phËn # 
FESTIVAL_SHREWMOUSE = "TONG_SPFESTIVAL"; 
SF_ANIMALNAME = "Qu# th?"; 
SF_MOUSENAME = "#a tr?m nhÞ t chu h"; -- script viet hoa By http://tranhba.com  gi¸ng sinh tinh linh tªn 
SF_GIFTNAME = "L?v# # l t¹c "; -- script viet hoa By http://tranhba.com  lÔ vËt NPC ®Ých tªn 
SF_SIGNNPCNAME = "<color=yellow>T b¸c g qu# Ho# #ng ph#ng<color>: "; -- script viet hoa By http://tranhba.com  ghi danh «ng giµ n« en ®Ých tªn 
SF_MAPPOINTFLORDER = "springfestival2006"; 
FESTIVAL_OK = 1; -- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i kh¼ng ®Þnh bµy tá 
FESTIVAL_NO = 0; -- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i hñy bá bµy tá 
FESTIVAL_ENTERSPEED = 16; -- script viet hoa By http://tranhba.com  tiÕn hµnh trß ch¬i nhµ ch¬i ®Ých tèc ®é 
FESTIVAL_LEAVERSPEED = -1; -- script viet hoa By http://tranhba.com  rêi ®i trß ch¬i nhµ ch¬i ®Ých tèc ®é 

-- script viet hoa By http://tranhba.com  b¸ xøc gi¸ng sinh tinh linh 
function festival_putfairy() 
local nNPCCount; 
local PosTab; -- script viet hoa By http://tranhba.com  dïng cho ghi chÐp 
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


-- script viet hoa By http://tranhba.com  thanh trõ gi¸ng sinh tinh linh 
function festival_clearfairy(szNPCName) 
if ("string" ~= type(szNPCName)) then 
return 
end; 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(SF_MAPID[2]); 
ClearMapNpcWithName(SF_MAPID[2], szNPCName); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ n¨m thó thanh trõ 
SubWorld = OldWorld; 
end; 

-- script viet hoa By http://tranhba.com  gia nhËp vµo trong trß ch¬i 
function joinspringfestival(nTongID, nWorkshopID) 
local nNowTime = tonumber(GetLocalDate("%y%m%d")); 
if (GetTask(SF_TK_DAYKEY) ~= nNowTime) then 
SetTask(SF_TK_DAYKEY, nNowTime); 
SetTask(SF_TK_PLAYTIMES, 0); 
end; 

-- script viet hoa By http://tranhba.com  tiÕn hµnh ®Õm hÕt 
local nTimes = GetTask(SF_TK_PLAYTIMES); 
if (nTimes >= SF_MAXPLAYTIMES) then 
Talk(1, "", SF_SIGNNPCNAME.."H# nay ng#i # #n 5 l# r m¹nh , hay l?ngh?m khiªm ch l©u #!"); 
return 
end; 

if (GetLevel() < SF_LEVELLIMIT) then 
Talk(1, "", SF_SIGNNPCNAME.."#ng c# c# ng#i qu?th#, ta kh tÇn g mu l¹p ng#i g# nguy hi#, ch?#n c# 50 r m¹nh quay l t¹c ."); 
return 
end; 

local nPhase = gb_GetTask(FESTIVAL_SHREWMOUSE, 1); 
if (nPhase ~= 1) then 
if (nPhase == 3) then 
Talk(1, "", "T b¸c g qu# Ho# #ng ph#ng: H# #t #i ho# #ng sau. B tæng #u v kú 1h, 4h, 7h mang 22h, v kú ph l©u th?15, 30, 45 b tæng #u cho b# danh."); 
return 
end; 
Talk(1, "", "T b¸c g qu# Ho# #ng ph#ng: Ho# #ng #nh ni yÕt th? s¶n ng di cù ra, h# #i #t sau v#. M# #t b tæng #u l bÝ 1h, 4h, 7h mang 22h, v kú ph l©u th?15, 30, 45 b tæng #u cho b# danh."); 
return 
end 

-- script viet hoa By http://tranhba.com  tiÕn hµnh bang héi t­¬ng quan ph¸n ®o¸n 
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

-- script viet hoa By http://tranhba.com  trß ch¬i kÕt thóc 
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

-- script viet hoa By http://tranhba.com  kiÓm so¸t tr¹ng th¸i cña m×nh 
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

function festival_setplayertoprepare() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo chuÈn bÞ trµng 
ForbitSkill(FESTIVAL_OK); 
SetMoveSpeed(FESTIVAL_ENTERSPEED); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200, 1); 
-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
SetFightState(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
SetLogoutRV(FESTIVAL_OK); 
-- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetPunish(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
SetCreateTeam(FESTIVAL_NO); 

-- script viet hoa By http://tranhba.com  cÊm chØ hµo quang 
ForbitAura(FESTIVAL_OK) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
ForbidEnmity(FESTIVAL_OK) 
-- script viet hoa By http://tranhba.com  më ra PK chèt më 

-- script viet hoa By http://tranhba.com  b¾t ®Çu h¼n còng kh«ng thÓ PK 
SetPKFlag(FESTIVAL_NO) 
-- script viet hoa By http://tranhba.com  cÊm chØ giao dÞch ; 
DisabledStall(FESTIVAL_OK); 
ForbitTrade(FESTIVAL_NO); 

ForbidChangePK(FESTIVAL_OK); 
DisabledUseTownP(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
end; 

function festival_setplayerleaverstate() -- script viet hoa By http://tranhba.com  nhµ ch¬i rêi ®i trß ch¬i thêi ®iÓm 
ForbitSkill(FESTIVAL_NO); 
SetMoveSpeed(FESTIVAL_LEAVERSPEED); 

RestoreOwnFeature(); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ mäi ng­êi biÕn thµnh th× ra lµ d¸ng vÎ 
local i; 
for i = 1035, 1048 do 
ConsumeItem( -1, 1000, 6, 1, i, 1 ); 
end; 

-- script viet hoa By http://tranhba.com  cÊm chØ hµo quang 
ForbitAura(FESTIVAL_NO) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,0); 
-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
SetFightState(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetPunish(FESTIVAL_OK); 
-- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
SetCreateTeam(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  më ra PK chèt më 

-- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
ForbidEnmity( FESTIVAL_NO ) 
-- script viet hoa By http://tranhba.com  b¾t ®Çu h¼n còng kh«ng thÓ PK 
SetPKFlag(FESTIVAL_NO) 
-- script viet hoa By http://tranhba.com  cÊm chØ giao dÞch ; 
DisabledStall(FESTIVAL_NO); 
ForbitTrade(FESTIVAL_NO); 

local nCamp = GetCamp(); 
SetCurCamp(nCamp); 

ForbidChangePK(FESTIVAL_NO); 
DisabledUseTownP(FESTIVAL_NO); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
end; 

function festival_setplayertogame() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo trß ch¬i 
ForbitSkill(FESTIVAL_OK); 
SetMoveSpeed(FESTIVAL_ENTERSPEED); 


-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,1); 

		SetTask(SF_TK_PLAYTIMES, GetTask(SF_TK_PLAYTIMES) + 1);
-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
SetLogoutRV(FESTIVAL_OK); 

-- script viet hoa By http://tranhba.com  cÊm chØ hµo quang 
ForbitAura(FESTIVAL_OK) 
SetFightState(FESTIVAL_OK); 
-- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetPunish(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
SetCreateTeam(FESTIVAL_NO); 
-- script viet hoa By http://tranhba.com  më ra PK chèt më 

-- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
ForbidEnmity( FESTIVAL_OK ) 
-- script viet hoa By http://tranhba.com  b¾t ®Çu h¼n còng kh«ng thÓ PK 
SetPKFlag(FESTIVAL_OK) 
-- script viet hoa By http://tranhba.com  cÊm chØ giao dÞch ; 
DisabledStall(FESTIVAL_OK); 
ForbitTrade(FESTIVAL_NO); 

ForbidChangePK(FESTIVAL_OK); 
SetCurCamp(1); -- script viet hoa By http://tranhba.com  thiÕt trÝ t¹m thêi trËn doanh 
DisabledUseTownP(FESTIVAL_OK); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
end; 

-- script viet hoa By http://tranhba.com  sinh thµnh mét t­¬ng ®èi vu tr­íc mÆt nhµ ch¬i ®Ých chän h¹ng 
function make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra nªn nhµ ch¬i cã hay kh«ng cßn ®ang trong trß ch¬i , thµnh c«ng trë vÒ PlayerIndex nÕu kh«ng trë vÒ nil 
function festival_check_pl(szPlayName) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë tr­íc mÆt phôc vô khÝ 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(SF_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë chØ ®Þnh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
-- script viet hoa By http://tranhba.com  kiÓm tra ®¹o cô cã ®­îc hay kh«ng bÞ sö dông 
function itemuseplacecheck(nType) -- script viet hoa By http://tranhba.com nType :1—— c«ng céng ®¹o cô #2—— n¨m thó chuyªn dông ®¹o cô #3—— b×nh th­êng nhµ ch¬i chuyªn nghiÖp ®¹o cô 

if (GetTask(TK_GROUPID) <= SF_SMALLMAPCOUNT and 2 == nType) then 
Talk(1, "", "Ch?c?ng#i ch béi Qu# th?m# c?th?s?d#g M# n?n phô "); 
return 0; 
end; 

if (GetTask(TK_GROUPID) > SF_SMALLMAPCOUNT and 3 == nType) then 
Talk(1, "", "Ch?c?ng#i ch béi b#h th#ng m# s?d#g ## v# ph# n phô ."); 
return 0; 
end; 

return 1 
end; 
-- script viet hoa By http://tranhba.com  t×m ®­îc ®èi lËp trËn doanh , n¨m thó ——> nhµ ch¬i , nhµ ch¬i ——> n¨m thó 
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

function festival_go_other_place() -- script viet hoa By http://tranhba.com  ngÉu nhiªn truyÒn tíi ®iÓm ban ®Çu 
local nBeginMapID = GetMissionV(MS_SF_BEGINGMAPID); 
local nGroupId = GetTask(TK_GROUPID); 

    	local nMapId = nBeginMapID + nGroupId - 1;
    	nMapId = mod(nMapId, SF_SMALLMAPCOUNT) + 1;
    	local szFile = format("\\settings\\maps\\%s\\elf_%d.txt", SF_MAPPOINTFLORDER, nMapId);
local PosX, PosY = getadata(szFile); 
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_go_back(nBeginMapID) -- script viet hoa By http://tranhba.com  ngÉu nhiªn truyÒn tíi ®iÓm ban ®Çu 
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
