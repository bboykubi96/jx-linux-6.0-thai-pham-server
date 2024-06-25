IncludeLib("FILESYS") 
IncludeLib("RELAYLADDER") 
IncludeLib("TITLE") 
IncludeLib("ITEM") 

BID_DATA = "\\data\\tongbid.dat" 
LEVELTOP10 = "\\data\\bestlevel.dat" 
LEADER_MEMBER = "\\data\\leadmember.dat" 
BID_LEADER = "\\data\\bidleader.dat" 

TITLETIME = 30 * 24 * 60 * 60 * 18 
FRAME2TIME = 18 
TRYOUT_TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi�y c�ng b� m�t c�i chi�n hu�ng 
TRYOUT_TIMER_2 = 4 * 60 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  v� 4 gi� 

MATCH_TIMER_1 = 10 * FRAME2TIME; -- script viet hoa By http://tranhba.com 5 gi�y c�ng b� m�t c�i chi�n hu�ng 
MATCH_TIMER_2 = 10 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  v� 10 ph�t 

CP_ONEDAY_MAXROUND = floor(TRYOUT_TIMER_2  / (MATCH_TIMER_2 + 5 * 60 * FRAME2TIME))

Faction = { 
{"\\data\\shaolin_top5.dat", "ShaoLin_Top5","Thi�u L�m "}, 
{"\\data\\tianwang_top5.dat", "TianWang_Top5","Thi�n v��ng "}, 
{"\\data\\tangmen_top5.dat", "TangMen_Top5","���ng m�n "}, 
{"\\data\\wudu_top5.dat", "Wudu_Top5","N�m ��c "}, 
{"\\data\\emei_top5.dat", "EMei_Top5","Nga Mi "}, 
{"\\data\\cuiyan_top5.dat", "CuiYan_Top5","Th�y kh�i "}, 
{"\\data\\gaibang_top5.dat", "GaiBang_Top5","C�i Bang "}, 
{"\\data\\tianren_top5.dat", "TianRen_Top5","Ng�y nh�n "}, 
{"\\data\\wudang_top5.dat", "WuDang_Top5","V� ���ng "}, 
{"\\data\\kunlun_top5.dat", "KunLun_Top5","C�n L�n "} 
} 
FactionTitle = { 
" ��i h�i v� l�m Thi�u L�m cao th� ", 
" ��i h�i v� l�m Thi�n v��ng cao th� ", 
" ��i h�i v� l�m ���ng m�n cao th� ", 
" ��i h�i v� l�m n�m ��c cao th� ", 
" ��i h�i v� l�m Nga Mi cao th� ", 
" ��i h�i v� l�m th�y kh�i cao th� ", 
" ��i h�i v� l�m C�i Bang cao th� ", 
" ��i h�i v� l�m ng�y nh�n cao th� ", 
" ��i h�i v� l�m V� ���ng cao th� ", 
" ��i h�i v� l�m C�n L�n cao th� ", 
} 
CP_TASKID_REGIST = 1083 -- script viet hoa By http://tranhba.com 1# b�o qu� t�n #9# h�y b� d� ch�n cu�c so t�i t� c�ch 
CP_TASKID_POINT = 1084 -- script viet hoa By http://tranhba.com  ghi ch�p d� ch�n cu�c so t�i ph�i ph�n 
CP_TASKID_TITLE = 1085 -- script viet hoa By http://tranhba.com 9# ghi ch�p �� l�y ���c quy�t cu�c so t�i v�ng t� c�ch 
CP_TASKID_BID = 1086 -- script viet hoa By http://tranhba.com  
CP_TASKID_ENEMY = 1087 -- script viet hoa By http://tranhba.com  d� cu�c so t�i l�c ��i th� ��ch tr�n doanh s� 
CP_TASKID_ROUND = 1088 -- script viet hoa By http://tranhba.com  d� thi ��ch s� l�n 
CP_TASKID_WIN = 1089 -- script viet hoa By http://tranhba.com  th�ng ��ch s� l�n 
CP_TASKID_LOSE = 1090 -- script viet hoa By http://tranhba.com  thua s� l�n # r�i tuy�n x� thua , nh�ng kh�ng c�ch n�o ghi ch�p 
CP_TASKID_TIE = 1091 -- script viet hoa By http://tranhba.com  b�nh c�c ��ch s� l�n 
CP_TASKID_FLAG = 1092 -- script viet hoa By http://tranhba.com  b�nh th��ng th�i lui ra cu�c so t�i tr�ng ��ch d�u hi�u , t�i h� v�a v�o tr�ng l�c c� m�i 
CP_TASKID_BACKCONT = 1093 -- script viet hoa By http://tranhba.com  ��i v�i tham d� ��u ng�n ��ch nh� ch�i c�n c� ��u ng�n t�ng s� ti�n , ph�n �o�n c� th� l�y m�y l�n 
CP_TASKID_LOGOUT = 1094 -- script viet hoa By http://tranhba.com  v� 0 l�c t� r� b�nh th��ng th�i lui ra , v� 1 l�c b�y t� kh�ng ph�i l� b�nh th��ng th�i lui ra # nh� ���ng c� # kh�ng b�o t�n s� li�u # ph�c v� kh� nguy�n nh�n # 
CP_CASH = 100000 
CP_MAXROUND = 30 
CP_PLNUM_LIMT = 10 
CP_PLNUM_LIMT_ESPECIAL = 4 -- script viet hoa By http://tranhba.com  n�m ��c # ���ng m�n # C�n L�n nh�n s� h�n ch� �t nh�t 4 ng��i 
CP_MAPPOS_IN = {1508,3026} 
CP_MAPPOS_OUT = {1472,3243} 
CP_MAPPOS_PRE = {1596,2977} 
CP_MAPTAB = { 
{396, 397,"Thi�u L�m "}, 
{398, 399,"Thi�n v��ng "}, 
{400, 401,"���ng m�n "}, 
{402, 403,"N�m ��c "}, 
{404, 405,"Nga Mi "}, 
{406, 407,"Th�y kh�i "}, 
{408, 409,"C�i Bang "}, 
{410, 411,"Ng�y nh�n "}, 
{412, 413,"V� ���ng "}, 
{414, 415,"C�n L�n "} 
} 

