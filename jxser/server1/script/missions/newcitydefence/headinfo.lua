-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: headinfo.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cuèi tuÇn ho¹t ®éng # vÖ quèc chiÕn tranh chi giã löa liªn thµnh 
-- script viet hoa By http://tranhba.com  chøc n¨ng 1# ho¹t ®éng ®Çu v¨n kiÖn tù ®Þnh nghÜa th­êng l­îng 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
IncludeLib("FILESYS"); 
-- script viet hoa By http://tranhba.com IncludeLib("BATTLE"); 
IncludeLib("TITLE"); 
IncludeLib("RELAYLADDER") 
Include( "\\script\\task\\system\\task_string.lua" );

-- script viet hoa By http://tranhba.com print(date("%w")) -- script viet hoa By http://tranhba.com  ®¹t ®­îc tr­íc mÆt phôc vô khÝ tuÇn lÔ 1-- script viet hoa By http://tranhba.com Monday#2-- script viet hoa By http://tranhba.com Tuesday#3-- script viet hoa By http://tranhba.com Wednesday#4-- script viet hoa By http://tranhba.com Thursday#5-- script viet hoa By http://tranhba.com Frieday#6-- script viet hoa By http://tranhba.com Saturday#0-- script viet hoa By http://tranhba.com Sunday 
GV_TSK_CD_OPEN = 35 
FIRE_OPENDAY_SATURDAY = 6; -- script viet hoa By http://tranhba.com  
FIRE_OPENDAY_SUNDAY = 0; -- script viet hoa By http://tranhba.com  
CD_LEVEL_LIMIT = 80 -- script viet hoa By http://tranhba.com  thÊp nhÊt tham gia thñ thµnh cÊp bËc 
TASKID_FIRE_KEY = 1185;-- script viet hoa By http://tranhba.com random(1000000); -- script viet hoa By http://tranhba.com  mçi trµng lÇn mÊu chèt ch÷ , nh­ vËy ph¸n ®o¸n cã hay kh«ng lµm gèc ®æi phiªn lÇn tham gia nhµ ch¬i 
TASKID_FIRE_DAY = 1186;-- script viet hoa By http://tranhba.com tonumber(date("%m%d")); -- script viet hoa By http://tranhba.com  nhµ ch¬i mét ngµy chØ cã thÓ tham gia mét cuéc vÖ quèc chiÕn tranh , ghi chÐp nhËt kú 
TASKID_FIRE_ADDR = 1187;-- script viet hoa By http://tranhba.com  truyÒn vµo ®Ých ®Ých thµnh phè ID 
-- script viet hoa By http://tranhba.com 1189 
TSKID_FIRE_SIGNLVL = 1867 -- script viet hoa By http://tranhba.com  ghi danh lóc cÊp bËc 
TSKID_FIRE_SIGNEXP = 1868 -- script viet hoa By http://tranhba.com  ghi danh lóc kinh nghiÖm trÞ gi¸ 
TSKID_FIRE_SUMEXP = 1869 -- script viet hoa By http://tranhba.com  ®¹t ®­îc ®Ých kinh nghiÖm trÞ gi¸ 
TSKID_PLAYER_ZHANGONG = 1879 -- script viet hoa By http://tranhba.com  ®¹t ®­îc ®Ých chiÕn c«ng trÞ gi¸ 
FIRE_JOINUP_FEE = 100000; -- script viet hoa By http://tranhba.com  tiÒn ghi danh dïng 10w hai 
PL_TOTALPOINT = 1 
-- script viet hoa By http://tranhba.com LADDER_ID_TEMP = 10255 -- script viet hoa By http://tranhba.com  t¹m tån b¶ng xÕp h¹ng 
-- script viet hoa By http://tranhba.com LADDER_ID_FANIEL = 10256-- script viet hoa By http://tranhba.com  cuèi cïng ®øng hµng thø 

MAX_NPC_COUNT = 500-- script viet hoa By http://tranhba.com 1000-- script viet hoa By http://tranhba.com 5000; -- script viet hoa By http://tranhba.com  h¹n chÕ b¶n ®å trung cã tèi ®a 5000 c¸ npc 

FIRE_1RSTNPC_COUNT = 13500-- script viet hoa By http://tranhba.com 15000; 
FIRE_2CNDNPC_COUNT = 3000-- script viet hoa By http://tranhba.com 2000; 
FIRE_3RDNPC_COUNT = 1500-- script viet hoa By http://tranhba.com 1000; 
FIRE_4THNPC_COUNT = 120; 
FIRE_5THNPC_COUNT = 10; 

TNPC_DOCTOR1 = 55; -- script viet hoa By http://tranhba.com  tèng qu©n y ®Ých Npc m« b¶n ID sè 
TNPC_DOCTOR2 = 49; -- script viet hoa By http://tranhba.com  kim qu©n y ®Ých Npc m« b¶n ID sè 
TNPC_DEPOSIT = 625; -- script viet hoa By http://tranhba.com  tr÷ vËt r­¬ng NPC m« b¶n ID 
TNPC_CHEFU = 393; 
TNPC_SYMBOL1 = 629; 
TNPC_SYMBOL2 = 630; 
RANK_SKILL = 661; -- script viet hoa By http://tranhba.com  danh hiÖu hµo quang 
-- script viet hoa By http://tranhba.com  binh nh× tiÓu ®éi tr­ëng phã t­íng §¹i t­íng Nguyªn so¸i t¹c ®¹n xe 
tbTNPC_SOLDIER = { {1067, 1068, 1069, 1070, 1080, 1337}, -- script viet hoa By http://tranhba.com  tèng 
{1072, 1073, 1074, 1075, 1090, 1337}} -- script viet hoa By http://tranhba.com  kim 
tbSOLDIER_NAME = { "TiÓu tèt","§éi tr­ëng","Tiªn phong","Chñ t­íng","Chñ so¸i","C«ng thµnh chiÕn tr­êng" } 
tbPlAYERER_NAME = {"Binh lÝnh ","Gi¸o óy ","Thèng lÜnh ","Phã t­íng ","§¹i t­íng "} -- script viet hoa By http://tranhba.com  chiÕn c«ng ®¹t tíi x­ng vÞ hµo quang 
tbPlAYERER_ZHANGONG = { 0, 300, 500, 1000, 2000} -- script viet hoa By http://tranhba.com  lín h¬n 0 v× binh lÝnh , lín h¬n 300 v× gi¸o óy .... 
tbPlAYERER_GUANGHUAN= { {89, 90, 91, 92, 93}, -- script viet hoa By http://tranhba.com  tèng danh hiÖu ID 
{94, 95, 96, 97, 98}} -- script viet hoa By http://tranhba.com  kim 
-- script viet hoa By http://tranhba.com  vÖ binh t­íng qu©n thñ thµnh bé phËn ®Ých cè ®Þnh npc 
tbTNPC_SOLDIER1 = { {1067, 1068}, -- script viet hoa By http://tranhba.com  tèng 
{1072, 1073}} -- script viet hoa By http://tranhba.com  kim 
tbSOLDIER_NAME1 = { " vÖ binh ","T­íng qu©n "} 

tbSOLDIER_LEVEL = { 60, 60, 60, 80, 80 ,60} 
tbSOLDIER_LEVEL1 = { 60, 60}-- script viet hoa By http://tranhba.com  thñ thµnh quan binh ®Ých cÊp bËc 
-- script viet hoa By http://tranhba.com  tiÓu gi¸o ®éi tr­ëng tiªn phong chñ t­íng chñ so¸i t¹c ®¹n xe lÊy b¶o 
tbKILLNPC_AWARD = {2,8,10,40,60,30,10} -- script viet hoa By http://tranhba.com  giÕt chÕt npc ®¹t ®­îc chiÕn c«ng 
tbKILLNPC_SHAREAWARD = {1,5,5,20,30,15,0}-- script viet hoa By http://tranhba.com  ®éi h÷u ®¹t ®­îc chiÕn c«ng 
tbFILE_NPCDEATH = 
{ 
	"\\script\\missions\\newcitydefence\\npcdeath_1.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_2.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_3.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_4.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_5.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_6.lua",	
}; 
FILE_SHOUCHENG_DEATH = { 
		"\\script\\missions\\newcitydefence\\shouchengnpcdeath1.lua",
		"\\script\\missions\\newcitydefence\\shouchengnpcdeath2.lua",
} 

tbDEFENCE_MAPID = { 580, 581 } -- script viet hoa By http://tranhba.com  míi tèng kim b¶n ®å , by liªu chÝ s¬n 
tbDEFENCE_SIGNMAP = { 518, 519 } 
tbREVIVAL_POS = { 
{1528,3321}, 
{1557,3330}, 
{1567,3358}, 
{1537,3369}, 
} 
tbSIGNMAP_POS = { 
{ 1582,3174 }, 
{ 1588,3160 }, 
{ 1604,3147 }, 
} 


