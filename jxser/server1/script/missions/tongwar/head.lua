Include("\\script\\event\\tongwar\\headinfo.lua")
MISSIONID = 33 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 
TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi©y c«ng bè mét c¸i chiÕn huèng 
TIMER_2 = 15* 6 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chiÕn thêi gian lµ 2 giê 
RUNGAME_TIME = 30 * 60 * FRAME2TIME / TIMER_1; -- script viet hoa By http://tranhba.com  ghi danh 30 phót sau , tù ®éng tiÕn vµo chiÕn ®Êu giai ®o¹n 

MAX_MEMBERCOUNT = 150 
MIN_MEMBERCOUNT = 5 
TIME_PLAYER_STAY = 120 
TONGWAR_MAXDEATH = 10 

BONUS_KILLPLAYER = 75 
BONUS_MAXSERIESKILL = 150 

tbNPCPOS = {"npcpos1", "npcpos2"} 
TNPC_DOCTOR1 = 55;-- script viet hoa By http://tranhba.com  qu©n y ®Ých Npc m« b¶n ID sè 
TNPC_DOCTOR2 = 49; 
TNPC_SYMBOL1 = 629; 
TNPC_SYMBOL2 = 630; 
TNPC_DEPOSIT = 625; 

TNPC_FLAG0 = 626; 
TNPC_FLAG1 = 628; 
TNPC_FLAG2 = 627; 


tbTONGWAR_SIGNMAP_POS = { 
{ 1582,3174 }, 
{ 1588,3160 }, 
{ 1604,3147 }, 
} 

tbTONGWARMAP = { 
{605, 608, 609}, 
{606, 610, 611}, 
{607, 612, 613}, 
} 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com Title Value-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
RA_KILL_PL_RANK = {10, 2.334, 0.934, 0.84, 0.56, 0.35} 
-- script viet hoa By http://tranhba.com 7 nhµ ch¬i binh lÝnh -- script viet hoa By http://tranhba.com 7/3 nhµ ch¬i gi¸o óy -- script viet hoa By http://tranhba.com 14/15 nhµ ch¬i thèng lÜnh -- script viet hoa By http://tranhba.com 21/25 nhµ ch¬i phã t­íng -- script viet hoa By http://tranhba.com 14/25 nhµ ch¬i §¹i t­íng -- script viet hoa By http://tranhba.com 7/20 nhµ ch¬i Nguyªn so¸i 

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
" ng­¬i bÞ ®ãng cöa v× <color=0xff> gi¸o óy <color>! l­îng m¸u gia t¨ng 20%", 
" ng­¬i bÞ ®ãng cöa v× <color=0xff> thèng lÜnh <color>! l­îng m¸u gia t¨ng 30%, phßng thñ gia t¨ng 5%", 
" ng­¬i bÞ ®ãng cöa v× <color=yellow> phã t­íng <color>! l­îng m¸u gia t¨ng 40%, phßng thñ gia t¨ng 10% ", 
" ng­¬i bÞ ®ãng cöa v× <color=yellow><bclr=red> §¹i t­íng <bclr><color>! l­îng m¸u gia t¨ng 50%, phßng thñ gia t¨ng 15%.", 
" ng­¬i bÞ ®ãng cöa v× <color=yellow> Nguyªn so¸i <color=>!"} 

tbRANKNAME={"<color=white> binh lÝnh <color>", "<color=0xa0ff> gi¸o óy <color>", "<color=0xff> thèng lÜnh <color>", "<color=yellow> phã t­íng <color>", "<color=yellow><bclr=red> §¹i t­íng <bclr><color>" , "<color=black> Nguyªn so¸i <color>"} 

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

FILE_HOMETRAP1 = "\\script\\missions\\tongwar\\match\\hometrap1.lua";
FILE_HOMETRAP2 = "\\script\\missions\\tongwar\\match\\hometrap2.lua";
FILE_CENTERTRAP = "\\script\\missions\\tongwar\\match\\centertrap.lua";
FILE_CENTERTOHOMETRAP1 = "\\script\\missions\\tongwar\\match\\homeouttrap1.lua"
FILE_CENTERTOHOMETRAP2 = "\\script\\missions\\tongwar\\match\\homeouttrap2.lua"

FILE_DOCTOR1 = 	"\\script\\missions\\tongwar\\npc\\doctor.lua";
FILE_DOCTOR2 = 	"\\script\\missions\\tongwar\\npc\\doctor.lua";
FILE_SYMBOLNPC = "" 
FILE_DEPOSIT = 	"\\script\\missions\\tongwar\\npc\\openbox.lua"
FILE_DEATH = "\\script\\missions\\tongwar\\match\\npcdeath.lua"
