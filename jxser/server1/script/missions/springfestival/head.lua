if (not __FESTIVAL07_HEAD__) then 
__FESTIVAL07_HEAD__ = 1; 

IncludeLib("BATTLE"); 
Include([[\script\lib\coordinate.lua]]); 
Include("\\script\\lib\\gb_taskfuncs.lua") -- script viet hoa By http://tranhba.com 
Include("\\script\\lib\\common.lua")
Include("\\script\\lib\\pay.lua")


-- script viet hoa By http://tranhba.com  th­êng trÞ gi¸ bé phËn 
-- script viet hoa By http://tranhba.com DescLink_LiGuan = "<#><link=image[0,13]:\\spr\\npcres\\enemy\\enemy195\\enemy195_st.spr> «ng giµ n« en #<link>" 

CO_DATE_BEGIN = 20150209; 
CO_DATE_END = 20160223; 

CO_PREPAREMISSIONID = 30; 
CO_MISSIONID = 31; 
CO_MINIMUM = 5; 

CO_FRAME = 18; -- script viet hoa By http://tranhba.com  mçi gi©y 18 tr¸nh 
CO_REFRASHTIME = 15 * CO_FRAME; -- script viet hoa By http://tranhba.com  mçi 15 gi©y cµ mét lÇn tr¸ch 
CO_VANISHTIME = 10 * CO_FRAME; -- script viet hoa By http://tranhba.com  gi¸ng sinh tinh linh dõng l¹i 3 gi©y 
CO_RUNINTERVER = 30 * CO_FRAME; -- script viet hoa By http://tranhba.com 30 gi©y mét lÇn , cã thÓ th«ng b¸o trß ch¬i 
CO_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  mçi ng­êi nhiÒu nhÊt mét ngµy ch¬i 5 lÇn 
CO_LEVELLIMIT = 50; -- script viet hoa By http://tranhba.com  nhµ ch¬i tham gia cÇn nhá nhÊt cÊp bËc 

CO_PREPARETIME = 57; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê khÝ 
CO_FAIRY_SMALLTIMERID = 58; -- script viet hoa By http://tranhba.com  cµ tr¸ch tÝnh giê khÝ 
CO_REPORT_SMALLTIMERID = 59; -- script viet hoa By http://tranhba.com RunMission dïng tÝnh giê khÝ # 
CO_INTERVER = 5 * CO_FRAME; -- script viet hoa By http://tranhba.com 3 gi©y xóc ph¸t cµ tr¸ch hßa thanh së tr¸ch xóc ph¸t khÝ 

-- script viet hoa By http://tranhba.com GLB trÞ gi¸ 
GLB_CO_PHASE = 849; -- script viet hoa By http://tranhba.com  mïa xu©n ho¹t ®éng ®Ých thêi gian 
-- script viet hoa By http://tranhba.com =============== cïng tr¸ch t­¬ng quan ================== 
CO_NPCID = 1256; -- script viet hoa By http://tranhba.com  cµ ra tr¸ch ®Ých NCP index 
CO_MAPID = {584, 585}; -- script viet hoa By http://tranhba.com  gi¸ng sinh ho¹t ®éng b¶n ®å Id 

CO_SMALLMAPCOUNT = 19; -- script viet hoa By http://tranhba.com  tæng céng cã 12 tê tiÓu b¶n ®å 
CO_MOUSECOUNT_MIN = 10; -- script viet hoa By http://tranhba.com  mét tiÓu b¶n ®å mét lÇn Ýt nhÊt cµ ®Þa thö sè l­îng 
CO_MOUSECOUNT_MAX = 10; -- script viet hoa By http://tranhba.com  mét tiÓu b¶n ®å mét lÇn nhiÒu nhÊt cµ ®Þa thö sè l­îng 
CO_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  mçi trß ch¬i nhiÒu nhÊt 10 ng­êi # 
CO_NIANSHOU_XUANYUN = 10; -- script viet hoa By http://tranhba.com  n¨m thó mçi bÞ c«ng kÝch 10 lÇn liÒn bÞ h«n mª 
CO_ALL_MAXPLAYERCOUNT = 100; -- script viet hoa By http://tranhba.com  tæng céng nhiÒu nhÊt 120 ng­êi # 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ========= nhiÖm vô thay ®æi l­îng =============== 
TK_CO_LEAVERMAPID = 1123; -- script viet hoa By http://tranhba.com  tån tr÷ tr¨ng s¸ng trÊn ®Ých mapid 
TK_CO_LEAVERPOSX = 1124; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i x täa ®é ®iÓm 
TK_CO_LEAVERPOSY = 1125; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i y täa ®é ®iÓm 

TK_CO_DAYKEY = 1126; -- script viet hoa By http://tranhba.com  ghi chÐp lµ mét ngµy kia 
TK_CO_PLAYTIMES = 1127; -- script viet hoa By http://tranhba.com  ghi chÐp mét ngµy bªn trong ch¬i sè lÇn 
TK_CO_TOTAL = 1794; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng ch¬i bao nhiªu lÇn # 

TK_CO_COUNT_ONETIME = 1128; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®iÓm bao nhiªu c¸ 

TK_CO_RANK = 1129; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc ®Ých ®øng hµng # 

TK_CO_GROUPID = 1130; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých Group sè 
TK_CO_EXP_BEISHU = 1131; -- script viet hoa By http://tranhba.com  ®¹t ®­îc kinh nghiÖm béi sè 
TK_CO_EXP_TIME = 1132; -- script viet hoa By http://tranhba.com  ®¹t ®­îc gÊp ®«i ®Ých thêi gian 

