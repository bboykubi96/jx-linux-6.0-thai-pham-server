Include("\\script\\gb_taskfuncs.lua")
greatseed_configtab = {
--	{340,3,100,"\\settings\\maps\\great_night\\Ī�߿�.txt","M�c Cao Qu�t"},			--Ī�߿�
--	{336,3,100,"\\settings\\maps\\great_night\\�����.txt","Phong L�ng ��"},			--�����
	
	
	{333,4,15,"\\settings\\maps\\great_night\\hoasoncao.txt","Hoa S�n"},		-- �qua ��i hoang kim
--	{959,3,11,"\\settings\\maps\\great_night\\chienlongdongtrung.txt","Chi�n Long ��ng"},		-- �qua hoang kim

--	{322,2,100,"\\settings\\maps\\great_night\\����ɽ����.txt","Tr��ng B�ch S�n B�c"},	-- ����ɽ����
--	{321,2,100,"\\settings\\maps\\great_night\\����ɽ��.txt","Tr��ng B�ch S�n Nam"},		-- ����ɽ��
--	{225,2,30,"\\settings\\maps\\great_night\\ɳĮɽ��1.txt","Sa m�c S�n ��ng 1"},		-- ����ɽ��
--	{226,2,30,"\\settings\\maps\\great_night\\ɳĮɽ��2.txt","Sa m�c S�n ��ng 2"},		-- ����ɽ��
--	{227,2,40,"\\settings\\maps\\great_night\\ɳĮɽ��3.txt","Sa m�c S�n ��ng 3"},		-- ����ɽ��
	
	--{182,1,25,"\\settings\\maps\\great_night\\�������Թ�.txt","Nghi�t Long ��ng"},	-- ����ɽ��
	--{167,1,25,"\\settings\\maps\\great_night\\���ɽ.txt","�i�m Th��ng S�n"},			-- ����ɽ��
	--{200,1,25,"\\settings\\maps\\great_night\\�������Թ�.txt","C?D��ng ��ng"},	-- ����ɽ��
	--{92,1,25,"\\settings\\maps\\great_night\\���ɽ.txt","Th�c C��ng S�n"},				-- ����ɽ��

--	{341, 4, 1, "\\settings\\maps\\great_night\\Į����ԭ.txt","M�c B�c Th�o Nguy�n"},		-- Į����ԭ
--	{333, 4, 1, "\\settings\\maps\\great_night\\��ɽ��.txt","Hoa S�n Ph�i"},			-- ��ɽ��
--	{319, 4, 1, "\\settings\\maps\\great_night\\�����.txt","L�m Du Quan"},			-- �����
--	{959, 4, 3, "\\settings\\maps\\great_night\\˫����.txt","Kh�a Lang ��ng"},			-- ˫����
--	{181, 4, 1, "\\settings\\maps\\great_night\\��ˮ��.txt","L��ng Th�y ��ng"},			-- ��ˮ��
};
tblantern_area = {2, 21, 167, 193}

function TaskShedule()
	--���÷�������
	TaskName("�Ի͹�")
	
	-- 12��00�ֿ�ʼ
	TaskTime(11,10);
	
	--���ü��ʱ�䣬��λΪ����
	TaskInterval(5)
	
	--���ô���������0��ʾ���޴���
	TaskCountLimit(0)
	OutputMsg("QUA HUY HOANG on start at 22h00 PM");
end

function TaskContent()
	local nHour = tonumber(date("%H"))
	local nWeek	= tonumber(date("%w"))
	local nDate
--if  nWeek ~= 5 then
--  return 0						-----khong lam gi de battel 2 chay
--end
	--��19:30��20:01���м���ܴ���
	local START_TIME = 1110;
	local END_TIME = 1129;
	
	if righttime_add() ~= 1 then--���ʱ�䲻��
		gb_SetTask("HOAT DONG HOA DANG", 1, 0)
		gb_SetTask("QUA HUY HOANG", 20, 10);	--12�ű��������洢NPC�����
		return
	end;
	--AddGlobalCountNews("Tr��c m�t l?th�i gian m�a thu�n gi?h�a, �� ��p t?c�ng s�c ��ng g�p c�c v?��i hi�p, V?l�m minh ch?��c C?Ki�m �� t?ch�c ho�t ��ng <color=yellow>'��m huy ho�ng'<color>. Th�i gian b�t ��u ho�t ��ng m�i ng�y l?20h20.",1)
	OutputMsg("QUA HUY HOANG on started at 20h10 PM")
	--����������ڻ�ʼ����������
	local nNowTime = tonumber(date("%H%M"))
	
	--����������������ʱ��ÿ��׼ʱ��ʼ�ʱ����һ��ʱ
	if nNowTime >= 1110 and nNowTime < 1129 then	--	
		--NPC��� = NPC��˳�� +  ����(4)��������֤�����NPC�Ƿ����ڿɱ�ժȡ�Ĺ�ʵ
		gb_SetTask("QUA HUY HOANG", 20, 10);	--12�ű��������洢NPC�����

	end
	--------------------
	--
	--------------------
	--����ǵڼ���5���ӣ����ڼ�����
	--ִ�е�ʱ��������ε���ż��ȷ����ˢ���ӻ��ǹ�ʵ
	local nBatch = floor(mod(nNowTime,100)/5) + 1
	--
	local nMapCount = getn(greatseed_configtab);
	----- Tr��c m�t l?th�i gian m�a thu�n gi?h�a, �� ��p t?c�ng s�c ��ng g�p c�c v?��i hi�p, V?l�m minh ch?��c C?Ki�m �� t?ch�c ho�t ��ng <color=yellow>'��m huy ho�ng'<color>. Th�i gian b�t ��u ho�t ��ng m�i ng�y l?20h15. <enter><color=yellow>20h15 tr�a nay s?di�n ra ho�t ��ng 'Huy chi ch��ng'
	--
	-----
	for i = 1, nMapCount do
		local strExecute = format("dw Global_GreatSeedExecute(%d, %d, %d, [[%s]], [[%s]],%d)", greatseed_configtab[i][1], greatseed_configtab[i][2], greatseed_configtab[i][3], greatseed_configtab[i][4],greatseed_configtab[i][5],nBatch);
		GlobalExecute(strExecute);
		local szMsg = "";
		if (mod(nBatch,2) == 1) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "H�t Huy Ho�ng Cao"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "H�t Huy Ho�ng Trung"
		elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "H�t Huy Ho�ng Ti�u"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "H�t Ho�ng Kim"
		end; 
		if (mod(nBatch,2) == 1) then
			szMsg = format("Xu�t hi�n, <color=yellow>Administrator<color> �� gieo <color=green><%s><color> t�i %s, 5 ph�t sau c�c ��i Hi�p c?th?thu ho�ch!!",
			szMsg,
			greatseed_configtab[i][5]);
			GlobalExecute(format("dw AddLocalNews([[%s]])",szMsg));
			GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg));
		elseif (mod(nBatch,2) == 0) then
			szMsg = format("G�p th�i ti�t thu�n l�i <color=pink><%s><color> do <color=yellow>Administrator<color> gieo h�t �� k�t qu�t�i <color=green>%s<color>, C�c ��i Hi�p h�y nhanh ch�ng thu ho�ch!!",
			szMsg,
			greatseed_configtab[i][5]);
			GlobalExecute(format("dw AddLocalNews([[%s]])",szMsg));
			GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg));
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
	if (nTime >= 1110 and nTime < 1129)  then
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
