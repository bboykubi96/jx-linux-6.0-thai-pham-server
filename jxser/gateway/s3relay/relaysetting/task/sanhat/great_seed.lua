Include("\\script\\gb_taskfuncs.lua")
greatseed_configtab = {
--3 tu cap 120 tro len	5 trieu diem kn
--2 tu cap 90 den 119	2 trieu diem kn
--1 duoi cap 60

--{340,3,100,"\\settings\\maps\\great_night\\maccaoquat.txt","M�c Cao Qu�t"},			--Ī�߿�
--{336,3,100,"\\settings\\maps\\great_night\\phonglangdo.txt","Phong Lang ��"},			--����
	
--{322,2,100,"\\settings\\maps\\great_night\\truongbachbac.txt","Tr��ng B�ch s�n b�c"},	-- ����ɽ����
--{321,2,100,"\\settings\\maps\\great_night\\truongbachnam.txt","Tr��ng B�ch s�n nam "},		-- ����ɽ��
--{225,2,30,"\\settings\\maps\\great_night\\samac1.txt","Sa m�c s�n ��ng 1"},		-- ����ɽ��
--{226,2,30,"\\settings\\maps\\great_night\\samac2.txt","Sa m�c s�n ��ng 2"},		-- ����ɽ��
--{227,2,40,"\\settings\\maps\\great_night\\samac3.txt","Sa m�c s�n ��ng 3"},		-- ����ɽ��
	
--{182,1,25,"\\settings\\maps\\great_night\\nghietlongdong.txt","Nghi�t long ��ng"},	-- ����ɽ��
--{200,1,25,"\\settings\\maps\\great_night\\coduongdong.txt","C� d��ng ��ng "},	-- ����ɽ��

--{167,1,25,"\\settings\\maps\\great_night\\diemthuongson.txt","�i�m Th��ng s�n"},			-- ����ɽ��  toa do 190/154
--{92,1,25,"\\settings\\maps\\great_night\\thuccuongson.txt","Th�c c��ng s�n"},				-- ����ɽ��		toa do 236/176

--{182,2,25,"\\settings\\maps\\great_night\\nghietlongdong.txt","Nghi�t long ��ng"},	-- ����ɽ��		toa do 234/209
--{200,2,25,"\\settings\\maps\\great_night\\coduongdong.txt","C� d��ng ��ng "},	-- ����ɽ��				toa do 220/213

--{227,3,40,"\\settings\\maps\\great_night\\samac3.txt","Sa m�c s�n ��ng 3"},		-- ����ɽ�� toa do 198/195

--{341, 4, 1, "\\settings\\maps\\great_night\\macbacthaonguyen.txt","M�c B�c th�o nguy�n"},		-- Į����ԭ
--{333, 4, 2, "\\settings\\maps\\great_night\\phaihoason.txt","Ph�i Hoa S�n"},			-- ��ɽ��
--{319, 4, 1, "\\settings\\maps\\great_night\\lamduquan.txt","L�m du quan"},			-- �����
{959, 1, 10, "\\settings\\maps\\great_night\\chienlongdonghhthap.txt","Chi�n long ��ng"},
{959, 2, 9, "\\settings\\maps\\great_night\\chienlongdonghhtrung.txt","Chi�n long ��ng"},
{959, 3, 5, "\\settings\\maps\\great_night\\chienlongdonghhcao.txt","Chi�n long ��ng"},
{959, 4, 3, "\\settings\\maps\\great_night\\chienlongdong.txt","Chi�n long ��ng"},
--{181, 4, 1, "\\settings\\maps\\great_night\\luongthuydong.txt","L��ng th�y ��ng"},			-- ��ˮ��
};

tblantern_area = {2, 21, 167, 193}

function TaskShedule()
TaskName("Qu� Huy Ho�ng")
TaskTime(12,0);
TaskInterval(5)
TaskCountLimit(0)
OutputMsg( "=======> Qua Huy Hoang 1200 <=======");
end

function TaskContent()
local START_TIME = 1200;
local END_TIME = 1230;
if righttime_add() ~= 1 then-- n�u nhu th�i gian sai
gb_SetTask( "Hoa ��ng ho�t ��ng", 1, 0)
gb_SetTask( "Qu� Huy Ho�ng", 12, 0);	--12 h�o l��ng bi�n ��i d�ng �� t�n tr?NPC t?h�o
return
end;
OutputMsg( "=======> Qua Huy Hoang 12 Xuat Hien <=======");
local nNowTime = tonumber(date( "%H%M "))
if nNowTime >= 1200 and nNowTime < 1205 then	--
gb_SetTask( "Qu� Huy Ho�ng", 12, 0);	--12 h�o l��ng bi�n ��i d�ng �� t�n tr?NPC t?h�o
end

local nBatch = floor(mod(nNowTime,100)/5) + 1
local nMapCount = getn(greatseed_configtab);
for i = 1, nMapCount do
local strExecute = format( "dw Global_GreatSeedExecute(%d, %d, %d, [[%s]], [[%s]],%d)", greatseed_configtab[i][1], greatseed_configtab[i][2], greatseed_configtab[i][3], greatseed_configtab[i][4],greatseed_configtab[i][5],nBatch);
GlobalExecute(strExecute);
local szMsg = " ";
if (mod(nBatch,2) == 1) and greatseed_configtab[i][2] ~= 4 then
szMsg = "Qu� Huy Ho�ng"
elseif greatseed_configtab[i][2] == 4 then
szMsg = "Qu� Huy Ho�ng"
elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
szMsg = "Qu� Huy Ho�ng"
elseif greatseed_configtab[i][2] == 4 then
szMsg = "Qu� Huy Ho�ng"
end;
szMsg = format( "Hi�n nay <%s> �� xu�t hi�n � %s, 5 ph�t sau s� k�t th�c. C�c v� ��i hi�p chu�n b� h�i qu�", szMsg, greatseed_configtab[i][5]);
GlobalExecute(format( "dw AddLocalNews([[%s]])",szMsg));
end;
end

function CreateLantern(nDate)
if (gb_GetTask( "Hoa ��ng ho�t ��ng 2 ") == 0 or gb_GetTask( "Hoa ��ng ho�t ��ng 2 ") ~= nDate) then
lantern_area = tblantern_area[ random( getn(tblantern_area) ) ]
gb_SetTask( "Hoa ��ng ho�t ��ng 1", lantern_area)
gb_SetTask( "Hoa ��ng ho�t ��ng 2", nDate)
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
gb_SetTask("Qu� Huy Ho�ng", 1, goldcity);
local RowIndex = random(2, 41)
gb_SetTask( "Qu� Huy Ho�ng", 2, RowIndex);

OutputMsg("Huy ho�ng th�nh th�".. goldcity);
OutputMsg("goldenseedmap(); ".. RowIndex);

return goldcity;
end;

function GameSvrConnected(dwGameSvrIP)

end

function GameSvrReady(dwGameSvrIP)

end


