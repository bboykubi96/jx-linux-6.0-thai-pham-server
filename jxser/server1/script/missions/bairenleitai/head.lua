-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ®¹i lôc b¶n - tr¨m ng­êi l«i ®µi ®Çu v¨n kiÖn 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##head.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-04-24 15:08:47 

-- script viet hoa By http://tranhba.com  ====================================================== 

tbArena_Info = { 

[1] = { 
nIndex = 1, 
InPos = {1784,3099}, -- script viet hoa By http://tranhba.com  vµo l«i ®µi täa ®é 
OutPos = { 
{1776,3087}, 
{1776,3115}, 
{1796,3086}, 
{1796,3116}, 
}, -- script viet hoa By http://tranhba.com  ra l«i ®µi täa ®é 
NpcPos = {1789,3103}, -- script viet hoa By http://tranhba.com  l«i ®µi cµ NPC ®iÓm 
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
nApply = 30*18, -- script viet hoa By http://tranhba.com  ®µi chñ lªn ®µi , chê ®îi thêi gian 
nPrepare = 3*18, -- script viet hoa By http://tranhba.com  chän l«i chuÈn bÞ thêi gian 
nFight = 3*60*18,-- script viet hoa By http://tranhba.com 3*60*18, -- script viet hoa By http://tranhba.com  tranh tµi thêi gian 
nSchedule = 1*60*18, -- script viet hoa By http://tranhba.com  ®iÒu ®é thêi gian 

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

tbNpcTypeList = {-- script viet hoa By http://tranhba.com npc ®Ých lo¹i h×nh 
[1] = { 
nNpcId = 1786, 
szName = " Thiªn v­¬ng cao thñ tr¨m ng­êi l«i ®µi ", 
nLevel = 90, 
nSeries = 0, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ®èi tho¹i npc cã thÓ kh«ng cÇn c¸i nµy 
}, 
[2] = { 
nNpcId = 1787, 
szName = " ThiÕu L©m cao thñ tr¨m ng­êi l«i ®µi ", 
nLevel = 90, 
nSeries = 0, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ®èi tho¹i npc cã thÓ kh«ng cÇn c¸i nµy 
}, 
[3] = { 
nNpcId = 1788, 
szName = " n¨m ®éc cao thñ tr¨m ng­êi l«i ®µi ", 
nLevel = 90, 
nSeries = 1, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ®èi tho¹i npc cã thÓ kh«ng cÇn c¸i nµy 
}, 
[4] = { 
nNpcId = 1789, 
szName = " §­êng m«n cao thñ tr¨m ng­êi l«i ®µi ", 
nLevel = 90, 
nSeries = 1, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ®èi tho¹i npc cã thÓ kh«ng cÇn c¸i nµy 
}, 
[5] = { 
nNpcId = 1790, 
szName = " Nga Mi cao thñ tr¨m ng­êi l«i ®µi ", 
nLevel = 90, 
nSeries = 2, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ®èi tho¹i npc cã thÓ kh«ng cÇn c¸i nµy 
}, 
[6] = { 
nNpcId = 1791, 
szName = " thóy khãi cao thñ tr¨m ng­êi l«i ®µi ", 
nLevel = 90, 
nSeries = 2, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ®èi tho¹i npc cã thÓ kh«ng cÇn c¸i nµy 
}, 
[7] = { 
nNpcId = 1792, 
szName = " ngµy nhÉn cao thñ tr¨m ng­êi l«i ®µi ", 
nLevel = 90, 
nSeries = 3, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ®èi tho¹i npc cã thÓ kh«ng cÇn c¸i nµy 
}, 
[8] = { 
nNpcId = 1793, 
szName = " C¸i Bang cao thñ tr¨m ng­êi l«i ®µi ", 
nLevel = 90, 
nSeries = 3, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ®èi tho¹i npc cã thÓ kh«ng cÇn c¸i nµy 
}, 
[9] = { 
nNpcId = 1794, 
szName = " Vâ §­¬ng cao thñ tr¨m ng­êi l«i ®µi ", 
nLevel = 90, 
nSeries = 4, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ®èi tho¹i npc cã thÓ kh«ng cÇn c¸i nµy 
}, 
[10] = { 
nNpcId = 1795, 
szName = " C«n L«n cao thñ tr¨m ng­êi l«i ®µi ", 
nLevel = 90, 
nSeries = 4, 
nIsboss = 1, -- script viet hoa By http://tranhba.com  ®èi tho¹i npc cã thÓ kh«ng cÇn c¸i nµy 
}, 
[11] = { 
nNpcId = 1571, 
szName = " cæ tay ", 
nLevel = 90, 
szScriptPath = tbNpcFile.szBeautyNpc, 
nTime = 15*60, 
}, 
}; 

TSK_LEAVERMAPID = 2323 -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i ghi danh ®iÓm ®Ých mapid 
TSK_LEAVERPOSX = 2324 -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i ghi danh ®iÓm ®Ých x täa ®é ®iÓm 
TSK_LEAVERPOSY = 2325 -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i ghi danh ®iÓm ®Ých y täa ®é ®iÓm 

HA_MAXSTAYTIME = 90*60 -- script viet hoa By http://tranhba.com  90 phót dµi nhÊt dõng l¹i thêi gian 
HA_DOUBLETIME = 30*60 -- script viet hoa By http://tranhba.com  30 phót gÊp ®«i hiÖu qu¶ 
