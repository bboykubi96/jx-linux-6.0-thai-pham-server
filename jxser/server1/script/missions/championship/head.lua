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
TRYOUT_TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi©y c«ng bè mét c¸i chiÕn huèng 
TRYOUT_TIMER_2 = 4 * 60 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  v× 4 giê 

MATCH_TIMER_1 = 10 * FRAME2TIME; -- script viet hoa By http://tranhba.com 5 gi©y c«ng bè mét c¸i chiÕn huèng 
MATCH_TIMER_2 = 10 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  v× 10 phót 

CP_ONEDAY_MAXROUND = floor(TRYOUT_TIMER_2  / (MATCH_TIMER_2 + 5 * 60 * FRAME2TIME))

Faction = { 
{"\\data\\shaolin_top5.dat", "ShaoLin_Top5","ThiÕu L©m "}, 
{"\\data\\tianwang_top5.dat", "TianWang_Top5","Thiªn v­¬ng "}, 
{"\\data\\tangmen_top5.dat", "TangMen_Top5","§­êng m«n "}, 
{"\\data\\wudu_top5.dat", "Wudu_Top5","N¨m ®éc "}, 
{"\\data\\emei_top5.dat", "EMei_Top5","Nga Mi "}, 
{"\\data\\cuiyan_top5.dat", "CuiYan_Top5","Thóy khãi "}, 
{"\\data\\gaibang_top5.dat", "GaiBang_Top5","C¸i Bang "}, 
{"\\data\\tianren_top5.dat", "TianRen_Top5","Ngµy nhÉn "}, 
{"\\data\\wudang_top5.dat", "WuDang_Top5","Vâ §­¬ng "}, 
{"\\data\\kunlun_top5.dat", "KunLun_Top5","C«n L«n "} 
} 
FactionTitle = { 
" ®¹i héi vâ l©m ThiÕu L©m cao thñ ", 
" ®¹i héi vâ l©m Thiªn v­¬ng cao thñ ", 
" ®¹i héi vâ l©m §­êng m«n cao thñ ", 
" ®¹i héi vâ l©m n¨m ®éc cao thñ ", 
" ®¹i héi vâ l©m Nga Mi cao thñ ", 
" ®¹i héi vâ l©m thóy khãi cao thñ ", 
" ®¹i héi vâ l©m C¸i Bang cao thñ ", 
" ®¹i héi vâ l©m ngµy nhÉn cao thñ ", 
" ®¹i héi vâ l©m Vâ §­¬ng cao thñ ", 
" ®¹i héi vâ l©m C«n L«n cao thñ ", 
} 
CP_TASKID_REGIST = 1083 -- script viet hoa By http://tranhba.com 1# b¸o qu¸ tªn #9# hñy bá dù chän cuéc so tµi t­ c¸ch 
CP_TASKID_POINT = 1084 -- script viet hoa By http://tranhba.com  ghi chÐp dù chän cuéc so tµi ph¶i ph©n 
CP_TASKID_TITLE = 1085 -- script viet hoa By http://tranhba.com 9# ghi chÐp ®· lÊy ®­îc quyÕt cuéc so tµi vßng t­ c¸ch 
CP_TASKID_BID = 1086 -- script viet hoa By http://tranhba.com  
CP_TASKID_ENEMY = 1087 -- script viet hoa By http://tranhba.com  dù cuéc so tµi lóc ®èi thñ ®Ých trËn doanh sè 
CP_TASKID_ROUND = 1088 -- script viet hoa By http://tranhba.com  dù thi ®Ých sè lÇn 
CP_TASKID_WIN = 1089 -- script viet hoa By http://tranhba.com  th¾ng ®Ých sè lÇn 
CP_TASKID_LOSE = 1090 -- script viet hoa By http://tranhba.com  thua sè lÇn # r¬i tuyÕn xö thua , nh­ng kh«ng c¸ch nµo ghi chÐp 
CP_TASKID_TIE = 1091 -- script viet hoa By http://tranhba.com  b×nh côc ®Ých sè lÇn 
CP_TASKID_FLAG = 1092 -- script viet hoa By http://tranhba.com  b×nh th­êng thèi lui ra cuéc so tµi trµng ®Ých dÊu hiÖu , t¹i h¹ võa vµo trµng lóc cµ míi 
CP_TASKID_BACKCONT = 1093 -- script viet hoa By http://tranhba.com  ®èi víi tham dù ®Çu ngän ®Ých nhµ ch¬i c¨n cø ®Çu ngän tæng sè tiÒn , ph¸n ®o¸n cã thÓ lÊy mÊy lÇn 
CP_TASKID_LOGOUT = 1094 -- script viet hoa By http://tranhba.com  v× 0 lóc tá râ b×nh th­êng thèi lui ra , v× 1 lóc bµy tá kh«ng ph¶i lµ b×nh th­êng thèi lui ra # nh­ ®­¬ng c¬ # kh«ng b¶o tån sè liÖu # phôc vô khÝ nguyªn nh©n # 
CP_CASH = 100000 
CP_MAXROUND = 30 
CP_PLNUM_LIMT = 10 
CP_PLNUM_LIMT_ESPECIAL = 4 -- script viet hoa By http://tranhba.com  n¨m ®éc # §­êng m«n # C«n L«n nh©n sè h¹n chÕ Ýt nhÊt 4 ng­êi 
CP_MAPPOS_IN = {1508,3026} 
CP_MAPPOS_OUT = {1472,3243} 
CP_MAPPOS_PRE = {1596,2977} 
CP_MAPTAB = { 
{396, 397,"ThiÕu L©m "}, 
{398, 399,"Thiªn v­¬ng "}, 
{400, 401,"§­êng m«n "}, 
{402, 403,"N¨m ®éc "}, 
{404, 405,"Nga Mi "}, 
{406, 407,"Thóy khãi "}, 
{408, 409,"C¸i Bang "}, 
{410, 411,"Ngµy nhÉn "}, 
{412, 413,"Vâ §­¬ng "}, 
{414, 415,"C«n L«n "} 
} 

