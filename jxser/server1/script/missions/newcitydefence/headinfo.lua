-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: headinfo.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cu�i tu�n ho�t ��ng # v� qu�c chi�n tranh chi gi� l�a li�n th�nh 
-- script viet hoa By http://tranhba.com  ch�c n�ng 1# ho�t ��ng ��u v�n ki�n t� ��nh ngh�a th��ng l��ng 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
IncludeLib("FILESYS"); 
-- script viet hoa By http://tranhba.com IncludeLib("BATTLE"); 
IncludeLib("TITLE"); 
IncludeLib("RELAYLADDER") 
Include( "\\script\\task\\system\\task_string.lua" );

-- script viet hoa By http://tranhba.com print(date("%w")) -- script viet hoa By http://tranhba.com  ��t ���c tr��c m�t ph�c v� kh� tu�n l� 1-- script viet hoa By http://tranhba.com Monday#2-- script viet hoa By http://tranhba.com Tuesday#3-- script viet hoa By http://tranhba.com Wednesday#4-- script viet hoa By http://tranhba.com Thursday#5-- script viet hoa By http://tranhba.com Frieday#6-- script viet hoa By http://tranhba.com Saturday#0-- script viet hoa By http://tranhba.com Sunday 
GV_TSK_CD_OPEN = 35 
FIRE_OPENDAY_SATURDAY = 6; -- script viet hoa By http://tranhba.com  
FIRE_OPENDAY_SUNDAY = 0; -- script viet hoa By http://tranhba.com  
CD_LEVEL_LIMIT = 80 -- script viet hoa By http://tranhba.com  th�p nh�t tham gia th� th�nh c�p b�c 
TASKID_FIRE_KEY = 1185;-- script viet hoa By http://tranhba.com random(1000000); -- script viet hoa By http://tranhba.com  m�i tr�ng l�n m�u ch�t ch� , nh� v�y ph�n �o�n c� hay kh�ng l�m g�c ��i phi�n l�n tham gia nh� ch�i 
TASKID_FIRE_DAY = 1186;-- script viet hoa By http://tranhba.com tonumber(date("%m%d")); -- script viet hoa By http://tranhba.com  nh� ch�i m�t ng�y ch� c� th� tham gia m�t cu�c v� qu�c chi�n tranh , ghi ch�p nh�t k� 
TASKID_FIRE_ADDR = 1187;-- script viet hoa By http://tranhba.com  truy�n v�o ��ch ��ch th�nh ph� ID 
-- script viet hoa By http://tranhba.com 1189 
TSKID_FIRE_SIGNLVL = 1867 -- script viet hoa By http://tranhba.com  ghi danh l�c c�p b�c 
TSKID_FIRE_SIGNEXP = 1868 -- script viet hoa By http://tranhba.com  ghi danh l�c kinh nghi�m tr� gi� 
TSKID_FIRE_SUMEXP = 1869 -- script viet hoa By http://tranhba.com  ��t ���c ��ch kinh nghi�m tr� gi� 
TSKID_PLAYER_ZHANGONG = 1879 -- script viet hoa By http://tranhba.com  ��t ���c ��ch chi�n c�ng tr� gi� 
FIRE_JOINUP_FEE = 100000; -- script viet hoa By http://tranhba.com  ti�n ghi danh d�ng 10w hai 
PL_TOTALPOINT = 1 
-- script viet hoa By http://tranhba.com LADDER_ID_TEMP = 10255 -- script viet hoa By http://tranhba.com  t�m t�n b�ng x�p h�ng 
-- script viet hoa By http://tranhba.com LADDER_ID_FANIEL = 10256-- script viet hoa By http://tranhba.com  cu�i c�ng ��ng h�ng th� 

MAX_NPC_COUNT = 500-- script viet hoa By http://tranhba.com 1000-- script viet hoa By http://tranhba.com 5000; -- script viet hoa By http://tranhba.com  h�n ch� b�n �� trung c� t�i �a 5000 c� npc 

FIRE_1RSTNPC_COUNT = 13500-- script viet hoa By http://tranhba.com 15000; 
FIRE_2CNDNPC_COUNT = 3000-- script viet hoa By http://tranhba.com 2000; 
FIRE_3RDNPC_COUNT = 1500-- script viet hoa By http://tranhba.com 1000; 
FIRE_4THNPC_COUNT = 120; 
FIRE_5THNPC_COUNT = 10; 

TNPC_DOCTOR1 = 55; -- script viet hoa By http://tranhba.com  t�ng qu�n y ��ch Npc m� b�n ID s� 
TNPC_DOCTOR2 = 49; -- script viet hoa By http://tranhba.com  kim qu�n y ��ch Npc m� b�n ID s� 
TNPC_DEPOSIT = 625; -- script viet hoa By http://tranhba.com  tr� v�t r��ng NPC m� b�n ID 
TNPC_CHEFU = 393; 
TNPC_SYMBOL1 = 629; 
TNPC_SYMBOL2 = 630; 
RANK_SKILL = 661; -- script viet hoa By http://tranhba.com  danh hi�u h�o quang 
-- script viet hoa By http://tranhba.com  binh nh� ti�u ��i tr��ng ph� t��ng ��i t��ng Nguy�n so�i t�c ��n xe 
tbTNPC_SOLDIER = { {1067, 1068, 1069, 1070, 1080, 1337}, -- script viet hoa By http://tranhba.com  t�ng 
{1072, 1073, 1074, 1075, 1090, 1337}} -- script viet hoa By http://tranhba.com  kim 
tbSOLDIER_NAME = { "Ti�u t�t","��i tr��ng","Ti�n phong","Ch� t��ng","Ch� so�i","C�ng th�nh chi�n tr��ng" } 
tbPlAYERER_NAME = {"Binh l�nh ","Gi�o �y ","Th�ng l�nh ","Ph� t��ng ","��i t��ng "} -- script viet hoa By http://tranhba.com  chi�n c�ng ��t t�i x�ng v� h�o quang 
tbPlAYERER_ZHANGONG = { 0, 300, 500, 1000, 2000} -- script viet hoa By http://tranhba.com  l�n h�n 0 v� binh l�nh , l�n h�n 300 v� gi�o �y .... 
tbPlAYERER_GUANGHUAN= { {89, 90, 91, 92, 93}, -- script viet hoa By http://tranhba.com  t�ng danh hi�u ID 
{94, 95, 96, 97, 98}} -- script viet hoa By http://tranhba.com  kim 
-- script viet hoa By http://tranhba.com  v� binh t��ng qu�n th� th�nh b� ph�n ��ch c� ��nh npc 
tbTNPC_SOLDIER1 = { {1067, 1068}, -- script viet hoa By http://tranhba.com  t�ng 
{1072, 1073}} -- script viet hoa By http://tranhba.com  kim 
tbSOLDIER_NAME1 = { " v� binh ","T��ng qu�n "} 

tbSOLDIER_LEVEL = { 60, 60, 60, 80, 80 ,60} 
tbSOLDIER_LEVEL1 = { 60, 60}-- script viet hoa By http://tranhba.com  th� th�nh quan binh ��ch c�p b�c 
-- script viet hoa By http://tranhba.com  ti�u gi�o ��i tr��ng ti�n phong ch� t��ng ch� so�i t�c ��n xe l�y b�o 
tbKILLNPC_AWARD = {2,8,10,40,60,30,10} -- script viet hoa By http://tranhba.com  gi�t ch�t npc ��t ���c chi�n c�ng 
tbKILLNPC_SHAREAWARD = {1,5,5,20,30,15,0}-- script viet hoa By http://tranhba.com  ��i h�u ��t ���c chi�n c�ng 
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

tbDEFENCE_MAPID = { 580, 581 } -- script viet hoa By http://tranhba.com  m�i t�ng kim b�n �� , by li�u ch� s�n 
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
[1] = { 1520,3228,"Ph��ng t��ng ph� ", 2 }, -- script viet hoa By http://tranhba.com  ph��ng t��ng 
[11] = { 3018,5089,"Th�nh �� ph� ", 1 }, -- script viet hoa By http://tranhba.com  th�nh �� 
[37] = { 1632,3185,"Bi�n kinh ph� ", 2 }, -- script viet hoa By http://tranhba.com  bi�n kinh 
[78] = { 1439,3214,"T��ng d��ng ph� ", 1 }, -- script viet hoa By http://tranhba.com  t��ng d��ng 
[80] = { 1593,3197,"D��ng Ch�u ph� ", 1 }, -- script viet hoa By http://tranhba.com  D��ng Ch�u 
[162] = { 1470,3269,"��i L� ph� ", 1 }, -- script viet hoa By http://tranhba.com  ��i L� 
[176] = { 1392,3313,"Tr��c khi An ph� ", 1 }, -- script viet hoa By http://tranhba.com  tr��c khi an 
} 

