-- script viet hoa By http://tranhba.com 1# vµo n¬i chèn ®iÓm nhÊt ®Þnh ph¶i ë thèng nhÊt ®Ých mét chç ®iÓm , cã thÓ cïng cÇm phiÕu npc thèng nhÊt ®Ých mét 
-- script viet hoa By http://tranhba.com 2# phiÕu thùc hiÖn ph­¬ng ph¸p ? t¹m thêi kh«ng th¶ , tr¾c hoµn nh÷ng thø nµy l¹i thªm ®i 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  miÔn phÝ dïng/uèng c«ng thµnh chiÕn 
-- script viet hoa By http://tranhba.com 2006-11-22 
-- script viet hoa By http://tranhba.com by tö kh«ng ph¶i lµ c¸ 
IncludeLib("FILESYS"); 
IncludeLib("TITLE"); 
IncludeLib("SETTING"); 
IncludeLib("BATTLE"); 


TSK_TEMP_CURTIME = 114 
TSK_TEMP_CURCOUNT = 115 

tb_CW_MEDICINE = 
{ 
{10, {6,1,1302,1,1,1}, 1000,"N¨m hoa ngäc lé hoµn - c«ng thµnh chiÕn ."}, 
{11, {6,1,1303,1,1,1}, 800,"Cöu chuyÓn hoµn hån ®an - c«ng thµnh chiÕn "}, 
{12, {6,1,1304,1,1,1}, 800,"Thñ « hoµn hån ®an - c«ng thµnh chiÕn "}, 
{13, {6,1,1305,1,1,1}, 800, " long tiªn hãa ®éc ®an - c«ng thµnh chiÕn "}, 
} 

MISSIONID = 6; 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 
REPORTTIME = 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com 60 gi©y c«ng bè mét c¸i chiÕn huèng 
GAMETIME = 90 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chiÕn tæng thêi gian lµ 90 phót 
CITYWAR_TOP10_EXP = 3000000; 


MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp nhiÖm vô tr¹ng th¸i thay ®æi l­îng ID 
-- script viet hoa By http://tranhba.com  nªn thay ®æi l­îng chØ h­íng ®Ých tr¹ng th¸i trÞ gi¸ 0 bµy tá chiÕn dÞch v× më ra , 1 bµy tá chiÕn dÞch ghi danh trung , 2 bµy tá chiÕn dÞch chiÕn ®Êu tiÕn hµnh trung , 3 bµy tá chiÕn dÞch míi võa kÕt thóc 
MS_STORETASKID = 240; 
MS_NEWSVALUE = 10; -- script viet hoa By http://tranhba.com  nhiÖm vô trung cÊt gi÷ tin tøc thay ®æi l­îng ®Ých ®Þa ph­¬ng 
MS_SYMBOLCOUNT = 3; -- script viet hoa By http://tranhba.com  bia ®¸ ®Ých sè l­îng 
MS_SYMBOLBEGIN = 15;-- script viet hoa By http://tranhba.com ¼ÇÂ¼Ê¯±®×´Ì¬µÄ±äÁ¿IDµÚÒ»¸öÐòºÅ£¬´ÓMS_SYMBOLBEIN µ½MS_SYMBOLBEGIN + MS_SYMBOLCOUNT·Ö±ð¼ÇÂ¼¸÷¸öÊ¯±®µÄ×´Ì¬Öµ

MS_STONENPC1 = 25; 
MS_STONENPC2 = 26; 
MS_STONENPC3 = 27; 

