if (not __FESTIVAL_HEAD__) then 
__FESTIVAL_HEAD__ = 1; 

IncludeLib("BATTLE"); 
Include([[\script\missions\springfestival\festival_file_npc_head.lua]]); 
	Include("\\script\\lib\\gb_taskfuncs.lua") -- script viet hoa By http://tranhba.com 
	Include("\\script\\lib\\common.lua")
-- script viet hoa By http://tranhba.com  th­êng trÞ gi¸ bé phËn 
-- script viet hoa By http://tranhba.com DescLink_LiGuan = "<#><link=image[0,13]:\\spr\\npcres\\enemy\\enemy195\\enemy195_st.spr> «ng giµ n« en #<link>" 

FE_PREPAREMISSIONID = 30; 
FE_MISSIONID = 31; 

FE_FRAME = 18; -- script viet hoa By http://tranhba.com  mçi gi©y 18 tr¸nh 
FE_REFRASHTIME = 15 * FE_FRAME; -- script viet hoa By http://tranhba.com  mçi 15 gi©y cµ mét lÇn tr¸ch 
FE_VANISHTIME = 10 * FE_FRAME; -- script viet hoa By http://tranhba.com  gi¸ng sinh tinh linh dõng l¹i 10 gi©y 
FE_RUNINTERVER = 30 * FE_FRAME; -- script viet hoa By http://tranhba.com 30 gi©y mét lÇn , cã thÓ th«ng b¸o trß ch¬i 
FE_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  mçi ng­êi nhiÒu nhÊt mét ngµy ch¬i 5 lÇn 
FE_LEVELLIMIT = 50; -- script viet hoa By http://tranhba.com  nhµ ch¬i tham gia cÇn nhá nhÊt cÊp bËc 

FE_PREPARETIME = 57; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê khÝ 
FE_FAIRY_SMALLTIMERID = 58; -- script viet hoa By http://tranhba.com  cµ tr¸ch tÝnh giê khÝ 
FE_REPORT_SMALLTIMERID = 59; -- script viet hoa By http://tranhba.com RunMission dïng tÝnh giê khÝ # 
FE_INTERVER = 5 * FE_FRAME; -- script viet hoa By http://tranhba.com 5 gi©y xóc ph¸t cµ tr¸ch hßa thanh së tr¸ch xóc ph¸t khÝ 

-- script viet hoa By http://tranhba.com GLB trÞ gi¸ 
GLB_FE_PHASE = 849; -- script viet hoa By http://tranhba.com  mïa xu©n ho¹t ®éng ®Ých thêi gian 
-- script viet hoa By http://tranhba.com =============== cïng tr¸ch t­¬ng quan ================== 
FE_NPCID = 361; -- script viet hoa By http://tranhba.com  cµ ra tr¸ch ®Ých NCP index 
FE_MAPID = {584, 585}; -- script viet hoa By http://tranhba.com  gi¸ng sinh ho¹t ®éng b¶n ®å Id 

FE_SMALLMAPCOUNT = 19; -- script viet hoa By http://tranhba.com  tæng céng cã 12 tê tiÓu b¶n ®å 
FE_MOUSECOUNT_MIN = 10; -- script viet hoa By http://tranhba.com  mét tiÓu b¶n ®å mét lÇn Ýt nhÊt cµ ®Þa thö sè l­îng 
FE_MOUSECOUNT_MAX = 10; -- script viet hoa By http://tranhba.com  mét tiÓu b¶n ®å mét lÇn nhiÒu nhÊt cµ ®Þa thö sè l­îng 
FE_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  mçi trß ch¬i nhiÒu nhÊt 10 ng­êi # 
FE_NIANSHOU_XUANYUN = 10; -- script viet hoa By http://tranhba.com  n¨m thó mçi bÞ c«ng kÝch 10 lÇn liÒn bÞ h«n mª 
FE_ALL_MAXPLAYERCOUNT = 100; -- script viet hoa By http://tranhba.com  tæng céng nhiÒu nhÊt 120 ng­êi # 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ========= nhiÖm vô thay ®æi l­îng =============== 
TK_FE_LEAVERMAPID = 1123; -- script viet hoa By http://tranhba.com  tån tr÷ tr¨ng s¸ng trÊn ®Ých mapid 
TK_FE_LEAVERPOSX = 1124; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i x täa ®é ®iÓm 
TK_FE_LEAVERPOSY = 1125; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i y täa ®é ®iÓm 

