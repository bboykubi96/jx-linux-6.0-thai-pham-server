-- script viet hoa By http://tranhba.com 1# v�o n�i ch�n �i�m nh�t ��nh ph�i � th�ng nh�t ��ch m�t ch� �i�m , c� th� c�ng c�m phi�u npc th�ng nh�t ��ch m�t 
-- script viet hoa By http://tranhba.com 2# phi�u th�c hi�n ph��ng ph�p ? t�m th�i kh�ng th� , tr�c ho�n nh�ng th� n�y l�i th�m �i 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  mi�n ph� d�ng/u�ng c�ng th�nh chi�n 
-- script viet hoa By http://tranhba.com 2006-11-22 
-- script viet hoa By http://tranhba.com by t� kh�ng ph�i l� c� 
IncludeLib("FILESYS"); 
IncludeLib("TITLE"); 
IncludeLib("SETTING"); 
IncludeLib("BATTLE"); 


TSK_TEMP_CURTIME = 114 
TSK_TEMP_CURCOUNT = 115 

tb_CW_MEDICINE = 
{ 
{10, {6,1,1302,1,1,1}, 1000,"N�m hoa ng�c l� ho�n - c�ng th�nh chi�n ."}, 
{11, {6,1,1303,1,1,1}, 800,"C�u chuy�n ho�n h�n �an - c�ng th�nh chi�n "}, 
{12, {6,1,1304,1,1,1}, 800,"Th� � ho�n h�n �an - c�ng th�nh chi�n "}, 
{13, {6,1,1305,1,1,1}, 800, " long ti�n h�a ��c �an - c�ng th�nh chi�n "}, 
} 

MISSIONID = 6; 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr�nh tr� ch�i th�i gian t��ng ���ng v�i 1 gi�y 
REPORTTIME = 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com 60 gi�y c�ng b� m�t c�i chi�n hu�ng 
GAMETIME = 90 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chi�n t�ng th�i gian l� 90 ph�t 
CITYWAR_TOP10_EXP = 3000000; 


MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p nhi�m v� tr�ng th�i thay ��i l��ng ID 
-- script viet hoa By http://tranhba.com  n�n thay ��i l��ng ch� h��ng ��ch tr�ng th�i tr� gi� 0 b�y t� chi�n d�ch v� m� ra , 1 b�y t� chi�n d�ch ghi danh trung , 2 b�y t� chi�n d�ch chi�n ��u ti�n h�nh trung , 3 b�y t� chi�n d�ch m�i v�a k�t th�c 
MS_STORETASKID = 240; 
MS_NEWSVALUE = 10; -- script viet hoa By http://tranhba.com  nhi�m v� trung c�t gi� tin t�c thay ��i l��ng ��ch ��a ph��ng 
MS_SYMBOLCOUNT = 3; -- script viet hoa By http://tranhba.com  bia �� ��ch s� l��ng 
MS_SYMBOLBEGIN = 15;-- script viet hoa By http://tranhba.com ��¼ʯ��״̬�ı���ID��һ����ţ���MS_SYMBOLBEIN ��MS_SYMBOLBEGIN + MS_SYMBOLCOUNT�ֱ��¼����ʯ����״ֵ̬

MS_STONENPC1 = 25; 
MS_STONENPC2 = 26; 
MS_STONENPC3 = 27; 

MS_TSCBEGIN = 50;-- script viet hoa By http://tranhba.com  mission trung ghi ch�p ��u th�ch xe c� hay kh�ng �� c� ��ch tr�ng th�i d�u hi�u 
g_nDoorCount = 3; -- script viet hoa By http://tranhba.com  c�a th�nh ��ch t�ng s� 
g_nMaxTscPerDoor = 3; -- script viet hoa By http://tranhba.com  m�i c�a l�n nh�t c� th� xu�t hi�n ��u th�ch xe s� l��ng 
MS_GCCBEGIN = MS_TSCBEGIN + g_nDoorCount * g_nMaxTscPerDoor;
g_nMaxGccPerDoor = 1; -- script viet hoa By http://tranhba.com  c�ng ph��ng m�i c�a nhi�u nh�t t�n t�i c�ng th�nh xe ��ch s� l��ng 
-- script viet hoa By http://tranhba.com gccbegin = 59 
-- script viet hoa By http://tranhba.com toolbegin = 62 
-- script viet hoa By http://tranhba.com doorbegin = 62 + 6 = 68
MS_TOOLBEGIN = MS_GCCBEGIN + g_nMaxGccPerDoor * g_nDoorCount;
g_nMaxToolCount = 6; -- script viet hoa By http://tranhba.com  th� ph��ng l�n nh�t ��ng th�i t�n t�i l�nh ��nh thu� nh�n s� 