CP_AWARD_ITEM = { 
{"T� th�y tinh ", {4, 239}, 10}, 
{" lam th�y tinh ", {4, 238}, 10}, 
{"N��c bi�c tinh ", {4, 240}, 10}, 
{"�� th�m b�o th�ch ", {4, 353}, 10}, 
{"4 c�p huy�n tinh qu�ng th�ch ", {6, 1, 147, 4, 0, 0}, 5}, 
{"5 c�p huy�n tinh qu�ng th�ch ", {6, 1, 147, 5, 0, 0}, 100}, 
{"6 c�p huy�n tinh qu�ng th�ch ", {6, 1, 147, 6, 0, 0}, 300}, 
{"��i ph�c duy�n l� ", {6, 1, 124, 1, 0, 0}, 100}, 
{"Trung ph�c duy�n l� ", {6, 1, 123, 1, 0, 0}, 200}, 
{"Ti�u Ph�c duy�n l� ", {6, 1, 122, 1, 0, 0}, 400}, 
{"Ti�n th�o l� ", {6, 1, 71, 1, 0, 0}, 1000}, 
{"Thi�n S�n b�o l� ", {6, 1, 72, 1, 0, 0}, 1125}, 
{"R� r�ng c�u ho�n ", {6, 1, 130, 1, 0, 0}, 200}, 
{"Hoa h�ng ", {6, 0, 20, 1, 0, 0}, 1700}, 
{"T�m t�m t��ng �n ph� ", {6, 1, 18, 1, 0, 0}, 1700}, 
{"Phong l�ng �� l�nh b�i ", {4, 489}, 300}, 
{"B�o tr�c ", {6, 0, 11, 1, 0, 0}, 1700}, 
} 