CP_AWARD_ITEM = { 
{"Tö thñy tinh ", {4, 239}, 10}, 
{" lam thñy tinh ", {4, 238}, 10}, 
{"N­íc biÕc tinh ", {4, 240}, 10}, 
{"§á th¾m b¶o th¹ch ", {4, 353}, 10}, 
{"4 cÊp huyÒn tinh qu¸ng th¹ch ", {6, 1, 147, 4, 0, 0}, 5}, 
{"5 cÊp huyÒn tinh qu¸ng th¹ch ", {6, 1, 147, 5, 0, 0}, 100}, 
{"6 cÊp huyÒn tinh qu¸ng th¹ch ", {6, 1, 147, 6, 0, 0}, 300}, 
{"§¹i phóc duyªn lé ", {6, 1, 124, 1, 0, 0}, 100}, 
{"Trung phóc duyªn lé ", {6, 1, 123, 1, 0, 0}, 200}, 
{"TiÓu Phóc duyÕn lé ", {6, 1, 122, 1, 0, 0}, 400}, 
{"Tiªn th¶o lé ", {6, 1, 71, 1, 0, 0}, 1000}, 
{"Thiªn S¬n b¶o lé ", {6, 1, 72, 1, 0, 0}, 1125}, 
{"Râ rµng c©u hoµn ", {6, 1, 130, 1, 0, 0}, 200}, 
{"Hoa hång ", {6, 0, 20, 1, 0, 0}, 1700}, 
{"T©m t©m t­¬ng Ên phï ", {6, 1, 18, 1, 0, 0}, 1700}, 
{"Phong l¨ng ®é lÖnh bµi ", {4, 489}, 300}, 
{"B¹o tróc ", {6, 0, 11, 1, 0, 0}, 1700}, 
} 