TK_CO_ATTACKED_TIMES = 1133; -- script viet hoa By http://tranhba.com  ghi chÐp n¨m thó bÞ c«ng kÝch sè lÇn 
TK_CO_ATTACKED_INTERVER = 1134; -- script viet hoa By http://tranhba.com  b×nh th­êng nhµ ch¬i sö dông ®¹o cô gian c¸ch 
-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com MS bé phËn # 
MS_CO_STATE = 1; 
MS_CO_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  dïng ®Ó ghi chÐp dïng cho giao thÕ ®Ých tiÕn hµnh cµ tr¸ch hßa thanh trõ tr¸ch #0# thanh trõ tr¸ch #1# cµ ra tr¸ch 
MS_CO_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
MS_CO_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi chÐp b¾t ®Çu ®Ých b¶n ®å ®Ých ID 
MS_CO_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chuÈn bÞ trµng tÝnh giê thay ®æi l­îng 
MS_CO_GAMECOUNT = 6; -- script viet hoa By http://tranhba.com  ghi chÐp mét cuéc b¾t ®Çu ®Ých trß ch¬i c¸ ®Õm 
-- script viet hoa By http://tranhba.com  th­êng l­îng bé phËn # 
FESTIVAL_SHREWMOUSE = "springfestival07"; 
CO_ANIMALNAME = "30 tuæi ng­êi "; 
CO_MOUSENAME = " b¹ch heo "; -- script viet hoa By http://tranhba.com  gi¸ng sinh tinh linh tªn 
CO_GIFTNAME = " l­u l¹i lÔ vËt "; -- script viet hoa By http://tranhba.com  lÔ vËt NPC ®Ých tªn 
CO_SIGNNPCNAME = "<color=yellow> nha m«n sai dÞch <color>:"; -- script viet hoa By http://tranhba.com  ghi danh «ng giµ n« en ®Ých tªn 
CO_MAPPOINTFLORDER = "springfestival2006"; 
FESTIVAL_OK = 1; -- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i kh¼ng ®Þnh bµy tá 
FESTIVAL_NO = 0; -- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i hñy bá bµy tá 
FESTIVAL_ENTERSPEED = 16; -- script viet hoa By http://tranhba.com  tiÕn hµnh trß ch¬i nhµ ch¬i ®Ých tèc ®é 
FESTIVAL_LEAVERSPEED = -1; -- script viet hoa By http://tranhba.com  rêi ®i trß ch¬i nhµ ch¬i ®Ých tèc ®é 

Include([[\script\missions\libfestival\head.lua]]); 

-- script viet hoa By http://tranhba.com  cã hay kh«ng ®ang ho¹t ®éng thêi gian 
function sf06_isactive() 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nDate < CO_DATE_BEGIN or nDate > CO_DATE_END or gb_GetTask("shut_springfestival07", 1) == 1) then 
return 0 
end; 
return 1; 
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
local nPlMsIdx = PIdx2MSDIdx(CO_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë chØ ®Þnh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
-- script viet hoa By http://tranhba.com  kiÓm tra ®¹o cô cã ®­îc hay kh«ng bÞ sö dông 
function itemuseplacecheck(nType) -- script viet hoa By http://tranhba.com nType :1—— c«ng céng ®¹o cô #2—— n¨m thó chuyªn dông ®¹o cô #3—— b×nh th­êng nhµ ch¬i chuyªn nghiÖp ®¹o cô 
local ww, xx, yy = GetWorldPos(); 
if (CO_MAPID[2] ~= ww) then 
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

if (nGroupId > CO_SMALLMAPCOUNT) then 
return nGroupId - CO_SMALLMAPCOUNT; 
else 
        return nGroupId + CO_SMALLMAPCOUNT;
end; 
end; 

function festival_go_other_place() -- script viet hoa By http://tranhba.com  ngÉu nhiªn truyÒn tíi ®iÓm ban ®Çu 
local nBeginMapID = GetMissionV(MS_CO_BEGINGMAPID); 
local nGroupId = GetTask(TK_CO_GROUPID); 

	local nMapId = nBeginMapID + nGroupId - 1;
	nMapId = mod(nMapId, CO_SMALLMAPCOUNT) + 1;
local szFile = [[\settings\maps\]]..CO_MAPPOINTFLORDER..[[\elf_]]..nMapId..[[.txt]]; 
local PosX, PosY = getadata(szFile); 
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_go_back(nBeginMapID) -- script viet hoa By http://tranhba.com  ngÉu nhiªn truyÒn tíi ®iÓm ban ®Çu 
local nGroupId = GetTask(TK_CO_GROUPID); 

	local nMapId = nBeginMapID + nGroupId - 1;
	nMapId = mod(nMapId, CO_SMALLMAPCOUNT) + 1;
local szFile = [[\settings\maps\]]..CO_MAPPOINTFLORDER..[[\player.txt]]; 
	local PosX, PosY = getadatatow(szFile, 8 + 8 * nMapId, 15 + 8 * nMapId);
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_checkinterver() 
local gametime = GetGameTime(); 
if (GetTask(TK_CO_ATTACKED_INTERVER) > gametime) then 
return 0; 
else 
        SetTask(TK_CO_ATTACKED_INTERVER, gametime + 2);
return 1; 
end; 
end; 
end; 