MS_DOORBEGIN = MS_TOOLBEGIN + g_nMaxToolCount; -- script viet hoa By http://tranhba.com ��¼����״̬��mission����index
MS_KEY = 99 


TV_TASKID = 230; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i nhi�m v� tr��c m�t ID 
TV_TASKVALUE = 231; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i nhi�m v� tr��c m�t ��ch tr� gi� , ghi ch�p s� ch�c ph��ng , t�ng v� 1 , kim v� 2 
TV_TASKKEY = 232; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i nhi�m v� tr��c m�t ��ch key s� 
TV_CITYID = 233; 

CS_RevId = 20 
CS_RevData = 10; 

MAX_CAMP1COUNT = 200;-- script viet hoa By http://tranhba.com  th� th�nh ph��ng bang h�i l�n nh�t c� th� tham gia nh�n s� 
MAX_CAMP2COUNT = 200;-- script viet hoa By http://tranhba.com  c�ng th�nh ph��ng bang h�i l�n nh�t c� th� tham gia nh�n s� 
MAX_CAMP3COUNT = 50 ;-- script viet hoa By http://tranhba.com  cho ph�p th� th�nh ph��ng l�n nh�t c� th� y�u c�u hi�p tr� k� tha bang h�i nh�n s� 
MAX_CAMP4COUNT = 50 ;-- script viet hoa By http://tranhba.com  cho ph�p c�ng th�nh ph��ng l�n nh�t c� th� y�u c�u hi�p tr� k� tha bang h�i nh�n s� 

-- script viet hoa By http://tranhba.com  c�ng th� song ph��ng l�n ��u ti�n v�o tr�ng l�c ��ch t�a �� 
CS_CampPos1 = {221, 1533, 3211};-- script viet hoa By http://tranhba.com  th� ph��ng 
CS_CampPos2 = {221, 1903, 3608};-- script viet hoa By http://tranhba.com  c�ng ph��ng 

STONENPCID1 = 528; -- script viet hoa By http://tranhba.com  th�ch 0 bia ��ch Npc m� b�n ID 
STONENPCID2 = 530; 
STONELEVEL1 = 10; -- script viet hoa By http://tranhba.com  bia �� c�p b�c th� ph��ng ��ch c�t �� 
STONELEVEL2 = 20; -- script viet hoa By http://tranhba.com  c�ng ph��ng ��ch c�t �� 
STONENAME = " ��nh th�nh c�t �� "; 
DOORNPCID = 532; 
DOORLEVEL = 60; 
StonePos = 
{ 
{x = 55232, y = 104928, Name = " ��nh xuy�n tr� "}, 
{x = 53152, y = 107040, Name = " l�p d��ng tr� "}, 
{x = 50976, y = 108992, Name = " b�nh giang tr� "}, 
}; 


DoorPos= 
{ 
{x = 57472, y = 106944, Name=" ��nh xuy�n c�a "}, 
{x = 55296, y = 109088, Name=" l�p d��ng c�a "}, 
{x = 53184, y = 111136, Name=" b�nh giang c�a "}, 
}; 

DOCTORNPCID = 230; 
DoctorPos = 
{ 
{49184,102592,"Theo qu�n ��i phu "}, 
{50048,103552,"Theo qu�n ��i phu "}, 
{48480,103616,"Theo qu�n ��i phu "}, 
{48928,104160,"Theo qu�n ��i phu "}, 
{61184,114176,"Theo qu�n ��i phu "}, 
{61600,114592,"Theo qu�n ��i phu "}, 
{60128,115168,"Theo qu�n ��i phu "}, 
{60672,115616,"Theo qu�n ��i phu "}, 
} 

