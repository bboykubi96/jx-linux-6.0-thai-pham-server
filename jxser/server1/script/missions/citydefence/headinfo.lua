-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: headinfo.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cu�i tu�n ho�t ��ng # v� qu�c chi�n tranh chi gi� l�a li�n th�nh 
-- script viet hoa By http://tranhba.com  ch�c n�ng 1# ho�t ��ng ��u v�n ki�n t� ��nh ngh�a th��ng l��ng 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
IncludeLib("FILESYS"); 


-- script viet hoa By http://tranhba.com print(date("%w")) -- script viet hoa By http://tranhba.com  ��t ���c tr��c m�t ph�c v� kh� tu�n l� 1-- script viet hoa By http://tranhba.com Monday#2-- script viet hoa By http://tranhba.com Tuesday#3-- script viet hoa By http://tranhba.com Wednesday#4-- script viet hoa By http://tranhba.com Thursday#5-- script viet hoa By http://tranhba.com Frieday#6-- script viet hoa By http://tranhba.com Saturday#0-- script viet hoa By http://tranhba.com Sunday 
GV_TSK_CD_OPEN = 35 
FIRE_OPENDAY_SATURDAY = 6; -- script viet hoa By http://tranhba.com  
FIRE_OPENDAY_SUNDAY = 0; -- script viet hoa By http://tranhba.com  
CD_LEVEL_LIMIT = 80 -- script viet hoa By http://tranhba.com  th�p nh�t tham gia th� th�nh c�p b�c 
TASKID_FIRE_KEY = 1185;-- script viet hoa By http://tranhba.com random(1000000); -- script viet hoa By http://tranhba.com  m�i tr�ng l�n m�u ch�t ch� , nh� v�y ph�n �o�n c� hay kh�ng l�m g�c ��i phi�n l�n tham gia nh� ch�i 
TASKID_FIRE_DAY = 1186;-- script viet hoa By http://tranhba.com tonumber(date("%m%d")); -- script viet hoa By http://tranhba.com  nh� ch�i m�t ng�y ch� c� th� tham gia m�t cu�c v� qu�c chi�n tranh , ghi ch�p nh�t k� 
TASKID_FIRE_ADDR = 1187;-- script viet hoa By http://tranhba.com  truy�n v�o ��ch ��ch th�nh ph� ID 
-- script viet hoa By http://tranhba.com 1189 
FIRE_1RSTNPC_COUNT = 15000; 
FIRE_2CNDNPC_COUNT = 2000; 
FIRE_3RDNPC_COUNT = 1000; 
FIRE_4THNPC_COUNT = 100; 
FIRE_5THNPC_COUNT = 10; 
tbNPC_COUNT = { 15000, 2000, 1000, 100, 10 } 

TNPC_DOCTOR1 = 55; -- script viet hoa By http://tranhba.com  t�ng qu�n y ��ch Npc m� b�n ID s� 
TNPC_DOCTOR2 = 49; -- script viet hoa By http://tranhba.com  kim qu�n y ��ch Npc m� b�n ID s� 
TNPC_DEPOSIT = 625; -- script viet hoa By http://tranhba.com  tr� v�t r��ng NPC m� b�n ID 
TNPC_CHEFU = 393; 
TNPC_SYMBOL1 = 629; 
TNPC_SYMBOL2 = 630; 

-- script viet hoa By http://tranhba.com  binh nh� ti�u ��i tr��ng ph� t��ng ��i t��ng Nguy�n so�i 
tbTNPC_SOLDIER = { {1067, 1068, 1069, 1070, 1080}, -- script viet hoa By http://tranhba.com  t�ng 
{1072, 1073, 1074, 1075, 1090}} -- script viet hoa By http://tranhba.com  kim 
tbSOLDIER_NAME = { " binh nh� ","��i tr��ng ","Ti�n phong ","Ch� t��ng ","Ch� so�i " } 
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
[1] = { 1520,3228,"Ph��ng t��ng ph� ", 2 }, -- script viet hoa By http://tranhba.com  ph��ng t��ng 
[11] = { 3018,5089,"Th�nh �� ph� ", 1 }, -- script viet hoa By http://tranhba.com  th�nh �� 
[37] = { 1632,3185,"Bi�n kinh ph� ", 2 }, -- script viet hoa By http://tranhba.com  bi�n kinh 
[78] = { 1439,3214,"T��ng d��ng ph� ", 1 }, -- script viet hoa By http://tranhba.com  t��ng d��ng 
[80] = { 1593,3197,"D��ng Ch�u ph� ", 1 }, -- script viet hoa By http://tranhba.com  D��ng Ch�u 
[162] = { 1470,3269,"��i L� ", 1 }, -- script viet hoa By http://tranhba.com  ��i L� 
[176] = { 1392,3313,"Tr��c khi An ph� ", 1 }, -- script viet hoa By http://tranhba.com  tr��c khi an 
} 

