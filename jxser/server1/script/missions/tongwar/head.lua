Include("\\script\\event\\tongwar\\headinfo.lua")
MISSIONID = 33 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr�nh tr� ch�i th�i gian t��ng ���ng v�i 1 gi�y 
TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi�y c�ng b� m�t c�i chi�n hu�ng 
TIMER_2 = 15* 6 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chi�n th�i gian l� 2 gi� 
RUNGAME_TIME = 30 * 60 * FRAME2TIME / TIMER_1; -- script viet hoa By http://tranhba.com  ghi danh 30 ph�t sau , t� ��ng ti�n v�o chi�n ��u giai �o�n 

MAX_MEMBERCOUNT = 150 
MIN_MEMBERCOUNT = 5 
TIME_PLAYER_STAY = 120 
TONGWAR_MAXDEATH = 10 

BONUS_KILLPLAYER = 75 
BONUS_MAXSERIESKILL = 150 

tbNPCPOS = {"npcpos1", "npcpos2"} 
TNPC_DOCTOR1 = 55;-- script viet hoa By http://tranhba.com  qu�n y ��ch Npc m� b�n ID s� 
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
-- script viet hoa By http://tranhba.com 7 nh� ch�i binh l�nh -- script viet hoa By http://tranhba.com 7/3 nh� ch�i gi�o �y -- script viet hoa By http://tranhba.com 14/15 nh� ch�i th�ng l�nh -- script viet hoa By http://tranhba.com 21/25 nh� ch�i ph� t��ng -- script viet hoa By http://tranhba.com 14/25 nh� ch�i ��i t��ng -- script viet hoa By http://tranhba.com 7/20 nh� ch�i Nguy�n so�i 

RANK_PKBONUS = { 
{1, 6/5,7/5 ,8/5,2 }, 
{4/5,1, 6/5,7/5,8/5 }, 
{3/5,4/5,1, 6/5,7/5 }, 
{2/5,3/5,4/5,1, 6/5 }, 
{1/5,2/5,3/5,4/5,1}, 
}; 

TAB_SERIESKILL = -- script viet hoa By http://tranhba.com  ghi ch�p b�t ��ng rank ��ch nh� ch�i , � PK l�c , c� hay kh�ng ghi ch�p th�c t� ch�m li�n t�c ��ch bi�u , 1 b�y t� ghi ch�p , 0 b�y t� kh�ng ghi ch�p 
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
" ng��i b� ��ng c�a v� <color=white> binh l�nh <color>!", 
" ng��i b� ��ng c�a v� <color=0xff> gi�o �y <color>! l��ng m�u gia t�ng 20%", 
" ng��i b� ��ng c�a v� <color=0xff> th�ng l�nh <color>! l��ng m�u gia t�ng 30%, ph�ng th� gia t�ng 5%", 
" ng��i b� ��ng c�a v� <color=yellow> ph� t��ng <color>! l��ng m�u gia t�ng 40%, ph�ng th� gia t�ng 10% ", 
" ng��i b� ��ng c�a v� <color=yellow><bclr=red> ��i t��ng <bclr><color>! l��ng m�u gia t�ng 50%, ph�ng th� gia t�ng 15%.", 
" ng��i b� ��ng c�a v� <color=yellow> Nguy�n so�i <color=>!"} 

tbRANKNAME={"<color=white> binh l�nh <color>", "<color=0xa0ff> gi�o �y <color>", "<color=0xff> th�ng l�nh <color>", "<color=yellow> ph� t��ng <color>", "<color=yellow><bclr=red> ��i t��ng <bclr><color>" , "<color=black> Nguy�n so�i <color>"} 

TITLE_BONUSRANK1 = 0 -- script viet hoa By http://tranhba.com  tr� th�nh t��ng �ng ��u h�m c�n t�ch ph�n tr� gi� 
TITLE_BONUSRANK2 = 10000 
TITLE_BONUSRANK3 = 20000 
TITLE_BONUSRANK4 = 40000 
TITLE_BONUSRANK5 = 60000 
TITLE_BONUSRANK6 = 80000 

TITLE_PL2RANK1_N = 400 -- script viet hoa By http://tranhba.com  t��ng �ng ��u h�m nh� ch�i l�n nh�t nh�n s� 
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