tbDEFENCE_ANNOUNCE = { 
" nh� ch�i c� th� ��n th�nh �� ph� t��ng d��ng ph� tr��c khi An ph� ��i L� ph� D��ng Ch�u ph� c�ng c�a th�nh v� binh ��i tho�i tham gia t�ng ph��ng th� th�nh .", 
" nh� ch�i c� th� ��n ph��ng t��ng ph� bi�n kinh ph� c�ng c�a th�nh v� binh ��i tho�i tham gia kim ph��ng th� th�nh ." 
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

FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr�nh tr� ch�i th�i gian t��ng ���ng v�i 1 gi�y 
MISSIONID = 27; -- script viet hoa By http://tranhba.com mission bi�n s� 
MAX_MEMBERCOUNT = 400; -- script viet hoa By http://tranhba.com  c�ng th�nh b�n �� l�n nh�t nh�n s� h�n ch� 

SMALLTIMERID = 52; -- script viet hoa By http://tranhba.com  t�nh gi� kh� bi�n s� 
TOTALTIMERID = 53; -- script viet hoa By http://tranhba.com  t�nh gi� kh� bi�n s� 

SMALL_TIME = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com  m�i 20 gi�y t�nh gi� m�t l�n 
TOTAL_TIME = 150 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com 150 ph�t t�nh gi� m�t l�n , ho�t ��ng k�t th�c 
RUNGAME_TIME = 30 * 60 * FRAME2TIME / SMALL_TIME; -- script viet hoa By http://tranhba.com  ghi danh 30 ph�t sau , kh�i ��ng 
LASTREPORT_TIME = 145 * 60 * FRAME2TIME / SMALL_TIME; -- script viet hoa By http://tranhba.com  th� th�nh cu�i c�ng 5 ph�t kh�ng c� ph�t , �� k� m�t l�n th�i gian 
CALLBOSS_ZHUSHUAI = 120 * 60 * FRAME2TIME / SMALL_TIME; -- script viet hoa By http://tranhba.com  ch� so�i xu�t hi�n th�i gian 

NHOMEDEFENCE = 24 -- script viet hoa By http://tranhba.com  th�nh ph�ng m�i b�t ��u tr� gi� 
NHOMEDEFENCE_DAMAGE = 1 -- script viet hoa By http://tranhba.com  th�nh ph�ng t�n th��ng tr� gi� , c�ng th�nh xe ��i v�i th�nh ph�ng 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p nhi�m v� tr�ng th�i thay ��i l��ng ID 
MS_RANDKEY = 2; -- script viet hoa By http://tranhba.com  ghi ch�p nhi�m v� tr��c m�t h� ��ch key , ng�u nhi�n ��m 
MS_OPENDAY = 3; -- script viet hoa By http://tranhba.com  ghi ch�p nhi�m v� tr��c m�t b�t ��u ��ch th�ng , ng�y 
MS_CITYCAMP = 4; -- script viet hoa By http://tranhba.com  b�n ghi ch�p t�m b�n �� ��ch tr�n doanh , t�ng -1# kim -2 
MS_SMALL_TIME = 5; -- script viet hoa By http://tranhba.com  ghi ch�p smalltimer t�nh gi� kh� ��ch s� l�n 
MS_BOSS4_DOWN = 6; -- script viet hoa By http://tranhba.com  v� 1 �� sinh ra ti�u boss , 0 c�n ch�a 
MS_BOSS5_DOWN = 7; -- script viet hoa By http://tranhba.com  v� 1 �� sinh ra ��i boss , 0 c�n ch�a 
MS_TLCOUNT_COMMON = 8; -- script viet hoa By http://tranhba.com  gi�t ch�t b�nh th��ng tr�ch ��ch t�ng s� 
MS_CITYDEFENCE = 9; -- script viet hoa By http://tranhba.com  v� 0 b�y t� ��n l�c �� �ang l�c ch�a ho�n th�nh nhi�m v� , v� 1 b�y t� nhi�m v� ho�n th�nh 
MS_MISSIONID = 10; -- script viet hoa By http://tranhba.com  t�n v�o tr��c m�t mission ��ch ID 

MS_MAXCOUNTNPC_1 = 11; -- script viet hoa By http://tranhba.com  ti�u gi�o c�n th�a l�i s� l��ng 
MS_MAXCOUNTNPC_2 = 12; -- script viet hoa By http://tranhba.com  ��i tr��ng c�n th�a l�i s� l��ng 
MS_MAXCOUNTNPC_3 = 13; -- script viet hoa By http://tranhba.com  ti�n phong c�n th�a l�i s� l��ng 
MS_MAXCOUNTNPC_4 = 14; -- script viet hoa By http://tranhba.com  ch� t��ng c�n th�a l�i s� l��ng 
MS_MAXCOUNTNPC_5 = 15; -- script viet hoa By http://tranhba.com  ch� so�i c�n th�a l�i s� l��ng 

MS_RESTCOUNTNPC_1 = 16; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng gi�t ch�t b�ch tr�ch s� l��ng 
MS_RESTCOUNTNPC_2 = 17; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng gi�t ch�t lan tr�ch s� l��ng 
MS_RESTCOUNTNPC_3 = 18; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng gi�t ch�t s�t th� c�p tr�ch s� l��ng 
MS_RESTCOUNTNPC_4 = 19; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng gi�t ch�t ti�u BOSS s� l��ng 
MS_RESTCOUNTNPC_5 = 20; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng gi�t ch�t ��i BOSS s� l��ng 

MS_HOMEOUT_X1 = 21; -- script viet hoa By http://tranhba.com  d� ngo�i h��ng ��i doanh ��ch truy�n t�ng t�a �� X , th� nh�t lo�i Trap 
MS_HOMEOUT_Y1 = 22; 
MS_HOMEOUT_X2 = 23; -- script viet hoa By http://tranhba.com  d� ngo�i h��ng ��i doanh ��ch truy�n t�ng t�a �� X , th� hai lo�i Trap 
MS_HOMEOUT_Y2 = 24; 

MS_CENTER_X1 = 27; -- script viet hoa By http://tranhba.com  ��i doanh h��ng d� ngo�i ��ch truy�n t�ng t�a �� X , th� nh�t lo�i Trap 
MS_CENTER_Y1 = 28; 
MS_CENTER_X2 = 29; -- script viet hoa By http://tranhba.com  ��i doanh h��ng d� ngo�i ��ch truy�n t�ng t�a �� X , th� nh�t lo�i Trap 
MS_CENTER_Y2 = 30; 

MS_SHOUCHENGWEIBING = 33 
MS_SHOUCHENGJIANGJUN = 34 

MS_HOMEDEFENCE = 35 -- script viet hoa By http://tranhba.com  th�nh ph�ng 

MS_S_GUAI1 = 1; -- script viet hoa By http://tranhba.com  ghi ch�p th� nh�t c� tr�ch �i�m 
MS_S_GUAI2 = 2; -- script viet hoa By http://tranhba.com  ghi ch�p th� hai c� tr�ch �i�m 
MS_S_GUAI3 = 3; -- script viet hoa By http://tranhba.com  ghi ch�p ng��i th� ba c� tr�ch �i�m 
MS_S_CD_NAME = 4; -- script viet hoa By http://tranhba.com  tr��c m�t th� th�nh chi�n d�ch ��ch t�n 

CD_BASE_VALUE = 1000000 

TB_CD_AWARDEXP = {600, 700, 800, 900, 1000} 
TB_CD_AWARDITEM = { 
-- script viet hoa By http://tranhba.com { itemname, itemvalue, itemlist}, 
{"Tr�m qu� l� ",0.02,{ 6,1,73,0,1,1,1 }}, 
{"Thi�n S�n b�o l� ",0.02,{ 6,1,72,0,1,1,1 }}, 
{"Huy�n tinh 4 c�p ",0.02,{ 6,1,147,0,4,1,1 }}, 
{"Huy�n tinh 5 c�p ",0.003,{ 6,1,147,0,5,1,1 }}, 
{"Huy�n tinh 6 c�p ",0.001,{ 6,1,147,0,6,1,1 }}, 
{"Huy�n tinh 7 c�p ",0.0003,{ 6,1,147,0,7,1,1 }}, 
{"Huy�n tinh 8 c�p ",0.0001,{ 6,1,147,0,8,1,1 }}, 
{"��i l�c ho�n ",0.02,{ 6,0,3,0,1,1,1 }}, 
{"Nhanh ch�ng ho�n ",0.02,{ 6,0,6,0,1,1,1 }}, 
{"��c ph�ng ho�n ",0.02,{ 6,0,10,0,1,1,1 }}, 
{"B�ng ph�ng ho�n ",0.02,{ 6,0,7,0,1,1,1 }}, 
{" l�a ph�ng ho�n ",0.02,{ 6,0,9,0,1,1,1 }}, 
{" l�i ph�ng ho�n ",0.02,{ 6,0,8,0,1,1,1 }}, 
{"Trung h�c �� nh� c�p ho�n ",0.02,{ 6,0,5,0,1,1,1 }}, 
{"Th�m ch�y ho�n ",0.02,{ 6,0,2,0,1,1,1 }}, 
{"Cao nhanh ch�ng ho�n ",0.02,{ 6,0,4,0,1,1,1 }}, 
{"Tr��ng m�nh ho�n ",0.02,{ 6,0,1,0,1,1,1 }}, 
{"M�m n�u t�m tr�i qua ",0.0005,{ 6,1,12,0,1,1,1 }}, 
{" lam th�y tinh ",0.001,{ 238 }}, 
{"N��c bi�c tinh ",0.001,{ 240 }}, 
{"T� th�y tinh ",0.001,{ 239 }}, 
{"V� l�m b� t�ch ",0.0001,{ 6,1,26,0,1,1,1 }}, 
{"T�y T�y Kinh ",0.0001,{ 6,1,22,0,1,1,1 }}, 
{"Ti�n th�o l� ",1,{ 6,1,71,0,1,1,1 }}, 
-- {"Hi�p c�t chi thi�t huy�t sam m�nh v�n (1/4) /4)",0.0001,{ 903 }}, 
-- {"Hi�p c�t chi thi�t huy�t sam m�nh v�n (2/4) /4)",0.0001,{ 904 }}, 
-- {"Hi�p c�t chi thi�t huy�t sam m�nh v�n (3/4) /4)",0.0001,{ 905 }}, 
-- {"Hi�p c�t chi thi�t huy�t sam m�nh v�n (4/4) /4)",0.0001,{ 906 }}, 
-- {"Hi�p c�t nhi�u t�nh ho�n m�nh v�n (1/4) /4)",0.0002,{ 907 }}, 
-- {"Hi�p c�t nhi�u t�nh ho�n m�nh v�n (2/4) /4)",0.0002,{ 908 }}, 
-- {"Hi�p c�t nhi�u t�nh ho�n m�nh v�n (3/4) /4)",0.0002,{ 909 }}, 
-- {"Hi�p c�t nhi�u t�nh ho�n m�nh v�n (4/4) /4)",0.0002,{ 910 }}, 
-- {"Hi�p c�t chi �an t�m gi�i m�nh v�n (1/4) /4)",0.0002,{ 911 }}, 
-- {"Hi�p c�t chi �an t�m gi�i m�nh v�n (2/4) /4)",0.0002,{ 912 }}, 
-- {"Hi�p c�t chi �an t�m gi�i m�nh v�n (3/4) /4)",0.0002,{ 913 }}, 
-- {"Hi�p c�t chi �an t�m gi�i m�nh v�n (4/4) /4)",0.0002,{ 914 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (1/6) /6)",0.00002,{ 771 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (2/6) /6)",0.00002,{ 772 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (3/6) /6)",0.00002,{ 773 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (4/6) /6)",0.00002,{ 774 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (5/6) /6)",0.00002,{ 775 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (6/6) /6)",0.00002,{ 776 }}, 
-- {"C�n qu�c ngh� th��ng m�nh v�n (1/6) /6)",0.00001,{ 777 }}, 
-- {"C�n qu�c ngh� th��ng m�nh v�n (2/6) /6)",0.00001,{ 778 }}, 
-- {"C�n qu�c ngh� th��ng m�nh v�n (3/6) /6)",0.00001,{ 779 }}, 
-- {"C�n qu�c ngh� th��ng m�nh v�n (4/6) /6)",0.00001,{ 780 }}, 
-- {"C�n qu�c ngh� th��ng m�nh v�n (5/6) /6)",0.00001,{ 781 }}, 
-- {"C�n qu�c ngh� th��ng m�nh v�n (6/6) /6)",0.00001,{ 782 }}, 
-- {"Nhu t�nh chi th�c n� gi�y chuy�n m�nh v�n (1/4) /4)",0.0002,{ 915 }}, 
-- {"Nhu t�nh chi th�c n� gi�y chuy�n m�nh v�n (2/4) /4)",0.0002,{ 916 }}, 
-- {"Nhu t�nh chi th�c n� gi�y chuy�n m�nh v�n (3/4) /4)",0.0002,{ 917 }}, 
-- {"Nhu t�nh chi th�c n� gi�y chuy�n m�nh v�n (4/4) /4)",0.0002,{ 918 }}, 
-- {"Nhu t�nh chi ph��ng nghi chi�c nh�n m�nh v�n (1/4) /4)",0.0002,{ 919 }}, 
-- {"Nhu t�nh chi ph��ng nghi chi�c nh�n m�nh v�n (2/4) /4)",0.0002,{ 920 }}, 
-- {"Nhu t�nh chi ph��ng nghi chi�c nh�n m�nh v�n (3/4) /4)",0.0002,{ 921 }}, 
-- {"Nhu t�nh chi ph��ng nghi chi�c nh�n m�nh v�n (4/4) /4)",0.0002,{ 922 }}, 
-- {"Nhu t�nh chi tu� t�m ng�c b�i m�nh v�n (1/4) /4)",0.00002,{ 923 }}, 
-- {"Nhu t�nh chi tu� t�m ng�c b�i m�nh v�n (2/4) /4)",0.00002,{ 924 }}, 
-- {"Nhu t�nh chi tu� t�m ng�c b�i m�nh v�n (3/4) /4)",0.00002,{ 925 }}, 
-- {"Nhu t�nh chi tu� t�m ng�c b�i m�nh v�n (4/4) /4)",0.00002,{ 926 }}, 
-- {"��nh qu�c chi l�a m�ng xanh tr��ng sam m�nh v�n (1/4) /4)",0.0001,{ 927 }}, 
-- {"��nh qu�c chi l�a m�ng xanh tr��ng sam m�nh v�n (2/4) /4)",0.0001,{ 928 }}, 
-- {"��nh qu�c chi l�a m�ng xanh tr��ng sam m�nh v�n (3/4) /4)",0.0001,{ 929 }}, 
-- {"��nh qu�c chi l�a m�ng xanh tr��ng sam m�nh v�n (4/4) /4)",0.0001,{ 930 }}, 
-- {"��nh qu�c chi x�ch quy�n m�m ngoa m�nh v�n (1/4) /4)",0.0002,{ 931 }}, 
-- {"��nh qu�c chi x�ch quy�n m�m ngoa m�nh v�n (2/4) /4)",0.0002,{ 932 }}, 
-- {"��nh qu�c chi x�ch quy�n m�m ngoa m�nh v�n (3/4) /4)",0.0002,{ 933 }}, 
-- {"��nh qu�c chi x�ch quy�n m�m ngoa m�nh v�n (4/4) /4)",0.0002,{ 934 }}, 
-- {"��nh qu�c chi t� ��ng h� c� tay m�nh v�n (1/4) /4)",0.0002,{ 935 }}, 
-- {"��nh qu�c chi t� ��ng h� c� tay m�nh v�n (2/4) /4)",0.0002,{ 936 }}, 
-- {"��nh qu�c chi t� ��ng h� c� tay m�nh v�n (3/4) /4)",0.0002,{ 937 }}, 
-- {"��nh qu�c chi t� ��ng h� c� tay m�nh v�n (4/4) /4)",0.0002,{ 938 }}, 
-- {"��nh qu�c chi ng�n t�m �ai l�ng m�nh v�n (1/4) /4)",0.0002,{ 939 }}, 
-- {"��nh qu�c chi ng�n t�m �ai l�ng m�nh v�n (2/4) /4)",0.0002,{ 940 }}, 
-- {"��nh qu�c chi ng�n t�m �ai l�ng m�nh v�n (3/4) /4)",0.0002,{ 941 }}, 
-- {"��nh qu�c chi ng�n t�m �ai l�ng m�nh v�n (4/4) /4)",0.0002,{ 942 }}, 
-- {"Tr�ch tinh ho�n m�nh v�n (1/6) /6)",0.00005,{ 711 }}, 
-- {"Tr�ch tinh ho�n m�nh v�n (2/6) /6)",0.00005,{ 712 }}, 
-- {"Tr�ch tinh ho�n m�nh v�n (3/6) /6)",0.00005,{ 713 }}, 
-- {"Tr�ch tinh ho�n m�nh v�n (4/6) /6)",0.00005,{ 714 }}, 
-- {"Tr�ch tinh ho�n m�nh v�n (5/6) /6)",0.00005,{ 715 }}, 
-- {"Tr�ch tinh ho�n m�nh v�n (6/6) /6)",0.00005,{ 716 }}, 
-- {"���ng ngh� gi�p m�nh v�n (1/6) /6)",0.00005,{ 717 }}, 
-- {"���ng ngh� gi�p m�nh v�n (2/6) /6)",0.00005,{ 718 }}, 
-- {"���ng ngh� gi�p m�nh v�n (3/6) /6)",0.00005,{ 719 }}, 
-- {"���ng ngh� gi�p m�nh v�n (4/6) /6)",0.00005,{ 720 }}, 
-- {"���ng ngh� gi�p m�nh v�n (5/6) /6)",0.00005,{ 721 }}, 
-- {"���ng ngh� gi�p m�nh v�n (6/6) /6)",0.00005,{ 722 }}, 
-- {"Xanh bi�c ph� th�y h� th�n ph� m�nh v�n (1/6) /6)",0.000005,{ 723 }}, 
-- {"Xanh bi�c ph� th�y h� th�n ph� m�nh v�n (2/6) /6)",0.000005,{ 724 }}, 
-- {"Xanh bi�c ph� th�y h� th�n ph� m�nh v�n (3/6) /6)",0.000005,{ 725 }}, 
-- {"Xanh bi�c ph� th�y h� th�n ph� m�nh v�n (4/6) /6)",0.000005,{ 726 }}, 
-- {"Xanh bi�c ph� th�y h� th�n ph� m�nh v�n (5/6) /6)",0.000005,{ 727 }}, 
-- {"Xanh bi�c ph� th�y h� th�n ph� m�nh v�n (6/6) /6)",0.000005,{ 728 }}, 
-- {"B�ch kim �ai l�ng m�nh v�n (1/6) /6)",0.00001,{ 729 }}, 
-- {"B�ch kim �ai l�ng m�nh v�n (2/6) /6)",0.00001,{ 730 }}, 
-- {"B�ch kim �ai l�ng m�nh v�n (3/6) /6)",0.00001,{ 731 }}, 
-- {"B�ch kim �ai l�ng m�nh v�n (4/6) /6)",0.00001,{ 732 }}, 
-- {"B�ch kim �ai l�ng m�nh v�n (5/6) /6)",0.00001,{ 733 }}, 
-- {"B�ch kim �ai l�ng m�nh v�n (6/6) /6)",0.00001,{ 734 }}, 
-- {"Thi�n t�m h� c� tay m�nh v�n (1/6) /6)",0.00001,{ 735 }}, 
-- {"Thi�n t�m h� c� tay m�nh v�n (1/6) /6)",0.00001,{ 736 }}, 
-- {"Thi�n t�m h� c� tay m�nh v�n (1/6) /6)",0.00001,{ 737 }}, 
-- {"Thi�n t�m h� c� tay m�nh v�n (1/6) /6)",0.00001,{ 738 }}, 
-- {"Thi�n t�m h� c� tay m�nh v�n (1/6) /6)",0.00001,{ 739 }}, 
-- {"Thi�n t�m h� c� tay m�nh v�n (1/6) /6)",0.00001,{ 740 }}, 
-- {"Thi�n t�m ngoa m�nh v�n (1/6) /6)",0.00001,{ 741 }}, 
-- {"Thi�n t�m ngoa m�nh v�n (2/6) /6)",0.00001,{ 742 }}, 
-- {"Thi�n t�m ngoa m�nh v�n (3/6) /6)",0.00001,{ 743 }}, 
-- {"Thi�n t�m ngoa m�nh v�n (4/6) /6)",0.00001,{ 744 }}, 
-- {"Thi�n t�m ngoa m�nh v�n (5/6) /6)",0.00001,{ 745 }}, 
-- {"Thi�n t�m ngoa m�nh v�n (6/6) /6)",0.00001,{ 746 }}, 
-- {"B�ng tinh th�ch gi�y chuy�n m�nh v�n (1/6) /6)",0.0001,{ 747 }}, 
-- {"B�ng tinh th�ch gi�y chuy�n m�nh v�n (2/6) /6)",0.0001,{ 748 }}, 
-- {"B�ng tinh th�ch gi�y chuy�n m�nh v�n (3/6) /6)",0.0001,{ 749 }}, 
-- {"B�ng tinh th�ch gi�y chuy�n m�nh v�n (4/6) /6)",0.0001,{ 750 }}, 
-- {"B�ng tinh th�ch gi�y chuy�n m�nh v�n (5/6) /6)",0.0001,{ 751 }}, 
-- {"B�ng tinh th�ch gi�y chuy�n m�nh v�n (6/6) /6)",0.0001,{ 752 }}, 
-- {"Hoa c�c th�ch chi�c nh�n m�nh v�n (1/6) /6)",0.0001,{ 753 }}, 
-- {"Hoa c�c th�ch chi�c nh�n m�nh v�n (2/6) /6)",0.0001,{ 754 }}, 
-- {"Hoa c�c th�ch chi�c nh�n m�nh v�n (3/6) /6)",0.0001,{ 755 }}, 
-- {"Hoa c�c th�ch chi�c nh�n m�nh v�n (4/6) /6)",0.0001,{ 756 }}, 
-- {"Hoa c�c th�ch chi�c nh�n m�nh v�n (5/6) /6)",0.0001,{ 757 }}, 
-- {"Hoa c�c th�ch chi�c nh�n m�nh v�n (6/6) /6)",0.0001,{ 758 }}, 
-- {"�i�n ho�ng th�ch ng�c b�i m�nh v�n (1/6) /6)",0.0001,{ 759 }}, 
-- {"�i�n ho�ng th�ch ng�c b�i m�nh v�n (2/6) /6)",0.0001,{ 760 }}, 
-- {"�i�n ho�ng th�ch ng�c b�i m�nh v�n (3/6) /6)",0.0001,{ 761 }}, 
-- {"�i�n ho�ng th�ch ng�c b�i m�nh v�n (4/6) /6)",0.0001,{ 762 }}, 
-- {"�i�n ho�ng th�ch ng�c b�i m�nh v�n (5/6) /6)",0.0001,{ 763 }}, 
-- {"�i�n ho�ng th�ch ng�c b�i m�nh v�n (6/6) /6)",0.0001,{ 764 }}, 
-- {"M�u g� th�ch chi�c nh�n m�nh v�n (1/6) /6)",0.0001,{ 765 }}, 
-- {"M�u g� th�ch chi�c nh�n m�nh v�n (2/6) /6)",0.0001,{ 766 }}, 
-- {"M�u g� th�ch chi�c nh�n m�nh v�n (3/6) /6)",0.0001,{ 767 }}, 
-- {"M�u g� th�ch chi�c nh�n m�nh v�n (4/6) /6)",0.0001,{ 768 }}, 
-- {"M�u g� th�ch chi�c nh�n m�nh v�n (5/6) /6)",0.0001,{ 769 }}, 
-- {"M�u g� th�ch chi�c nh�n m�nh v�n (6/6) /6)",0.0001,{ 770 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (1/6) /6)",0.0001,{ 783 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (2/6) /6)",0.0001,{ 784 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (3/6) /6)",0.0001,{ 785 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (4/6) /6)",0.0001,{ 786 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (5/6) /6)",0.0001,{ 787 }}, 
-- {"Hi�p c�t t�nh � k�t m�nh v�n (6/6) /6)",0.0001,{ 788 }}, 
-- {"Kim ti �ang h�ng �o c� sa m�nh v�n (1/6) /6)",0.00001,{ 789 }}, 
-- {"Kim ti �ang h�ng �o c� sa m�nh v�n (2/6) /6)",0.00001,{ 790 }}, 
-- {"Kim ti �ang h�ng �o c� sa m�nh v�n (3/6) /6)",0.00001,{ 791 }}, 
-- {"Kim ti �ang h�ng �o c� sa m�nh v�n (4/6) /6)",0.00001,{ 792 }}, 
-- {"Kim ti �ang h�ng �o c� sa m�nh v�n (5/6) /6)",0.00001,{ 793 }}, 
-- {"Kim ti �ang h�ng �o c� sa m�nh v�n (6/6) /6)",0.00001,{ 794 }}, 
-- {"Huy�n v� ho�ng kim kh�i m�nh v�n (1/6) /6)",0.00001,{ 795 }}, 
-- {"Huy�n v� ho�ng kim kh�i m�nh v�n (2/6) /6)",0.00001,{ 796 }}, 
-- {"Huy�n v� ho�ng kim kh�i m�nh v�n (3/6) /6)",0.00001,{ 797 }}, 
-- {"Huy�n v� ho�ng kim kh�i m�nh v�n (4/6) /6)",0.00001,{ 798 }}, 
-- {"Huy�n v� ho�ng kim kh�i m�nh v�n (5/6) /6)",0.00001,{ 799 }}, 
-- {"Huy�n v� ho�ng kim kh�i m�nh v�n (6/6) /6)",0.00001,{ 800 }}, 
-- {"T�m gi�ng ng�c tr� m�nh v�n (1/6) /6)",0.00001,{ 801 }}, 
-- {"T�m gi�ng ng�c tr� m�nh v�n (2/6) /6)",0.00001,{ 802 }}, 
-- {"T�m gi�ng ng�c tr� m�nh v�n (3/6) /6)",0.00001,{ 803 }}, 
-- {"T�m gi�ng ng�c tr� m�nh v�n (4/6) /6)",0.00001,{ 804 }}, 
-- {"T�m gi�ng ng�c tr� m�nh v�n (5/6) /6)",0.00001,{ 805 }}, 
-- {"T�m gi�ng ng�c tr� m�nh v�n (6/6) /6)",0.00001,{ 806 }}, 
-- {"H�ng truy m�m # gi�y m�nh v�n (1/6) /6)",0.00001,{ 807 }}, 
-- {"H�ng truy m�m # gi�y m�nh v�n (2/6) /6)",0.00001,{ 808 }}, 
-- {"H�ng truy m�m # gi�y m�nh v�n (3/6) /6)",0.00001,{ 809 }}, 
-- {"H�ng truy m�m # gi�y m�nh v�n (4/6) /6)",0.00001,{ 810 }}, 
-- {"H�ng truy m�m # gi�y m�nh v�n (5/6) /6)",0.00001,{ 811 }}, 
-- {"H�ng truy m�m # gi�y m�nh v�n (6/6) /6)",0.00001,{ 812 }}, 
-- {"Thanh t�m h��ng thi�n ch�u m�nh v�n (1/6) /6)",0.00001,{ 813 }}, 
-- {"Thanh t�m h��ng thi�n ch�u m�nh v�n (2/6) /6)",0.00001,{ 814 }}, 
-- {"Thanh t�m h��ng thi�n ch�u m�nh v�n (3/6) /6)",0.00001,{ 815 }}, 
-- {"Thanh t�m h��ng thi�n ch�u m�nh v�n (4/6) /6)",0.00001,{ 816 }}, 
-- {"Thanh t�m h��ng thi�n ch�u m�nh v�n (5/6) /6)",0.00001,{ 817 }}, 
-- {"Thanh t�m h��ng thi�n ch�u m�nh v�n (6/6) /6)",0.00001,{ 818 }}, 
-- {"B�ch h�i chi h�ng linh ba m�nh v�n (1/6) /6)",0.00001,{ 819 }}, 
-- {"B�ch h�i chi h�ng linh ba m�nh v�n (2/6) /6)",0.00001,{ 820 }}, 
-- {"B�ch h�i chi h�ng linh ba m�nh v�n (3/6) /6)",0.00001,{ 821 }}, 
-- {"B�ch h�i chi h�ng linh ba m�nh v�n (4/6) /6)",0.00001,{ 822 }}, 
-- {"B�ch h�i chi h�ng linh ba m�nh v�n (5/6) /6)",0.00001,{ 823 }}, 
-- {"B�ch h�i chi h�ng linh ba m�nh v�n (6/6) /6)",0.00001,{ 824 }}, 
-- {"U l�ng chi kim x� d�y c�t t�c m�nh v�n m�nh v�n (1/6) /6)",0.00001,{ 825 }}, 
-- {"U l�ng chi kim x� d�y c�t t�c m�nh v�n (2/6) /6)",0.00001,{ 826 }}, 
-- {"U l�ng chi kim x� d�y c�t t�c m�nh v�n (3/6) /6)",0.00001,{ 827 }}, 
-- {"U l�ng chi kim x� d�y c�t t�c m�nh v�n (4/6) /6)",0.00001,{ 828 }}, 
-- {"U l�ng chi kim x� d�y c�t t�c m�nh v�n (5/6) /6)",0.00001,{ 829 }}, 
-- {"U l�ng chi kim x� d�y c�t t�c m�nh v�n (6/6) /6)",0.00001,{ 830 }}, 
-- {"U l�ng chi m�c chu m�m l� m�nh v�n (1/6) /6)",0.00001,{ 831 }}, 
-- {"U l�ng chi m�c chu m�m l� m�nh v�n (2/6) /6)",0.00001,{ 832 }}, 
-- {"U l�ng chi m�c chu m�m l� m�nh v�n (3/6) /6)",0.00001,{ 833 }}, 
-- {"U l�ng chi m�c chu m�m l� m�nh v�n (4/6) /6)",0.00001,{ 834 }}, 
-- {"U l�ng chi m�c chu m�m l� m�nh v�n (5/6) /6)",0.00001,{ 835 }}, 
-- {"U l�ng chi m�c chu m�m l� m�nh v�n (6/6) /6)",0.00001,{ 836 }}, 
-- {"Nguy�n r�a ph��c chi di�t l�i c�nh ph� m�nh v�n (1/6) /6)",0.00001,{ 837 }}, 
-- {"Nguy�n r�a ph��c chi di�t l�i c�nh ph� m�nh v�n (2/6) /6)",0.00001,{ 838 }}, 
-- {"Nguy�n r�a ph��c chi di�t l�i c�nh ph� m�nh v�n (3/6) /6)",0.00001,{ 839 }}, 
-- {"Nguy�n r�a ph��c chi di�t l�i c�nh ph� m�nh v�n (4/6) /6)",0.00001,{ 840 }}, 
-- {"Nguy�n r�a ph��c chi di�t l�i c�nh ph� m�nh v�n (5/6) /6)",0.00001,{ 841 }}, 
-- {"Nguy�n r�a ph��c chi di�t l�i c�nh ph� m�nh v�n (6/6) /6)",0.00001,{ 842 }}, 
-- {"��a ph�ch chi h�c di�m ng�t tr�i li�n m�nh v�n (1/6) /6)",0.00001,{ 843 }}, 
-- {"��a ph�ch chi h�c di�m ng�t tr�i li�n m�nh v�n (2/6) /6)",0.00001,{ 844 }}, 
-- {"��a ph�ch chi h�c di�m ng�t tr�i li�n m�nh v�n (3/6) /6)",0.00001,{ 845 }}, 
-- {"��a ph�ch chi h�c di�m ng�t tr�i li�n m�nh v�n (4/6) /6)",0.00001,{ 846 }}, 
-- {"��a ph�ch chi h�c di�m ng�t tr�i li�n m�nh v�n (5/6) /6)",0.00001,{ 847 }}, 
-- {"��a ph�ch chi h�c di�m ng�t tr�i li�n m�nh v�n (6/6) /6)",0.00001,{ 848 }}, 
-- {"C�ng th� chi h�ng long c�i y m�nh v�n (1/6) /6)",0.00001,{ 849 }}, 
-- {"C�ng th� chi h�ng long c�i y m�nh v�n (2/6) /6)",0.00001,{ 850 }}, 
-- {"C�ng th� chi h�ng long c�i y m�nh v�n (3/6) /6)",0.00001,{ 851 }}, 
-- {"C�ng th� chi h�ng long c�i y m�nh v�n (4/6) /6)",0.00001,{ 852 }}, 
-- {"C�ng th� chi h�ng long c�i y m�nh v�n (5/6) /6)",0.00001,{ 853 }}, 
-- {"C�ng th� chi h�ng long c�i y m�nh v�n (6/6) /6)",0.00001,{ 854 }}, 
-- {"C�ng th� chi kh�ng long h� th� m�nh v�n (1/6) /6)",0.00001,{ 855 }}, 
-- {"C�ng th� chi kh�ng long h� th� m�nh v�n (2/6) /6)",0.00001,{ 856 }}, 
-- {"C�ng th� chi kh�ng long h� th� m�nh v�n (3/6) /6)",0.00001,{ 857 }}, 
-- {"C�ng th� chi kh�ng long h� th� m�nh v�n (4/6) /6)",0.00001,{ 858 }}, 
-- {"C�ng th� chi kh�ng long h� th� m�nh v�n (5/6) /6)",0.00001,{ 859 }}, 
-- {"C�ng th� chi kh�ng long h� th� m�nh v�n (6/6) /6)",0.00001,{ 860 }}, 
-- {"Ma ho�ng chi kim kh�i gi�p m�nh v�n (1/6) /6)",0.00001,{ 861 }}, 
-- {"Ma ho�ng chi kim kh�i gi�p m�nh v�n (2/6) /6)",0.00001,{ 862 }}, 
-- {"Ma ho�ng chi kim kh�i gi�p m�nh v�n (3/6) /6)",0.00001,{ 863 }}, 
-- {"Ma ho�ng chi kim kh�i gi�p m�nh v�n (4/6) /6)",0.00001,{ 864 }}, 
-- {"Ma ho�ng chi kim kh�i gi�p m�nh v�n (5/6) /6)",0.00001,{ 865 }}, 
-- {"Ma ho�ng chi kim kh�i gi�p m�nh v�n (6/6) /6)",0.00001,{ 866 }}, 
-- {"Ma ho�ng chi theo nh� ra h� h�ng v�ng m�nh v�n (1/6) /6)",0.00001,{ 867 }}, 
-- {"Ma ho�ng chi theo nh� ra h� h�ng v�ng m�nh v�n (2/6) /6)",0.00001,{ 868 }}, 
-- {"Ma ho�ng chi theo nh� ra h� h�ng v�ng m�nh v�n (3/6) /6)",0.00001,{ 869 }}, 
-- {"Ma ho�ng chi theo nh� ra h� h�ng v�ng m�nh v�n (4/6) /6)",0.00001,{ 870 }}, 
-- {"Ma ho�ng chi theo nh� ra h� h�ng v�ng m�nh v�n (5/6) /6)",0.00001,{ 871 }}, 
-- {"Ma ho�ng chi theo nh� ra h� h�ng v�ng m�nh v�n (6/6) /6)",0.00001,{ 872 }}, 
-- {"Ma l� chi s�n h�i bay h�ng l� m�nh v�n (1/6) /6)",0.00001,{ 873 }}, 
-- {"Ma l� chi s�n h�i bay h�ng l� m�nh v�n (1/6) /6)",0.00001,{ 874 }}, 
-- {"Ma l� chi s�n h�i bay h�ng l� m�nh v�n (1/6) /6)",0.00001,{ 875 }}, 
-- {"Ma l� chi s�n h�i bay h�ng l� m�nh v�n (1/6) /6)",0.00001,{ 876 }}, 
-- {"Ma l� chi s�n h�i bay h�ng l� m�nh v�n (1/6) /6)",0.00001,{ 877 }}, 
-- {"Ma l� chi s�n h�i bay h�ng l� m�nh v�n (1/6) /6)",0.00001,{ 878 }}, 
-- {" l�ng nh�c chi v� c�c huy�n ng�c b�i m�nh v�n (1/6) /6)",0.00001,{ 879 }}, 
-- {" l�ng nh�c chi v� c�c huy�n ng�c b�i m�nh v�n (2/6) /6)",0.00001,{ 880 }}, 
-- {" l�ng nh�c chi v� c�c huy�n ng�c b�i m�nh v�n (3/6) /6)",0.00001,{ 881 }}, 
-- {" l�ng nh�c chi v� c�c huy�n ng�c b�i m�nh v�n (4/6) /6)",0.00001,{ 882 }}, 
-- {" l�ng nh�c chi v� c�c huy�n ng�c b�i m�nh v�n (5/6) /6)",0.00001,{ 883 }}, 
-- {" l�ng nh�c chi v� c�c huy�n ng�c b�i m�nh v�n (6/6) /6)",0.00001,{ 884 }}, 
-- {"C�ng phong chi ba thanh ph� m�nh v�n (1/6) /6)",0.00001,{ 885 }}, 
-- {"C�ng phong chi ba thanh ph� m�nh v�n (2/6) /6)",0.00001,{ 886 }}, 
-- {"C�ng phong chi ba thanh ph� m�nh v�n (3/6) /6)",0.00001,{ 887 }}, 
-- {"C�ng phong chi ba thanh ph� m�nh v�n (4/6) /6)",0.00001,{ 888 }}, 
-- {"C�ng phong chi ba thanh ph� m�nh v�n (5/6) /6)",0.00001,{ 889 }}, 
-- {"C�ng phong chi ba thanh ph� m�nh v�n (6/6) /6)",0.00001,{ 890 }}, 
-- {" l�i khung chi thi�n ��a h� ph� m�nh v�n (1/6) /6)",0.00001,{ 891 }}, 
-- {" l�i khung chi thi�n ��a h� ph� m�nh v�n (2/6) /6)",0.00001,{ 892 }}, 
-- {" l�i khung chi thi�n ��a h� ph� m�nh v�n (3/6) /6)",0.00001,{ 893 }}, 
-- {" l�i khung chi thi�n ��a h� ph� m�nh v�n (4/6) /6)",0.00001,{ 894 }}, 
-- {" l�i khung chi thi�n ��a h� ph� m�nh v�n (5/6) /6)",0.00001,{ 895 }}, 
-- {" l�i khung chi thi�n ��a h� ph� m�nh v�n (6/6) /6)",0.00001,{ 896 }}, 
-- {"V� huy�n chi b�c minh ��o quan m�nh v�n (1/6) /6)",0.00001,{ 897 }}, 
-- {"V� huy�n chi b�c minh ��o quan m�nh v�n (2/6) /6)",0.00001,{ 898 }}, 
-- {"V� huy�n chi b�c minh ��o quan m�nh v�n (3/6) /6)",0.00001,{ 899 }}, 
-- {"V� huy�n chi b�c minh ��o quan m�nh v�n (4/6) /6)",0.00001,{ 900 }}, 
-- {"V� huy�n chi b�c minh ��o quan m�nh v�n (5/6) /6)",0.00001,{ 901 }}, 
-- {"V� huy�n chi b�c minh ��o quan m�nh v�n (6/6) /6)",0.00001,{ 902 }}, 
-- {"B�c Kinh chi m�ng trang b� m�nh v�n (1/9) /9)",0.000002,{ 540 }}, 
-- {"B�c Kinh chi m�ng trang b� m�nh v�n (2/9) /9)",0.000002,{ 541 }}, 
-- {"B�c Kinh chi m�ng trang b� m�nh v�n (3/9) /9)",0.000002,{ 542 }}, 
-- {"B�c Kinh chi m�ng trang b� m�nh v�n (4/9) /9)",0.000002,{ 543 }}, 
-- {"B�c Kinh chi m�ng trang b� m�nh v�n (5/9) /9)",0.000002,{ 544 }}, 
-- {"B�c Kinh chi m�ng trang b� m�nh v�n (6/9) /9)",0.000002,{ 545 }}, 
-- {"B�c Kinh chi m�ng trang b� m�nh v�n (7/9) /9)",0.000002,{ 546 }}, 
-- {"B�c Kinh chi m�ng trang b� m�nh v�n (8/9) /9)",0.000002,{ 547 }}, 
-- {"B�c Kinh chi m�ng trang b� m�nh v�n (9/9) /9)",0.000002,{ 548 }}, 
-- {"N�m m�u ng�c b�i m�nh v�n (1/9) /9)",0.000002,{ 549 }}, 
-- {"N�m m�u ng�c b�i m�nh v�n (2/9) /9)",0.000002,{ 550 }}, 
-- {"N�m m�u ng�c b�i m�nh v�n (3/9) /9)",0.000002,{ 551 }}, 
-- {"N�m m�u ng�c b�i m�nh v�n (4/9) /9)",0.000002,{ 552 }}, 
-- {"N�m m�u ng�c b�i m�nh v�n (5/9) /9)",0.000002,{ 553 }}, 
-- {"N�m m�u ng�c b�i m�nh v�n (6/9) /9)",0.000002,{ 554 }}, 
-- {"N�m m�u ng�c b�i m�nh v�n (7/9) /9)",0.000002,{ 555 }}, 
-- {"N�m m�u ng�c b�i m�nh v�n (8/9) /9)",0.000002,{ 556 }}, 
-- {"N�m m�u ng�c b�i m�nh v�n (9/9) /9)",0.000002,{ 557 }}, 
-- {"Nh� �i�n chi h�n m�nh v�n (1/9) /9)",0.000002,{ 558 }}, 
-- {"Nh� �i�n chi h�n m�nh v�n (2/9) /9)",0.000002,{ 559 }}, 
-- {"Nh� �i�n chi h�n m�nh v�n (3/9) /9)",0.000002,{ 560 }}, 
-- {"Nh� �i�n chi h�n m�nh v�n (4/9) /9)",0.000002,{ 561 }}, 
-- {"Nh� �i�n chi h�n m�nh v�n (5/9) /9)",0.000002,{ 562 }}, 
-- {"Nh� �i�n chi h�n m�nh v�n (6/9) /9)",0.000002,{ 563 }}, 
-- {"Nh� �i�n chi h�n m�nh v�n (7/9) /9)",0.000002,{ 564 }}, 
-- {"Nh� �i�n chi h�n m�nh v�n (8/9) /9)",0.000002,{ 565 }}, 
-- {"Nh� �i�n chi h�n m�nh v�n (9/9) /9)",0.000002,{ 566 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (1/9) /9)",0.000004,{ 567 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (2/9) /9)",0.000004,{ 568 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (3/9) /9)",0.000004,{ 569 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (4/9) /9)",0.000004,{ 570 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (5/9) /9)",0.000004,{ 571 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (6/9) /9)",0.000004,{ 572 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (7/9) /9)",0.000004,{ 573 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (8/9) /9)",0.000004,{ 574 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (9/9) /9)",0.000004,{ 575 }}, 
-- {"Ph�c ma chi t�m b�m c�n m�nh v�n (1/9) /9)",0.00001,{ 576 }}, 
-- {"Ph�c ma chi t�m b�m c�n m�nh v�n (2/9) /9)",0.00001,{ 577 }}, 
-- {"Ph�c ma chi t�m b�m c�n m�nh v�n (3/9) /9)",0.00001,{ 578 }}, 
-- {"Ph�c ma chi t�m b�m c�n m�nh v�n (4/9) /9)",0.00001,{ 579 }}, 
-- {"Ph�c ma chi t�m b�m c�n m�nh v�n (5/9) /9)",0.00001,{ 580 }}, 
-- {"Ph�c ma chi t�m b�m c�n m�nh v�n (6/9) /9)",0.00001,{ 581 }}, 
-- {"Ph�c ma chi t�m b�m c�n m�nh v�n (7/9) /9)",0.00001,{ 582 }}, 
-- {"Ph�c ma chi t�m b�m c�n m�nh v�n (8/9) /9)",0.00001,{ 583 }}, 
-- {"Ph�c ma chi t�m b�m c�n m�nh v�n (9/9) /9)",0.00001,{ 584 }}, 
-- {"B�n v� �ch chi h�ng ma gi�i �ao m�nh v�n (1/9) /9)",0.00001,{ 585 }}, 
-- {"B�n v� �ch chi h�ng ma gi�i �ao m�nh v�n (2/9) /9)",0.00001,{ 586 }}, 
-- {"B�n v� �ch chi h�ng ma gi�i �ao m�nh v�n (3/9) /9)",0.00001,{ 587 }}, 
-- {"B�n v� �ch chi h�ng ma gi�i �ao m�nh v�n (4/9) /9)",0.00001,{ 588 }}, 
-- {"B�n v� �ch chi h�ng ma gi�i �ao m�nh v�n (5/9) /9)",0.00001,{ 589 }}, 
-- {"B�n v� �ch chi h�ng ma gi�i �ao m�nh v�n (6/9) /9)",0.00001,{ 590 }}, 
-- {"B�n v� �ch chi h�ng ma gi�i �ao m�nh v�n (7/9) /9)",0.00001,{ 591 }}, 
-- {"B�n v� �ch chi h�ng ma gi�i �ao m�nh v�n (8/9) /9)",0.00001,{ 592 }}, 
-- {"B�n v� �ch chi h�ng ma gi�i �ao m�nh v�n (9/9) /9)",0.00001,{ 593 }}, 
-- {"M�t to th�n ch�y m�nh v�n (1/9) /9)",0.000004,{ 594 }}, 
-- {"M�t to th�n ch�y m�nh v�n (2/9) /9)",0.000004,{ 595 }}, 
-- {"M�t to th�n ch�y m�nh v�n (3/9) /9)",0.000004,{ 596 }}, 
-- {"M�t to th�n ch�y m�nh v�n (4/9) /9)",0.000004,{ 597 }}, 
-- {"M�t to th�n ch�y m�nh v�n (5/9) /9)",0.000004,{ 598 }}, 
-- {"M�t to th�n ch�y m�nh v�n (6/9) /9)",0.000004,{ 599 }}, 
-- {"M�t to th�n ch�y m�nh v�n (7/9) /9)",0.000004,{ 600 }}, 
-- {"M�t to th�n ch�y ch�y m�nh v�n (8/9) /9)",0.000004,{ 601 }}, 
-- {"M�t to th�n ch�y m�nh v�n (9/9) /9)",0.000004,{ 602 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (1/9) /9)",0.000004,{ 603 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (2/9) /9)",0.000004,{ 604 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (3/9) /9)",0.000004,{ 605 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (4/9) /9)",0.000004,{ 606 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (5/9) /9)",0.000004,{ 607 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (6/9) /9)",0.000004,{ 608 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (7/9) /9)",0.000004,{ 609 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (8/9) /9)",0.000004,{ 610 }}, 
-- {"S�m ��nh chui long s�ng m�nh v�n (9/9) /9)",0.000004,{ 611 }}, 
-- {" l��ng ng�n b�o �ao m�nh v�n (1/9) /9)",0.00001,{ 612 }}, 
-- {" l��ng ng�n b�o �ao m�nh v�n (2/9) /9)",0.00001,{ 613 }}, 
-- {" l��ng ng�n b�o �ao m�nh v�n (3/9) /9)",0.00001,{ 614 }}, 
-- {" l��ng ng�n b�o �ao m�nh v�n (4/9) /9)",0.00001,{ 615 }}, 
-- {" l��ng ng�n b�o �ao m�nh v�n (5/9) /9)",0.00001,{ 616 }}, 
-- {" l��ng ng�n b�o �ao m�nh v�n (6/9) /9)",0.00001,{ 617 }}, 
-- {" l��ng ng�n b�o �ao m�nh v�n (7/9) /9)",0.00001,{ 618 }}, 
-- {" l��ng ng�n b�o �ao m�nh v�n (8/9) /9)",0.00001,{ 619 }}, 
-- {" l��ng ng�n b�o �ao m�nh v�n (9/9) /9)",0.00001,{ 620 }}, 
-- {"V� gian chi � thi�n ki�m m�nh v�n (1/9) /9)",0.00001,{ 621 }}, 
-- {"V� gian chi � thi�n ki�m m�nh v�n (2/9) /9)",0.00001,{ 622 }}, 
-- {"V� gian chi � thi�n ki�m m�nh v�n (3/9) /9)",0.00001,{ 623 }}, 
-- {"V� gian chi � thi�n ki�m m�nh v�n (4/9) /9)",0.00001,{ 624 }}, 
-- {"V� gian chi � thi�n ki�m m�nh v�n (5/9) /9)",0.00001,{ 625 }}, 
-- {"V� gian chi � thi�n ki�m m�nh v�n (6/9) /9)",0.00001,{ 626 }}, 
-- {"V� gian chi � thi�n ki�m m�nh v�n (7/9) /9)",0.00001,{ 627 }}, 
-- {"V� gian chi � thi�n ki�m m�nh v�n (8/9) /9)",0.00001,{ 628 }}, 
-- {"V� gian chi � thi�n ki�m m�nh v�n (9/9) /9)",0.00001,{ 629 }}, 
-- {"T� ho�ng chi ph��ng nghi �ao m�nh v�n (1/9) /9)",0.00001,{ 630 }}, 
-- {"T� ho�ng chi ph��ng nghi �ao m�nh v�n (2/9) /9)",0.00001,{ 631 }}, 
-- {"T� ho�ng chi ph��ng nghi �ao m�nh v�n (3/9) /9)",0.00001,{ 632 }}, 
-- {"T� ho�ng chi ph��ng nghi �ao m�nh v�n (4/9) /9)",0.00001,{ 633 }}, 
-- {"T� ho�ng chi ph��ng nghi �ao m�nh v�n (5/9) /9)",0.00001,{ 634 }}, 
-- {"T� ho�ng chi ph��ng nghi �ao m�nh v�n (6/9) /9)",0.00001,{ 635 }}, 
-- {"T� ho�ng chi ph��ng nghi �ao m�nh v�n (7/9) /9)",0.00001,{ 636 }}, 
-- {"T� ho�ng chi ph��ng nghi �ao m�nh v�n (8/9) /9)",0.00001,{ 637 }}, 
-- {"T� ho�ng chi ph��ng nghi �ao m�nh v�n (9/9) /9)",0.00001,{ 638 }}, 
-- {"B�ch h�i chi uy�n ��ng li�n ho�n �ao m�nh v�n (1/9) /9)",0.00001,{ 639 }}, 
-- {"B�ch h�i chi uy�n ��ng li�n ho�n �ao m�nh v�n (2/9) /9)",0.00001,{ 640 }}, 
-- {"B�ch h�i chi uy�n ��ng li�n ho�n �ao m�nh v�n (3/9) /9)",0.00001,{ 641 }}, 
-- {"B�ch h�i chi uy�n ��ng li�n ho�n �ao m�nh v�n (4/9) /9)",0.00001,{ 642 }}, 
-- {"B�ch h�i chi uy�n ��ng li�n ho�n �ao m�nh v�n (5/9) /9)",0.00001,{ 643 }}, 
-- {"B�ch h�i chi uy�n ��ng li�n ho�n �ao m�nh v�n (6/9) /9)",0.00001,{ 644 }}, 
-- {"B�ch h�i chi uy�n ��ng li�n ho�n �ao m�nh v�n (7/9) /9)",0.00001,{ 645 }}, 
-- {"B�ch h�i chi uy�n ��ng li�n ho�n �ao m�nh v�n (8/9) /9)",0.00001,{ 646 }}, 
-- {"B�ch h�i chi uy�n ��ng li�n ho�n �ao m�nh v�n (9/9) /9)",0.00001,{ 647 }}, 
-- {"Minh huy�n chi t� s�t ��c nh�n m�nh v�n (1/9) /9)",0.00001,{ 648 }}, 
-- {"Minh huy�n chi t� s�t ��c nh�n m�nh v�n (2/9) /9)",0.00001,{ 649 }}, 
-- {"Minh huy�n chi t� s�t ��c nh�n m�nh v�n (3/9) /9)",0.00001,{ 650 }}, 
-- {"Minh huy�n chi t� s�t ��c nh�n m�nh v�n (4/9) /9)",0.00001,{ 651 }}, 
-- {"Minh huy�n chi t� s�t ��c nh�n m�nh v�n (5/9) /9)",0.00001,{ 652 }}, 
-- {"Minh huy�n chi t� s�t ��c nh�n m�nh v�n (6/9) /9)",0.00001,{ 653 }}, 
-- {"Minh huy�n chi t� s�t ��c nh�n m�nh v�n (7/9) /9)",0.00001,{ 654 }}, 
-- {"Minh huy�n chi t� s�t ��c nh�n m�nh v�n (8/9) /9)",0.00001,{ 655 }}, 
-- {"Minh huy�n chi t� s�t ��c nh�n m�nh v�n (9/9) /9)",0.00001,{ 656 }}, 
-- {"Hoa v� ��y tr�i m�nh v�n (1/9) /9)",0.00001,{ 657 }}, 
-- {"Hoa v� ��y tr�i m�nh v�n (2/9) /9)",0.00001,{ 658 }}, 
-- {"Hoa v� ��y tr�i m�nh v�n (3/9) /9)",0.00001,{ 659 }}, 
-- {"Hoa v� ��y tr�i m�nh v�n (4/9) /9)",0.00001,{ 660 }}, 
-- {"Hoa v� ��y tr�i m�nh v�n (5/9) /9)",0.00001,{ 661 }}, 
-- {"Hoa v� ��y tr�i m�nh v�n (6/9) /9)",0.00001,{ 662 }}, 
-- {"Hoa v� ��y tr�i m�nh v�n (7/9) /9)",0.00001,{ 663 }}, 
-- {"Hoa v� ��y tr�i m�nh v�n (8/9) /9)",0.00001,{ 664 }}, 
-- {"Hoa v� ��y tr�i m�nh v�n (9/9) /9)",0.00001,{ 665 }}, 
-- {"Bay tinh �o�t h�n m�nh v�n (1/9) /9)",0.00001,{ 666 }}, 
-- {"Bay tinh �o�t h�n m�nh v�n (2/9) /9)",0.00001,{ 667 }}, 
-- {"Bay tinh �o�t h�n m�nh v�n (3/9) /9)",0.00001,{ 668 }}, 
-- {"Bay tinh �o�t h�n m�nh v�n (4/9) /9)",0.00001,{ 669 }}, 
-- {"Bay tinh �o�t h�n m�nh v�n (5/9) /9)",0.00001,{ 670 }}, 
-- {"Bay tinh �o�t h�n m�nh v�n (6/9) /9)",0.00001,{ 671 }}, 
-- {"Bay tinh �o�t h�n m�nh v�n (7/9) /9)",0.00001,{ 672 }}, 
-- {"Bay tinh �o�t h�n m�nh v�n (8/9) /9)",0.00001,{ 673 }}, 
-- {"Bay tinh �o�t h�n m�nh v�n (9/9) /9)",0.00001,{ 674 }}, 
-- {"Xanh bi�c ng�c tr��ng m�nh v�n (1/9) /9)",0.00001,{ 675 }}, 
-- {"Xanh bi�c ng�c tr��ng m�nh v�n (2/9) /9)",0.00001,{ 676 }}, 
-- {"Xanh bi�c ng�c tr��ng m�nh v�n (3/9) /9)",0.00001,{ 677 }}, 
-- {"Xanh bi�c ng�c tr��ng m�nh v�n (4/9) /9)",0.00001,{ 678 }}, 
-- {"Xanh bi�c ng�c tr��ng m�nh v�n (5/9) /9)",0.00001,{ 679 }}, 
-- {"Xanh bi�c ng�c tr��ng m�nh v�n (6/9) /9)",0.00001,{ 680 }}, 
-- {"Xanh bi�c ng�c tr��ng m�nh v�n (7/9) /9)",0.00001,{ 681 }}, 
-- {"Xanh bi�c ng�c tr��ng m�nh v�n (8/9) /9)",0.00001,{ 682 }}, 
-- {"Xanh bi�c ng�c tr��ng m�nh v�n (9/9) /9)",0.00001,{ 683 }}, 
-- {"U minh s�ng m�nh v�n (1/9) /9)",0.00001,{ 684 }}, 
-- {"U minh s�ng m�nh v�n (2/9) /9)",0.00001,{ 685 }}, 
-- {"U minh s�ng m�nh v�n (3/9) /9)",0.00001,{ 686 }}, 
-- {"U minh s�ng m�nh v�n (4/9) /9)",0.00001,{ 687 }}, 
-- {"U minh s�ng m�nh v�n (5/9) /9)",0.00001,{ 688 }}, 
-- {"U minh s�ng m�nh v�n (6/9) /9)",0.00001,{ 689 }}, 
-- {"U minh s�ng m�nh v�n (7/9) /9)",0.00001,{ 690 }}, 
-- {"U minh s�ng m�nh v�n (8/9) /9)",0.00001,{ 691 }}, 
-- {"U minh s�ng m�nh v�n (9/9) /9)",0.00001,{ 692 }}, 
-- {"Th�t v� ki�m m�nh v�n (1/9) /9)",0.000004,{ 693 }}, 
-- {"Th�t v� ki�m m�nh v�n (2/9) /9)",0.000004,{ 694 }}, 
-- {"Th�t v� ki�m m�nh v�n (3/9) /9)",0.000004,{ 695 }}, 
-- {"Th�t v� ki�m m�nh v�n (4/9) /9)",0.000004,{ 696 }}, 
-- {"Th�t v� ki�m m�nh v�n (5/9) /9)",0.000004,{ 697 }}, 
-- {"Th�t v� ki�m m�nh v�n (6/9) /9)",0.000004,{ 698 }}, 
-- {"Th�t v� ki�m m�nh v�n (7/9) /9)",0.000004,{ 699 }}, 
-- {"Th�t v� ki�m m�nh v�n (8/9) /9)",0.000004,{ 700 }}, 
-- {"Th�t v� ki�m m�nh v�n (9/9) /9)",0.000004,{ 701 }}, 
-- {"Ng�n n�m h�n thi�t m�nh v�n (1/9) /9)",0.00001,{ 702 }}, 
-- {"Ng�n n�m h�n thi�t m�nh v�n (2/9) /9)",0.00001,{ 703 }}, 
-- {"Ng�n n�m h�n thi�t m�nh v�n (3/9) /9)",0.00001,{ 704 }}, 
-- {"Ng�n n�m h�n thi�t m�nh v�n (4/9) /9)",0.00001,{ 705 }}, 
-- {"Ng�n n�m h�n thi�t m�nh v�n (5/9) /9)",0.00001,{ 706 }}, 
-- {"Ng�n n�m h�n thi�t m�nh v�n (6/9) /9)",0.00001,{ 707 }}, 
-- {"Ng�n n�m h�n thi�t m�nh v�n (7/9) /9)",0.00001,{ 708 }}, 
-- {"Ng�n n�m h�n thi�t m�nh v�n (8/9) /9)",0.00001,{ 709 }}, 
-- {"Ng�n n�m h�n thi�t m�nh v�n (9/9) /9)",0.00001,{ 710 }}, 
}