MS_TSCBEGIN = 50;-- script viet hoa By http://tranhba.com  mission trung ghi chÐp ®Çu th¹ch xe cã hay kh«ng ®· cã ®Ých tr¹ng th¸i dÊu hiÖu 
g_nDoorCount = 3; -- script viet hoa By http://tranhba.com  cöa thµnh ®Ých tæng sè 
g_nMaxTscPerDoor = 3; -- script viet hoa By http://tranhba.com  mçi cöa lín nhÊt cã thÓ xuÊt hiÖn ®Çu th¹ch xe sè l­îng 
MS_GCCBEGIN = MS_TSCBEGIN + g_nDoorCount * g_nMaxTscPerDoor;
g_nMaxGccPerDoor = 1; -- script viet hoa By http://tranhba.com  c«ng ph­¬ng mçi cöa nhiÒu nhÊt tån t¹i c«ng thµnh xe ®Ých sè l­îng 
-- script viet hoa By http://tranhba.com gccbegin = 59 
-- script viet hoa By http://tranhba.com toolbegin = 62 
-- script viet hoa By http://tranhba.com doorbegin = 62 + 6 = 68
MS_TOOLBEGIN = MS_GCCBEGIN + g_nMaxGccPerDoor * g_nDoorCount;
g_nMaxToolCount = 6; -- script viet hoa By http://tranhba.com  thñ ph­¬ng lín nhÊt ®ång thêi tån t¹i lÝnh ®¸nh thuª nh©n sè 

MS_DOORBEGIN = MS_TOOLBEGIN + g_nMaxToolCount; -- script viet hoa By http://tranhba.com ¼ÇÂ¼³ÇÃÅ×´Ì¬µÄmission²ÎÊýindex
MS_KEY = 99 


TV_TASKID = 230; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i nhiÖm vô tr­íc mÆt ID 
TV_TASKVALUE = 231; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i nhiÖm vô tr­íc mÆt ®Ých trÞ gi¸ , ghi chÐp së chóc ph­¬ng , tèng v× 1 , kim v× 2 
TV_TASKKEY = 232; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i nhiÖm vô tr­íc mÆt ®Ých key sè 
TV_CITYID = 233; 

CS_RevId = 20 
CS_RevData = 10; 

MAX_CAMP1COUNT = 200;-- script viet hoa By http://tranhba.com  thñ thµnh ph­¬ng bang héi lín nhÊt cã thÓ tham gia nh©n sè 
MAX_CAMP2COUNT = 200;-- script viet hoa By http://tranhba.com  c«ng thµnh ph­¬ng bang héi lín nhÊt cã thÓ tham gia nh©n sè 
MAX_CAMP3COUNT = 50 ;-- script viet hoa By http://tranhba.com  cho phÐp thñ thµnh ph­¬ng lín nhÊt cã thÓ yªu cÇu hiÖp trî kú tha bang héi nh©n sè 
MAX_CAMP4COUNT = 50 ;-- script viet hoa By http://tranhba.com  cho phÐp c«ng thµnh ph­¬ng lín nhÊt cã thÓ yªu cÇu hiÖp trî kú tha bang héi nh©n sè 

-- script viet hoa By http://tranhba.com  c«ng thñ song ph­¬ng lÇn ®Çu tiªn vµo trµng lóc ®Ých täa ®é 
CS_CampPos1 = {221, 1533, 3211};-- script viet hoa By http://tranhba.com  thñ ph­¬ng 
CS_CampPos2 = {221, 1903, 3608};-- script viet hoa By http://tranhba.com  c«ng ph­¬ng 

STONENPCID1 = 528; -- script viet hoa By http://tranhba.com  th¹ch 0 bia ®Ých Npc m« b¶n ID 
STONENPCID2 = 530; 
STONELEVEL1 = 10; -- script viet hoa By http://tranhba.com  bia ®¸ cÊp bËc thñ ph­¬ng ®Ých cét ®¸ 
STONELEVEL2 = 20; -- script viet hoa By http://tranhba.com  c«ng ph­¬ng ®Ých cét ®¸ 
STONENAME = " ®Þnh thµnh cét ®¸ "; 
DOORNPCID = 532; 
DOORLEVEL = 60; 
StonePos = 
{ 
{x = 55232, y = 104928, Name = " ®Þnh xuyªn trô "}, 
{x = 53152, y = 107040, Name = " lËp d­¬ng trô "}, 
{x = 50976, y = 108992, Name = " b×nh giang trô "}, 
}; 


DoorPos= 
{ 
{x = 57472, y = 106944, Name=" ®Þnh xuyªn cöa "}, 
{x = 55296, y = 109088, Name=" lËp d­¬ng cöa "}, 
{x = 53184, y = 111136, Name=" b×nh giang cöa "}, 
}; 

