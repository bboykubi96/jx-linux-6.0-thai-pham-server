LEVELTOP10 = "\\data\\bestlevel.dat" 
MISSIONID_OUTER = 18 
MISSIONID_INNER = 19 

FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 

TITLETIME = 30 * 24 * 60 * 60 * 18 

TRYOUT_TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi©y c«ng bè mét c¸i chiÕn huèng 
TRYOUT_TIMER_2 = 3 * 60 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  v× 4 giê 
TIMERID_SMALL_OUTER = 33 
TIMERID_TOTAL_OUTER = 34 


MATCH_TIMER_1 = 10 * FRAME2TIME; -- script viet hoa By http://tranhba.com 5 gi©y c«ng bè mét c¸i chiÕn huèng 
MATCH_TIMER_2 = 15 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  v× 10 phót 
TIMERID_SMALL_INNER = 35 
TIMERID_TOTAL_INNER = 36 


CP_ONEDAY_MAXROUND = floor(TRYOUT_TIMER_2  / (MATCH_TIMER_2 + 5 * 60 * FRAME2TIME))

FactionData = { 
{ "\\data\\shaolin_fresh.dat", "ShaoLin_Top5","ThiÕu L©m " }, 
{ "\\data\\tianwang_fresh.dat", "TianWang_Top5","Thiªn v­¬ng " }, 
{ "\\data\\tangmen_fresh.dat", "TangMen_Top5","§­êng m«n " }, 
{ "\\data\\wudu_fresh.dat", "Wudu_Top5","N¨m ®éc " }, 
{ "\\data\\emei_fresh.dat", "EMei_Top5","Nga Mi " }, 
{ "\\data\\cuiyan_fresh.dat", "CuiYan_Top5","Thóy khãi " }, 
{ "\\data\\gaibang_fresh.dat", "GaiBang_Top5","C¸i Bang " }, 
{ "\\data\\tianren_fresh.dat", "TianRen_Top5","Ngµy nhÉn " }, 
{ "\\data\\wudang_fresh.dat", "WuDang_Top5","Vâ §­¬ng " }, 
{ "\\data\\kunlun_fresh.dat", "KunLun_Top5","C«n L«n " } 
} 

FactionTitle = { 
" ThiÕu L©m vâ l©m t©n tó ", 
" Thiªn v­¬ng vâ l©m t©n tó ", 
" §­êng m«n vâ l©m t©n tó ", 
" n¨m ®éc vâ l©m t©n tó ", 
" Nga Mi vâ l©m t©n tó ", 
" thóy khãi vâ l©m t©n tó ", 
" C¸i Bang vâ l©m t©n tó ", 
" ngµy nhÉn vâ l©m t©n tó ", 
" Vâ §­¬ng vâ l©m t©n tó ", 
" C«n L«n vâ l©m t©n tó " 
} 

CP_MAPTAB = { 
{ 396, 397,"ThiÕu L©m " }, 
{ 398, 399,"Thiªn v­¬ng " }, 
{ 400, 401,"§­êng m«n " }, 
{ 402, 403,"N¨m ®éc " }, 
{ 404, 405,"Nga Mi " }, 
{ 406, 407,"Thóy khãi " }, 
{ 408, 409,"C¸i Bang " }, 
{ 410, 411,"Ngµy nhÉn " }, 
{ 412, 413,"Vâ §­¬ng " }, 
{ 414, 415,"C«n L«n " } 
} 