CP_FORBID_ITEM = { 
{ " c«ng tèc hoµn ", {6, 1, 218, 1, 0, 0}, 511 }, 
{ " ch¹y tèc hoµn ", {6, 1, 219, 1, 0, 0}, 512 }, 
{ " phæ phßng hoµn ", {6, 1, 220, 1, 0, 0}, 513 }, 
{ " ®éc phßng hoµn ", {6, 1, 221, 1, 0, 0}, 514 }, 
{ " b¨ng phßng hoµn ", {6, 1, 222, 1, 0, 0}, 515 }, 
{ " löa phßng hoµn ", {6, 1, 223, 1, 0, 0}, 516 }, 
{ " l«i phßng hoµn ", {6, 1, 224, 1, 0, 0}, 517 }, 
{ " gi¶m th­¬ng hoµn ", {6, 1, 225, 1, 0, 0}, 518 }, 
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
{ " ®á bõng ®an ", {6, 1, 115, 1, 0, 0}, 450 }, 
{ " x¸ lam ®an ", {6, 1, 116, 1, 0, 0}, 451 }, 
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
{ " l«i phßng hoµn ", {6, 0, 10, 1, 0, 0}, 265 }, 
{ " lËt tö tèng tö ", {6, 0, 60, 1, 0, 0}, 401 }, 
{ " löa ch©n b¸nh Trung thu ", {6, 0, 61, 1, 0, 0}, 402 }, 
{ " kiÒn ba b¸nh Trung thu ", {6, 0, 62, 1, 0, 0}, 403 }, 
{ " tr¨m qu¶ lé ", {6, 1, 73, 1, 0, 0}, 442 }, 
{ " c¸t t­êng bao tiÒn l× x× ", {6, 1, 19, 1, 0, 0}, 442 }, 
{"Hoµng kim b¶o r­¬ng ", {6, 1, 69, 1, 0, 0}, 442} 
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
"<color=yellow> ®¹i héi vâ l©m dù chän cuéc so tµi vâ l©m t©n tó <color>, chän lùa <color=yellow> tr­íc 5<color> ë mçi khu vùc trung tham gia ‘ toµn dïng/uèng ®¹i héi vâ l©m ’ ®Ých thËp ®¹i m«n ph¸i dù chän tuyÓn thñ . dù chän cuéc so tµi tõ 16/5 ®Õn 22/5. mçi ngµy 20:00 ®Õn 24:00 khai dïng/uèng ; ghi danh thêi gian 5 phót ; tranh tµi thêi gian 10 phót .", 
" dù chän cuéc so tµi b¾t ®Çu sau , 90 cÊp trë xuèng ®Ých nhµ ch¬i cã thÓ ë ®¹i héi vâ l©m ®Êu trong s©n ghi danh . tham gia so tµi míi nhµ ch¬i muèn ®ãng 10 v¹n l­îng tiÒn ghi danh . mçi nhµ ch¬i ghi danh sau nhiÒu nhÊt cã thÓ tham gia tranh tµi "..CP_MAXROUND.." trµng . nÕu nh­ ng­¬i ®èi víi ng­êi vËt ®Ých thµnh tÝch kh«ng hµi lßng , cã thÓ hñy bá ng­êi nµy vËt ®Ých t­ c¸ch tranh tµi , nh­ng lµ bÞ hñy bá t­ c¸ch tranh tµi ng­êi cña vËt kh«ng thÓ sÏ tiÕp tôc ghi danh tranh tµi .", 
" dù chän cuéc so tµi c¨n cø hÖ thèng trung ®Ých tÝch ph©n chän lùa tr­íc 5 tªn . nhµ ch¬i tranh tµi lóc "..CP_MAXROUND.." cuéc so tµi trµng th­îng , th¾ng mét cuéc ph¶i 3 ph©n , cïng 1 trµng ph¶i 1 ph©n , bÞ/cha/chÞu 1 trµng kh«ng ph¶i ph©n . ®Õn 5 th¸ng 23 ngµy , hÖ thèng sÏ chän lùa c¸c m«n ph¸i tÝch ph©n cao nhÊt 5 c¸ nhµ ch¬i tham gia ‘ toµn khu ®¹i héi vâ l©m ’'", 
" ®· tham gia tr×nh trung mçi tham gia ghi danh ®Ých nhµ ch¬i còng cã thÓ nhËn lÊy phÇn th­ëng nhÊt ®Þnh . mçi tham gia mét v¸n ®em lÊy ®­îc phÇn th­ëng nhÊt ®Þnh , trõ lÇn ®ã ra , nhµ ch¬i cßn cã thÓ lÊy ®­îc nh­ sau vËt phÈm # b¹o tróc , huyÒn tinh qu¸ng th¹ch , phóc duyªn lé , thñy tinh ) " 
} 