-- script viet hoa By http://tranhba.com  tr��c hai l� ��u th�ch xe ��ch t�a �� , sau hai l� ��u �i�m ��ch t�a �� 
TscPos= 
{ 
{58752, 107648, 58304, 106912}, 
{58080, 107520, 57408, 106880}, 
{57952, 108480, 57408, 107872}, 

{56736,109824, 56192, 109024}, 
{55872,109728, 55232, 109056}, 
{55904,110592, 55040, 109056}, 

{54560,111808, 53312, 111136}, 
{53856,111776, 53120, 111104}, 
{53888,112448, 53248, 111936}, 
}; 

GccPos = 
{ 
{58048,107552 }, 
{55936,109664 }, 
{1675*32,3486*32}, 
}; 

OuterPos = 
{ 
{222, 1613, 3185}, 
{223, 1613, 3185}, 
} 

ObstaclePos = 
{ 
{1793*32, 3340*32}, 
{1727*32, 3407*32}, 
{1660*32, 3469*32}, 

} 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com Title Value-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
RA_KILL_PL_RANK = {10, 2.334, 0.934, 0.84, 0.56, 0.35} 
-- script viet hoa By http://tranhba.com 7 nh� ch�i binh l�nh -- script viet hoa By http://tranhba.com 7/3 nh� ch�i gi�o �y -- script viet hoa By http://tranhba.com 14/15 nh� ch�i th�ng l�nh -- script viet hoa By http://tranhba.com 21/25 nh� ch�i ph� t��ng -- script viet hoa By http://tranhba.com 14/25 nh� ch�i ��i t��ng -- script viet hoa By http://tranhba.com 7/20 nh� ch�i Nguy�n so�i 
BONUS_KILLPLAYER = 75 
BONUS_MAXSERIESKILL = 150 
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
" b�y gi� b� t�n phong l�m <color=0xa0ff> gi�o �y <color>!", 
" b�y gi� b� t�n phong l�m <color=0xff> th�ng l�nh <color>!", 
" b�y gi� b� t�n phong l�m <color=yellow> ph� t��ng <color>!", 
" b�y gi� b� t�n phong l�m <color=yellow><bclr=red> ��i t��ng <bclr><color>!", 
" ng��i b� ��ng c�a v� <color=yellow> Nguy�n so�i <color=>!"} 

tbRANKNAME={"<color=white> binh l�nh <color>", "<color=0xa0ff> gi�o �y <color>", "<color=0xff> th�ng l�nh <color>", "<color=yellow> ph� t��ng <color.", "<color=yellow><bclr=red> ��i t��ng <bclr><color>" , "<color=black> Nguy�n so�i <color>"} 

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
TV_LASTDEATHTIME = 2306 
TV_LASTDEATHMAPX = 2307 
TV_LASTDEATHMAPY = 2308 
TV_SERIESKILL_REALY = 2305 -- script viet hoa By http://tranhba.com  nh� ch�i tr��c m�t ��ch th�c t� ch�m li�n t�c tr� gi� # cao c�p gi�t t��ng ��i th�p c�p ��ch nh� ch�i , k� ch�m li�n t�c , nh�ng b�t k� ch�n th�t ch�m li�n t�c # 


-- script viet hoa By http://tranhba.com BATTLE TASK-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
PL_TOTALPOINT = 1 
PL_KILLPLAYER = 2 
PL_KILLNPC = 3 
PL_BEKILLED = 4 
PL_SNAPFLAG = 5 
PL_KILLRANK1 = 6 
PL_KILLRANK2 = 7 
PL_KILLRANK3 = 8 
PL_KILLRANK4 = 9 
PL_KILLRANK5 = 10 
PL_KILLRANK6 = 11 
PL_KILLRANK7 = 12 
PL_MAXSERIESKILL = 13 -- script viet hoa By http://tranhba.com  nh� ch�i to�n b� chi�n cu�c l�n nh�t ch�m li�n t�c ��m 
PL_SERIESKILL = 14 -- script viet hoa By http://tranhba.com  nh� ch�i tr��c m�t ��ch ch�m li�n t�c ��m 
PL_FINISHGOAL = 15 
PL_1VS1 = 16 
PL_GETITEM = 17 
PL_WINSIDE = 18 
PL_PRISEGRADE = 19 
PL_AVERAGEGRADE = 20 
PL_WINGRADE = 21 
PL_PARAM1 = 22 
PL_PARAM2 = 23 
PL_PARAM3 = 24 
PL_PARAM4 = 25 
PL_PARAM5 = 26 
PL_CURRANK = 27 -- script viet hoa By http://tranhba.com  =PL_PARAM6 = 27 b�y t� nh� ch�i tr��c m�t ��ch quan ch�c , tr��c m�t s� d�ng th� 6 s� tham s� 