DOCTORNPCID = 230; 
DoctorPos = 
{ 
{49184,102592,"Theo qu©n ®¹i phu "}, 
{50048,103552,"Theo qu©n ®¹i phu "}, 
{48480,103616,"Theo qu©n ®¹i phu "}, 
{48928,104160,"Theo qu©n ®¹i phu "}, 
{61184,114176,"Theo qu©n ®¹i phu "}, 
{61600,114592,"Theo qu©n ®¹i phu "}, 
{60128,115168,"Theo qu©n ®¹i phu "}, 
{60672,115616,"Theo qu©n ®¹i phu "}, 
} 

-- script viet hoa By http://tranhba.com  tr­íc hai lµ ®Çu th¹ch xe ®Ých täa ®é , sau hai lµ ®Çu ®iÓm ®Ých täa ®é 
TscPos= 
{ 
{58752, 107648, 58304, 106912}, 
{58080, 107520, 57408, 106880}, 
{57952, 108480, 57408, 107872}, 

{56736,109824, 56192, 109024}, 
{55872,109728, 55232, 109056}, 
{55904,110592, 55040, 109056}, 

{54560,111808, 53312, 111136}, 
{53856,111776, 53120, 111104}, 
{53888,112448, 53248, 111936}, 
}; 

GccPos = 
{ 
{58048,107552 }, 
{55936,109664 }, 
{1675*32,3486*32}, 
}; 

OuterPos = 
{ 
{222, 1613, 3185}, 
{223, 1613, 3185}, 
} 

ObstaclePos = 
{ 
{1793*32, 3340*32}, 
{1727*32, 3407*32}, 
{1660*32, 3469*32}, 

} 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com Title Value-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
RA_KILL_PL_RANK = {10, 2.334, 0.934, 0.84, 0.56, 0.35} 
-- script viet hoa By http://tranhba.com 7 nhµ ch¬i binh lÝnh -- script viet hoa By http://tranhba.com 7/3 nhµ ch¬i gi¸o óy -- script viet hoa By http://tranhba.com 14/15 nhµ ch¬i thèng lÜnh -- script viet hoa By http://tranhba.com 21/25 nhµ ch¬i phã t­íng -- script viet hoa By http://tranhba.com 14/25 nhµ ch¬i §¹i t­íng -- script viet hoa By http://tranhba.com 7/20 nhµ ch¬i Nguyªn so¸i 
BONUS_KILLPLAYER = 75 
BONUS_MAXSERIESKILL = 150 
RANK_PKBONUS = { 
{1, 6/5,7/5 ,8/5,2 }, 
{4/5,1, 6/5,7/5,8/5 }, 
{3/5,4/5,1, 6/5,7/5 }, 
{2/5,3/5,4/5,1, 6/5 }, 
{1/5,2/5,3/5,4/5,1}, 
}; 

TAB_SERIESKILL = -- script viet hoa By http://tranhba.com  ghi chÐp bÊt ®ång rank ®Ých nhµ ch¬i , ë PK lóc , cã hay kh«ng ghi chÐp thùc tÕ chÐm liªn tôc ®Ých biÓu , 1 bµy tá ghi chÐp , 0 bµy tá kh«ng ghi chÐp 
{ 
{1,1,1,1,1}, 
{1,1,1,1,1}, 
{1,1,1,1,1}, 
{0,1,1,1,1}, 
{0,0,1,1,1}, 
}; 

BALANCE_MAMCOUNT = 15 
TAB_RANKBONUS = {0, 1000, 3000, 6000,10000}; 
RANK_SKILL = 661; 
TAB_RANKMSG = { 
" ng­¬i bÞ ®ãng cöa v× <color=white> binh lÝnh <color>!", 
" b©y giê bÞ tÊn phong lµm <color=0xa0ff> gi¸o óy <color>!", 
" b©y giê bÞ tÊn phong lµm <color=0xff> thèng lÜnh <color>!", 
" b©y giê bÞ tÊn phong lµm <color=yellow> phã t­íng <color>!", 
" b©y giê bÞ tÊn phong lµm <color=yellow><bclr=red> §¹i t­íng <bclr><color>!", 
" ng­¬i bÞ ®ãng cöa v× <color=yellow> Nguyªn so¸i <color=>!"} 