TK_FE_DAYKEY = 1126; -- script viet hoa By http://tranhba.com  ghi chÐp lµ mét ngµy kia 
TK_FE_PLAYTIMES = 1127; -- script viet hoa By http://tranhba.com  ghi chÐp mét ngµy bªn trong ch¬i sè lÇn 

TK_FE_COUNT_ONETIME = 1128; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®iÓm bao nhiªu c¸ 

TK_FE_RANK = 1129; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®Ých ®øng hµng # 

TK_FE_GROUPID = 1130; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých Group sè 
TK_FE_EXP_BEISHU = 1131; -- script viet hoa By http://tranhba.com  ®¹t ®­îc kinh nghiÖm béi sè 
TK_FE_EXP_TIME = 1132; -- script viet hoa By http://tranhba.com  ®¹t ®­îc gÊp ®«i ®Ých thêi gian 

TK_FE_ATTACKED_TIMES = 1133; -- script viet hoa By http://tranhba.com  ghi chÐp n¨m thó bÞ c«ng kÝch sè lÇn 
TK_FE_ATTACKED_INTERVER = 1134; -- script viet hoa By http://tranhba.com  b×nh th­êng nhµ ch¬i sö dông ®¹o cô gian c¸ch 

-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com MS bé phËn # 
MS_FE_STATE = 1; 
MS_FE_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  dïng ®Ó ghi chÐp dïng cho giao thÕ ®Ých tiÕn hµnh cµ tr¸ch hßa thanh trõ tr¸ch #0# thanh trõ tr¸ch #1# cµ ra tr¸ch 
MS_FE_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
MS_FE_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi chÐp b¾t ®Çu ®Ých b¶n ®å ®Ých ID 
MS_FE_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê thay ®æi l­îng 
MS_FE_GAMECOUNT = 6; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc b¾t ®Çu ®Ých trß ch¬i c¸ ®Õm 
-- script viet hoa By http://tranhba.com  th­êng l­îng bé phËn # 
FESTIVAL_SHREWMOUSE = "springfestival07"; 
FE_ANIMALNAME = " qu¸i thó "; 
FE_MOUSENAME = " mÊt tÝch ®øa trÎ "; -- script viet hoa By http://tranhba.com  gi¸ng sinh tinh linh tªn 
FE_GIFTNAME = " l­u l¹i lÔ vËt "; -- script viet hoa By http://tranhba.com  lÔ vËt NPC ®Ých tªn 
FE_SIGNNPCNAME = "<color=yellow> nha m«n sai dÞch <color>:"; -- script viet hoa By http://tranhba.com  ghi danh «ng giµ n« en ®Ých tªn 
FE_MAPPOINTFLORDER = "springfestival2006"; 
FE_NIGHT_BEGINTIME = 1900; 
FE_NIGHT_ENDTIME = 2300; 
FE_NOON_BEGINTIME = 1200; 
FE_NOON_ENDTIME = 1400; 
FE_DARK_BEGINTIME = 100; 
FE_DARK_ENDTIME = 300; 
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


-- script viet hoa By http://tranhba.com  thanh trõ gi¸ng sinh tinh linh 
function festival_clearfairy(szNPCName) 
if ("string" ~= type(szNPCName)) then 
return 
end; 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(FE_MAPID[2]); 
ClearMapNpcWithName(FE_MAPID[2], szNPCName); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ n¨m thó thanh trõ 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  gia nhËp vµo trong trß ch¬i 
function festival_joingame() 
local nNowTime = tonumber(date("%y%m%d")); 
if (GetTask(TK_FE_DAYKEY) ~= nNowTime) then 
SetTask(TK_FE_DAYKEY, nNowTime); 
SetTask(TK_FE_PLAYTIMES, 0); 
end; 

-- script viet hoa By http://tranhba.com  tiÕn hµnh ®Õm hÕt 
local nTimes = GetTask(TK_FE_PLAYTIMES); 
if (nTimes >= FE_MAXPLAYTIMES) then 
Talk(1, "", FE_SIGNNPCNAME.." h«m nay ng­¬i ®· tíi 5 lÇn , nÕu kh«ng nghØ ng¬i mét chót ®i !"); 
return 
end; 

