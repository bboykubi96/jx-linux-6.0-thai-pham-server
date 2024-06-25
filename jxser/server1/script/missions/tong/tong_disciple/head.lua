if (not CHRISMAS_HEAD) then 
CHRISMAD_HEAD = 1; 

IncludeLib("BATTLE"); 
Include([[\script\missions\tong\tong_disciple\npcpoint.lua]]); 
	Include("\\script\\lib\\common.lua")
	Include("\\script\\lib\\gb_taskfuncs.lua")
Include([[\script\missions\tong\tong_head.lua]]); 

-- script viet hoa By http://tranhba.com  th­êng trÞ gi¸ bé phËn 
DIS_MISSIONID = 38; 
DIS_PREPAREMISSIONID = 37; 
DIS_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  mçi trß ch¬i nhiÒu nhÊt 10 ng­êi # 
DIS_ALL_MAXPLAYERCOUNT = 120; -- script viet hoa By http://tranhba.com  tæng céng nhiÒu nhÊt 120 ng­êi # 

DIS_FRAME = 18; -- script viet hoa By http://tranhba.com  mçi gi©y 18 tr¸nh 
DIS_REFRASHTIME = 15 * DIS_FRAME; -- script viet hoa By http://tranhba.com  mçi 15 gi©y cµ mét lÇn tr¸ch 
DIS_VANISHTIME = 10 * DIS_FRAME; -- script viet hoa By http://tranhba.com  gi¸ng sinh tinh linh dõng l¹i 10 gi©y 
DIS_RUNINTERVER = 30 * DIS_FRAME; -- script viet hoa By http://tranhba.com 30 gi©y mét lÇn , cã thÓ th«ng b¸o trß ch¬i 
DIS_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  mçi ng­êi nhiÒu nhÊt mét ngµy ch¬i 3 lÇn 

DIS_PREPARETIME = 65; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê khÝ 
DIS_SMALLTIMERID = 66; -- script viet hoa By http://tranhba.com  cµ tr¸ch tÝnh giê khÝ 
DIS_RUNTIMERID = 67; -- script viet hoa By http://tranhba.com RunMission dïng tÝnh giê khÝ # 
DIS_INTERVER = 5 * DIS_FRAME; -- script viet hoa By http://tranhba.com 5 gi©y xóc ph¸t cµ tr¸ch hßa thanh së tr¸ch xóc ph¸t khÝ 

-- script viet hoa By http://tranhba.com GLB trÞ gi¸ 
GLB_DIS_PHASE = 852; 
CHRISMAS_SHREWMOUSE = "TONG_SHREWMOUSE"; 
-- script viet hoa By http://tranhba.com =============== cïng tr¸ch t­¬ng quan ================== 
DIS_NPCID = 323; -- script viet hoa By http://tranhba.com  cµ ra tr¸ch ®Ých NCP index 
DIS_MAPID = {821, 822}; -- script viet hoa By http://tranhba.com  gi¸ng sinh ho¹t ®éng b¶n ®å Id 

DIS_SMALLMAPCOUNT = 12; -- script viet hoa By http://tranhba.com  tæng céng cã 12 tê tiÓu b¶n ®å 
DIS_MOUSECOUNT = 10; -- script viet hoa By http://tranhba.com  mét tiÓu b¶n ®å mét lÇn Ýt nhÊt cµ ®Þa thö sè l­îng 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ========= nhiÖm vô thay ®æi l­îng =============== 
-- script viet hoa By http://tranhba.com  TK_LEAVERMAPID = 2392; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i mapid 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSX = 2393; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i x täa ®é ®iÓm 
-- script viet hoa By http://tranhba.com  TK_LEAVERPOSY = 2394; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i y täa ®é ®iÓm 

DIS_TK_DAYKEY = 2395; -- script viet hoa By http://tranhba.com  ghi chÐp lµ mét ngµy kia 
DIS_TK_PLAYTIMES = 2396; -- script viet hoa By http://tranhba.com  ghi chÐp mét ngµy bªn trong ch¬i sè lÇn 

