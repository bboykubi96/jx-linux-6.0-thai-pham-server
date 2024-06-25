Include("\\script\\gb_taskfuncs.lua")
--Include("\\RelaySetting\\Task\\sukien\\callboss_incityhead.lua")
--Include("\\script\\mission\\boss\\bigboss.lua")

QY_GOLDBOSS_APOS_INFO = {
	-- {"Tuy�n Th�t Th�", random( 1989, 1997), 95, 3, {"Chi�n Long ��ng","Chi�n Long ��ng","Chi�n Long ��ng"}},
	--{"Ch� V��n ��o", 1950, 95, 3, {"��i Chi�n V��n ��o","��i Chi�n V��n ��o","��i Chi�n V��n ��o"}},
}

greatseed_configtab = {
	{1004, 3, 72, "\\settings\\maps\\daichientuongduong\\huyhoangcao.txt","��i Chi�n V��n ��o"},			-- ��i Chi�n V��n ��o (Huy Ho�ng Cao)
	{1004, 4, 5, "\\settings\\maps\\daichientuongduong\\hoangkim.txt","��i Chi�n V��n ��o"},			--  ��i Chi�n V��n ��o (Ho�ng Kim)
};

tblantern_area = {2, 21, 167, 193}

H_START_TIME = 12;
M_START_TIME = 15;
H_END_TIME = 12;
M_END_TIME = 30;
-- H_START_TIME = 21;
-- M_START_TIME = 00;
-- H_END_TIME = 21;
-- M_END_TIME = 30;

START_TIME = tonumber(date(H_START_TIME..M_START_TIME));
END_TIME = tonumber(date(H_END_TIME..M_END_TIME));
ADD_TIME = START_TIME + 5;
BOSS_TIME = END_TIME - 10;

function TaskShedule()
	TaskName("QUA HUY HOANG")
	TaskTime(12, 15);
	TaskInterval(5)
	TaskCountLimit(0)
	OutputMsg("=====> HOAT DONG QUA HUY HOANG BAT DAU ");
end

function TaskContent()
	
	if righttime_add() ~= 1 then--���ʱ�䲻��
		gb_SetTask("QUA HUY HOANG", 12, 30);	--12�ű��������洢NPC�����
		return
	end;
	
	
	local nNowTime = tonumber(date("%H%M"))
	OutputMsg("=====> QUA HUY HOANG BAT DAU LUC "..nNowTime);
	-- if nNowTime == 2020 then	--	
		-- BigBoss.gold_boss_count = 0;
		-- TAB_CITY_EMPTY = {}
		-- sukien_thang2_2021()
		-- gb_SetTask("BOSS VUON DAO", 1);
		-- OutputMsg("=====> BOSS CHU VUON DAO <====="..gb_GetTask("BOSS VUON DAO"));
	-- end
	--����������������ʱ��ÿ��׼ʱ��ʼ�ʱ����һ��ʱ
	if nNowTime >= 1215 and nNowTime < 1210 then	--	
		gb_SetTask("QUA HUY HOANG", 20, 30);	
	end
	--------------------
	local nBatch = floor(mod(nNowTime,100)/5) + 1
	--
	local nMapCount = getn(greatseed_configtab);
	----- Tr��c m�t l� th�i gian m�a thu�n gi� h�a, �� ��p t� c�ng s�c ��ng g�p c�c v� ��i hi�p, V� l�m minh ch� ��c C� Ki�m �� t� ch�c ho�t ��ng <color=yellow>'��m huy ho�ng'<color>. Th�i gian b�t ��u ho�t ��ng m�i ng�y l� 12h00. <enter><color=yellow>12h00 tr�a nay s� di�n ra ho�t ��ng 'Huy chi ch��ng'
	--
	-----
	for i = 1, nMapCount do
		local strExecute = format("dw Global_GreatSeedExecute(%d, %d, %d, [[%s]], [[%s]],%d)", greatseed_configtab[i][1], greatseed_configtab[i][2], greatseed_configtab[i][3], greatseed_configtab[i][4],greatseed_configtab[i][5],nBatch);
		GlobalExecute(strExecute);
		local szMsg = "";
		if (mod(nBatch,2) == 1) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "h�t Huy Ho�ng"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "h�t Huy Ho�ng"
		elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "h�t Huy Ho�ng"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "H�t Ho�ng Kim"
		end; 
		if (mod(nBatch,2) == 1) then
			szMsg = format("<color=green>M�a thu�n gi� h�a, nh� nh� b�nh y�n, kh�ng bi�t ai gieo <color=cyan>%s<color> t�i <color=cyan>%s<color>, cho giang h� ��nh nhau. C�n th�n c� ��ch!<color>",
			szMsg,
			greatseed_configtab[i][5]);
			GlobalExecute(format("dw AddLocalNews([[%s]])",szMsg));
			GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg));
		elseif (mod(nBatch,2) == 0) then
			szMsg = format("G�p th�i ti�t thu�n l�i <%s> �� k�t tr�i t�i %s, C�c ��i Hi�p h�y nhanh ch�ng thu ho�ch!!",
			szMsg,
			greatseed_configtab[i][5]);
			GlobalExecute(format("dw AddLocalNews([[%s]])",szMsg));
		end
	end;
end
function CreateLantern(nDate)
	if (gb_GetTask("HOAT DONG HOA DANG 2") == 0 or gb_GetTask("HOAT DONG HOA DANG 2") ~= nDate) then
		lantern_area = tblantern_area[ random( getn(tblantern_area) ) ]
		gb_SetTask("HOAT DONG HOA DANG 1", lantern_area)
		gb_SetTask("HOAT DONG HOA DANG 2", nDate)
	end
	GlobalExecute("dw GN_Create_Lanterns()")
end

-- LLG_ALLINONE_TODO_20070802
--
function righttime_add()
	local nTime = tonumber(date("%H%M"));
	if (nTime >= 1215 and nTime < 1230)  then
		return 1;
	end;
	return 0;
end

function goldenseedmap()	--���Ϣһ�λƽ����ӳ��ֵĵ�ͼ��1����2���ݣ�
	local goldcity = random(1, 2);
	gb_SetTask("QUA HUY HOANG", 1, goldcity);
	local RowIndex = random(2, 41)
	gb_SetTask("QUA HUY HOANG", 2, RowIndex);
	OutputMsg("HUY HOANG THANH THI"..goldcity);
	OutputMsg("goldenseedmap();"..RowIndex);
	return goldcity;
end;

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