PL_BATTLEID=41 
PL_RULEID=42 
PL_BATTLECAMP = 43 
PL_BATTLESERIES = 44 -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i l�n tr��c tham gia chi�n d�ch ��ch chi�n d�ch n��c ch�y s� 
PL_KEYNUMBER = 45 
PL_LASTDEATHTIME = 46 
		PL_BATTLEPOINT = 47	-- script viet hoa By http://tranhba.com ��¼��ұ�ս�۵��ܻ��֣��ܻ�����������μӵĸ���ս�ֵĻ����ܺ�, E(PL_TOTALPOINT1 + PL_TOTALPOINT2+ ...)
PL_ROUND = 48 

GAME_KEY = 1 
GAME_BATTLEID = 2 
GAME_RULEID = 3 
GAME_MAPID = 4 
GAME_CAMP1 = 5 
GAME_CAMP2 = 6 
GAME_MAPICONID = 7 
GAME_RESTTIME = 8 
GAME_LEVEL = 9 
GAME_MODE = 10 
GAME_CAMP1AREA= 11 
GAME_CAMP2AREA= 12 
GAME_BATTLESERIES = 13 
GAME_ROUND = 14 

-- script viet hoa By http://tranhba.com ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ hoa l� ��ch ph�n chia tuy�n ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

function CheckWin() 
local nResult = 0;-- script viet hoa By http://tranhba.com  th� ph��ng bia �� ��ch s� l��ng 
local nCount = MS_SYMBOLCOUNT; 
for i = 1, nCount do 
		 if (GetMissionV(MS_SYMBOLBEGIN + i - 1) == 2) then 
		 	nResult = nResult + 1;
end; 
end 
return nResult; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function GameWin(nWinner) 
if (nWinner == 1) then 
str = " quy�t cu�c so t�i " .. " th� ph��ng "..GetGamerName(1).." ��i th�ng , ti�p t�c gi� v�ng #"..GetGameCity().." l�y ���c quy�n th�ng tr� # ti�p t�c gi� v�ng "; 
NotifyWarResult(GetWarOfCity(), 0) 
else 
str= " quy�t cu�c so t�i " .. " c�ng ph��ng :"..GetGamerName(2) .. " ��i th�ng , ti�p t�c gi� v�ng ! "..GetGameCity().." l�y ���c quy�n th�ng tr� # ti�p t�c gi� v�ng "; 

NotifyWarResult(GetWarOfCity(), 1) 
end; 

WriteLog(date("%m%d-%H:%M")..str) 
AddGlobalNews(str); 
CloseMission(MISSIONID); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - �em gi�y truy�n ��i th�nh ph�n c�ng gi�y , t� nh� 62s = 1m2s 
function GetMinAndSec(nSec) 
nRestMin = floor(nSec / 60); 
nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  l�y ���c th�nh chi�n ��ch th�nh ph� 
function GetWarOfCity() 
for i = 1,7 do 
if (HaveBeginWar(i) ~= 0) then 
return i; 
end; 
end; 
return 0; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function GetGamerName(nWinner) 
CityID = GetWarOfCity(); 
Tong1, Tong2=GetCityWarBothSides(CityID); 
if (nWinner == 1) then 
return Tong2; 
else 
return Tong1; 
end; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function GetGameCity() 
CityID = GetWarOfCity(); 
return GetCityAreaName(CityID); 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function GetNearstPos(X,Y, PosTab) 
PosCount = getn(PosTab); 
PosId = 0; 
MaxDist = 999999999; 

BeyondCount = 0;-- script viet hoa By http://tranhba.com  v��t qua l�n nh�t cho ph�p kho�ng c�ch s� l��ng , n�u nh� c�ng v��t qua l�i c�a , li�n tr� v� 0 

for i = 1, PosCount do 
		Dist = sqrt( (X-PosTab[i][1]) * (X-PosTab[i][1]) + (Y - PosTab[i][2]) * (Y - PosTab[i][2]))