tbDEFENCE_RETURN = { 
[1] = { 1520,3228,"Ph­îng t­êng phñ ", 2 }, -- script viet hoa By http://tranhba.com  ph­îng t­êng 
[11] = { 3018,5089,"Thµnh ®« phñ ", 1 }, -- script viet hoa By http://tranhba.com  thµnh ®« 
[37] = { 1632,3185,"BiÖn kinh phñ ", 2 }, -- script viet hoa By http://tranhba.com  biÖn kinh 
[78] = { 1439,3214,"T­¬ng d­¬ng phñ ", 1 }, -- script viet hoa By http://tranhba.com  t­¬ng d­¬ng 
[80] = { 1593,3197,"D­¬ng Ch©u phñ ", 1 }, -- script viet hoa By http://tranhba.com  D­¬ng Ch©u 
[162] = { 1470,3269,"§¹i Lý phñ ", 1 }, -- script viet hoa By http://tranhba.com  §¹i Lý 
[176] = { 1392,3313,"Tr­íc khi An phñ ", 1 }, -- script viet hoa By http://tranhba.com  tr­íc khi an 
} 

tbDEFENCE_ANNOUNCE = { 
" nhµ ch¬i cã thÓ ®Õn thµnh ®« phñ t­¬ng d­¬ng phñ tr­íc khi An phñ §¹i Lý phñ D­¬ng Ch©u phñ cïng cöa thµnh vÖ binh ®èi tho¹i tham gia tèng ph­¬ng thñ thµnh .", 
" nhµ ch¬i cã thÓ ®Õn ph­îng t­êng phñ biÖn kinh phñ cïng cöa thµnh vÖ binh ®èi tho¹i tham gia kim ph­¬ng thñ thµnh ." 
} 

FILE_PLAYERDEATH = 		"\\script\\missions\\newcitydefence\\playerdeath.lua";
FILE_DOCTOR = 			"\\script\\missions\\newcitydefence\\npc\\cd_doctor.lua";
FILE_BOX = 				"\\script\\missions\\newcitydefence\\npc\\cd_box.lua";
FILE_DOCTOR1 = 			"\\script\\missions\\newcitydefence\\npc\\cd_doctor.lua";
FILE_DOCTOR2 = 			"\\script\\missions\\newcitydefence\\npc\\cd_doctor.lua";
FILE_CENTERTRAP1 = 		"\\script\\missions\\newcitydefence\\trap\\hometrap1.lua";
FILE_CENTERTRAP2 = 		"\\script\\missions\\newcitydefence\\trap\\hometrap2.lua";
FILE_CD_TRANSER = 		"\\script\\missions\\newcitydefence\\npc\\cd_transer.lua"
FILE_SYMBOLNPC = ""; 

FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 
MISSIONID = 27; -- script viet hoa By http://tranhba.com mission biªn sè 
MAX_MEMBERCOUNT = 400; -- script viet hoa By http://tranhba.com  c«ng thµnh b¶n ®å lín nhÊt nh©n sè h¹n chÕ 

SMALLTIMERID = 52; -- script viet hoa By http://tranhba.com  tÝnh giê khÝ biªn sè 
TOTALTIMERID = 53; -- script viet hoa By http://tranhba.com  tÝnh giê khÝ biªn sè 

SMALL_TIME = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com  mçi 20 gi©y tÝnh giê mét lÇn 
TOTAL_TIME = 150 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com 150 phót tÝnh giê mét lÇn , ho¹t ®éng kÕt thóc 
RUNGAME_TIME = 30 * 60 * FRAME2TIME / SMALL_TIME; -- script viet hoa By http://tranhba.com  ghi danh 30 phót sau , khëi ®éng 
LASTREPORT_TIME = 145 * 60 * FRAME2TIME / SMALL_TIME; -- script viet hoa By http://tranhba.com  thñ thµnh cuèi cïng 5 phót kh«ng cã phót , ®Ò kú mét lÇn thêi gian 
CALLBOSS_ZHUSHUAI = 120 * 60 * FRAME2TIME / SMALL_TIME; -- script viet hoa By http://tranhba.com  chñ so¸i xuÊt hiÖn thêi gian 

NHOMEDEFENCE = 24 -- script viet hoa By http://tranhba.com  thµnh phßng míi b¾t ®Çu trÞ gi¸ 
NHOMEDEFENCE_DAMAGE = 1 -- script viet hoa By http://tranhba.com  thµnh phßng tæn th­¬ng trÞ gi¸ , c«ng thµnh xe ®èi víi thµnh phßng 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp nhiÖm vô tr¹ng th¸i thay ®æi l­îng ID 
MS_RANDKEY = 2; -- script viet hoa By http://tranhba.com  ghi chÐp nhiÖm vô tr­íc mÆt h¹ ®Ých key , ngÉu nhiªn ®Õm 
MS_OPENDAY = 3; -- script viet hoa By http://tranhba.com  ghi chÐp nhiÖm vô tr­íc mÆt b¾t ®Çu ®Ých th¸ng , ngµy 
MS_CITYCAMP = 4; -- script viet hoa By http://tranhba.com  b¶n ghi chÐp tÊm b¶n ®å ®Ých trËn doanh , tèng -1# kim -2 
MS_SMALL_TIME = 5; -- script viet hoa By http://tranhba.com  ghi chÐp smalltimer tÝnh giê khÝ ®Ých sè lÇn 
MS_BOSS4_DOWN = 6; -- script viet hoa By http://tranhba.com  v× 1 ®· sinh ra tiÓu boss , 0 cßn ch­a 
MS_BOSS5_DOWN = 7; -- script viet hoa By http://tranhba.com  v× 1 ®· sinh ra ®¹i boss , 0 cßn ch­a 
MS_TLCOUNT_COMMON = 8; -- script viet hoa By http://tranhba.com  giÕt chÕt b×nh th­êng tr¸ch ®Ých tæng sè 
MS_CITYDEFENCE = 9; -- script viet hoa By http://tranhba.com  v× 0 bµy tá ®Õn lóc ®ã ®ang lóc ch­a hoµn thµnh nhiÖm vô , v× 1 bµy tá nhiÖm vô hoµn thµnh 
MS_MISSIONID = 10; -- script viet hoa By http://tranhba.com  tån vµo tr­íc mÆt mission ®Ých ID 

MS_MAXCOUNTNPC_1 = 11; -- script viet hoa By http://tranhba.com  tiÓu gi¸o cßn thõa l¹i sè l­îng 
MS_MAXCOUNTNPC_2 = 12; -- script viet hoa By http://tranhba.com  ®éi tr­ëng cßn thõa l¹i sè l­îng 
MS_MAXCOUNTNPC_3 = 13; -- script viet hoa By http://tranhba.com  tiªn phong cßn thõa l¹i sè l­îng 
MS_MAXCOUNTNPC_4 = 14; -- script viet hoa By http://tranhba.com  chñ t­íng cßn thõa l¹i sè l­îng 
MS_MAXCOUNTNPC_5 = 15; -- script viet hoa By http://tranhba.com  chñ so¸i cßn thõa l¹i sè l­îng 

MS_RESTCOUNTNPC_1 = 16; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng giÕt chÕt b¹ch tr¸ch sè l­îng 
MS_RESTCOUNTNPC_2 = 17; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng giÕt chÕt lan tr¸ch sè l­îng 
MS_RESTCOUNTNPC_3 = 18; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng giÕt chÕt s¸t thñ cÊp tr¸ch sè l­îng 
MS_RESTCOUNTNPC_4 = 19; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng giÕt chÕt tiÓu BOSS sè l­îng 
MS_RESTCOUNTNPC_5 = 20; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng giÕt chÕt ®¹i BOSS sè l­îng 

MS_HOMEOUT_X1 = 21; -- script viet hoa By http://tranhba.com  d· ngo¹i h­íng ®¹i doanh ®Ých truyÒn tèng täa ®é X , thø nhÊt lo¹i Trap 
MS_HOMEOUT_Y1 = 22; 
MS_HOMEOUT_X2 = 23; -- script viet hoa By http://tranhba.com  d· ngo¹i h­íng ®¹i doanh ®Ých truyÒn tèng täa ®é X , thø hai lo¹i Trap 
MS_HOMEOUT_Y2 = 24; 

MS_CENTER_X1 = 27; -- script viet hoa By http://tranhba.com  ®¹i doanh h­íng d· ngo¹i ®Ých truyÒn tèng täa ®é X , thø nhÊt lo¹i Trap 
MS_CENTER_Y1 = 28; 
MS_CENTER_X2 = 29; -- script viet hoa By http://tranhba.com  ®¹i doanh h­íng d· ngo¹i ®Ých truyÒn tèng täa ®é X , thø nhÊt lo¹i Trap 
MS_CENTER_Y2 = 30; 

MS_SHOUCHENGWEIBING = 33 
MS_SHOUCHENGJIANGJUN = 34 

MS_HOMEDEFENCE = 35 -- script viet hoa By http://tranhba.com  thµnh phßng 