CP_HELP_BID = { 
"<color=yellow> tranh khu vùc nµy ®éi ngò ®Ých tæng lÜnh ®éi <color>, nhÊt ®Þnh lµ ph¶i gióp chñ míi cã thÓ ®Õn ta chç nµy tham gia toµn dïng/uèng lÜnh ®éi ®Ých tranh ®o¹t . ®Êu gi¸ giíi mçi lÇn Ýt nhÊt lµ 100 v¹n l­îng , mçi lÇn lÊy 100 v¹n l­îng lµm ®¬n vÞ gia t¨ng . ®Êu gi¸ thêi gian lµ tõ 2005 n¨m 5 th¸ng 12 ngµy 12 më ra míi ®Õn 5 th¸ng 14 ngµy kÕt thóc .", 
" trî gióp tham gia ®Êu gi¸ nh×n ra giíi cao nhÊt ng­êi # kh«ng c«ng bè cô thÓ gi¸ c¶ # cïng biÕt m×nh ra gi¸ . ®Õn 5 th¸ng 14 ngµy 12 ®iÓm , ra gi¸ cao nhÊt bang chñ trë thµnh khu vùc nµy ®Ých tæng lÜnh ®éi , ®ång thêi lÊy ®­îc tæng lÜnh ®éi ®Ých danh hiÖu cã thÓ ph¸n quyÕt tranh tµi . c¹nh tranh thÊt b¹i ph¶i ta chç nµy n÷a dÉn ®Êu gi¸ phÝ . mçi lÇn nhiÒu nhÊt dÉn 50 v¹n l­îng , b¶o ®¶m nhµ ch¬i tiÒn mét mùc ®ñ ", 
" tæng lÜnh ®éi cã thÓ ph©n ph¸t 29 khèi vâ l©m quyÕt ®Êu lÖnh bµi cho nh÷ng kh¸c ë vâ l©m t©n tó liªn cuéc so tµi quan viªn chç ®Ých nhµ ch¬i . ®· ë chung kÕt khu bªn trong cã t­ c¸ch ®Ých nhµ ch¬i th× kh«ng thÓ n÷a dÉn t­ c¸ch . " 
} 

CP_HELP_FINAL = "<color=yellow> ®¹i héi vâ l©m <color>, tõ c¸c khu vùc ®Ých 90 ng­êi t¹o thµnh 1 ®éi tham gia toµn khu vùc ®¹i héi vâ l©m . trong ®ã , 10 ng­êi lµ khu vùc dÆm thËp ®¹i cao thñ #50 ng­êi lµ thËp ®¹i m«n ph¸i tr­íc 5 ®¹i cao thñ tæng lÜnh ®éi ; cßn l¹i 30 nh©n trung ®em chän lùa 1 ng­êi lµm tæng lÜnh ®éi . tæng lÜnh ®éi cã t­ c¸ch quyÕt ®Þnh ë cßn d­ l¹i 29 nh©n trung ng­êi nµo cã t­ c¸ch tham gia cuèi cïng ®Ých tranh tµi . " 