CP_FORBID_ITEM = { 
{ " c�ng t�c ho�n ", {6, 1, 218, 1, 0, 0}, 511 }, 
{ " ch�y t�c ho�n ", {6, 1, 219, 1, 0, 0}, 512 }, 
{ " ph� ph�ng ho�n ", {6, 1, 220, 1, 0, 0}, 513 }, 
{ " ��c ph�ng ho�n ", {6, 1, 221, 1, 0, 0}, 514 }, 
{ " b�ng ph�ng ho�n ", {6, 1, 222, 1, 0, 0}, 515 }, 
{ " l�a ph�ng ho�n ", {6, 1, 223, 1, 0, 0}, 516 }, 
{ " l�i ph�ng ho�n ", {6, 1, 224, 1, 0, 0}, 517 }, 
{ " gi�m th��ng ho�n ", {6, 1, 225, 1, 0, 0}, 518 }, 
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
{ " �� b�ng �an ", {6, 1, 115, 1, 0, 0}, 450 }, 
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
{ " l�i ph�ng ho�n ", {6, 0, 10, 1, 0, 0}, 265 }, 
{ " l�t t� t�ng t� ", {6, 0, 60, 1, 0, 0}, 401 }, 
{ " l�a ch�n b�nh Trung thu ", {6, 0, 61, 1, 0, 0}, 402 }, 
{ " ki�n ba b�nh Trung thu ", {6, 0, 62, 1, 0, 0}, 403 }, 
{ " tr�m qu� l� ", {6, 1, 73, 1, 0, 0}, 442 }, 
{ " c�t t��ng bao ti�n l� x� ", {6, 1, 19, 1, 0, 0}, 442 }, 
{"Ho�ng kim b�o r��ng ", {6, 1, 69, 1, 0, 0}, 442} 
} 

CP_TRAPIN = "\\settings\\maps\\championship\\linantoplace_trap.txt"
CP_TRAPOUT = "" 
CP_MATCH_POS = "\\settings\\maps\\championship\\champion_gmpos.txt"
CP_TRAPIN_FILE = "\\script\\missions\\championship\\trap\\trap_linantoplace.lua"
CP_TRAPOUT_FILE = "\\script\\missions\\championship\\trap\\trap_placetolinan.lua"
CP_BEGIN_BID_DATE = 5051200 
CP_END_BID_DATE = 5051412 
CP_UPTO_TRYOUT = 5051620 
CP_END_TRYOUT = 5052224 

CP_HELP_TRYOUT = { 
"<color=yellow> ��i h�i v� l�m d� ch�n cu�c so t�i v� l�m t�n t� <color>, ch�n l�a <color=yellow> tr��c 5<color> � m�i khu v�c trung tham gia � to�n d�ng/u�ng ��i h�i v� l�m � ��ch th�p ��i m�n ph�i d� ch�n tuy�n th� . d� ch�n cu�c so t�i t� 16/5 ��n 22/5. m�i ng�y 20:00 ��n 24:00 khai d�ng/u�ng ; ghi danh th�i gian 5 ph�t ; tranh t�i th�i gian 10 ph�t .", 
" d� ch�n cu�c so t�i b�t ��u sau , 90 c�p tr� xu�ng ��ch nh� ch�i c� th� � ��i h�i v� l�m ��u trong s�n ghi danh . tham gia so t�i m�i nh� ch�i mu�n ��ng 10 v�n l��ng ti�n ghi danh . m�i nh� ch�i ghi danh sau nhi�u nh�t c� th� tham gia tranh t�i "..CP_MAXROUND.." tr�ng . n�u nh� ng��i ��i v�i ng��i v�t ��ch th�nh t�ch kh�ng h�i l�ng , c� th� h�y b� ng��i n�y v�t ��ch t� c�ch tranh t�i , nh�ng l� b� h�y b� t� c�ch tranh t�i ng��i c�a v�t kh�ng th� s� ti�p t�c ghi danh tranh t�i .", 
" d� ch�n cu�c so t�i c�n c� h� th�ng trung ��ch t�ch ph�n ch�n l�a tr��c 5 t�n . nh� ch�i tranh t�i l�c "..CP_MAXROUND.." cu�c so t�i tr�ng th��ng , th�ng m�t cu�c ph�i 3 ph�n , c�ng 1 tr�ng ph�i 1 ph�n , b�/cha/ch�u 1 tr�ng kh�ng ph�i ph�n . ��n 5 th�ng 23 ng�y , h� th�ng s� ch�n l�a c�c m�n ph�i t�ch ph�n cao nh�t 5 c� nh� ch�i tham gia � to�n khu ��i h�i v� l�m �'", 
" �� tham gia tr�nh trung m�i tham gia ghi danh ��ch nh� ch�i c�ng c� th� nh�n l�y ph�n th��ng nh�t ��nh . m�i tham gia m�t v�n �em l�y ���c ph�n th��ng nh�t ��nh , tr� l�n �� ra , nh� ch�i c�n c� th� l�y ���c nh� sau v�t ph�m # b�o tr�c , huy�n tinh qu�ng th�ch , ph�c duy�n l� , th�y tinh ) " 
} 

