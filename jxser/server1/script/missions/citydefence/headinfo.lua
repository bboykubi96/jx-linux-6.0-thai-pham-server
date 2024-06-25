-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: headinfo.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cuèi tuÇn ho¹t ®éng # vÖ quèc chiÕn tranh chi giã löa liªn thµnh 
-- script viet hoa By http://tranhba.com  chøc n¨ng 1# ho¹t ®éng ®Çu v¨n kiÖn tù ®Þnh nghÜa th­êng l­îng 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
IncludeLib("FILESYS"); 


-- script viet hoa By http://tranhba.com print(date("%w")) -- script viet hoa By http://tranhba.com  ®¹t ®­îc tr­íc mÆt phôc vô khÝ tuÇn lÔ 1-- script viet hoa By http://tranhba.com Monday#2-- script viet hoa By http://tranhba.com Tuesday#3-- script viet hoa By http://tranhba.com Wednesday#4-- script viet hoa By http://tranhba.com Thursday#5-- script viet hoa By http://tranhba.com Frieday#6-- script viet hoa By http://tranhba.com Saturday#0-- script viet hoa By http://tranhba.com Sunday 
GV_TSK_CD_OPEN = 35 
FIRE_OPENDAY_SATURDAY = 6; -- script viet hoa By http://tranhba.com  
FIRE_OPENDAY_SUNDAY = 0; -- script viet hoa By http://tranhba.com  
CD_LEVEL_LIMIT = 80 -- script viet hoa By http://tranhba.com  thÊp nhÊt tham gia thñ thµnh cÊp bËc 
TASKID_FIRE_KEY = 1185;-- script viet hoa By http://tranhba.com random(1000000); -- script viet hoa By http://tranhba.com  mçi trµng lÇn mÊu chèt ch÷ , nh­ vËy ph¸n ®o¸n cã hay kh«ng lµm gèc ®æi phiªn lÇn tham gia nhµ ch¬i 
TASKID_FIRE_DAY = 1186;-- script viet hoa By http://tranhba.com tonumber(date("%m%d")); -- script viet hoa By http://tranhba.com  nhµ ch¬i mét ngµy chØ cã thÓ tham gia mét cuéc vÖ quèc chiÕn tranh , ghi chÐp nhËt kú 
TASKID_FIRE_ADDR = 1187;-- script viet hoa By http://tranhba.com  truyÒn vµo ®Ých ®Ých thµnh phè ID 
-- script viet hoa By http://tranhba.com 1189 
FIRE_1RSTNPC_COUNT = 15000; 
FIRE_2CNDNPC_COUNT = 2000; 
FIRE_3RDNPC_COUNT = 1000; 
FIRE_4THNPC_COUNT = 100; 
FIRE_5THNPC_COUNT = 10; 
tbNPC_COUNT = { 15000, 2000, 1000, 100, 10 } 

TNPC_DOCTOR1 = 55; -- script viet hoa By http://tranhba.com  tèng qu©n y ®Ých Npc m« b¶n ID sè 
TNPC_DOCTOR2 = 49; -- script viet hoa By http://tranhba.com  kim qu©n y ®Ých Npc m« b¶n ID sè 
TNPC_DEPOSIT = 625; -- script viet hoa By http://tranhba.com  tr÷ vËt r­¬ng NPC m« b¶n ID 
TNPC_CHEFU = 393; 
TNPC_SYMBOL1 = 629; 
TNPC_SYMBOL2 = 630; 

