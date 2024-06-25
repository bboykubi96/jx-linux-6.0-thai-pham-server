-- 2005����ڻ ����NPC�ű� by wangbin 2005-09-02
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("FILESYS")
Include("\\script\\event\\great_night\\lantern\\create_lanterns.lua")
Include("\\script\\tong\\tong_award_head.lua");

LANTERN_TSKID_DATE	= 1604;
LANTERN_TSKID_WCNT	= 1605;
MX_LANTERN_COUNT	= 10; -- So luong hoa dang tra loi toi da trong ngay
LANTERN_FILE = "\\settings\\event\\zhongqiuhuodong\\zhongqiudengmi.txt"

Include("\\script\\global\\g7vn\\g7configall.lua")

function main()
	--dofile("script/event/great_night/lantern/lantern.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	if doanhoadang == 0 then
		--Say("Ho�t ��ng Hoa ��ng t�m th�i ch�a m�.", 0)
		--return
	end

	local npcidx = GetLastDiagNpc()
	if (GetNpcParam(npcidx, 4) == 0 ) then
		return
	end
	
	local nDay = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(LANTERN_TSKID_DATE) ~= nDay ) then
		SetTask(LANTERN_TSKID_DATE, nDay)
		SetTask(LANTERN_TSKID_WCNT, 0)
	end
	
	if ( GetLevel() < 50 ) then
		Say("��ng c�p th�p h�n 50, kh�ng th� tham gia ho�t ��ng n�y.", 0)
		return
	end
	
	if ( GetTask(LANTERN_TSKID_WCNT) >= MX_LANTERN_COUNT ) then
		Say("H�m nay b�n �� �o�n ��ng <color=red>"..MX_LANTERN_COUNT.."<color> nhi�u c�u �� r�i! Nh��ng c� h�i cho ng��i kh�c �i!", 0)
		return
	end

	Msg2Player("H�m nay �� tr� l�i: <color=green>"..GetTask(LANTERN_TSKID_WCNT).. " l�n<color> c�n l�i: <color=yellow>" .. MX_LANTERN_COUNT - GetTask(LANTERN_TSKID_WCNT) .."<color> l�n ")

	show_riddle(0, "C�u �� nh� sau: <enter>" )
	SetNpcParam(npcidx,4,0)
	delnpcsafe(npcidx)	--delete npc
end

function delnpcsafe(nNpcIndex)
	if (nNpcIndex <= 0 )  then
		return
	end
	
	PIdx = NpcIdx2PIdx(nNpcIndex);
	if (PIdx > 0) then 
		WriteLog("ERROR!!!DelNpc WANT TO DELETE Player");
		return
	end;
	
	DelNpc(nNpcIndex)
	local mapid = SubWorldIdx2ID(SubWorld)
	for i = 1, getn( tbLANTERNS_NPC ) do
		if ( tbLANTERNS_NPC[i][1] == mapid ) then
			SetGlbValue( tbLANTERNS_NPC[i][2], (GetGlbValue( tbLANTERNS_NPC[i][2] ) - 1) )
			break
		end
	end
end;

-- ��ʾ���նԻ�
tbl_answer_index = {
	['A'] = 1,
	['B'] = 2,
	['C'] = 3,
	['D'] = 4,
	['a'] = 1,
	['b'] = 2,
	['c'] = 3,
	['d'] = 4,
};

tbl_answer_order = {
	"A",
	"B",
	"C",
	"D",
};

-- ����
tbl_odds = {
	20,
	12,
	6,
	4,
	2,
	5,
	20,
	11.5,
	15,
	1.5,
	1.5,
	1.5,
};


-- ����
tbl_awards = {
	{5,  nil},
	{10, nil},
	{15, nil},
	{30, nil},
	{50, nil},
	{0, {"Ti�n Th�o L� ", 6, 1, 71, 0}},
	{0, {"Ph�c Duy�n L� (��i) ", 6, 1, 124, 0}},
	{0, {"Qu� Hoa T�u", 6, 1, 125, 1}},
	{0, {"Thi�n s�n  B�o L� ", 6, 1, 72, 1}},
	{0, {"Lam Th�y Tinh", 238}},
	{0, {"L�c Th�y Tinh", 240}},		
	{0, {"T� Th�y Tinh", 239}},
};

