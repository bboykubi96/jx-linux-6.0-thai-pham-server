LEVELTOP10 = "\\data\\bestlevel.dat" 
MISSIONID_OUTER = 18 
MISSIONID_INNER = 19 

FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr�nh tr� ch�i th�i gian t��ng ���ng v�i 1 gi�y 

TITLETIME = 30 * 24 * 60 * 60 * 18 

TRYOUT_TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi�y c�ng b� m�t c�i chi�n hu�ng 
TRYOUT_TIMER_2 = 3 * 60 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  v� 4 gi� 
TIMERID_SMALL_OUTER = 33 
TIMERID_TOTAL_OUTER = 34 


MATCH_TIMER_1 = 10 * FRAME2TIME; -- script viet hoa By http://tranhba.com 5 gi�y c�ng b� m�t c�i chi�n hu�ng 
MATCH_TIMER_2 = 15 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  v� 10 ph�t 
TIMERID_SMALL_INNER = 35 
TIMERID_TOTAL_INNER = 36 


CP_ONEDAY_MAXROUND = floor(TRYOUT_TIMER_2  / (MATCH_TIMER_2 + 5 * 60 * FRAME2TIME))

FactionData = { 
{ "\\data\\shaolin_fresh.dat", "ShaoLin_Top5","Thi�u L�m " }, 
{ "\\data\\tianwang_fresh.dat", "TianWang_Top5","Thi�n v��ng " }, 
{ "\\data\\tangmen_fresh.dat", "TangMen_Top5","���ng m�n " }, 
{ "\\data\\wudu_fresh.dat", "Wudu_Top5","N�m ��c " }, 
{ "\\data\\emei_fresh.dat", "EMei_Top5","Nga Mi " }, 
{ "\\data\\cuiyan_fresh.dat", "CuiYan_Top5","Th�y kh�i " }, 
{ "\\data\\gaibang_fresh.dat", "GaiBang_Top5","C�i Bang " }, 
{ "\\data\\tianren_fresh.dat", "TianRen_Top5","Ng�y nh�n " }, 
{ "\\data\\wudang_fresh.dat", "WuDang_Top5","V� ���ng " }, 
{ "\\data\\kunlun_fresh.dat", "KunLun_Top5","C�n L�n " } 
} 

FactionTitle = { 
" Thi�u L�m v� l�m t�n t� ", 
" Thi�n v��ng v� l�m t�n t� ", 
" ���ng m�n v� l�m t�n t� ", 
" n�m ��c v� l�m t�n t� ", 
" Nga Mi v� l�m t�n t� ", 
" th�y kh�i v� l�m t�n t� ", 
" C�i Bang v� l�m t�n t� ", 
" ng�y nh�n v� l�m t�n t� ", 
" V� ���ng v� l�m t�n t� ", 
" C�n L�n v� l�m t�n t� " 
} 

CP_MAPTAB = { 
{ 396, 397,"Thi�u L�m " }, 
{ 398, 399,"Thi�n v��ng " }, 
{ 400, 401,"���ng m�n " }, 
{ 402, 403,"N�m ��c " }, 
{ 404, 405,"Nga Mi " }, 
{ 406, 407,"Th�y kh�i " }, 
{ 408, 409,"C�i Bang " }, 
{ 410, 411,"Ng�y nh�n " }, 
{ 412, 413,"V� ���ng " }, 
{ 414, 415,"C�n L�n " } 
} 