tbRANKNAME={"<color=white> binh lÝnh <color>", "<color=0xa0ff> gi¸o óy <color>", "<color=0xff> thèng lÜnh <color>", "<color=yellow> phã t­íng <color.", "<color=yellow><bclr=red> §¹i t­íng <bclr><color>" , "<color=black> Nguyªn so¸i <color>"} 

TITLE_BONUSRANK1 = 0 -- script viet hoa By http://tranhba.com  trë thµnh t­¬ng øng ®Çu hµm cÇn tÝch ph©n trÞ gi¸ 
TITLE_BONUSRANK2 = 10000 
TITLE_BONUSRANK3 = 20000 
TITLE_BONUSRANK4 = 40000 
TITLE_BONUSRANK5 = 60000 
TITLE_BONUSRANK6 = 80000 

TITLE_PL2RANK1_N = 400 -- script viet hoa By http://tranhba.com  t­¬ng øng ®Çu hµm nhµ ch¬i lín nhÊt nh©n sè 
TITLE_PL2RANK2_N = 60 
TITLE_PL2RANK3_N = 25 
TITLE_PL2RANK4_N = 10 
TITLE_PL2RANK5_N = 5 
TITLE_PL2RANK6_N = 1 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
TV_LASTDEATHTIME = 2306 
TV_LASTDEATHMAPX = 2307 
TV_LASTDEATHMAPY = 2308 
TV_SERIESKILL_REALY = 2305 -- script viet hoa By http://tranhba.com  nhµ ch¬i tr­íc mÆt ®Ých thùc tÕ chÐm liªn tôc trÞ gi¸ # cao cÊp giÕt t­¬ng ®èi thÊp cÊp ®Ých nhµ ch¬i , kÕ chÐm liªn tôc , nh­ng bÊt kÓ ch©n thËt chÐm liªn tôc # 


-- script viet hoa By http://tranhba.com BATTLE TASK-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
PL_TOTALPOINT = 1 
PL_KILLPLAYER = 2 
PL_KILLNPC = 3 
PL_BEKILLED = 4 
PL_SNAPFLAG = 5 
PL_KILLRANK1 = 6 
PL_KILLRANK2 = 7 
PL_KILLRANK3 = 8 
PL_KILLRANK4 = 9 
PL_KILLRANK5 = 10 
PL_KILLRANK6 = 11 
PL_KILLRANK7 = 12 
PL_MAXSERIESKILL = 13 -- script viet hoa By http://tranhba.com  nhµ ch¬i toµn bé chiÕn cuéc lín nhÊt chÐm liªn tôc ®Õm 
PL_SERIESKILL = 14 -- script viet hoa By http://tranhba.com  nhµ ch¬i tr­íc mÆt ®Ých chÐm liªn tôc ®Õm 
PL_FINISHGOAL = 15 
PL_1VS1 = 16 
PL_GETITEM = 17 
PL_WINSIDE = 18 
PL_PRISEGRADE = 19 
PL_AVERAGEGRADE = 20 
PL_WINGRADE = 21 
PL_PARAM1 = 22 
PL_PARAM2 = 23 
PL_PARAM3 = 24 
PL_PARAM4 = 25 
PL_PARAM5 = 26 
PL_CURRANK = 27 -- script viet hoa By http://tranhba.com  =PL_PARAM6 = 27 bµy tá nhµ ch¬i tr­íc mÆt ®Ých quan chøc , tr­íc m¾t sö dông thø 6 sè tham sæ 