if (Dist >= 600) then 
			BeyondCount = BeyondCount + 1;
end; 
if (i == 1) then 
PosId = 1 
MaxDist = Dist 
elseif (MaxDist > Dist) then 
PosId = i 
MaxDist = Dist 
end 
end; 

if (BeyondCount >= PosCount) then 
return 0 
else 
return PosId; 
end; 
end; 

function CreateObstacle(X,Y) 
for i=-10,3 do 
		AddObstacleObj(359, 221, X + i * 16 ,Y - i * 16)
end 
end; 

function ClearObstacle(X,Y) 
for i=-10,3 do 
		ClearObstacleObj(221, X + i * 16 ,Y - i * 16)
end 
end; 

function DelNpcSafe(nNpcIndex) 
WriteLog(GetLoop()..": DelNpcSafe:"..nNpcIndex); 

if (nNpcIndex <= 0 ) then 
return 
end 

PIdx = NpcIdx2PIdx(nNpcIndex); 
if (PIdx > 0) then 
WriteLog("Sai l�m !!! DelNpc mu�n ti�u tr� m�t gamer "); 
return 
end; 

DelNpc(nNpcIndex) 
end; 

function sf_onplayerleave() 
RestoreOwnFeature() 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ti�n v�o chi�n tr��ng l�c ph� cho nh� ch�i t��ng �ng ��u h�m BEGIN-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function bt_JudgePLAddTitle() 
-- script viet hoa By http://tranhba.com  ��t ���c tr��c m�t ��ch Rank , n�u nh� t�ch ph�n ��t t�i h� c�p m�t Rank ��ch y�u c�u tr� gi� l� cho n�n nh� ch�i n�n Rank, n�u nh� Rank tr� gi� �� ��t t�i th��ng h�n l� kh�ng th�m 
local nCurRank = BT_GetData(PL_CURRANK) 
if ( nCurRank >= getn(TAB_RANKBONUS)) then 
return 
end 
	if (BT_GetData(PL_TOTALPOINT) < TAB_RANKBONUS[nCurRank + 1]) then
return 
end 
local nRankCount = getn(TAB_RANKBONUS) 
for i = 1, getn(TAB_RANKBONUS) do 
		if (BT_GetData(PL_TOTALPOINT) >= TAB_RANKBONUS[nRankCount - i + 1] ) then
				bt_RankEffect(nRankCount - i + 1)
return 
end 
end 
end 

-- script viet hoa By http://tranhba.com  �� cho ��u h�m 
function bt_RankEffect(rank) 
if (rank == 0) then 
rank = 1 
end 
local campnum = 89 
if (GetCurCamp() == 2) then 
		campnum = campnum + 5
end 
	Title_AddTitle(campnum + rank - 1, 0, 9999999)
	Title_ActiveTitle(campnum + rank - 1)
-- script viet hoa By http://tranhba.com  AddSkillState(RANK_SKILL, rank - 1, 0, 999999); 
Msg2Player(TAB_RANKMSG[rank]); 
BT_SetData(PL_CURRANK, rank); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ti�n v�o chi�n tr��ng l�c ph� cho nh� ch�i t��ng �ng ��u h�m ENDING-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function bt_addtotalpoint(point) 
if (point == 0) then 
return 
end 
	BT_SetData(PL_TOTALPOINT, BT_GetData(PL_TOTALPOINT) + point)
bt_JudgePLAddTitle() 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  t�nh to�n t�ch ph�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function ResetBonus() 
BT_SetTypeBonus(PL_KILLPLAYER, 1, floor(BONUS_KILLPLAYER)) 
BT_SetTypeBonus(PL_MAXSERIESKILL, 1, floor(BONUS_MAXSERIESKILL)) 

BT_SetTypeBonus(PL_KILLPLAYER, 2, floor(BONUS_KILLPLAYER)) 
BT_SetTypeBonus(PL_MAXSERIESKILL, 2, floor(BONUS_MAXSERIESKILL)) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function bt_setnormaltask2type() 
-- script viet hoa By http://tranhba.com 701 �� b� chi�m d�ng , cho n�n thay ��i ��n 751 
BT_SetType2Task(1, 751) 
for i = 2, 50 do 
	BT_SetType2Task(i, 700 + i);
end 
end 