CP_TASKID_REGIST = 1095 -- script viet hoa By http://tranhba.com 1# b¸o qu¸ tªn #9# hñy bá dù chän cuéc so tµi t­ c¸ch 
CP_TASKID_POINT = 1096 -- script viet hoa By http://tranhba.com  ghi chÐp dù chän cuéc so tµi ph¶i ph©n 
CP_TASKID_TITLE = 1097 -- script viet hoa By http://tranhba.com 9# ghi chÐp ®· lÊy ®­îc quyÕt cuéc so tµi vßng t­ c¸ch 
CP_TASKID_BID = 1098 -- script viet hoa By http://tranhba.com  
CP_TASKID_ENEMY = 1099 -- script viet hoa By http://tranhba.com  dù cuéc so tµi lóc ®èi thñ ®Ých trËn doanh sè 
CP_TASKID_ROUND = 1100 -- script viet hoa By http://tranhba.com  dù thi ®Ých sè lÇn 
CP_TASKID_WIN = 1101 -- script viet hoa By http://tranhba.com  th¾ng ®Ých sè lÇn 
CP_TASKID_LOSE = 1102 -- script viet hoa By http://tranhba.com  thua sè lÇn # r¬i tuyÕn xö thua , nh­ng kh«ng c¸ch nµo ghi chÐp 
CP_TASKID_TIE = 1103 -- script viet hoa By http://tranhba.com  b×nh côc ®Ých sè lÇn 
CP_TASKID_FLAG = 1104 -- script viet hoa By http://tranhba.com  b×nh th­êng thèi lui ra cuéc so tµi trµng ®Ých dÊu hiÖu , t¹i h¹ võa vµo trµng lóc cµ míi 
CP_TASKID_BACKCONT = 1105 -- script viet hoa By http://tranhba.com  ®èi víi tham dù ®Çu ngän ®Ých nhµ ch¬i c¨n cø ®Çu ngän tæng sè tiÒn , ph¸n ®o¸n cã thÓ lÊy mÊy lÇn 
CP_TASKID_LOGOUT = 1094 -- script viet hoa By http://tranhba.com  v× 0 lóc tá râ b×nh th­êng thèi lui ra , v× 1 lóc bµy tá kh«ng ph¶i lµ b×nh th­êng thèi lui ra # nh­ ®­¬ng c¬ # kh«ng b¶o tån sè liÖu # phôc vô khÝ nguyªn nh©n # 
CP_CASH = 100000 
CP_MAXROUND = 40 
CP_PLNUM_LIMT = 4 
CP_MAPPOS_IN = {1508,3026} 
CP_MAPPOS_OUT = {1472,3243} 
CP_MAPPOS_PRE = {1596,2977} 

CP_AWARD_ITEM = { 
{"Tö thñy tinh ", {4, 239}, 2}, 
{" lam thñy tinh ", {4, 238}, 2}, 
{"N­íc biÕc tinh ", {4, 240}, 2}, 
{"Tinh hång b¶o th¹ch ", {4, 353}, 2}, 
{"HuyÒn tinh qu¸ng th¹ch 4 cÊp ", {6, 1, 147, 4, 0, 0}, 200}, 
{"HuyÒn tinh qu¸ng th¹ch 5 cÊp ", {6, 1, 147, 5, 0, 0}, 50}, 
{"HuyÒn tinh qu¸ng th¹ch 6 cÊp ", {6, 1, 147, 6, 0, 0}, 1}, 
{"§¹i phóc duyªn lé ", {6, 1, 124, 1, 0, 0}, 50}, 
{"Trung phóc duyªn lé ", {6, 1, 123, 1, 0, 0}, 100}, 
{"TiÓu Phóc duyÕn lé ", {6, 1, 122, 1, 0, 0}, 200}, 
{"Tiªn th¶o lé ", {6, 1, 71, 1, 0, 0}, 1500}, 
{"Thiªn S¬n b¶o lé ", {6, 1, 72, 1, 0, 0}, 1991}, 
{"Râ rµng c©u hoµn ", {6, 1, 130, 1, 0, 0}, 100}, 
{"Hoa hång ", {6, 0, 20, 1, 0, 0}, 2000}, 
{"T©m t©m t­¬ng ¸nh phï ", {6, 1, 18, 1, 0, 0}, 2000}, 
{"Phong l¨ng ®é lÖnh bµi ", {4, 489}, 100}, 
{"Ph¸o b«ng ", {6, 0, 11, 1, 0, 0}, 1700}, 
} 