if (GetLevel() < FE_LEVELLIMIT) then 
Talk(1, "", FE_SIGNNPCNAME.." cÊp bËc cña ng­¬i qu¸ thÊp , ta kh«ng muèn ng­¬i gÆp nguy hiÓm , ®îi ®Õn 50 cÊp sau trë l¹i ®i ."); 
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
Talk(1, "", FE_SIGNNPCNAME.." chóng ta ®ang chuÈn bÞ ®èi phã qu¸i thó kÕ ho¹ch , ho¹t ®éng ®em tõ 12:00 ®Õn 14:00, buæi tèi 19:00 ®Õn 23:00, nöa ®ªm 1:00 ®Õn 3:00, ®Õn lóc ®ã muèn tíi nga !"); 
return 
else 
Talk(1, "", FE_SIGNNPCNAME.." ng­¬i còng muèn ®i ®¸nh qu¸i vËt a ? dÉn ®­êng ng­êi cña ®· ®i råi , ë 0 ph©n , 15 ph©n , 30 ph©n , 45 ph©n ®em trë l¹i ."); 
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
NewWorld(GetTask(TK_FE_LEAVERMAPID), GetTask(TK_FE_LEAVERPOSX), GetTask(TK_FE_LEAVERPOSY)); 
end; 
PlayerIndex = OldPlayer; 
SubWorld = OldWorld; 
end; 

-- script viet hoa By http://tranhba.com  kiÓm so¸t tr¹ng th¸i cña m×nh 
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

function festival_setplayertoprepare() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo chuÈn bÞ trµng thêi ®iÓm tiÕn hµnh tr¹ng th¸i thiÕt trÝ 
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

function festival_setplayerleaverstate() -- script viet hoa By http://tranhba.com  nhµ ch¬i rêi ®i trß ch¬i thêi ®iÓm tiÕn hµnh tr¹ng th¸i thiÕt trÝ 
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

function festival_setplayertogame() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo trß ch¬i thêi ®iÓm tiÕn hµnh tr¹ng th¸i thiÕt trÝ 
ForbitSkill(FESTIVAL_OK); 
SetMoveSpeed(FESTIVAL_ENTERSPEED); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,1); 

		SetTask(TK_FE_PLAYTIMES, GetTask(TK_FE_PLAYTIMES) + 1);
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
function festival_make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra nªn nhµ ch¬i cã hay kh«ng cßn ®ang trong trß ch¬i , thµnh c«ng trë vÒ PlayerIndex nÕu kh«ng trë vÒ nil 
function festival_check_pl(szPlayName) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë tr­íc mÆt phôc vô khÝ 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(FE_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë chØ ®Þnh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
-- script viet hoa By http://tranhba.com  kiÓm tra ®¹o cô cã ®­îc hay kh«ng bÞ sö dông 
function itemuseplacecheck(nType) -- script viet hoa By http://tranhba.com nType :1—— c«ng céng ®¹o cô #2—— n¨m thó chuyªn dông ®¹o cô #3—— b×nh th­êng nhµ ch¬i chuyªn nghiÖp ®¹o cô 
local ww, xx, yy = GetWorldPos(); 
if (FE_MAPID[2] ~= ww) then 
Talk(1, "","Nªn vËt phÈm chØ dïng víi mïa xu©n ho¹t ®éng ."); 
return 0; 
end; 

if (GetTask(TK_FE_GROUPID) <= FE_SMALLMAPCOUNT and 2 == nType) then 
Talk(1, "","ChØ cã ®¸nh tr¸ch nhµ ch¬i míi cã thÓ sö dông nªn mÆt n¹ "); 
return 0; 
end; 

if (GetTask(TK_FE_GROUPID) > FE_SMALLMAPCOUNT and 3 == nType) then 
Talk(1, "","ChØ cã mét lo¹i nhµ ch¬i míi cã thÓ sö dông nªn vËt phÈm ."); 
return 0; 
end; 

return 1 
end; 
-- script viet hoa By http://tranhba.com  t×m ®­îc ®èi lËp trËn doanh , n¨m thó ——> nhµ ch¬i , nhµ ch¬i ——> n¨m thó 
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

function festival_go_other_place() -- script viet hoa By http://tranhba.com  ngÉu nhiªn truyÒn tíi ®iÓm ban ®Çu 
local nBeginMapID = GetMissionV(MS_FE_BEGINGMAPID); 
local nGroupId = GetTask(TK_FE_GROUPID); 

    	local nMapId = nBeginMapID + nGroupId - 1;
    	nMapId = mod(nMapId, FE_SMALLMAPCOUNT) + 1;
local szFile = [[\settings\maps\]]..FE_MAPPOINTFLORDER..[[\elf_]]..nMapId..[[.txt]]; 
local PosX, PosY = getadata(szFile); 
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_go_back(nBeginMapID) -- script viet hoa By http://tranhba.com  ngÉu nhiªn truyÒn tíi ®iÓm ban ®Çu 
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