function Thuong3LanDungLienTiep()
	local tbAward = 
	{	
		{szName = "T�y T�y Kinh"				,tbProp={6,1,22,1,0,0},nCount=1,nRate=0.001},
		{szName = "V� L�m M�t T�ch"		,tbProp={6,1,26,1,0,0},nCount=1,nRate=0.001},
		{szName = "Tinh h�ng b�o th�ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.002},--2 vien
		{szName = "T� th�y tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.01},
		{szName = "L�c th�y tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.01},
		{szName = "Lam th�y tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.01},
		{szName = "Qu� Hoa T�u",							tbProp={6,1,125,1,0,0},nCount=1,nRate=0.001},
		{szName = "Thi�n s�n  B�o L�",							tbProp={6,1,72,1,0,0},nCount=1,nRate=0.5},
		{szName = "Ph�c Duy�n L� (��i)",							tbProp={6,1,124,1,0,0},nCount=1,nRate=0.01},
		{szName = "Ti�n Th�o L�",							tbProp={6,1,71,1,0,0},nCount=1,nRate=0.1},
		{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 1000000,nRate=49},
		{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 700000,nRate=50},
	}
	tbAwardTemplet:Give(tbAward, 1, {"3CauHoaDangLienTiep", "3CauHoaDangLienTiep"})
	Msg2Player("��i hi�p <color=yellow>"..GetName().."<color> �� tr� l�i ��ng li�n ti�p <color=green>3 c�u h�i Hoa ��ng<color> t�i ��nh Hoa S�n nh�n ���c ph�n th��ng!")
end

-- ����
function issue(items)
local szLog = date("%y-%m-%d,%H:%M,").."Account:"..GetAccount()..",Name:"..GetName()..",in the mid_autumn "
	if (items[1] ~= 0) then
		local exp = items[1] * 200000
		AddOwnExp(exp)
		Msg2Player("B�n ��t ���c" .. exp .. "�i�m kinh nghi�m.");
		szLog = szLog.."get "..exp.." point experience;"
	end
	local attrs = items[2]
	if (attrs ~= nil) then
		local count = getn(attrs)
		if (count == 2) then
			AddEventItem(attrs[2])
		elseif (count == 5) then
			AddItem(attrs[2], attrs[3], attrs[4], attrs[5], 0, 0, 0)
		elseif (count == 9) then
			AddQualityItem(attrs[2], attrs[3], attrs[4], attrs[5], attrs[6], attrs[7], attrs[8], attrs[9])
		end
		--Msg2Player("B�n nh�n ���c m�t" .. attrs[1] .. "!");
		Msg2Player("��i hi�p <color=yellow>"..GetName()"<color> �� tr� l�i ��ng li�n ti�p <color=green>3 c�u h�i Hoa ��ng<color> t�i ��nh Hoa S�n nh�n ���c m�t <color=pink>" .. attrs[1] .. "<color>!")
		szLog = szLog.."get "..attrs[1]..";"
	end
	WriteLog(szLog)
end

g_count = 0
-- ��ʾ��������
function show_riddle(count, caption)
--	print(format("g_count:%d", g_count))
	g_count = g_count + 1
	file = LANTERN_FILE
	TabFile_Load(file, file)
	local row_count = TabFile_GetRowCount(file) - 1
	if (row_count > 1) then
		local row = random(2, row_count)
		local answer = TabFile_GetCell(file, row, 2)
		local question = format("%s%s", caption, TabFile_GetCell(file, row, 3))
		local options = {}
		local tbi = {}
		
		local ncount = 0;
		local szopp = "";
		for i = 1, 4 do
			szopp = TabFile_GetCell(file, row, 3 + i);
			if (szopp ~= "" and szopp ~= nil) then
				ncount = ncount + 1;
				options[ncount] = szopp;
				if (tbl_answer_index[answer] == i) then
					options[ncount] = format("%s/#answer_ok(%d)", options[i], count)
				else
					options[ncount] = format("%s/answer_fail", options[i])
				end
			end;
		end
		ReSort(options)
		tinsert(options, "H�y b� /answer_cancel")
		Say(question, getn(options), options)
	end
end

function ReSort(options)
	local count = getn(options)
	for i = 1, count do
		j = random(1, count)
		local tmp = options[i]
		options[i] = options[j]
		options[j] = tmp  
	end
	
	for i = 1, count do
		options[i] = format("%s. %s", tbl_answer_order[i], options[i])
	end
end

-- ���ջش���ȷ
function answer_ok(count)
	-- print(format("answer_ok(%d)", count))
	if (count >= 2) then
		-- ����
		tongaward_riddle()
		local index = get_odds_award(tbl_odds, 100)
		if (index >= 1) then
			--issue(tbl_awards[index])
			--Thuong3LanDungLienTiep()
			local rannn=random(1,2)
		--	if rannn==1 then
			tbAwardTemplet:GiveAwardByList({{nExp_tl = 500000}}, "test", 1);
		--	else
	--		tbAwardTemplet:GiveAwardByList({{szName = "D� T�u Chi L�nh",tbProp={6,1,4407,1,0,0},nCount=1},}, "test", 1);
	--	end
			Talk(1, "", "Ng��i �� ��p ��ng li�n t�c 3 c�u! Xin nh�n ph�n th��ng!")
			SetTask(LANTERN_TSKID_WCNT, GetTask(LANTERN_TSKID_WCNT) + 1)
			DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "huashandengmi")
		end
	else
		show_riddle(count + 1, "Th�t xu�t s�c! Xin ti�p t�c! <enter>")
	end
end

-- ���ջش����
function answer_fail()
	show_riddle(0, "Sai r�i! Xin ti�p t�c! <enter>")
end

-- ȡ�������ʴ� 
function answer_cancel()
	-- nothing
end
-- oddsaward.lua by wangbin 2005-09-02
-- items: һ��table��ÿһ��Ϊһ������ֵ
function get_odds_award(items, base)
	local valve = random(0, base*1000) / 1000
	local odds = 0
	local i = 1
	while (i <= getn(items)) do
		odds = odds + items[i]
		if (odds >= valve) then
			return i
		end
		i = i + 1
	end
	return -1
end