tbDEFENCE_ANNOUNCE = { 
" nh� ch�i c� th� ��n th�nh �� ph� # t��ng d��ng ph� # tr��c khi An ph� # ��i L� # D��ng Ch�u ph� c�ng c�a th�nh v� binh ��i tho�i tham gia t�ng ph��ng th� th�nh .", 
" nh� ch�i c� th� ��n ph��ng t��ng ph� # bi�n kinh ph� c�ng c�a th�nh v� binh ��i tho�i tham gia kim ph��ng th� th�nh ." 
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

FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr�nh tr� ch�i th�i gian t��ng ���ng v�i 1 gi�y 
MISSIONID = 23; -- script viet hoa By http://tranhba.com mission bi�n s� 
MAX_MEMBERCOUNT = 600; -- script viet hoa By http://tranhba.com  c�ng th�nh b�n �� l�n nh�t nh�n s� h�n ch� 

SMALLTIMERID = 45; -- script viet hoa By http://tranhba.com  t�nh gi� kh� bi�n s� 
TOTALTIMERID = 46; -- script viet hoa By http://tranhba.com  t�nh gi� kh� bi�n s� 

SMALL_TIME = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com  m�i 20 gi�y t�nh gi� m�t l�n 
TOTAL_TIME = 150 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com 150 ph�t t�nh gi� m�t l�n , ho�t ��ng k�t th�c 
RUNGAME_TIME = 30 * 60 * FRAME2TIME / SMALL_TIME; -- script viet hoa By http://tranhba.com  ghi danh 30 ph�t sau , kh�i ��ng 
LASTREPORT_TIME = 145 * 60 * FRAME2TIME / SMALL_TIME; -- script viet hoa By http://tranhba.com  th� th�nh cu�i c�ng 5 ph�t kh�ng c� ph�t , �� k� m�t l�n th�i gian 

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

MS_1RSTNPC_CCNT = 11; -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t 10 ph�t b�n trong , gi�t ch�t b�ch tr�ch s� l��ng 
MS_2CNDNPC_CCNT = 12; -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t 10 ph�t b�n trong , gi�t ch�t lan tr�ch s� l��ng 
MS_3RDNPC_CCNT = 13; -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t 10 ph�t b�n trong , gi�t ch�t s�t th� c�p tr�ch s� l��ng 
MS_4THNPC_CCNT = 14; -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t 10 ph�t b�n trong , gi�t ch�t ti�u BOSS s� l��ng 
MS_5THNPC_CCNT = 15; -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t 10 ph�t b�n trong , gi�t ch�t ��i BOSS s� l��ng 

MS_1RSTNPC_TCNT = 16; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng gi�t ch�t b�ch tr�ch s� l��ng 
MS_2CNDNPC_TCNT = 17; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng gi�t ch�t lan tr�ch s� l��ng 
MS_3RDNPC_TCNT = 18; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng gi�t ch�t s�t th� c�p tr�ch s� l��ng 
MS_4THNPC_TCNT = 19; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng gi�t ch�t ti�u BOSS s� l��ng 
MS_5THNPC_TCNT = 20; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng gi�t ch�t ��i BOSS s� l��ng 

MS_HOMEOUT_X1 = 21; -- script viet hoa By http://tranhba.com  d� ngo�i h��ng ��i doanh ��ch truy�n t�ng t�a �� X , th� nh�t lo�i Trap 
MS_HOMEOUT_Y1 = 22; 
MS_HOMEOUT_X2 = 23; -- script viet hoa By http://tranhba.com  d� ngo�i h��ng ��i doanh ��ch truy�n t�ng t�a �� X , th� hai lo�i Trap 
MS_HOMEOUT_Y2 = 24; 
MS_HOMEOUT_X3 = 25; -- script viet hoa By http://tranhba.com  d� ngo�i h��ng ��i doanh ��ch truy�n t�ng t�a �� X , th� ba lo�i Trap 
MS_HOMEOUT_Y3 = 26; 

MS_CENTER_X1 = 27; -- script viet hoa By http://tranhba.com  ��i doanh h��ng d� ngo�i ��ch truy�n t�ng t�a �� X , th� nh�t lo�i Trap 
MS_CENTER_Y1 = 28; 
MS_CENTER_X2 = 29; -- script viet hoa By http://tranhba.com  ��i doanh h��ng d� ngo�i ��ch truy�n t�ng t�a �� X , th� nh�t lo�i Trap 
MS_CENTER_Y2 = 30; 
MS_CENTER_X3 = 31; -- script viet hoa By http://tranhba.com  ��i doanh h��ng d� ngo�i ��ch truy�n t�ng t�a �� X , th� nh�t lo�i Trap 
MS_CENTER_Y3 = 32; 

MS_S_CMNPCFILE = 1; -- script viet hoa By http://tranhba.com  ghi ch�p b�nh th��ng tr�ch �i�m ��ch v�n ki�n 
MS_S_JRNPCFILE = 2; -- script viet hoa By http://tranhba.com  ghi ch�p ti�u BOSS t�a �� ��ch v�n ki�n 
MS_S_SRNPCFILE = 3; -- script viet hoa By http://tranhba.com  ghi ch�p ��i BOSS t�a �� ��ch v�n ki�n 
MS_S_CD_NAME = 4; -- script viet hoa By http://tranhba.com  tr��c m�t th� th�nh chi�n d�ch ��ch t�n 
