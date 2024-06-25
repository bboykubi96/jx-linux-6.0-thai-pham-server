Include("\\script\\gb_taskfuncs.lua")
greatseed_configtab = {
--3 tu cap 120 tro len	5 trieu diem kn
--2 tu cap 90 den 119	2 trieu diem kn
--1 duoi cap 60

--{340,3,100,"\\settings\\maps\\great_night\\maccaoquat.txt","M¹c Cao QuËt"},			--Äª¸ß¿ß
--{336,3,100,"\\settings\\maps\\great_night\\phonglangdo.txt","Phong Lang §é"},			--·ç¸ê¶É
	
--{322,2,100,"\\settings\\maps\\great_night\\truongbachbac.txt","Tr­êng B¹ch s¬n b¾c"},	-- ³¤°×É½±±¢´
--{321,2,100,"\\settings\\maps\\great_night\\truongbachnam.txt","Tr­êng B¹ch s¬n nam "},		-- ³¤°×É½ÄÏ
--{225,2,30,"\\settings\\maps\\great_night\\samac1.txt","Sa m¹c s¬n ®éng 1"},		-- ³¤°×É½ÄÏ
--{226,2,30,"\\settings\\maps\\great_night\\samac2.txt","Sa m¹c s¬n ®éng 2"},		-- ³¤°×É½ÄÏ
--{227,2,40,"\\settings\\maps\\great_night\\samac3.txt","Sa m¹c s¬n ®éng 3"},		-- ³¤°×É½ÄÏ
	
--{182,1,25,"\\settings\\maps\\great_night\\nghietlongdong.txt","NghiÖt long ®éng"},	-- ³¤°×É½ÄÏ
--{200,1,25,"\\settings\\maps\\great_night\\coduongdong.txt","Cæ d­¬ng ®éng "},	-- ³¤°×É½ÄÏ

--{167,1,25,"\\settings\\maps\\great_night\\diemthuongson.txt","§iÓm Th­¬ng s¬n"},			-- ³¤°×É½ÄÏ  toa do 190/154
--{92,1,25,"\\settings\\maps\\great_night\\thuccuongson.txt","Thôc c­¬ng s¬n"},				-- ³¤°×É½ÄÏ		toa do 236/176

--{182,2,25,"\\settings\\maps\\great_night\\nghietlongdong.txt","NghiÖt long ®éng"},	-- ³¤°×É½ÄÏ		toa do 234/209
--{200,2,25,"\\settings\\maps\\great_night\\coduongdong.txt","Cæ d­¬ng ®éng "},	-- ³¤°×É½ÄÏ				toa do 220/213

--{227,3,40,"\\settings\\maps\\great_night\\samac3.txt","Sa m¹c s¬n ®éng 3"},		-- ³¤°×É½ÄÏ toa do 198/195

--{341, 4, 1, "\\settings\\maps\\great_night\\macbacthaonguyen.txt","M¹c B¾c th¶o nguyªn"},		-- Ä®±±²ÝÔ­
--{333, 4, 2, "\\settings\\maps\\great_night\\phaihoason.txt","Ph¸i Hoa S¬n"},			-- »ªÉ½ÅÉ
--{319, 4, 1, "\\settings\\maps\\great_night\\lamduquan.txt","L©m du quan"},			-- ¸ïÓå¹Ø
{959, 1, 10, "\\settings\\maps\\great_night\\chienlongdonghhthap.txt","ChiÕn long ®éng"},
{959, 2, 9, "\\settings\\maps\\great_night\\chienlongdonghhtrung.txt","ChiÕn long ®éng"},
{959, 3, 5, "\\settings\\maps\\great_night\\chienlongdonghhcao.txt","ChiÕn long ®éng"},
{959, 4, 3, "\\settings\\maps\\great_night\\chienlongdong.txt","ChiÕn long ®éng"},
--{181, 4, 1, "\\settings\\maps\\great_night\\luongthuydong.txt","L­ìng thñy ®éng"},			-- ¸½Ë®¶´
};