function transtoplace() 
Say("Vâ l©m t©n tó liªn cuéc so tµi ®¹i héi dù chän cuéc so tµi kÕt thóc mü m·n . b©y giê cã thÓ ®Õn vâ l©m t©n tó liªn cuéc so tµi quan viªn chç xem so tµi kÕt qu¶ còng nhËn lÊy t­¬ng øng danh hiÖu . kÝnh xin mong ®îi ®¹i héi vâ l©m ®Ých b¾t ®Çu .", 0) 
do return end 
if (GetLevel() < 90) then 
Say("Ng­¬i ph¶i 90 cÊp trë lªn míi cã thÓ tiÕn vµo ®¹i héi vâ l©m cuéc so tµi trµng , xin/mêi tiÕp tôc luyÖn cÊp !", 0) 
return 
end 
if (GetLastFactionNumber() == -1) then 
Say("Minh chñ vâ l©m cã lÖnh : chØ cã 10 ®¹i m«n ph¸i ng­êi cña míi cã thÓ tham gia ®¹i héi vâ l©m , kh«ng cöa ph¸i ng­êi sÜ kh«ng thÓ tham gia . gia nhËp 10 ®¹i m«n ph¸i sau míi cã thÓ tham gia tranh tµi !", 0) 
return 
elseif(nt_gettask(CP_TASKID_REGIST) ~= CP_UPTO_TRYOUT) then 
Msg2Player("Ng­¬i cßn kh«ng cã ghi danh # ®Õn vâ l©m t©n tó liªn cuéc so tµi quan viªn chç ghi danh tham gia tranh tµi !") 
NewWorld(176, 1444, 3256) 
else 
if(GetLastFactionNumber() == 0) then 
NewWorld(CP_MAPTAB[1][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  ThiÕu L©m 
elseif (GetLastFactionNumber() == 1) then 
NewWorld(CP_MAPTAB[2][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Thiªn v­¬ng 
elseif (GetLastFactionNumber() == 2) then 
NewWorld(CP_MAPTAB[3][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  §­êng m«n 
elseif (GetLastFactionNumber() == 3) then 
NewWorld(CP_MAPTAB[4][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  n¨m ®éc 
elseif (GetLastFactionNumber() == 4) then 
NewWorld(CP_MAPTAB[5][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Nga Mi 
elseif (GetLastFactionNumber() == 5) then 
NewWorld(CP_MAPTAB[6][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  thóy khãi 
elseif (GetLastFactionNumber() == 6) then 
NewWorld(CP_MAPTAB[7][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  C¸i Bang 
elseif (GetLastFactionNumber() == 7) then 
NewWorld(CP_MAPTAB[8][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  ngµy nhÉn 
elseif (GetLastFactionNumber() == 8) then 
NewWorld(CP_MAPTAB[9][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Vâ §­¬ng 
elseif (GetLastFactionNumber() == 9) then 
NewWorld(CP_MAPTAB[10][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  C«n L«n 
end 
Talk(1, "","Ng­¬i ®· tiÕn vµo ®¹i héi vâ l©m cuéc so tµi trµng , mêi ®­îc xem cuéc chiÕn trµng (189, 188) , (191, 190) , (185, 187) xin/mêi tham gia v¸n nµy tranh tµi !") 
end 
end 

function checkmap(flag) 
local mapid = SubWorldIdx2ID(SubWorld) 
local ladder = 0 
if (mapid == 397 or mapid == 396) then 
mapname = " ThiÕu L©m " 
ladder = 10120 
elseif (mapid == 399 or mapid == 398) then 
mapname = " Thiªn v­¬ng " 
ladder = 10121 
elseif (mapid == 401 or mapid == 400) then 
mapname = " §­êng m«n " 
ladder = 10122 
elseif (mapid == 403 or mapid == 402) then 
mapname = " n¨m ®éc " 
ladder = 10123 
elseif (mapid == 405 or mapid == 404) then 
mapname = " Nga Mi " 
ladder = 10124 
elseif (mapid == 407 or mapid == 406) then 
mapname = " thóy khãi " 
ladder = 10125 
elseif (mapid == 409 or mapid == 408) then 
mapname = " C¸i Bang " 
ladder = 10126 
elseif (mapid == 411 or mapid == 410) then 
mapname = " ngµy nhÉn " 
ladder = 10127 
elseif (mapid == 413 or mapid == 412) then 
mapname = " Vâ §­¬ng " 
ladder = 10128 
elseif (mapid == 415 or mapid == 414) then 
mapname = " C«n L«n " 
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
Say("Ng­¬i nghÜ gia nhËp trî gióp bªn kia ?", 4,"C¹nh tranh khu vùc tæng lÜnh ®éi /help_bid","Vâ l©m t©n tó liªn cuéc so tµi ®¹i héi dù chän cuéc so tµi /help_tryout","§¹i héi vâ l©m /help_final","Ta biÕt !/OnCancel") 
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
Msg2Player("Ng­¬i lÊy ®­îc 1 c¸ "..CP_AWARD_ITEM[numth][1]) 
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

-- script viet hoa By http://tranhba.com  thiÕt trÝ nhiÖm vô tr¹ng th¸i 
function nt_settask(nTaskID, nTaskValue) 
SetTask(nTaskID, nTaskValue) 
SyncTaskValue(nTaskID) -- script viet hoa By http://tranhba.com  cïng b­íc ®Õn kh¸ch hµng b­ng 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhiÖm vô tr¹ng th¸i 
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
-- script viet hoa By http://tranhba.com  më ra mét v¨n kiÖn 
function biwu_loadfile(filename) 
if (IniFile_Load(filename, filename) == 0) then 
File_Create(filename) 
end 
end 

-- script viet hoa By http://tranhba.com  ®¹t ®­îc v¨n kiÖn trung ®Ých szSection ®Ých key ®Ých trÞ gi¸ 
function biwu_getdata(filename, szsect, szkey) 
return IniFile_GetData(filename, szsect, szkey) 
end 

-- script viet hoa By http://tranhba.com  thiÕt trÝ v¨n kiÖn trung ®Ých szSection ®Ých key trÞ gi¸ lµ szValue 
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
