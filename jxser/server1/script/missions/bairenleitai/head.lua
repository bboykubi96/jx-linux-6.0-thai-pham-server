-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n ��i l�c b�n - tr�m ng��i l�i ��i ��u v�n ki�n 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##head.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-04-24 15:08:47 

-- script viet hoa By http://tranhba.com  ====================================================== 

tbArena_Info = { 

[1] = { 
nIndex = 1, 
InPos = {1784,3099}, -- script viet hoa By http://tranhba.com  v�o l�i ��i t�a �� 
OutPos = { 
{1776,3087}, 
{1776,3115}, 
{1796,3086}, 
{1796,3116}, 
}, -- script viet hoa By http://tranhba.com  ra l�i ��i t�a �� 
NpcPos = {1789,3103}, -- script viet hoa By http://tranhba.com  l�i ��i c� NPC �i�m 
RevivalPos = {1749, 3135}, 
}, 
[2] = { 
nIndex = 2, 
InPos = {1744,3061}, 
OutPos = { 
{1737,3051}, 
{1737,3077}, 
{1757,3050}, 
{1758,3077}, 
}, 
NpcPos = {1750,3065}, 
RevivalPos = {1749, 3135}, 
}, 
[3] = { 
nIndex = 3, 
InPos = {1822,3138}, 
OutPos = { 
{1816,3125}, 
{1814,3153}, 
{1836,3127}, 
{1835,3153}, 

}, 
NpcPos = {1828,3142}, 
RevivalPos = {1749, 3135}, 

}, 
[4] = { 
nIndex = 4, 
InPos = {1705,3101}, 

OutPos = { 
{1699,3087}, 
{1698,3116}, 
{1720,3088}, 
{1719,3117}, 

}, 
NpcPos = {1710,3104}, 
RevivalPos = {1749, 3135}, 

}, 
[5] = { 
nIndex = 5, 
InPos = {1781,3178}, 

OutPos = { 
{1774,3192}, 
{1776,3163}, 
{1795,3164}, 
{1795,3190}, 

}, -- script viet hoa By http://tranhba.com  
NpcPos = {1788,3181}, -- script viet hoa By http://tranhba.com  
RevivalPos = {1749, 3135}, 
}, 
}; 


tbTimerInfo = { 
nApply = 30*18, -- script viet hoa By http://tranhba.com  ��i ch� l�n ��i , ch� ��i th�i gian 
nPrepare = 3*18, -- script viet hoa By http://tranhba.com  ch�n l�i chu�n b� th�i gian 
nFight = 3*60*18,-- script viet hoa By http://tranhba.com 3*60*18, -- script viet hoa By http://tranhba.com  tranh t�i th�i gian 
nSchedule = 1*60*18, -- script viet hoa By http://tranhba.com  �i�u �� th�i gian 

}; 

tbTrapFile = { 
	szPosFile = "\\settings\\maps\\missions\\bairenleitai\\arena%d.txt",
	szScriptFile = "\\script\\missions\\bairenleitai\\trap_arena.lua",

	szBeautyFile = "\\settings\\maps\\missions\\bairenleitai\\drummer.txt",
	szObstacleFile = "\\settings\\maps\\missions\\bairenleitai\\obstacle.txt",
	szEnterMapFile = "\\settings\\maps\\missions\\bairenleitai\\inmap.txt",
}; 

tbNpcFile = { 
	szFightNpc = "\\script\\missions\\bairenleitai\\npc_death.lua",
	szTranserNpc = "\\script\\missions\\bairenleitai\\npc_trans.lua",
	szBeautyNpc = "\\script\\missions\\bairenleitai\\npc_beauty.lua",
	szBox = "\\script\\missions\\bairenleitai\\npc_chuwuxiang.lua",
	szDrugstore = "\\script\\missions\\bairenleitai\\npc_store.lua",

}; 

tbNpcTypeList = {-- script viet hoa By http://tranhba.com npc ��ch lo�i h�nh 
[1] = { 
nNpcId = 1786, 
szName = " Thi�n v��ng cao th� tr�m ng��i l�i ��i ", 
nLevel = 90, 
nSeries = 0, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ��i tho�i npc c� th� kh�ng c�n c�i n�y 
}, 
[2] = { 
nNpcId = 1787, 
szName = " Thi�u L�m cao th� tr�m ng��i l�i ��i ", 
nLevel = 90, 
nSeries = 0, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ��i tho�i npc c� th� kh�ng c�n c�i n�y 
}, 
[3] = { 
nNpcId = 1788, 
szName = " n�m ��c cao th� tr�m ng��i l�i ��i ", 
nLevel = 90, 
nSeries = 1, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ��i tho�i npc c� th� kh�ng c�n c�i n�y 
}, 
[4] = { 
nNpcId = 1789, 
szName = " ���ng m�n cao th� tr�m ng��i l�i ��i ", 
nLevel = 90, 
nSeries = 1, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ��i tho�i npc c� th� kh�ng c�n c�i n�y 
}, 
[5] = { 
nNpcId = 1790, 
szName = " Nga Mi cao th� tr�m ng��i l�i ��i ", 
nLevel = 90, 
nSeries = 2, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ��i tho�i npc c� th� kh�ng c�n c�i n�y 
}, 
[6] = { 
nNpcId = 1791, 
szName = " th�y kh�i cao th� tr�m ng��i l�i ��i ", 
nLevel = 90, 
nSeries = 2, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ��i tho�i npc c� th� kh�ng c�n c�i n�y 
}, 
[7] = { 
nNpcId = 1792, 
szName = " ng�y nh�n cao th� tr�m ng��i l�i ��i ", 
nLevel = 90, 
nSeries = 3, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ��i tho�i npc c� th� kh�ng c�n c�i n�y 
}, 
[8] = { 
nNpcId = 1793, 
szName = " C�i Bang cao th� tr�m ng��i l�i ��i ", 
nLevel = 90, 
nSeries = 3, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ��i tho�i npc c� th� kh�ng c�n c�i n�y 
}, 
[9] = { 
nNpcId = 1794, 
szName = " V� ���ng cao th� tr�m ng��i l�i ��i ", 
nLevel = 90, 
nSeries = 4, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ��i tho�i npc c� th� kh�ng c�n c�i n�y 
}, 
[10] = { 
nNpcId = 1795, 
szName = " C�n L�n cao th� tr�m ng��i l�i ��i ", 
nLevel = 90, 
nSeries = 4, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ��i tho�i npc c� th� kh�ng c�n c�i n�y 
}, 
[11] = { 
nNpcId = 1571, 
szName = " c� tay ", 
nLevel = 90, 
szScriptPath = tbNpcFile.szBeautyNpc, 
nTime = 15*60, 
}, 
}; 

TSK_LEAVERMAPID = 2323 -- script viet hoa By http://tranhba.com  t�n tr� r�i �i ghi danh �i�m ��ch mapid 
TSK_LEAVERPOSX = 2324 -- script viet hoa By http://tranhba.com  t�n tr� r�i �i ghi danh �i�m ��ch x t�a �� �i�m 
TSK_LEAVERPOSY = 2325 -- script viet hoa By http://tranhba.com  t�n tr� r�i �i ghi danh �i�m ��ch y t�a �� �i�m 

HA_MAXSTAYTIME = 90*60 -- script viet hoa By http://tranhba.com  90 ph�t d�i nh�t d�ng l�i th�i gian 
HA_DOUBLETIME = 30*60 -- script viet hoa By http://tranhba.com  30 ph�t g�p ��i hi�u qu� 