-- script viet hoa By http://tranhba.com  binh nh× tiÓu ®éi tr­ëng phã t­íng §¹i t­íng Nguyªn so¸i 
tbTNPC_SOLDIER = { {1067, 1068, 1069, 1070, 1080}, -- script viet hoa By http://tranhba.com  tèng 
{1072, 1073, 1074, 1075, 1090}} -- script viet hoa By http://tranhba.com  kim 
tbSOLDIER_NAME = { " binh nh× ","§éi tr­ëng ","TiÒn phong ","Chñ t­íng ","Chñ so¸i " } 
tbSOLDIER_LEVEL = { 95, 95, 95, 100, 120 } 
tbFILE_NPCDEATH = 
{ 
	"\\script\\missions\\citydefence\\npcdeath_1.lua",
	"\\script\\missions\\citydefence\\npcdeath_2.lua",
	"\\script\\missions\\citydefence\\npcdeath_3.lua",
	"\\script\\missions\\citydefence\\npcdeath_4.lua",
	"\\script\\missions\\citydefence\\npcdeath_5.lua",
	"\\script\\missions\\citydefence\\npcdeath_6.lua"
}; 
tbDEFENCE_MAPID = { 516, 517 } 
tbDEFENCE_SIGNMAP = { 518, 519 } 
tbREVIVAL_POS = { 
{1621,3792}, 
{1660,3853}, 
{1646,3910}, 
{1698,3898}, 
{1659,3957} 
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
[162] = { 1470,3269,"§¹i Lý ", 1 }, -- script viet hoa By http://tranhba.com  §¹i Lý 
[176] = { 1392,3313,"Tr­íc khi An phñ ", 1 }, -- script viet hoa By http://tranhba.com  tr­íc khi an 
} 

tbDEFENCE_ANNOUNCE = { 
" nhµ ch¬i cã thÓ ®Õn thµnh ®« phñ # t­¬ng d­¬ng phñ # tr­íc khi An phñ # §¹i Lý # D­¬ng Ch©u phñ cïng cöa thµnh vÖ binh ®èi tho¹i tham gia tèng ph­¬ng thñ thµnh .", 
" nhµ ch¬i cã thÓ ®Õn ph­îng t­êng phñ # biÖn kinh phñ cïng cöa thµnh vÖ binh ®èi tho¹i tham gia kim ph­¬ng thñ thµnh ." 
} 

FILE_PLAYERDEATH = 		"\\script\\missions\\citydefence\\playerdeath.lua";
FILE_DOCTOR = 			"\\script\\missions\\citydefence\\npc\\cd_doctor.lua";
FILE_BOX = 				"\\script\\missions\\citydefence\\npc\\cd_box.lua";
FILE_DOCTOR1 = 			"\\script\\missions\\citydefence\\npc\\cd_doctor.lua";
FILE_DOCTOR2 = 			"\\script\\missions\\citydefence\\npc\\cd_doctor.lua";
FILE_CENTERTRAP1 = 		"\\script\\missions\\citydefence\\trap\\hometrap1.lua";
FILE_CENTERTRAP2 = 		"\\script\\missions\\citydefence\\trap\\hometrap2.lua";
FILE_CENTERTRAP3 = 		"\\script\\missions\\citydefence\\trap\\hometrap3.lua";
FILE_CD_TRANSER = 		"\\script\\missions\\citydefence\\npc\\cd_transer.lua"
FILE_SYMBOLNPC = ""; 

FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 
MISSIONID = 23; -- script viet hoa By http://tranhba.com mission biªn sè 
MAX_MEMBERCOUNT = 600; -- script viet hoa By http://tranhba.com  c«ng thµnh b¶n ®å lín nhÊt nh©n sè h¹n chÕ 

SMALLTIMERID = 45; -- script viet hoa By http://tranhba.com  tÝnh giê khÝ biªn sè 
TOTALTIMERID = 46; -- script viet hoa By http://tranhba.com  tÝnh giê khÝ biªn sè 

SMALL_TIME = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com  mçi 20 gi©y tÝnh giê mét lÇn 
TOTAL_TIME = 150 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com 150 phót tÝnh giê mét lÇn , ho¹t ®éng kÕt thóc 
RUNGAME_TIME = 30 * 60 * FRAME2TIME / SMALL_TIME; -- script viet hoa By http://tranhba.com  ghi danh 30 phót sau , khëi ®éng 
LASTREPORT_TIME = 145 * 60 * FRAME2TIME / SMALL_TIME; -- script viet hoa By http://tranhba.com  thñ thµnh cuèi cïng 5 phót kh«ng cã phót , ®Ò kú mét lÇn thêi gian 

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