MS_S_GUAI1 = 1; -- script viet hoa By http://tranhba.com  ghi chÐp thø nhÊt cµ tr¸ch ®iÓm 
MS_S_GUAI2 = 2; -- script viet hoa By http://tranhba.com  ghi chÐp thø hai cµ tr¸ch ®iÓm 
MS_S_GUAI3 = 3; -- script viet hoa By http://tranhba.com  ghi chÐp ng­êi thø ba cµ tr¸ch ®iÓm 
MS_S_CD_NAME = 4; -- script viet hoa By http://tranhba.com  tr­íc mÆt thñ thµnh chiÕn dÞch ®Ých tªn 

CD_BASE_VALUE = 1000000 

TB_CD_AWARDEXP = {600, 700, 800, 900, 1000} 
TB_CD_AWARDITEM = { 
-- script viet hoa By http://tranhba.com { itemname, itemvalue, itemlist}, 
{"Tr¨m qu¶ lé ",0.02,{ 6,1,73,0,1,1,1 }}, 
{"Thiªn S¬n b¶o lé ",0.02,{ 6,1,72,0,1,1,1 }}, 
{"HuyÒn tinh 4 cÊp ",0.02,{ 6,1,147,0,4,1,1 }}, 
{"HuyÒn tinh 5 cÊp ",0.003,{ 6,1,147,0,5,1,1 }}, 
{"HuyÒn tinh 6 cÊp ",0.001,{ 6,1,147,0,6,1,1 }}, 
{"HuyÒn tinh 7 cÊp ",0.0003,{ 6,1,147,0,7,1,1 }}, 
{"HuyÒn tinh 8 cÊp ",0.0001,{ 6,1,147,0,8,1,1 }}, 
{"§¹i lùc hoµn ",0.02,{ 6,0,3,0,1,1,1 }}, 
{"Nhanh chãng hoµn ",0.02,{ 6,0,6,0,1,1,1 }}, 
{"§éc phßng hoµn ",0.02,{ 6,0,10,0,1,1,1 }}, 
{"B¨ng phßng hoµn ",0.02,{ 6,0,7,0,1,1,1 }}, 
{" löa phßng hoµn ",0.02,{ 6,0,9,0,1,1,1 }}, 
{" l«i phßng hoµn ",0.02,{ 6,0,8,0,1,1,1 }}, 
{"Trung häc ®Ö nhÞ cÊp hoµn ",0.02,{ 6,0,5,0,1,1,1 }}, 
{"Thªm ch¹y hoµn ",0.02,{ 6,0,2,0,1,1,1 }}, 
{"Cao nhanh chãng hoµn ",0.02,{ 6,0,4,0,1,1,1 }}, 
{"Tr­êng mÖnh hoµn ",0.02,{ 6,0,1,0,1,1,1 }}, 
{"M©m nÕu t©m tr¶i qua ",0.0005,{ 6,1,12,0,1,1,1 }}, 
{" lam thñy tinh ",0.001,{ 238 }}, 
{"N­íc biÕc tinh ",0.001,{ 240 }}, 
{"Tö thñy tinh ",0.001,{ 239 }}, 
{"Vâ l©m bÝ tÞch ",0.0001,{ 6,1,26,0,1,1,1 }}, 
{"TÈy Tñy Kinh ",0.0001,{ 6,1,22,0,1,1,1 }}, 
{"Tiªn th¶o lé ",1,{ 6,1,71,0,1,1,1 }}, 
-- {"HiÖp cèt chi thiÕt huyÕt sam m¶nh vôn (1/4) /4)",0.0001,{ 903 }}, 
-- {"HiÖp cèt chi thiÕt huyÕt sam m¶nh vôn (2/4) /4)",0.0001,{ 904 }}, 
-- {"HiÖp cèt chi thiÕt huyÕt sam m¶nh vôn (3/4) /4)",0.0001,{ 905 }}, 
-- {"HiÖp cèt chi thiÕt huyÕt sam m¶nh vôn (4/4) /4)",0.0001,{ 906 }}, 
-- {"HiÖp cèt nhiÒu t×nh hoµn m¶nh vôn (1/4) /4)",0.0002,{ 907 }}, 
-- {"HiÖp cèt nhiÒu t×nh hoµn m¶nh vôn (2/4) /4)",0.0002,{ 908 }}, 
-- {"HiÖp cèt nhiÒu t×nh hoµn m¶nh vôn (3/4) /4)",0.0002,{ 909 }}, 
-- {"HiÖp cèt nhiÒu t×nh hoµn m¶nh vôn (4/4) /4)",0.0002,{ 910 }}, 
-- {"HiÖp cèt chi ®an t©m giíi m¶nh vôn (1/4) /4)",0.0002,{ 911 }}, 
-- {"HiÖp cèt chi ®an t©m giíi m¶nh vôn (2/4) /4)",0.0002,{ 912 }}, 
-- {"HiÖp cèt chi ®an t©m giíi m¶nh vôn (3/4) /4)",0.0002,{ 913 }}, 
-- {"HiÖp cèt chi ®an t©m giíi m¶nh vôn (4/4) /4)",0.0002,{ 914 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (1/6) /6)",0.00002,{ 771 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (2/6) /6)",0.00002,{ 772 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (3/6) /6)",0.00002,{ 773 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (4/6) /6)",0.00002,{ 774 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (5/6) /6)",0.00002,{ 775 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (6/6) /6)",0.00002,{ 776 }}, 
-- {"C©n qu¾c nghª th­êng m¶nh vôn (1/6) /6)",0.00001,{ 777 }}, 
-- {"C©n qu¾c nghª th­êng m¶nh vôn (2/6) /6)",0.00001,{ 778 }}, 
-- {"C©n qu¾c nghª th­êng m¶nh vôn (3/6) /6)",0.00001,{ 779 }}, 
-- {"C©n qu¾c nghª th­êng m¶nh vôn (4/6) /6)",0.00001,{ 780 }}, 
-- {"C©n qu¾c nghª th­êng m¶nh vôn (5/6) /6)",0.00001,{ 781 }}, 
-- {"C©n qu¾c nghª th­êng m¶nh vôn (6/6) /6)",0.00001,{ 782 }}, 
-- {"Nhu t×nh chi thôc n÷ gi©y chuyÒn m¶nh vôn (1/4) /4)",0.0002,{ 915 }}, 
-- {"Nhu t×nh chi thôc n÷ gi©y chuyÒn m¶nh vôn (2/4) /4)",0.0002,{ 916 }}, 
-- {"Nhu t×nh chi thôc n÷ gi©y chuyÒn m¶nh vôn (3/4) /4)",0.0002,{ 917 }}, 
-- {"Nhu t×nh chi thôc n÷ gi©y chuyÒn m¶nh vôn (4/4) /4)",0.0002,{ 918 }}, 
-- {"Nhu t×nh chi ph­îng nghi chiÕc nhÉn m¶nh vôn (1/4) /4)",0.0002,{ 919 }}, 
-- {"Nhu t×nh chi ph­îng nghi chiÕc nhÉn m¶nh vôn (2/4) /4)",0.0002,{ 920 }}, 
-- {"Nhu t×nh chi ph­îng nghi chiÕc nhÉn m¶nh vôn (3/4) /4)",0.0002,{ 921 }}, 
-- {"Nhu t×nh chi ph­îng nghi chiÕc nhÉn m¶nh vôn (4/4) /4)",0.0002,{ 922 }}, 
-- {"Nhu t×nh chi tuÖ t©m ngäc béi m¶nh vôn (1/4) /4)",0.00002,{ 923 }}, 
-- {"Nhu t×nh chi tuÖ t©m ngäc béi m¶nh vôn (2/4) /4)",0.00002,{ 924 }}, 
-- {"Nhu t×nh chi tuÖ t©m ngäc béi m¶nh vôn (3/4) /4)",0.00002,{ 925 }}, 
-- {"Nhu t×nh chi tuÖ t©m ngäc béi m¶nh vôn (4/4) /4)",0.00002,{ 926 }}, 
-- {"§Þnh quèc chi lôa máng xanh tr­êng sam m¶nh vôn (1/4) /4)",0.0001,{ 927 }}, 
-- {"§Þnh quèc chi lôa máng xanh tr­êng sam m¶nh vôn (2/4) /4)",0.0001,{ 928 }}, 
-- {"§Þnh quèc chi lôa máng xanh tr­êng sam m¶nh vôn (3/4) /4)",0.0001,{ 929 }}, 
-- {"§Þnh quèc chi lôa máng xanh tr­êng sam m¶nh vôn (4/4) /4)",0.0001,{ 930 }}, 
-- {"§Þnh quèc chi xÝch quyªn mÒm ngoa m¶nh vôn (1/4) /4)",0.0002,{ 931 }}, 
-- {"§Þnh quèc chi xÝch quyªn mÒm ngoa m¶nh vôn (2/4) /4)",0.0002,{ 932 }}, 
-- {"§Þnh quèc chi xÝch quyªn mÒm ngoa m¶nh vôn (3/4) /4)",0.0002,{ 933 }}, 
-- {"§Þnh quèc chi xÝch quyªn mÒm ngoa m¶nh vôn (4/4) /4)",0.0002,{ 934 }}, 
-- {"§Þnh quèc chi tö ®»ng hé cæ tay m¶nh vôn (1/4) /4)",0.0002,{ 935 }}, 
-- {"§Þnh quèc chi tö ®»ng hé cæ tay m¶nh vôn (2/4) /4)",0.0002,{ 936 }}, 
-- {"§Þnh quèc chi tö ®»ng hé cæ tay m¶nh vôn (3/4) /4)",0.0002,{ 937 }}, 
-- {"§Þnh quèc chi tö ®»ng hé cæ tay m¶nh vôn (4/4) /4)",0.0002,{ 938 }}, 
-- {"§Þnh quèc chi ng©n tµm ®ai l­ng m¶nh vôn (1/4) /4)",0.0002,{ 939 }}, 
-- {"§Þnh quèc chi ng©n tµm ®ai l­ng m¶nh vôn (2/4) /4)",0.0002,{ 940 }}, 
-- {"§Þnh quèc chi ng©n tµm ®ai l­ng m¶nh vôn (3/4) /4)",0.0002,{ 941 }}, 
-- {"§Þnh quèc chi ng©n tµm ®ai l­ng m¶nh vôn (4/4) /4)",0.0002,{ 942 }}, 
-- {"TrÝch tinh hoµn m¶nh vôn (1/6) /6)",0.00005,{ 711 }}, 
-- {"TrÝch tinh hoµn m¶nh vôn (2/6) /6)",0.00005,{ 712 }}, 
-- {"TrÝch tinh hoµn m¶nh vôn (3/6) /6)",0.00005,{ 713 }}, 
-- {"TrÝch tinh hoµn m¶nh vôn (4/6) /6)",0.00005,{ 714 }}, 
-- {"TrÝch tinh hoµn m¶nh vôn (5/6) /6)",0.00005,{ 715 }}, 
-- {"TrÝch tinh hoµn m¶nh vôn (6/6) /6)",0.00005,{ 716 }}, 
-- {"§­êng nghª gi¸p m¶nh vôn (1/6) /6)",0.00005,{ 717 }}, 
-- {"§­êng nghª gi¸p m¶nh vôn (2/6) /6)",0.00005,{ 718 }}, 
-- {"§­êng nghª gi¸p m¶nh vôn (3/6) /6)",0.00005,{ 719 }}, 
-- {"§­êng nghª gi¸p m¶nh vôn (4/6) /6)",0.00005,{ 720 }}, 
-- {"§­êng nghª gi¸p m¶nh vôn (5/6) /6)",0.00005,{ 721 }}, 
-- {"§­êng nghª gi¸p m¶nh vôn (6/6) /6)",0.00005,{ 722 }}, 
-- {"Xanh biÕc phØ thóy hé th©n phï m¶nh vôn (1/6) /6)",0.000005,{ 723 }}, 
-- {"Xanh biÕc phØ thóy hé th©n phï m¶nh vôn (2/6) /6)",0.000005,{ 724 }}, 
-- {"Xanh biÕc phØ thóy hé th©n phï m¶nh vôn (3/6) /6)",0.000005,{ 725 }}, 
-- {"Xanh biÕc phØ thóy hé th©n phï m¶nh vôn (4/6) /6)",0.000005,{ 726 }}, 
-- {"Xanh biÕc phØ thóy hé th©n phï m¶nh vôn (5/6) /6)",0.000005,{ 727 }}, 
-- {"Xanh biÕc phØ thóy hé th©n phï m¶nh vôn (6/6) /6)",0.000005,{ 728 }}, 
-- {"B¹ch kim ®ai l­ng m¶nh vôn (1/6) /6)",0.00001,{ 729 }}, 
-- {"B¹ch kim ®ai l­ng m¶nh vôn (2/6) /6)",0.00001,{ 730 }}, 
-- {"B¹ch kim ®ai l­ng m¶nh vôn (3/6) /6)",0.00001,{ 731 }}, 
-- {"B¹ch kim ®ai l­ng m¶nh vôn (4/6) /6)",0.00001,{ 732 }}, 
-- {"B¹ch kim ®ai l­ng m¶nh vôn (5/6) /6)",0.00001,{ 733 }}, 
-- {"B¹ch kim ®ai l­ng m¶nh vôn (6/6) /6)",0.00001,{ 734 }}, 
-- {"Thiªn tµm hé cæ tay m¶nh vôn (1/6) /6)",0.00001,{ 735 }}, 
-- {"Thiªn tµm hé cæ tay m¶nh vôn (1/6) /6)",0.00001,{ 736 }}, 
-- {"Thiªn tµm hé cæ tay m¶nh vôn (1/6) /6)",0.00001,{ 737 }}, 
-- {"Thiªn tµm hé cæ tay m¶nh vôn (1/6) /6)",0.00001,{ 738 }}, 
-- {"Thiªn tµm hé cæ tay m¶nh vôn (1/6) /6)",0.00001,{ 739 }}, 
-- {"Thiªn tµm hé cæ tay m¶nh vôn (1/6) /6)",0.00001,{ 740 }}, 
-- {"Thiªn tµm ngoa m¶nh vôn (1/6) /6)",0.00001,{ 741 }}, 
-- {"Thiªn tµm ngoa m¶nh vôn (2/6) /6)",0.00001,{ 742 }}, 
-- {"Thiªn tµm ngoa m¶nh vôn (3/6) /6)",0.00001,{ 743 }}, 
-- {"Thiªn tµm ngoa m¶nh vôn (4/6) /6)",0.00001,{ 744 }}, 
-- {"Thiªn tµm ngoa m¶nh vôn (5/6) /6)",0.00001,{ 745 }}, 
-- {"Thiªn tµm ngoa m¶nh vôn (6/6) /6)",0.00001,{ 746 }}, 
-- {"B¨ng tinh th¹ch gi©y chuyÒn m¶nh vôn (1/6) /6)",0.0001,{ 747 }}, 
-- {"B¨ng tinh th¹ch gi©y chuyÒn m¶nh vôn (2/6) /6)",0.0001,{ 748 }}, 
-- {"B¨ng tinh th¹ch gi©y chuyÒn m¶nh vôn (3/6) /6)",0.0001,{ 749 }}, 
-- {"B¨ng tinh th¹ch gi©y chuyÒn m¶nh vôn (4/6) /6)",0.0001,{ 750 }}, 
-- {"B¨ng tinh th¹ch gi©y chuyÒn m¶nh vôn (5/6) /6)",0.0001,{ 751 }}, 
-- {"B¨ng tinh th¹ch gi©y chuyÒn m¶nh vôn (6/6) /6)",0.0001,{ 752 }}, 
-- {"Hoa cóc th¹ch chiÕc nhÉn m¶nh vôn (1/6) /6)",0.0001,{ 753 }}, 
-- {"Hoa cóc th¹ch chiÕc nhÉn m¶nh vôn (2/6) /6)",0.0001,{ 754 }}, 
-- {"Hoa cóc th¹ch chiÕc nhÉn m¶nh vôn (3/6) /6)",0.0001,{ 755 }}, 
-- {"Hoa cóc th¹ch chiÕc nhÉn m¶nh vôn (4/6) /6)",0.0001,{ 756 }}, 
-- {"Hoa cóc th¹ch chiÕc nhÉn m¶nh vôn (5/6) /6)",0.0001,{ 757 }}, 
-- {"Hoa cóc th¹ch chiÕc nhÉn m¶nh vôn (6/6) /6)",0.0001,{ 758 }}, 
-- {"§iÒn hoµng th¹ch ngäc béi m¶nh vôn (1/6) /6)",0.0001,{ 759 }}, 
-- {"§iÒn hoµng th¹ch ngäc béi m¶nh vôn (2/6) /6)",0.0001,{ 760 }}, 
-- {"§iÒn hoµng th¹ch ngäc béi m¶nh vôn (3/6) /6)",0.0001,{ 761 }}, 
-- {"§iÒn hoµng th¹ch ngäc béi m¶nh vôn (4/6) /6)",0.0001,{ 762 }}, 
-- {"§iÒn hoµng th¹ch ngäc béi m¶nh vôn (5/6) /6)",0.0001,{ 763 }}, 
-- {"§iÒn hoµng th¹ch ngäc béi m¶nh vôn (6/6) /6)",0.0001,{ 764 }}, 
-- {"M¸u gµ th¹ch chiÕc nhÉn m¶nh vôn (1/6) /6)",0.0001,{ 765 }}, 
-- {"M¸u gµ th¹ch chiÕc nhÉn m¶nh vôn (2/6) /6)",0.0001,{ 766 }}, 
-- {"M¸u gµ th¹ch chiÕc nhÉn m¶nh vôn (3/6) /6)",0.0001,{ 767 }}, 
-- {"M¸u gµ th¹ch chiÕc nhÉn m¶nh vôn (4/6) /6)",0.0001,{ 768 }}, 
-- {"M¸u gµ th¹ch chiÕc nhÉn m¶nh vôn (5/6) /6)",0.0001,{ 769 }}, 
-- {"M¸u gµ th¹ch chiÕc nhÉn m¶nh vôn (6/6) /6)",0.0001,{ 770 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (1/6) /6)",0.0001,{ 783 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (2/6) /6)",0.0001,{ 784 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (3/6) /6)",0.0001,{ 785 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (4/6) /6)",0.0001,{ 786 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (5/6) /6)",0.0001,{ 787 }}, 
-- {"HiÖp cèt t×nh ý kÕt m¶nh vôn (6/6) /6)",0.0001,{ 788 }}, 
-- {"Kim ti ®ang hång ¸o cµ sa m¶nh vôn (1/6) /6)",0.00001,{ 789 }}, 
-- {"Kim ti ®ang hång ¸o cµ sa m¶nh vôn (2/6) /6)",0.00001,{ 790 }}, 
-- {"Kim ti ®ang hång ¸o cµ sa m¶nh vôn (3/6) /6)",0.00001,{ 791 }}, 
-- {"Kim ti ®ang hång ¸o cµ sa m¶nh vôn (4/6) /6)",0.00001,{ 792 }}, 
-- {"Kim ti ®ang hång ¸o cµ sa m¶nh vôn (5/6) /6)",0.00001,{ 793 }}, 
-- {"Kim ti ®ang hång ¸o cµ sa m¶nh vôn (6/6) /6)",0.00001,{ 794 }}, 
-- {"HuyÒn vò hoµng kim kh¶i m¶nh vôn (1/6) /6)",0.00001,{ 795 }}, 
-- {"HuyÒn vò hoµng kim kh¶i m¶nh vôn (2/6) /6)",0.00001,{ 796 }}, 
-- {"HuyÒn vò hoµng kim kh¶i m¶nh vôn (3/6) /6)",0.00001,{ 797 }}, 
-- {"HuyÒn vò hoµng kim kh¶i m¶nh vôn (4/6) /6)",0.00001,{ 798 }}, 
-- {"HuyÒn vò hoµng kim kh¶i m¶nh vôn (5/6) /6)",0.00001,{ 799 }}, 
-- {"HuyÒn vò hoµng kim kh¶i m¶nh vôn (6/6) /6)",0.00001,{ 800 }}, 
-- {"T¾m gièng ngäc trõ m¶nh vôn (1/6) /6)",0.00001,{ 801 }}, 
-- {"T¾m gièng ngäc trõ m¶nh vôn (2/6) /6)",0.00001,{ 802 }}, 
-- {"T¾m gièng ngäc trõ m¶nh vôn (3/6) /6)",0.00001,{ 803 }}, 
-- {"T¾m gièng ngäc trõ m¶nh vôn (4/6) /6)",0.00001,{ 804 }}, 
-- {"T¾m gièng ngäc trõ m¶nh vôn (5/6) /6)",0.00001,{ 805 }}, 
-- {"T¾m gièng ngäc trõ m¶nh vôn (6/6) /6)",0.00001,{ 806 }}, 
-- {"Hång truy mÒm # giµy m¶nh vôn (1/6) /6)",0.00001,{ 807 }}, 
-- {"Hång truy mÒm # giµy m¶nh vôn (2/6) /6)",0.00001,{ 808 }}, 
-- {"Hång truy mÒm # giµy m¶nh vôn (3/6) /6)",0.00001,{ 809 }}, 
-- {"Hång truy mÒm # giµy m¶nh vôn (4/6) /6)",0.00001,{ 810 }}, 
-- {"Hång truy mÒm # giµy m¶nh vôn (5/6) /6)",0.00001,{ 811 }}, 
-- {"Hång truy mÒm # giµy m¶nh vôn (6/6) /6)",0.00001,{ 812 }}, 
-- {"Thanh t©m h­íng thiÖn ch©u m¶nh vôn (1/6) /6)",0.00001,{ 813 }}, 
-- {"Thanh t©m h­íng thiÖn ch©u m¶nh vôn (2/6) /6)",0.00001,{ 814 }}, 
-- {"Thanh t©m h­íng thiÖn ch©u m¶nh vôn (3/6) /6)",0.00001,{ 815 }}, 
-- {"Thanh t©m h­íng thiÖn ch©u m¶nh vôn (4/6) /6)",0.00001,{ 816 }}, 
-- {"Thanh t©m h­íng thiÖn ch©u m¶nh vôn (5/6) /6)",0.00001,{ 817 }}, 
-- {"Thanh t©m h­íng thiÖn ch©u m¶nh vôn (6/6) /6)",0.00001,{ 818 }}, 
-- {"BÝch h¶i chi hång linh ba m¶nh vôn (1/6) /6)",0.00001,{ 819 }}, 
-- {"BÝch h¶i chi hång linh ba m¶nh vôn (2/6) /6)",0.00001,{ 820 }}, 
-- {"BÝch h¶i chi hång linh ba m¶nh vôn (3/6) /6)",0.00001,{ 821 }}, 
-- {"BÝch h¶i chi hång linh ba m¶nh vôn (4/6) /6)",0.00001,{ 822 }}, 
-- {"BÝch h¶i chi hång linh ba m¶nh vôn (5/6) /6)",0.00001,{ 823 }}, 
-- {"BÝch h¶i chi hång linh ba m¶nh vôn (6/6) /6)",0.00001,{ 824 }}, 
-- {"U l«ng chi kim xµ d©y cét tãc m¶nh vôn m¶nh vôn (1/6) /6)",0.00001,{ 825 }}, 
-- {"U l«ng chi kim xµ d©y cét tãc m¶nh vôn (2/6) /6)",0.00001,{ 826 }}, 
-- {"U l«ng chi kim xµ d©y cét tãc m¶nh vôn (3/6) /6)",0.00001,{ 827 }}, 
-- {"U l«ng chi kim xµ d©y cét tãc m¶nh vôn (4/6) /6)",0.00001,{ 828 }}, 
-- {"U l«ng chi kim xµ d©y cét tãc m¶nh vôn (5/6) /6)",0.00001,{ 829 }}, 
-- {"U l«ng chi kim xµ d©y cét tãc m¶nh vôn (6/6) /6)",0.00001,{ 830 }}, 
-- {"U l«ng chi mùc chu mÒm lý m¶nh vôn (1/6) /6)",0.00001,{ 831 }}, 
-- {"U l«ng chi mùc chu mÒm lý m¶nh vôn (2/6) /6)",0.00001,{ 832 }}, 
-- {"U l«ng chi mùc chu mÒm lý m¶nh vôn (3/6) /6)",0.00001,{ 833 }}, 
-- {"U l«ng chi mùc chu mÒm lý m¶nh vôn (4/6) /6)",0.00001,{ 834 }}, 
-- {"U l«ng chi mùc chu mÒm lý m¶nh vôn (5/6) /6)",0.00001,{ 835 }}, 
-- {"U l«ng chi mùc chu mÒm lý m¶nh vôn (6/6) /6)",0.00001,{ 836 }}, 
-- {"NguyÒn rña ph­îc chi diÖt l«i c¶nh phï m¶nh vôn (1/6) /6)",0.00001,{ 837 }}, 
-- {"NguyÒn rña ph­îc chi diÖt l«i c¶nh phï m¶nh vôn (2/6) /6)",0.00001,{ 838 }}, 
-- {"NguyÒn rña ph­îc chi diÖt l«i c¶nh phï m¶nh vôn (3/6) /6)",0.00001,{ 839 }}, 
-- {"NguyÒn rña ph­îc chi diÖt l«i c¶nh phï m¶nh vôn (4/6) /6)",0.00001,{ 840 }}, 
-- {"NguyÒn rña ph­îc chi diÖt l«i c¶nh phï m¶nh vôn (5/6) /6)",0.00001,{ 841 }}, 
-- {"NguyÒn rña ph­îc chi diÖt l«i c¶nh phï m¶nh vôn (6/6) /6)",0.00001,{ 842 }}, 
-- {"§Þa ph¸ch chi h¾c diÔm ngÊt trêi liªn m¶nh vôn (1/6) /6)",0.00001,{ 843 }}, 
-- {"§Þa ph¸ch chi h¾c diÔm ngÊt trêi liªn m¶nh vôn (2/6) /6)",0.00001,{ 844 }}, 
-- {"§Þa ph¸ch chi h¾c diÔm ngÊt trêi liªn m¶nh vôn (3/6) /6)",0.00001,{ 845 }}, 
-- {"§Þa ph¸ch chi h¾c diÔm ngÊt trêi liªn m¶nh vôn (4/6) /6)",0.00001,{ 846 }}, 
-- {"§Þa ph¸ch chi h¾c diÔm ngÊt trêi liªn m¶nh vôn (5/6) /6)",0.00001,{ 847 }}, 
-- {"§Þa ph¸ch chi h¾c diÔm ngÊt trêi liªn m¶nh vôn (6/6) /6)",0.00001,{ 848 }}, 
-- {"Cïng thï chi hµng long c¸i y m¶nh vôn (1/6) /6)",0.00001,{ 849 }}, 
-- {"Cïng thï chi hµng long c¸i y m¶nh vôn (2/6) /6)",0.00001,{ 850 }}, 
-- {"Cïng thï chi hµng long c¸i y m¶nh vôn (3/6) /6)",0.00001,{ 851 }}, 
-- {"Cïng thï chi hµng long c¸i y m¶nh vôn (4/6) /6)",0.00001,{ 852 }}, 
-- {"Cïng thï chi hµng long c¸i y m¶nh vôn (5/6) /6)",0.00001,{ 853 }}, 
-- {"Cïng thï chi hµng long c¸i y m¶nh vôn (6/6) /6)",0.00001,{ 854 }}, 
-- {"Cïng thï chi kh¸ng long hé thñ m¶nh vôn (1/6) /6)",0.00001,{ 855 }}, 
-- {"Cïng thï chi kh¸ng long hé thñ m¶nh vôn (2/6) /6)",0.00001,{ 856 }}, 
-- {"Cïng thï chi kh¸ng long hé thñ m¶nh vôn (3/6) /6)",0.00001,{ 857 }}, 
-- {"Cïng thï chi kh¸ng long hé thñ m¶nh vôn (4/6) /6)",0.00001,{ 858 }}, 
-- {"Cïng thï chi kh¸ng long hé thñ m¶nh vôn (5/6) /6)",0.00001,{ 859 }}, 
-- {"Cïng thï chi kh¸ng long hé thñ m¶nh vôn (6/6) /6)",0.00001,{ 860 }}, 
-- {"Ma hoµng chi kim kh«i gi¸p m¶nh vôn (1/6) /6)",0.00001,{ 861 }}, 
-- {"Ma hoµng chi kim kh«i gi¸p m¶nh vôn (2/6) /6)",0.00001,{ 862 }}, 
-- {"Ma hoµng chi kim kh«i gi¸p m¶nh vôn (3/6) /6)",0.00001,{ 863 }}, 
-- {"Ma hoµng chi kim kh«i gi¸p m¶nh vôn (4/6) /6)",0.00001,{ 864 }}, 
-- {"Ma hoµng chi kim kh«i gi¸p m¶nh vôn (5/6) /6)",0.00001,{ 865 }}, 
-- {"Ma hoµng chi kim kh«i gi¸p m¶nh vôn (6/6) /6)",0.00001,{ 866 }}, 
-- {"Ma hoµng chi theo nh­ ra hæ h¹ng vßng m¶nh vôn (1/6) /6)",0.00001,{ 867 }}, 
-- {"Ma hoµng chi theo nh­ ra hæ h¹ng vßng m¶nh vôn (2/6) /6)",0.00001,{ 868 }}, 
-- {"Ma hoµng chi theo nh­ ra hæ h¹ng vßng m¶nh vôn (3/6) /6)",0.00001,{ 869 }}, 
-- {"Ma hoµng chi theo nh­ ra hæ h¹ng vßng m¶nh vôn (4/6) /6)",0.00001,{ 870 }}, 
-- {"Ma hoµng chi theo nh­ ra hæ h¹ng vßng m¶nh vôn (5/6) /6)",0.00001,{ 871 }}, 
-- {"Ma hoµng chi theo nh­ ra hæ h¹ng vßng m¶nh vôn (6/6) /6)",0.00001,{ 872 }}, 
-- {"Ma lµ chi s¬n h¶i bay hång lý m¶nh vôn (1/6) /6)",0.00001,{ 873 }}, 
-- {"Ma lµ chi s¬n h¶i bay hång lý m¶nh vôn (1/6) /6)",0.00001,{ 874 }}, 
-- {"Ma lµ chi s¬n h¶i bay hång lý m¶nh vôn (1/6) /6)",0.00001,{ 875 }}, 
-- {"Ma lµ chi s¬n h¶i bay hång lý m¶nh vôn (1/6) /6)",0.00001,{ 876 }}, 
-- {"Ma lµ chi s¬n h¶i bay hång lý m¶nh vôn (1/6) /6)",0.00001,{ 877 }}, 
-- {"Ma lµ chi s¬n h¶i bay hång lý m¶nh vôn (1/6) /6)",0.00001,{ 878 }}, 
-- {" l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (1/6) /6)",0.00001,{ 879 }}, 
-- {" l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (2/6) /6)",0.00001,{ 880 }}, 
-- {" l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (3/6) /6)",0.00001,{ 881 }}, 
-- {" l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (4/6) /6)",0.00001,{ 882 }}, 
-- {" l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (5/6) /6)",0.00001,{ 883 }}, 
-- {" l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (6/6) /6)",0.00001,{ 884 }}, 
-- {"Cïng phong chi ba thanh phï m¶nh vôn (1/6) /6)",0.00001,{ 885 }}, 
-- {"Cïng phong chi ba thanh phï m¶nh vôn (2/6) /6)",0.00001,{ 886 }}, 
-- {"Cïng phong chi ba thanh phï m¶nh vôn (3/6) /6)",0.00001,{ 887 }}, 
-- {"Cïng phong chi ba thanh phï m¶nh vôn (4/6) /6)",0.00001,{ 888 }}, 
-- {"Cïng phong chi ba thanh phï m¶nh vôn (5/6) /6)",0.00001,{ 889 }}, 
-- {"Cïng phong chi ba thanh phï m¶nh vôn (6/6) /6)",0.00001,{ 890 }}, 
-- {" l«i khung chi thiªn ®Þa hé phï m¶nh vôn (1/6) /6)",0.00001,{ 891 }}, 
-- {" l«i khung chi thiªn ®Þa hé phï m¶nh vôn (2/6) /6)",0.00001,{ 892 }}, 
-- {" l«i khung chi thiªn ®Þa hé phï m¶nh vôn (3/6) /6)",0.00001,{ 893 }}, 
-- {" l«i khung chi thiªn ®Þa hé phï m¶nh vôn (4/6) /6)",0.00001,{ 894 }}, 
-- {" l«i khung chi thiªn ®Þa hé phï m¶nh vôn (5/6) /6)",0.00001,{ 895 }}, 
-- {" l«i khung chi thiªn ®Þa hé phï m¶nh vôn (6/6) /6)",0.00001,{ 896 }}, 
-- {"Vô huyÔn chi b¾c minh ®¹o quan m¶nh vôn (1/6) /6)",0.00001,{ 897 }}, 
-- {"Vô huyÔn chi b¾c minh ®¹o quan m¶nh vôn (2/6) /6)",0.00001,{ 898 }}, 
-- {"Vô huyÔn chi b¾c minh ®¹o quan m¶nh vôn (3/6) /6)",0.00001,{ 899 }}, 
-- {"Vô huyÔn chi b¾c minh ®¹o quan m¶nh vôn (4/6) /6)",0.00001,{ 900 }}, 
-- {"Vô huyÔn chi b¾c minh ®¹o quan m¶nh vôn (5/6) /6)",0.00001,{ 901 }}, 
-- {"Vô huyÔn chi b¾c minh ®¹o quan m¶nh vôn (6/6) /6)",0.00001,{ 902 }}, 
-- {"B¾c Kinh chi méng trang bÞ m¶nh vôn (1/9) /9)",0.000002,{ 540 }}, 
-- {"B¾c Kinh chi méng trang bÞ m¶nh vôn (2/9) /9)",0.000002,{ 541 }}, 
-- {"B¾c Kinh chi méng trang bÞ m¶nh vôn (3/9) /9)",0.000002,{ 542 }}, 
-- {"B¾c Kinh chi méng trang bÞ m¶nh vôn (4/9) /9)",0.000002,{ 543 }}, 
-- {"B¾c Kinh chi méng trang bÞ m¶nh vôn (5/9) /9)",0.000002,{ 544 }}, 
-- {"B¾c Kinh chi méng trang bÞ m¶nh vôn (6/9) /9)",0.000002,{ 545 }}, 
-- {"B¾c Kinh chi méng trang bÞ m¶nh vôn (7/9) /9)",0.000002,{ 546 }}, 
-- {"B¾c Kinh chi méng trang bÞ m¶nh vôn (8/9) /9)",0.000002,{ 547 }}, 
-- {"B¾c Kinh chi méng trang bÞ m¶nh vôn (9/9) /9)",0.000002,{ 548 }}, 
-- {"N¨m mµu ngäc béi m¶nh vôn (1/9) /9)",0.000002,{ 549 }}, 
-- {"N¨m mµu ngäc béi m¶nh vôn (2/9) /9)",0.000002,{ 550 }}, 
-- {"N¨m mµu ngäc béi m¶nh vôn (3/9) /9)",0.000002,{ 551 }}, 
-- {"N¨m mµu ngäc béi m¶nh vôn (4/9) /9)",0.000002,{ 552 }}, 
-- {"N¨m mµu ngäc béi m¶nh vôn (5/9) /9)",0.000002,{ 553 }}, 
-- {"N¨m mµu ngäc béi m¶nh vôn (6/9) /9)",0.000002,{ 554 }}, 
-- {"N¨m mµu ngäc béi m¶nh vôn (7/9) /9)",0.000002,{ 555 }}, 
-- {"N¨m mµu ngäc béi m¶nh vôn (8/9) /9)",0.000002,{ 556 }}, 
-- {"N¨m mµu ngäc béi m¶nh vôn (9/9) /9)",0.000002,{ 557 }}, 
-- {"Nh· ®iÓn chi hån m¶nh vôn (1/9) /9)",0.000002,{ 558 }}, 
-- {"Nh· ®iÓn chi hån m¶nh vôn (2/9) /9)",0.000002,{ 559 }}, 
-- {"Nh· ®iÓn chi hån m¶nh vôn (3/9) /9)",0.000002,{ 560 }}, 
-- {"Nh· ®iÓn chi hån m¶nh vôn (4/9) /9)",0.000002,{ 561 }}, 
-- {"Nh· ®iÓn chi hån m¶nh vôn (5/9) /9)",0.000002,{ 562 }}, 
-- {"Nh· ®iÓn chi hån m¶nh vôn (6/9) /9)",0.000002,{ 563 }}, 
-- {"Nh· ®iÓn chi hån m¶nh vôn (7/9) /9)",0.000002,{ 564 }}, 
-- {"Nh· ®iÓn chi hån m¶nh vôn (8/9) /9)",0.000002,{ 565 }}, 
-- {"Nh· ®iÓn chi hån m¶nh vôn (9/9) /9)",0.000002,{ 566 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (1/9) /9)",0.000004,{ 567 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (2/9) /9)",0.000004,{ 568 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (3/9) /9)",0.000004,{ 569 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (4/9) /9)",0.000004,{ 570 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (5/9) /9)",0.000004,{ 571 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (6/9) /9)",0.000004,{ 572 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (7/9) /9)",0.000004,{ 573 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (8/9) /9)",0.000004,{ 574 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (9/9) /9)",0.000004,{ 575 }}, 
-- {"Phôc ma chi tÝm bÇm c«n m¶nh vôn (1/9) /9)",0.00001,{ 576 }}, 
-- {"Phôc ma chi tÝm bÇm c«n m¶nh vôn (2/9) /9)",0.00001,{ 577 }}, 
-- {"Phôc ma chi tÝm bÇm c«n m¶nh vôn (3/9) /9)",0.00001,{ 578 }}, 
-- {"Phôc ma chi tÝm bÇm c«n m¶nh vôn (4/9) /9)",0.00001,{ 579 }}, 
-- {"Phôc ma chi tÝm bÇm c«n m¶nh vôn (5/9) /9)",0.00001,{ 580 }}, 
-- {"Phôc ma chi tÝm bÇm c«n m¶nh vôn (6/9) /9)",0.00001,{ 581 }}, 
-- {"Phôc ma chi tÝm bÇm c«n m¶nh vôn (7/9) /9)",0.00001,{ 582 }}, 
-- {"Phôc ma chi tÝm bÇm c«n m¶nh vôn (8/9) /9)",0.00001,{ 583 }}, 
-- {"Phôc ma chi tÝm bÇm c«n m¶nh vôn (9/9) /9)",0.00001,{ 584 }}, 
-- {"Bèn v« Ých chi hµng ma giíi ®ao m¶nh vôn (1/9) /9)",0.00001,{ 585 }}, 
-- {"Bèn v« Ých chi hµng ma giíi ®ao m¶nh vôn (2/9) /9)",0.00001,{ 586 }}, 
-- {"Bèn v« Ých chi hµng ma giíi ®ao m¶nh vôn (3/9) /9)",0.00001,{ 587 }}, 
-- {"Bèn v« Ých chi hµng ma giíi ®ao m¶nh vôn (4/9) /9)",0.00001,{ 588 }}, 
-- {"Bèn v« Ých chi hµng ma giíi ®ao m¶nh vôn (5/9) /9)",0.00001,{ 589 }}, 
-- {"Bèn v« Ých chi hµng ma giíi ®ao m¶nh vôn (6/9) /9)",0.00001,{ 590 }}, 
-- {"Bèn v« Ých chi hµng ma giíi ®ao m¶nh vôn (7/9) /9)",0.00001,{ 591 }}, 
-- {"Bèn v« Ých chi hµng ma giíi ®ao m¶nh vôn (8/9) /9)",0.00001,{ 592 }}, 
-- {"Bèn v« Ých chi hµng ma giíi ®ao m¶nh vôn (9/9) /9)",0.00001,{ 593 }}, 
-- {"M¾t to thÇn chïy m¶nh vôn (1/9) /9)",0.000004,{ 594 }}, 
-- {"M¾t to thÇn chïy m¶nh vôn (2/9) /9)",0.000004,{ 595 }}, 
-- {"M¾t to thÇn chïy m¶nh vôn (3/9) /9)",0.000004,{ 596 }}, 
-- {"M¾t to thÇn chïy m¶nh vôn (4/9) /9)",0.000004,{ 597 }}, 
-- {"M¾t to thÇn chïy m¶nh vôn (5/9) /9)",0.000004,{ 598 }}, 
-- {"M¾t to thÇn chïy m¶nh vôn (6/9) /9)",0.000004,{ 599 }}, 
-- {"M¾t to thÇn chïy m¶nh vôn (7/9) /9)",0.000004,{ 600 }}, 
-- {"M¾t to thÇn chïy chïy m¶nh vôn (8/9) /9)",0.000004,{ 601 }}, 
-- {"M¾t to thÇn chïy m¶nh vôn (9/9) /9)",0.000004,{ 602 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (1/9) /9)",0.000004,{ 603 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (2/9) /9)",0.000004,{ 604 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (3/9) /9)",0.000004,{ 605 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (4/9) /9)",0.000004,{ 606 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (5/9) /9)",0.000004,{ 607 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (6/9) /9)",0.000004,{ 608 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (7/9) /9)",0.000004,{ 609 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (8/9) /9)",0.000004,{ 610 }}, 
-- {"SÊm ®¸nh chui long sóng m¶nh vôn (9/9) /9)",0.000004,{ 611 }}, 
-- {" l­îng ng©n b¶o ®ao m¶nh vôn (1/9) /9)",0.00001,{ 612 }}, 
-- {" l­îng ng©n b¶o ®ao m¶nh vôn (2/9) /9)",0.00001,{ 613 }}, 
-- {" l­îng ng©n b¶o ®ao m¶nh vôn (3/9) /9)",0.00001,{ 614 }}, 
-- {" l­îng ng©n b¶o ®ao m¶nh vôn (4/9) /9)",0.00001,{ 615 }}, 
-- {" l­îng ng©n b¶o ®ao m¶nh vôn (5/9) /9)",0.00001,{ 616 }}, 
-- {" l­îng ng©n b¶o ®ao m¶nh vôn (6/9) /9)",0.00001,{ 617 }}, 
-- {" l­îng ng©n b¶o ®ao m¶nh vôn (7/9) /9)",0.00001,{ 618 }}, 
-- {" l­îng ng©n b¶o ®ao m¶nh vôn (8/9) /9)",0.00001,{ 619 }}, 
-- {" l­îng ng©n b¶o ®ao m¶nh vôn (9/9) /9)",0.00001,{ 620 }}, 
-- {"V« gian chi û thiªn kiÕm m¶nh vôn (1/9) /9)",0.00001,{ 621 }}, 
-- {"V« gian chi û thiªn kiÕm m¶nh vôn (2/9) /9)",0.00001,{ 622 }}, 
-- {"V« gian chi û thiªn kiÕm m¶nh vôn (3/9) /9)",0.00001,{ 623 }}, 
-- {"V« gian chi û thiªn kiÕm m¶nh vôn (4/9) /9)",0.00001,{ 624 }}, 
-- {"V« gian chi û thiªn kiÕm m¶nh vôn (5/9) /9)",0.00001,{ 625 }}, 
-- {"V« gian chi û thiªn kiÕm m¶nh vôn (6/9) /9)",0.00001,{ 626 }}, 
-- {"V« gian chi û thiªn kiÕm m¶nh vôn (7/9) /9)",0.00001,{ 627 }}, 
-- {"V« gian chi û thiªn kiÕm m¶nh vôn (8/9) /9)",0.00001,{ 628 }}, 
-- {"V« gian chi û thiªn kiÕm m¶nh vôn (9/9) /9)",0.00001,{ 629 }}, 
-- {"Tª hoµng chi ph­îng nghi ®ao m¶nh vôn (1/9) /9)",0.00001,{ 630 }}, 
-- {"Tª hoµng chi ph­îng nghi ®ao m¶nh vôn (2/9) /9)",0.00001,{ 631 }}, 
-- {"Tª hoµng chi ph­îng nghi ®ao m¶nh vôn (3/9) /9)",0.00001,{ 632 }}, 
-- {"Tª hoµng chi ph­îng nghi ®ao m¶nh vôn (4/9) /9)",0.00001,{ 633 }}, 
-- {"Tª hoµng chi ph­îng nghi ®ao m¶nh vôn (5/9) /9)",0.00001,{ 634 }}, 
-- {"Tª hoµng chi ph­îng nghi ®ao m¶nh vôn (6/9) /9)",0.00001,{ 635 }}, 
-- {"Tª hoµng chi ph­îng nghi ®ao m¶nh vôn (7/9) /9)",0.00001,{ 636 }}, 
-- {"Tª hoµng chi ph­îng nghi ®ao m¶nh vôn (8/9) /9)",0.00001,{ 637 }}, 
-- {"Tª hoµng chi ph­îng nghi ®ao m¶nh vôn (9/9) /9)",0.00001,{ 638 }}, 
-- {"BÝch h¶i chi uyªn ­¬ng liªn hoµn ®ao m¶nh vôn (1/9) /9)",0.00001,{ 639 }}, 
-- {"BÝch h¶i chi uyªn ­¬ng liªn hoµn ®ao m¶nh vôn (2/9) /9)",0.00001,{ 640 }}, 
-- {"BÝch h¶i chi uyªn ­¬ng liªn hoµn ®ao m¶nh vôn (3/9) /9)",0.00001,{ 641 }}, 
-- {"BÝch h¶i chi uyªn ­¬ng liªn hoµn ®ao m¶nh vôn (4/9) /9)",0.00001,{ 642 }}, 
-- {"BÝch h¶i chi uyªn ­¬ng liªn hoµn ®ao m¶nh vôn (5/9) /9)",0.00001,{ 643 }}, 
-- {"BÝch h¶i chi uyªn ­¬ng liªn hoµn ®ao m¶nh vôn (6/9) /9)",0.00001,{ 644 }}, 
-- {"BÝch h¶i chi uyªn ­¬ng liªn hoµn ®ao m¶nh vôn (7/9) /9)",0.00001,{ 645 }}, 
-- {"BÝch h¶i chi uyªn ­¬ng liªn hoµn ®ao m¶nh vôn (8/9) /9)",0.00001,{ 646 }}, 
-- {"BÝch h¶i chi uyªn ­¬ng liªn hoµn ®ao m¶nh vôn (9/9) /9)",0.00001,{ 647 }}, 
-- {"Minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (1/9) /9)",0.00001,{ 648 }}, 
-- {"Minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (2/9) /9)",0.00001,{ 649 }}, 
-- {"Minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (3/9) /9)",0.00001,{ 650 }}, 
-- {"Minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (4/9) /9)",0.00001,{ 651 }}, 
-- {"Minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (5/9) /9)",0.00001,{ 652 }}, 
-- {"Minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (6/9) /9)",0.00001,{ 653 }}, 
-- {"Minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (7/9) /9)",0.00001,{ 654 }}, 
-- {"Minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (8/9) /9)",0.00001,{ 655 }}, 
-- {"Minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (9/9) /9)",0.00001,{ 656 }}, 
-- {"Hoa vò ®Çy trêi m¶nh vôn (1/9) /9)",0.00001,{ 657 }}, 
-- {"Hoa vò ®Çy trêi m¶nh vôn (2/9) /9)",0.00001,{ 658 }}, 
-- {"Hoa vò ®Çy trêi m¶nh vôn (3/9) /9)",0.00001,{ 659 }}, 
-- {"Hoa vò ®Çy trêi m¶nh vôn (4/9) /9)",0.00001,{ 660 }}, 
-- {"Hoa vò ®Çy trêi m¶nh vôn (5/9) /9)",0.00001,{ 661 }}, 
-- {"Hoa vò ®Çy trêi m¶nh vôn (6/9) /9)",0.00001,{ 662 }}, 
-- {"Hoa vò ®Çy trêi m¶nh vôn (7/9) /9)",0.00001,{ 663 }}, 
-- {"Hoa vò ®Çy trêi m¶nh vôn (8/9) /9)",0.00001,{ 664 }}, 
-- {"Hoa vò ®Çy trêi m¶nh vôn (9/9) /9)",0.00001,{ 665 }}, 
-- {"Bay tinh ®o¹t hån m¶nh vôn (1/9) /9)",0.00001,{ 666 }}, 
-- {"Bay tinh ®o¹t hån m¶nh vôn (2/9) /9)",0.00001,{ 667 }}, 
-- {"Bay tinh ®o¹t hån m¶nh vôn (3/9) /9)",0.00001,{ 668 }}, 
-- {"Bay tinh ®o¹t hån m¶nh vôn (4/9) /9)",0.00001,{ 669 }}, 
-- {"Bay tinh ®o¹t hån m¶nh vôn (5/9) /9)",0.00001,{ 670 }}, 
-- {"Bay tinh ®o¹t hån m¶nh vôn (6/9) /9)",0.00001,{ 671 }}, 
-- {"Bay tinh ®o¹t hån m¶nh vôn (7/9) /9)",0.00001,{ 672 }}, 
-- {"Bay tinh ®o¹t hån m¶nh vôn (8/9) /9)",0.00001,{ 673 }}, 
-- {"Bay tinh ®o¹t hån m¶nh vôn (9/9) /9)",0.00001,{ 674 }}, 
-- {"Xanh biÕc ngäc tr­îng m¶nh vôn (1/9) /9)",0.00001,{ 675 }}, 
-- {"Xanh biÕc ngäc tr­îng m¶nh vôn (2/9) /9)",0.00001,{ 676 }}, 
-- {"Xanh biÕc ngäc tr­îng m¶nh vôn (3/9) /9)",0.00001,{ 677 }}, 
-- {"Xanh biÕc ngäc tr­îng m¶nh vôn (4/9) /9)",0.00001,{ 678 }}, 
-- {"Xanh biÕc ngäc tr­îng m¶nh vôn (5/9) /9)",0.00001,{ 679 }}, 
-- {"Xanh biÕc ngäc tr­îng m¶nh vôn (6/9) /9)",0.00001,{ 680 }}, 
-- {"Xanh biÕc ngäc tr­îng m¶nh vôn (7/9) /9)",0.00001,{ 681 }}, 
-- {"Xanh biÕc ngäc tr­îng m¶nh vôn (8/9) /9)",0.00001,{ 682 }}, 
-- {"Xanh biÕc ngäc tr­îng m¶nh vôn (9/9) /9)",0.00001,{ 683 }}, 
-- {"U minh sóng m¶nh vôn (1/9) /9)",0.00001,{ 684 }}, 
-- {"U minh sóng m¶nh vôn (2/9) /9)",0.00001,{ 685 }}, 
-- {"U minh sóng m¶nh vôn (3/9) /9)",0.00001,{ 686 }}, 
-- {"U minh sóng m¶nh vôn (4/9) /9)",0.00001,{ 687 }}, 
-- {"U minh sóng m¶nh vôn (5/9) /9)",0.00001,{ 688 }}, 
-- {"U minh sóng m¶nh vôn (6/9) /9)",0.00001,{ 689 }}, 
-- {"U minh sóng m¶nh vôn (7/9) /9)",0.00001,{ 690 }}, 
-- {"U minh sóng m¶nh vôn (8/9) /9)",0.00001,{ 691 }}, 
-- {"U minh sóng m¶nh vôn (9/9) /9)",0.00001,{ 692 }}, 
-- {"ThËt vò kiÕm m¶nh vôn (1/9) /9)",0.000004,{ 693 }}, 
-- {"ThËt vò kiÕm m¶nh vôn (2/9) /9)",0.000004,{ 694 }}, 
-- {"ThËt vò kiÕm m¶nh vôn (3/9) /9)",0.000004,{ 695 }}, 
-- {"ThËt vò kiÕm m¶nh vôn (4/9) /9)",0.000004,{ 696 }}, 
-- {"ThËt vò kiÕm m¶nh vôn (5/9) /9)",0.000004,{ 697 }}, 
-- {"ThËt vò kiÕm m¶nh vôn (6/9) /9)",0.000004,{ 698 }}, 
-- {"ThËt vò kiÕm m¶nh vôn (7/9) /9)",0.000004,{ 699 }}, 
-- {"ThËt vò kiÕm m¶nh vôn (8/9) /9)",0.000004,{ 700 }}, 
-- {"ThËt vò kiÕm m¶nh vôn (9/9) /9)",0.000004,{ 701 }}, 
-- {"Ngµn n¨m hµn thiÕt m¶nh vôn (1/9) /9)",0.00001,{ 702 }}, 
-- {"Ngµn n¨m hµn thiÕt m¶nh vôn (2/9) /9)",0.00001,{ 703 }}, 
-- {"Ngµn n¨m hµn thiÕt m¶nh vôn (3/9) /9)",0.00001,{ 704 }}, 
-- {"Ngµn n¨m hµn thiÕt m¶nh vôn (4/9) /9)",0.00001,{ 705 }}, 
-- {"Ngµn n¨m hµn thiÕt m¶nh vôn (5/9) /9)",0.00001,{ 706 }}, 
-- {"Ngµn n¨m hµn thiÕt m¶nh vôn (6/9) /9)",0.00001,{ 707 }}, 
-- {"Ngµn n¨m hµn thiÕt m¶nh vôn (7/9) /9)",0.00001,{ 708 }}, 
-- {"Ngµn n¨m hµn thiÕt m¶nh vôn (8/9) /9)",0.00001,{ 709 }}, 
-- {"Ngµn n¨m hµn thiÕt m¶nh vôn (9/9) /9)",0.00001,{ 710 }}, 
}