PL_BATTLEID=41 
PL_RULEID=42 
PL_BATTLECAMP = 43 
PL_BATTLESERIES = 44 -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i lÇn tr­íc tham gia chiÕn dÞch ®Ých chiÕn dÞch n­íc ch¶y sè 
PL_KEYNUMBER = 45 
PL_LASTDEATHTIME = 46 
		PL_BATTLEPOINT = 47	-- script viet hoa By http://tranhba.com ¼ÇÂ¼Íæ¼Ò±¾Õ½ÒÛµÄ×Ü»ý·Ö£¬×Ü»ý·ÖÊÇÍæ¼ÒËù²Î¼ÓµÄ¸÷³¡Õ½¾ÖµÄ»ý·Ö×ÜºÍ, E(PL_TOTALPOINT1 + PL_TOTALPOINT2+ ...)
PL_ROUND = 48 

GAME_KEY = 1 
GAME_BATTLEID = 2 
GAME_RULEID = 3 
GAME_MAPID = 4 
GAME_CAMP1 = 5 
GAME_CAMP2 = 6 
GAME_MAPICONID = 7 
GAME_RESTTIME = 8 
GAME_LEVEL = 9 
GAME_MODE = 10 
GAME_CAMP1AREA= 11 
GAME_CAMP2AREA= 12 
GAME_BATTLESERIES = 13 
GAME_ROUND = 14 

-- script viet hoa By http://tranhba.com ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ hoa lÖ ®Ých ph©n chia tuyÕn ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

function CheckWin() 
local nResult = 0;-- script viet hoa By http://tranhba.com  thñ ph­¬ng bia ®¸ ®Ých sè l­îng 
local nCount = MS_SYMBOLCOUNT; 
for i = 1, nCount do 
		 if (GetMissionV(MS_SYMBOLBEGIN + i - 1) == 2) then 
		 	nResult = nResult + 1;
end; 
end 
return nResult; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function GameWin(nWinner) 
if (nWinner == 1) then 
str = " quyÕt cuéc so tµi " .. " thñ ph­¬ng "..GetGamerName(1).." ®¹i th¾ng , tiÕp tôc gi÷ v÷ng #"..GetGameCity().." lÊy ®­îc quyÒn thèng trÞ # tiÕp tôc gi÷ v÷ng "; 
NotifyWarResult(GetWarOfCity(), 0) 
else 
str= " quyÕt cuéc so tµi " .. " c«ng ph­¬ng :"..GetGamerName(2) .. " ®¹i th¾ng , tiÕp tôc gi÷ v÷ng ! "..GetGameCity().." lÊy ®­îc quyÒn thèng trÞ # tiÕp tôc gi÷ v÷ng "; 

NotifyWarResult(GetWarOfCity(), 1) 
end; 

WriteLog(date("%m%d-%H:%M")..str) 
AddGlobalNews(str); 
CloseMission(MISSIONID); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ®em gi©y truyÖn ®æi thµnh ph©n cïng gi©y , tû nh­ 62s = 1m2s 
function GetMinAndSec(nSec) 
nRestMin = floor(nSec / 60); 
nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  lÊy ®­îc thµnh chiÕn ®Ých thµnh phè 
function GetWarOfCity() 
for i = 1,7 do 
if (HaveBeginWar(i) ~= 0) then 
return i; 
end; 
end; 
return 0; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function GetGamerName(nWinner) 
CityID = GetWarOfCity(); 
Tong1, Tong2=GetCityWarBothSides(CityID); 
if (nWinner == 1) then 
return Tong2; 
else 
return Tong1; 
end; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function GetGameCity() 
CityID = GetWarOfCity(); 
return GetCityAreaName(CityID); 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function GetNearstPos(X,Y, PosTab) 
PosCount = getn(PosTab); 
PosId = 0; 
MaxDist = 999999999; 

BeyondCount = 0;-- script viet hoa By http://tranhba.com  v­ît qua lín nhÊt cho phÐp kho¶ng c¸ch sè l­îng , nÕu nh­ còng v­ît qua lêi cña , liÒn trë vÒ 0 

for i = 1, PosCount do 
		Dist = sqrt( (X-PosTab[i][1]) * (X-PosTab[i][1]) + (Y - PosTab[i][2]) * (Y - PosTab[i][2]))
if (Dist >= 600) then 
			BeyondCount = BeyondCount + 1;
end; 
if (i == 1) then 
PosId = 1 
MaxDist = Dist 
elseif (MaxDist > Dist) then 
PosId = i 
MaxDist = Dist 
end 
end; 