MS_1RSTNPC_CCNT = 11; -- script viet hoa By http://tranhba.com  ghi chÐp tr­íc mÆt 10 phót bªn trong , giÕt chÕt b¹ch tr¸ch sè l­îng 
MS_2CNDNPC_CCNT = 12; -- script viet hoa By http://tranhba.com  ghi chÐp tr­íc mÆt 10 phót bªn trong , giÕt chÕt lan tr¸ch sè l­îng 
MS_3RDNPC_CCNT = 13; -- script viet hoa By http://tranhba.com  ghi chÐp tr­íc mÆt 10 phót bªn trong , giÕt chÕt s¸t thñ cÊp tr¸ch sè l­îng 
MS_4THNPC_CCNT = 14; -- script viet hoa By http://tranhba.com  ghi chÐp tr­íc mÆt 10 phót bªn trong , giÕt chÕt tiÓu BOSS sè l­îng 
MS_5THNPC_CCNT = 15; -- script viet hoa By http://tranhba.com  ghi chÐp tr­íc mÆt 10 phót bªn trong , giÕt chÕt ®¹i BOSS sè l­îng 

MS_1RSTNPC_TCNT = 16; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng giÕt chÕt b¹ch tr¸ch sè l­îng 
MS_2CNDNPC_TCNT = 17; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng giÕt chÕt lan tr¸ch sè l­îng 
MS_3RDNPC_TCNT = 18; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng giÕt chÕt s¸t thñ cÊp tr¸ch sè l­îng 
MS_4THNPC_TCNT = 19; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng giÕt chÕt tiÓu BOSS sè l­îng 
MS_5THNPC_TCNT = 20; -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng giÕt chÕt ®¹i BOSS sè l­îng 

MS_HOMEOUT_X1 = 21; -- script viet hoa By http://tranhba.com  d· ngo¹i h­íng ®¹i doanh ®Ých truyÒn tèng täa ®é X , thø nhÊt lo¹i Trap 
MS_HOMEOUT_Y1 = 22; 
MS_HOMEOUT_X2 = 23; -- script viet hoa By http://tranhba.com  d· ngo¹i h­íng ®¹i doanh ®Ých truyÒn tèng täa ®é X , thø hai lo¹i Trap 
MS_HOMEOUT_Y2 = 24; 
MS_HOMEOUT_X3 = 25; -- script viet hoa By http://tranhba.com  d· ngo¹i h­íng ®¹i doanh ®Ých truyÒn tèng täa ®é X , thø ba lo¹i Trap 
MS_HOMEOUT_Y3 = 26; 

MS_CENTER_X1 = 27; -- script viet hoa By http://tranhba.com  ®¹i doanh h­íng d· ngo¹i ®Ých truyÒn tèng täa ®é X , thø nhÊt lo¹i Trap 
MS_CENTER_Y1 = 28; 
MS_CENTER_X2 = 29; -- script viet hoa By http://tranhba.com  ®¹i doanh h­íng d· ngo¹i ®Ých truyÒn tèng täa ®é X , thø nhÊt lo¹i Trap 
MS_CENTER_Y2 = 30; 
MS_CENTER_X3 = 31; -- script viet hoa By http://tranhba.com  ®¹i doanh h­íng d· ngo¹i ®Ých truyÒn tèng täa ®é X , thø nhÊt lo¹i Trap 
MS_CENTER_Y3 = 32; 

MS_S_CMNPCFILE = 1; -- script viet hoa By http://tranhba.com  ghi chÐp b×nh th­êng tr¸ch ®iÓm ®Ých v¨n kiÖn 
MS_S_JRNPCFILE = 2; -- script viet hoa By http://tranhba.com  ghi chÐp tiÓu BOSS täa ®é ®Ých v¨n kiÖn 
MS_S_SRNPCFILE = 3; -- script viet hoa By http://tranhba.com  ghi chÐp ®¹i BOSS täa ®é ®Ých v¨n kiÖn 
MS_S_CD_NAME = 4; -- script viet hoa By http://tranhba.com  tr­íc mÆt thñ thµnh chiÕn dÞch ®Ých tªn 