CP_TASKID_REGIST = 1095 -- script viet hoa By http://tranhba.com 1# b�o qu� t�n #9# h�y b� d� ch�n cu�c so t�i t� c�ch 
CP_TASKID_POINT = 1096 -- script viet hoa By http://tranhba.com  ghi ch�p d� ch�n cu�c so t�i ph�i ph�n 
CP_TASKID_TITLE = 1097 -- script viet hoa By http://tranhba.com 9# ghi ch�p �� l�y ���c quy�t cu�c so t�i v�ng t� c�ch 
CP_TASKID_BID = 1098 -- script viet hoa By http://tranhba.com  
CP_TASKID_ENEMY = 1099 -- script viet hoa By http://tranhba.com  d� cu�c so t�i l�c ��i th� ��ch tr�n doanh s� 
CP_TASKID_ROUND = 1100 -- script viet hoa By http://tranhba.com  d� thi ��ch s� l�n 
CP_TASKID_WIN = 1101 -- script viet hoa By http://tranhba.com  th�ng ��ch s� l�n 
CP_TASKID_LOSE = 1102 -- script viet hoa By http://tranhba.com  thua s� l�n # r�i tuy�n x� thua , nh�ng kh�ng c�ch n�o ghi ch�p 
CP_TASKID_TIE = 1103 -- script viet hoa By http://tranhba.com  b�nh c�c ��ch s� l�n 
CP_TASKID_FLAG = 1104 -- script viet hoa By http://tranhba.com  b�nh th��ng th�i lui ra cu�c so t�i tr�ng ��ch d�u hi�u , t�i h� v�a v�o tr�ng l�c c� m�i 
CP_TASKID_BACKCONT = 1105 -- script viet hoa By http://tranhba.com  ��i v�i tham d� ��u ng�n ��ch nh� ch�i c�n c� ��u ng�n t�ng s� ti�n , ph�n �o�n c� th� l�y m�y l�n 
CP_TASKID_LOGOUT = 1094 -- script viet hoa By http://tranhba.com  v� 0 l�c t� r� b�nh th��ng th�i lui ra , v� 1 l�c b�y t� kh�ng ph�i l� b�nh th��ng th�i lui ra # nh� ���ng c� # kh�ng b�o t�n s� li�u # ph�c v� kh� nguy�n nh�n # 
CP_CASH = 100000 
CP_MAXROUND = 40 
CP_PLNUM_LIMT = 4 
CP_MAPPOS_IN = {1508,3026} 
CP_MAPPOS_OUT = {1472,3243} 
CP_MAPPOS_PRE = {1596,2977} 

CP_AWARD_ITEM = { 
{"T� th�y tinh ", {4, 239}, 2}, 
{" lam th�y tinh ", {4, 238}, 2}, 
{"N��c bi�c tinh ", {4, 240}, 2}, 
{"Tinh h�ng b�o th�ch ", {4, 353}, 2}, 
{"Huy�n tinh qu�ng th�ch 4 c�p ", {6, 1, 147, 4, 0, 0}, 200}, 
{"Huy�n tinh qu�ng th�ch 5 c�p ", {6, 1, 147, 5, 0, 0}, 50}, 
{"Huy�n tinh qu�ng th�ch 6 c�p ", {6, 1, 147, 6, 0, 0}, 1}, 
{"��i ph�c duy�n l� ", {6, 1, 124, 1, 0, 0}, 50}, 
{"Trung ph�c duy�n l� ", {6, 1, 123, 1, 0, 0}, 100}, 
{"Ti�u Ph�c duy�n l� ", {6, 1, 122, 1, 0, 0}, 200}, 
{"Ti�n th�o l� ", {6, 1, 71, 1, 0, 0}, 1500}, 
{"Thi�n S�n b�o l� ", {6, 1, 72, 1, 0, 0}, 1991}, 
{"R� r�ng c�u ho�n ", {6, 1, 130, 1, 0, 0}, 100}, 
{"Hoa h�ng ", {6, 0, 20, 1, 0, 0}, 2000}, 
{"T�m t�m t��ng �nh ph� ", {6, 1, 18, 1, 0, 0}, 2000}, 
{"Phong l�ng �� l�nh b�i ", {4, 489}, 100}, 
{"Ph�o b�ng ", {6, 0, 11, 1, 0, 0}, 1700}, 
} 