if (BeyondCount >= PosCount) then 
return 0 
else 
return PosId; 
end; 
end; 

function CreateObstacle(X,Y) 
for i=-10,3 do 
		AddObstacleObj(359, 221, X + i * 16 ,Y - i * 16)
end 
end; 

function ClearObstacle(X,Y) 
for i=-10,3 do 
		ClearObstacleObj(221, X + i * 16 ,Y - i * 16)
end 
end; 

function DelNpcSafe(nNpcIndex) 
WriteLog(GetLoop()..": DelNpcSafe:"..nNpcIndex); 

if (nNpcIndex <= 0 ) then 
return 
end 

PIdx = NpcIdx2PIdx(nNpcIndex); 
if (PIdx > 0) then 
WriteLog("Sai lÇm !!! DelNpc muèn tiªu trõ mét gamer "); 
return 
end; 

DelNpc(nNpcIndex) 
end; 

function sf_onplayerleave() 
RestoreOwnFeature() 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tiÕn vµo chiÕn tr­êng lóc phó cho nhµ ch¬i t­¬ng øng ®Çu hµm BEGIN-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function bt_JudgePLAddTitle() 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc tr­íc mÆt ®Ých Rank , nÕu nh­ tÝch ph©n ®¹t tíi h¹ cÊp mét Rank ®Ých yªu cÇu trÞ gi¸ lµ cho nªn nhµ ch¬i nªn Rank, nÕu nh­ Rank trÞ gi¸ ®· ®¹t tíi th­îng h¹n lµ kh«ng thªm 
local nCurRank = BT_GetData(PL_CURRANK) 
if ( nCurRank >= getn(TAB_RANKBONUS)) then 
return 
end 
	if (BT_GetData(PL_TOTALPOINT) < TAB_RANKBONUS[nCurRank + 1]) then
return 
end 
local nRankCount = getn(TAB_RANKBONUS) 
for i = 1, getn(TAB_RANKBONUS) do 
		if (BT_GetData(PL_TOTALPOINT) >= TAB_RANKBONUS[nRankCount - i + 1] ) then
				bt_RankEffect(nRankCount - i + 1)
return 
end 
end 
end 

-- script viet hoa By http://tranhba.com  ®Ó cho ®Çu hµm 
function bt_RankEffect(rank) 
if (rank == 0) then 
rank = 1 
end 
local campnum = 89 
if (GetCurCamp() == 2) then 
		campnum = campnum + 5
end 
	Title_AddTitle(campnum + rank - 1, 0, 9999999)
	Title_ActiveTitle(campnum + rank - 1)
-- script viet hoa By http://tranhba.com  AddSkillState(RANK_SKILL, rank - 1, 0, 999999); 
Msg2Player(TAB_RANKMSG[rank]); 
BT_SetData(PL_CURRANK, rank); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tiÕn vµo chiÕn tr­êng lóc phó cho nhµ ch¬i t­¬ng øng ®Çu hµm ENDING-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function bt_addtotalpoint(point) 
if (point == 0) then 
return 
end 
	BT_SetData(PL_TOTALPOINT, BT_GetData(PL_TOTALPOINT) + point)
bt_JudgePLAddTitle() 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tÝnh to¸n tÝch ph©n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function ResetBonus() 
BT_SetTypeBonus(PL_KILLPLAYER, 1, floor(BONUS_KILLPLAYER)) 
BT_SetTypeBonus(PL_MAXSERIESKILL, 1, floor(BONUS_MAXSERIESKILL)) 

BT_SetTypeBonus(PL_KILLPLAYER, 2, floor(BONUS_KILLPLAYER)) 
BT_SetTypeBonus(PL_MAXSERIESKILL, 2, floor(BONUS_MAXSERIESKILL)) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function bt_setnormaltask2type() 
-- script viet hoa By http://tranhba.com 701 ®· bÞ chiÕm dông , cho nªn thay ®æi ®Õn 751 
BT_SetType2Task(1, 751) 
for i = 2, 50 do 
	BT_SetType2Task(i, 700 + i);
end 
end 