DIS_COUNT_ONETIME = 2397; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®iÓm bao nhiªu c¸ 
DIS_TK_RANK = 2398; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®Ých ®øng hµng # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  TK_GROUPID = 2399; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých Group sè 
-- script viet hoa By http://tranhba.com  TK_EXP_BEISHU = 2400; -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  TK_EXP_TIME = 2401; 
-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com MS bé phËn # 
MS_STATE = 1; 
MS_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  dïng ®Ó ghi chÐp dïng cho giao thÕ ®Ých tiÕn hµnh cµ tr¸ch hßa thanh trõ tr¸ch #0# thanh trõ tr¸ch #1# cµ ra tr¸ch 
MS_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
MS_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi chÐp b¾t ®Çu ®Ých b¶n ®å ®Ých ID 

MS_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê thay ®æi l­îng 

DIS_MOUSENAME = " ®Ö tö "; -- script viet hoa By http://tranhba.com  gi¸ng sinh tinh linh tªn 


-- script viet hoa By http://tranhba.com  b¸ xøc gi¸ng sinh tinh linh 
function putfairy() 
local nNPCCount; 
local PosTab; -- script viet hoa By http://tranhba.com  dïng cho ghi chÐp 
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


-- script viet hoa By http://tranhba.com  thanh trõ gi¸ng sinh tinh linh 
function clearfairy() 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(DIS_MAPID[2]); 
ClearMapNpcWithName(DIS_MAPID[2], DIS_MOUSENAME); 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  gia nhËp vµo trong trß ch¬i 
function joindisciple(nTongID, nWorkshopID) 
local nNowTime = tonumber(GetLocalDate("%y%m%d")); 
if (GetTask(DIS_TK_DAYKEY) ~= nNowTime) then 
SetTask(DIS_TK_DAYKEY, nNowTime); 
SetTask(DIS_TK_PLAYTIMES, 0); 
end; 

-- script viet hoa By http://tranhba.com  tiÕn hµnh ®Õm hÕt 
local nTimes = GetTask(DIS_TK_PLAYTIMES); 
if (GetTask(DIS_TK_PLAYTIMES) >= DIS_MAXPLAYTIMES) then 
Talk(1, "", "<color=yellow> ho¹t ®éng ph­êng tæng qu¶n <color>: mçi ngµy chØ cã thÓ tham gia 5 lÇn ®Ö tö chiªu mé ho¹t ®éng "); 
return 
end; 

local nPhase = gb_GetTask(CHRISMAS_SHREWMOUSE, 1); 
if (nPhase ~= 1) then 
if (nPhase == 3) then 
Talk(1, "","Ho¹t ®éng ph­êng tæng qu¶n : xin chê chót lÇn b¾t ®Çu . ghi danh thêi gian lµ 0h, 3h, 6h , 21h, ®Ých 15 ph©n , 30 ph©n cïng 45 phót ."); 
return 
end; 
Talk(1, "","Ho¹t ®éng ph­êng tæng qu¶n : chiªu mé ho¹t ®éng ®ang tiÕn hµnh , ghi danh thêi gian lµ 0h, 3h, 6h , 21h, ®Ých 15 ph©n , 30 ph©n cïng 45 phót ."); 
return 
end 

-- script viet hoa By http://tranhba.com  bang héi ®Ých ph¸n ®o¸n 
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

-- script viet hoa By http://tranhba.com  trß ch¬i kÕt thóc 
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

-- script viet hoa By http://tranhba.com  kiÓm so¸t tr¹ng th¸i cña m×nh 
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

function setplayerreadystate() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo chuÈn bÞ trµng 
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

function setplayerleaverstate() -- script viet hoa By http://tranhba.com  nhµ ch¬i rêi ®i trß ch¬i trµng 
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

function setplayerjoinstate() -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn vµo trß ch¬i 
ForbitSkill(1); 
SetMoveSpeed(18); 

		SetTask(DIS_TK_PLAYTIMES, GetTask(DIS_TK_PLAYTIMES) + 1);
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
local nPlMsIdx = PIdx2MSDIdx(DIS_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë chØ ®Þnh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
end; 