CP_FORBID_ITEM = { 
{ " c«ng tèc hoµn ", {6, 1, 218, 1, 0, 0}, 511 }, 
{ " ch¹y tèc hoµn ", {6, 1, 219, 1, 0, 0}, 512 }, 
{ " phæ phßng hoµn ", {6, 1, 220, 1, 0, 0}, 513 }, 
{ " ®éc phßng hoµn ", {6, 1, 221, 1, 0, 0}, 514 }, 
{ " b¨ng phßng hoµn ", {6, 1, 222, 1, 0, 0}, 515 }, 
{ " löa phßng hoµn ", {6, 1, 223, 1, 0, 0}, 516 }, 
{ " l«i phßng hoµn ", {6, 1, 224, 1, 0, 0}, 517 }, 
{ " gi¶m sóng hoµn ", {6, 1, 225, 1, 0, 0}, 518 }, 
{ " gi¶m bÊt tØnh hoµn ", {6, 1, 226, 1, 0, 0}, 519 }, 
{ " gi¶m ®éc hoµn ", {6, 1, 227, 1, 0, 0}, 520 }, 
{ " gi¶m b¨ng hoµn ", {6, 1, 228, 1, 0, 0}, 521 }, 
{ " phæ c«ng hoµn ", {6, 1, 229, 1, 0, 0}, 522 }, 
{ " ®éc c«ng hoµn ", {6, 1, 230, 1, 0, 0}, 523 }, 
{ " b¨ng c«ng hoµn ", {6, 1, 231, 1, 0, 0}, 524 }, 
{ " löa c«ng hoµn ", {6, 1, 232, 1, 0, 0}, 525 }, 
{ " l«i c«ng hoµn ", {6, 1, 233, 1, 0, 0}, 526 }, 
{ " tr­êng mÖnh hoµn ", {6, 1, 234, 1, 0, 0}, 527 }, 
{ " tr­êng bªn trong hoµn ", {6, 1, 235, 1, 0, 0}, 528 }, 
{ " an hån ®an ", {6, 1, 115, 1, 0, 0}, 450 }, 
{ " x· lam ®an ", {6, 1, 116, 1, 0, 0}, 451 }, 
{ " bªn trong phæ hoµn ", {6, 1, 117, 1, 0, 0}, 453 }, 
{ " bªn trong ®éc hoµn ", {6, 1, 118, 1, 0, 0}, 454 }, 
{ " bªn trong b¨ng hoµn ", {6, 1, 119, 1, 0, 0}, 455 }, 
{ " néi háa hoµn ", {6, 1, 120, 1, 0, 0}, 456 }, 
{ " bªn trong l«i hoµn ", {6, 1, 121, 1, 0, 0}, 457 }, 
{ " tr­êng mÖnh hoµn ", {6, 0, 1, 1, 0, 0}, 256 }, 
{ " thªm ch¹y hoµn ", {6, 0, 2, 1, 0, 0}, 257 }, 
{ " ®¹i lùc hoµn ", {6, 0, 3, 1, 0, 0}, 258 }, 
{ " cao nhanh chãng hoµn ", {6, 0, 4, 1, 0, 0}, 259 }, 
{ " trung häc ®Ö nhÞ cÊp hoµn ", {6, 0, 5, 1, 0, 0}, 260 }, 
{ " nhanh chãng hoµn ", {6, 0, 6, 1, 0, 0}, 261 }, 
{ " b¨ng phßng hoµn ", {6, 0, 7, 1, 0, 0}, 262 }, 
{ " l«i phßng hoµn ", {6, 0, 8, 1, 0, 0}, 263 }, 
{ " löa phßng hoµn ", {6, 0, 9, 1, 0, 0}, 264 }, 
{ " ®éc phßng hoµn ", {6, 0, 10, 1, 0, 0}, 265 }, 
{ " b¶n lËt tèng tö ", {6, 0, 60, 1, 0, 0}, 401 }, 
{ " thÞt heo tèng tö ", {6, 0, 61, 1, 0, 0}, 402 }, 
{ " thÞt bß tèng tö ", {6, 0, 62, 1, 0, 0}, 403 }, 
{ " tr¨m qu¶ lé ", {6, 1, 73, 1, 0, 0}, 442 }, 
{ " c¸t t­êng bao tiÒn l× x× ", {6, 1, 19, 1, 0, 0}, 442 }, 
{"Hoµng kim b¶o r­¬ng ", {6, 1, 69, 1, 0, 0}, 442} 
} 

CP_TRAPIN = "\\settings\\maps\\championship\\linantoplace_trap.txt"
CP_TRAPOUT = "" 
CP_MATCH_POS = "\\settings\\maps\\championship\\champion_gmpos.txt"
CP_TRAPIN_FILE = "\\script\\missions\\freshman_match\\trap\\trap_linantoplace.lua"
CP_TRAPOUT_FILE = "\\script\\missions\\freshman_match\\trap\\trap_placetolinan.lua"


CP_UPTO_TRYOUT = 5060120 
CP_END_TRYOUT = 5061023 