CP_FORBID_ITEM = { 
{ " c�ng t�c ho�n ", {6, 1, 218, 1, 0, 0}, 511 }, 
{ " ch�y t�c ho�n ", {6, 1, 219, 1, 0, 0}, 512 }, 
{ " ph� ph�ng ho�n ", {6, 1, 220, 1, 0, 0}, 513 }, 
{ " ��c ph�ng ho�n ", {6, 1, 221, 1, 0, 0}, 514 }, 
{ " b�ng ph�ng ho�n ", {6, 1, 222, 1, 0, 0}, 515 }, 
{ " l�a ph�ng ho�n ", {6, 1, 223, 1, 0, 0}, 516 }, 
{ " l�i ph�ng ho�n ", {6, 1, 224, 1, 0, 0}, 517 }, 
{ " gi�m s�ng ho�n ", {6, 1, 225, 1, 0, 0}, 518 }, 
{ " gi�m b�t t�nh ho�n ", {6, 1, 226, 1, 0, 0}, 519 }, 
{ " gi�m ��c ho�n ", {6, 1, 227, 1, 0, 0}, 520 }, 
{ " gi�m b�ng ho�n ", {6, 1, 228, 1, 0, 0}, 521 }, 
{ " ph� c�ng ho�n ", {6, 1, 229, 1, 0, 0}, 522 }, 
{ " ��c c�ng ho�n ", {6, 1, 230, 1, 0, 0}, 523 }, 
{ " b�ng c�ng ho�n ", {6, 1, 231, 1, 0, 0}, 524 }, 
{ " l�a c�ng ho�n ", {6, 1, 232, 1, 0, 0}, 525 }, 
{ " l�i c�ng ho�n ", {6, 1, 233, 1, 0, 0}, 526 }, 
{ " tr��ng m�nh ho�n ", {6, 1, 234, 1, 0, 0}, 527 }, 
{ " tr��ng b�n trong ho�n ", {6, 1, 235, 1, 0, 0}, 528 }, 
{ " an h�n �an ", {6, 1, 115, 1, 0, 0}, 450 }, 
{ " x� lam �an ", {6, 1, 116, 1, 0, 0}, 451 }, 
{ " b�n trong ph� ho�n ", {6, 1, 117, 1, 0, 0}, 453 }, 
{ " b�n trong ��c ho�n ", {6, 1, 118, 1, 0, 0}, 454 }, 
{ " b�n trong b�ng ho�n ", {6, 1, 119, 1, 0, 0}, 455 }, 
{ " n�i h�a ho�n ", {6, 1, 120, 1, 0, 0}, 456 }, 
{ " b�n trong l�i ho�n ", {6, 1, 121, 1, 0, 0}, 457 }, 
{ " tr��ng m�nh ho�n ", {6, 0, 1, 1, 0, 0}, 256 }, 
{ " th�m ch�y ho�n ", {6, 0, 2, 1, 0, 0}, 257 }, 
{ " ��i l�c ho�n ", {6, 0, 3, 1, 0, 0}, 258 }, 
{ " cao nhanh ch�ng ho�n ", {6, 0, 4, 1, 0, 0}, 259 }, 
{ " trung h�c �� nh� c�p ho�n ", {6, 0, 5, 1, 0, 0}, 260 }, 
{ " nhanh ch�ng ho�n ", {6, 0, 6, 1, 0, 0}, 261 }, 
{ " b�ng ph�ng ho�n ", {6, 0, 7, 1, 0, 0}, 262 }, 
{ " l�i ph�ng ho�n ", {6, 0, 8, 1, 0, 0}, 263 }, 
{ " l�a ph�ng ho�n ", {6, 0, 9, 1, 0, 0}, 264 }, 
{ " ��c ph�ng ho�n ", {6, 0, 10, 1, 0, 0}, 265 }, 
{ " b�n l�t t�ng t� ", {6, 0, 60, 1, 0, 0}, 401 }, 
{ " th�t heo t�ng t� ", {6, 0, 61, 1, 0, 0}, 402 }, 
{ " th�t b� t�ng t� ", {6, 0, 62, 1, 0, 0}, 403 }, 
{ " tr�m qu� l� ", {6, 1, 73, 1, 0, 0}, 442 }, 
{ " c�t t��ng bao ti�n l� x� ", {6, 1, 19, 1, 0, 0}, 442 }, 
{"Ho�ng kim b�o r��ng ", {6, 1, 69, 1, 0, 0}, 442} 
} 

CP_TRAPIN = "\\settings\\maps\\championship\\linantoplace_trap.txt"
CP_TRAPOUT = "" 
CP_MATCH_POS = "\\settings\\maps\\championship\\champion_gmpos.txt"
CP_TRAPIN_FILE = "\\script\\missions\\freshman_match\\trap\\trap_linantoplace.lua"
CP_TRAPOUT_FILE = "\\script\\missions\\freshman_match\\trap\\trap_placetolinan.lua"


CP_UPTO_TRYOUT = 5060120 
CP_END_TRYOUT = 5061023 