tblantern_area = {2, 21, 167, 193}

function TaskShedule()
TaskName("Qu¶ Huy Hoµng")
TaskTime(12,0);
TaskInterval(5)
TaskCountLimit(0)
OutputMsg( "=======> Qua Huy Hoang 1200 <=======");
end

function TaskContent()
local START_TIME = 1200;
local END_TIME = 1230;
if righttime_add() ~= 1 then-- nÕu nhu thêi gian sai
gb_SetTask( "Hoa ®¨ng ho¹t ®éng", 1, 0)
gb_SetTask( "Qu¶ Huy Hoµng", 12, 0);	--12 hµo l­îng biÕn ®æi dïng ®Ó tån tr?NPC t?hµo
return
end;
OutputMsg( "=======> Qua Huy Hoang 12 Xuat Hien <=======");
local nNowTime = tonumber(date( "%H%M "))
if nNowTime >= 1200 and nNowTime < 1205 then	--
gb_SetTask( "Qu¶ Huy Hoµng", 12, 0);	--12 hµo l­îng biÕn ®æi dïng ®Ó tån tr?NPC t?hµo
end

local nBatch = floor(mod(nNowTime,100)/5) + 1
local nMapCount = getn(greatseed_configtab);
for i = 1, nMapCount do
local strExecute = format( "dw Global_GreatSeedExecute(%d, %d, %d, [[%s]], [[%s]],%d)", greatseed_configtab[i][1], greatseed_configtab[i][2], greatseed_configtab[i][3], greatseed_configtab[i][4],greatseed_configtab[i][5],nBatch);
GlobalExecute(strExecute);
local szMsg = " ";
if (mod(nBatch,2) == 1) and greatseed_configtab[i][2] ~= 4 then
szMsg = "Qu¶ Huy Hoµng"
elseif greatseed_configtab[i][2] == 4 then
szMsg = "Qu¶ Huy Hoµng"
elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
szMsg = "Qu¶ Huy Hoµng"
elseif greatseed_configtab[i][2] == 4 then
szMsg = "Qu¶ Huy Hoµng"
end;
szMsg = format( "HiÖn nay <%s> ®· xuÊt hiÖn ë %s, 5 phót sau sÏ kÕt thóc. C¸c vÞ ®¹i hiÖp chuÈn bÞ h¸i qu¶", szMsg, greatseed_configtab[i][5]);
GlobalExecute(format( "dw AddLocalNews([[%s]])",szMsg));
end;
end

function CreateLantern(nDate)
if (gb_GetTask( "Hoa ®¨ng ho¹t ®éng 2 ") == 0 or gb_GetTask( "Hoa ®¨ng ho¹t ®éng 2 ") ~= nDate) then
lantern_area = tblantern_area[ random( getn(tblantern_area) ) ]
gb_SetTask( "Hoa ®¨ng ho¹t ®éng 1", lantern_area)
gb_SetTask( "Hoa ®¨ng ho¹t ®éng 2", nDate)
end
GlobalExecute( "dw GN_Create_Lanterns() ")
end

function righttime_add()
local nTime = tonumber(date( "%H%M "));
if (nTime >= 1200 and nTime < 1230) then
return 1;
end;
return 0;
end

function goldenseedmap()	
local goldcity = random(1, 2);
gb_SetTask("Qu¶ Huy Hoµng", 1, goldcity);
local RowIndex = random(2, 41)
gb_SetTask( "Qu¶ Huy Hoµng", 2, RowIndex);

OutputMsg("Huy hoµng thµnh thÞ".. goldcity);
OutputMsg("goldenseedmap(); ".. RowIndex);

return goldcity;
end;

function GameSvrConnected(dwGameSvrIP)

end

function GameSvrReady(dwGameSvrIP)

end