CP_HELP_BID = { 
"<color=yellow> tranh khu v�c n�y ��i ng� ��ch t�ng l�nh ��i <color>, nh�t ��nh l� ph�i gi�p ch� m�i c� th� ��n ta ch� n�y tham gia to�n d�ng/u�ng l�nh ��i ��ch tranh �o�t . ��u gi� gi�i m�i l�n �t nh�t l� 100 v�n l��ng , m�i l�n l�y 100 v�n l��ng l�m ��n v� gia t�ng . ��u gi� th�i gian l� t� 2005 n�m 5 th�ng 12 ng�y 12 m� ra m�i ��n 5 th�ng 14 ng�y k�t th�c .", 
" tr� gi�p tham gia ��u gi� nh�n ra gi�i cao nh�t ng��i # kh�ng c�ng b� c� th� gi� c� # c�ng bi�t m�nh ra gi� . ��n 5 th�ng 14 ng�y 12 �i�m , ra gi� cao nh�t bang ch� tr� th�nh khu v�c n�y ��ch t�ng l�nh ��i , ��ng th�i l�y ���c t�ng l�nh ��i ��ch danh hi�u c� th� ph�n quy�t tranh t�i . c�nh tranh th�t b�i ph�i ta ch� n�y n�a d�n ��u gi� ph� . m�i l�n nhi�u nh�t d�n 50 v�n l��ng , b�o ��m nh� ch�i ti�n m�t m�c �� ", 
" t�ng l�nh ��i c� th� ph�n ph�t 29 kh�i v� l�m quy�t ��u l�nh b�i cho nh�ng kh�c � v� l�m t�n t� li�n cu�c so t�i quan vi�n ch� ��ch nh� ch�i . �� � chung k�t khu b�n trong c� t� c�ch ��ch nh� ch�i th� kh�ng th� n�a d�n t� c�ch . " 
} 

CP_HELP_FINAL = "<color=yellow> ��i h�i v� l�m <color>, t� c�c khu v�c ��ch 90 ng��i t�o th�nh 1 ��i tham gia to�n khu v�c ��i h�i v� l�m . trong �� , 10 ng��i l� khu v�c d�m th�p ��i cao th� #50 ng��i l� th�p ��i m�n ph�i tr��c 5 ��i cao th� t�ng l�nh ��i ; c�n l�i 30 nh�n trung �em ch�n l�a 1 ng��i l�m t�ng l�nh ��i . t�ng l�nh ��i c� t� c�ch quy�t ��nh � c�n d� l�i 29 nh�n trung ng��i n�o c� t� c�ch tham gia cu�i c�ng ��ch tranh t�i . " 

function transtoplace() 
Say("V� l�m t�n t� li�n cu�c so t�i ��i h�i d� ch�n cu�c so t�i k�t th�c m� m�n . b�y gi� c� th� ��n v� l�m t�n t� li�n cu�c so t�i quan vi�n ch� xem so t�i k�t qu� c�ng nh�n l�y t��ng �ng danh hi�u . k�nh xin mong ��i ��i h�i v� l�m ��ch b�t ��u .", 0) 
do return end 
if (GetLevel() < 90) then 
Say("Ng��i ph�i 90 c�p tr� l�n m�i c� th� ti�n v�o ��i h�i v� l�m cu�c so t�i tr�ng , xin/m�i ti�p t�c luy�n c�p !", 0) 
return 
end 
if (GetLastFactionNumber() == -1) then 
Say("Minh ch� v� l�m c� l�nh : ch� c� 10 ��i m�n ph�i ng��i c�a m�i c� th� tham gia ��i h�i v� l�m , kh�ng c�a ph�i ng��i s� kh�ng th� tham gia . gia nh�p 10 ��i m�n ph�i sau m�i c� th� tham gia tranh t�i !", 0) 
return 
elseif(nt_gettask(CP_TASKID_REGIST) ~= CP_UPTO_TRYOUT) then 
Msg2Player("Ng��i c�n kh�ng c� ghi danh # ��n v� l�m t�n t� li�n cu�c so t�i quan vi�n ch� ghi danh tham gia tranh t�i !") 
NewWorld(176, 1444, 3256) 
else 
if(GetLastFactionNumber() == 0) then 
NewWorld(CP_MAPTAB[1][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Thi�u L�m 
elseif (GetLastFactionNumber() == 1) then 
NewWorld(CP_MAPTAB[2][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Thi�n v��ng 
elseif (GetLastFactionNumber() == 2) then 
NewWorld(CP_MAPTAB[3][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  ���ng m�n 
elseif (GetLastFactionNumber() == 3) then 
NewWorld(CP_MAPTAB[4][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  n�m ��c 
elseif (GetLastFactionNumber() == 4) then 
NewWorld(CP_MAPTAB[5][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Nga Mi 
elseif (GetLastFactionNumber() == 5) then 
NewWorld(CP_MAPTAB[6][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  th�y kh�i 
elseif (GetLastFactionNumber() == 6) then 
NewWorld(CP_MAPTAB[7][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  C�i Bang 
elseif (GetLastFactionNumber() == 7) then 
NewWorld(CP_MAPTAB[8][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  ng�y nh�n 
elseif (GetLastFactionNumber() == 8) then 
NewWorld(CP_MAPTAB[9][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  V� ���ng 
elseif (GetLastFactionNumber() == 9) then 
NewWorld(CP_MAPTAB[10][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  C�n L�n 
end 
Talk(1, "","Ng��i �� ti�n v�o ��i h�i v� l�m cu�c so t�i tr�ng , m�i ���c xem cu�c chi�n tr�ng (189, 188) , (191, 190) , (185, 187) xin/m�i tham gia v�n n�y tranh t�i !") 
end 
end 

function checkmap(flag) 
local mapid = SubWorldIdx2ID(SubWorld) 
local ladder = 0 
if (mapid == 397 or mapid == 396) then 
mapname = " Thi�u L�m " 
ladder = 10120 
elseif (mapid == 399 or mapid == 398) then 
mapname = " Thi�n v��ng " 
ladder = 10121 
elseif (mapid == 401 or mapid == 400) then 
mapname = " ���ng m�n " 
ladder = 10122 
elseif (mapid == 403 or mapid == 402) then 
mapname = " n�m ��c " 
ladder = 10123 
elseif (mapid == 405 or mapid == 404) then 
mapname = " Nga Mi " 
ladder = 10124 
elseif (mapid == 407 or mapid == 406) then 
mapname = " th�y kh�i " 
ladder = 10125 
elseif (mapid == 409 or mapid == 408) then 
mapname = " C�i Bang " 
ladder = 10126 
elseif (mapid == 411 or mapid == 410) then 
mapname = " ng�y nh�n " 
ladder = 10127 
elseif (mapid == 413 or mapid == 412) then 
mapname = " V� ���ng " 
ladder = 10128 
elseif (mapid == 415 or mapid == 414) then 
mapname = " C�n L�n " 
ladder = 10129 
end 
if (flag == 1) then 
return mapname 
elseif(flag == 2) then 
return ladder 
end 
end 

function help_bid() 
Talk(1, "help_bid_2", CP_HELP_BID[1]) 
end 

function help_bid_2() 
Talk(2, "", CP_HELP_BID[2], CP_HELP_BID[3]) 
end 
function help_tryout() 
Talk(2, "help_tryout_2", CP_HELP_TRYOUT[1], CP_HELP_TRYOUT[2]) 
end; 

function help_tryout_2() 
Talk(2, "", CP_HELP_TRYOUT[3], CP_HELP_TRYOUT[4]) 
end 

function help_final() 
Talk(1, "", CP_HELP_FINAL) 
end 

function help_championship() 
Say("Ng��i ngh� gia nh�p tr� gi�p b�n kia ?", 4,"C�nh tranh khu v�c t�ng l�nh ��i /help_bid","V� l�m t�n t� li�n cu�c so t�i ��i h�i d� ch�n cu�c so t�i /help_tryout","��i h�i v� l�m /help_final","Ta bi�t !/OnCancel") 
end 

function validateDate(startt,endt) 
local now = tonumber(date("%y%m%d%H")) 
if(now >= startt and now < endt) then 
return 1 
end 
return nil 
end 

function AddAword(level, fac, result) 
local awardpro = {} 
if (level >120) then 
level = 120 
end 
	aword = (700 + floor((level * 4 - 350) / 5) * 100) * 60 * fac
AddOwnExp(aword) 
if( result == 0 )then 
return 
end 
for i = 1, getn(CP_AWARD_ITEM) do 
awardpro[i] = CP_AWARD_ITEM[i][3] 
end 
numth = randByProbability(awardpro) 
if (getn(CP_AWARD_ITEM[numth][2]) == 6 ) then 
AddItem(CP_AWARD_ITEM[numth][2][1], CP_AWARD_ITEM[numth][2][2], CP_AWARD_ITEM[numth][2][3], CP_AWARD_ITEM[numth][2][4], CP_AWARD_ITEM[numth][2][5], CP_AWARD_ITEM[numth][2][6]) 
else 
AddEventItem(CP_AWARD_ITEM[numth][2][2]) 
end 
Msg2Player("Ng��i l�y ���c 1 c� "..CP_AWARD_ITEM[numth][1]) 
end 

function randByProbability(aryProbability) 
local nRandNum; 
local nSum = 0; 
local nArgCount = getn( aryProbability ); 
for i = 1, nArgCount do 
		nSum = nSum + aryProbability[i];
end 
	nRandNum = mod( random( nSum ) + random( 1009 ), nSum ) + 1;
for i = nArgCount, 1, -1 do 
nSum = nSum - aryProbability[i]; 
if( nRandNum > nSum ) then 
return i; 
end 
end 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� tr�ng th�i 
function nt_settask(nTaskID, nTaskValue) 
SetTask(nTaskID, nTaskValue) 
SyncTaskValue(nTaskID) -- script viet hoa By http://tranhba.com  c�ng b��c ��n kh�ch h�ng b�ng 
end 

-- script viet hoa By http://tranhba.com  l�y ���c nhi�m v� tr�ng th�i 
function nt_gettask(nTaskID) 
return GetTask(nTaskID) 
end 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function GetIniFileData(mapfile, sect, key) 
if (IniFile_Load(mapfile, mapfile) == 0) then 
print("Load IniFile Error!"..mapfile) 
return "" 
else 
return IniFile_GetData(mapfile, sect, key) 
end 
end 

function GetTabFileHeight(mapfile) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFileError!"..mapfile); 
return 0 
end 
return TabFile_GetRowCount(mapfile) - 1 
end; 

function GetTabFileData(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
		return tonumber(TabFile_GetCell(mapfile, row + 1, col))
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  m� ra m�t v�n ki�n 
function biwu_loadfile(filename) 
if (IniFile_Load(filename, filename) == 0) then 
File_Create(filename) 
end 
end 

-- script viet hoa By http://tranhba.com  ��t ���c v�n ki�n trung ��ch szSection ��ch key ��ch tr� gi� 
function biwu_getdata(filename, szsect, szkey) 
return IniFile_GetData(filename, szsect, szkey) 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� v�n ki�n trung ��ch szSection ��ch key tr� gi� l� szValue 
function biwu_setdata(filename, szsect, szkey, szvalue) 
IniFile_SetData(filename, szsect, szkey, szvalue) 
end 

function biwu_save(filename) 
IniFile_Save(filename, filename) 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Sort_Point(array) 
local orgindex = PlayerIndex 
local point_1 = 0 
local point_2 = 0 
local wincount_1 = 0 
local wincount_2 = 0 
local winrate_1 = 0 
local winrate_2 = 0 
for i = 1, getn(array) do 
for j = getn(array), 2, -1 do 
PlayerIndex = array[j] 
point_1 = nt_gettask(CP_TASKID_ROUND) 
wincount_1 = nt_gettask(CP_TASKID_WIN) 
if (point_1 == 0 or wincount_1 == 0) then 
winrate_1 = 0 
else 
winrate_1 = wincount_1/point_1 
end 

PlayerIndex = array[j - 1] 
point_2 = nt_gettask(CP_TASKID_ROUND) 
wincount_2 = nt_gettask(CP_TASKID_WIN) 
if (point_2 == 0 or wincount_2 == 0) then 
winrate_2 = 0 
else 
winrate_2 = wincount_2/point_2 
end 

if (winrate_1 > winrate_2) then 
a = array[j] 
array[j] = array[j - 1] 
array[j - 1] = a 
end 
end 
end 
PlayerIndex = orgindex 
return array 
end 

function OnCancel() 
end 
