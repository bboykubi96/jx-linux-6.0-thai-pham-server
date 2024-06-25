Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")

function main(sel)
	--dofile("script/missions/tifu/shenxingfu.lua");
	--dofile("script/item/ib/shenxingfu.lua");
	if (IsDisabledUseTownP() == 1 or GetTaskTemp(200) == 1 ) or ( SubWorldIdx2ID( SubWorld ) >= 387 and SubWorldIdx2ID( SubWorld ) <= 395)then
		Msg2Player("Kh�ng th� s� d�ng th�n h�nh ph�!");
		return 1
	end
	
	local nSubWorldID = GetWorldPos();
	if (nSubWorldID >= 375 and nSubWorldID <= 386) then
		Msg2Player("Xin l�i, �ang � khu v�c ��c bi�t, kh�ng th� s� d�ng th�n h�nh ph�!");
		return 1
	end
	
	if (nSubWorldID >= 416 and nSubWorldID <= 511) then
		Msg2Player("Xin l�i, �ang � khu v�c ��c bi�t, kh�ng th� s� d�ng th�n h�nh ph�!");
		return 1
	end
	
	if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223)	or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342	or nSubWorldID == 175	or nSubWorldID == 337	or nSubWorldID == 338	or nSubWorldID == 339 or ( nSubWorldID >= 387 and  nSubWorldID <= 395 ) )then 
		Msg2Player("Xin l�i, �ang � khu v�c ��c bi�t, kh�ng th� s� d�ng th�n h�nh ph�!");
		return 1
	end;

	--����ս��֮������ǵ�ͼ������ʹ��
	if (CheckAllMaps(nSubWorldID) == 1) then
		Msg2Player("Xin l�i, �ang � khu v�c ��c bi�t, kh�ng th� s� d�ng th�n h�nh ph�!");
		return 1
	end;
	
	if (GetLevel() < 5) then
		Say("LV5 tr� l�n m�i c� th� s� d�ng Th�n H�nh Ph�!", 0);
		return 1
	end;
	
	Say("Th�n H�nh Ph�, c� th� �i ��n nh�ng n�i c�n ��n 1 c�ch nhanh ch�ng.", 2, 
		"Di Chuy�n.../gototown",
		--"���������㣬Ϣ��ʹ�����ط�����˲��ִ/set_backpos", 
		"��ng/no");
		--"ȥ������ͼ/#tbVNGWORDPOS:GotoOtherMap()");
	return 1	
end;

tab_RevivePos = {
	[1] = {	--"Th�nh ��"
		{"C�a ��ng", 6, 11},{"C�a T�y", 7, 11},{"C�a Nam", 8, 11},{"C�a B�c", 9, 11},{"Trung T�m", 5, 11}
	},
	[2] = {	--"T��ng D��ng"
		{"C�a ��ng", 30, 78},{"C�a T�y", 32 , 78},{"C�a Nam", 31, 78},{"C�a B�c", 33, 78},{"Trung T�m", 29, 78}
	},
	[3] = {	--"Ph��ng T��ng"
		{"C�a ��ng", 1, 1},{"C�a T�y", 2, 1},{"C�a Nam", 3, 1},{"C�a B�c", 4, 1},{"Trung T�m", 0, 1}
	},
	[4] = {	--"��i L�"
		{"C�a B�c", 64, 162},{"Trung T�m", 63, 162}
	},
	[5] = {	--"Bi�n Kinh"
		{"C�a ��ng", 24, 37},{"C�a T�y", 25, 37},{"C�a Nam", 24, 37},{"C�a B�c", 26, 37},{"Trung T�m", 23, 37}
	},
	[6] = {	--"D��ng Ch�u"
		{"C�a ��ng", 35, 80},{"C�a T�y", 38, 80},{"C�a Nam", 37, 80},{"C�a B�c", 36, 80},{"Trung T�m", 34, 80}
	},
	[7] = {	--"L�m An"
		{"C�a ��ng", 68, 176},{"C�a Nam", 67, 176},{"C�a B�c", 69, 176}
	},
	[8] = {	--"Th�n Tr�n"
		{"Ba L�ng Huy�n", 19, 53},{"Giang T�n Th�n", 10, 20},{"V�nh L�c Tr�n", 43, 99},{"Chu Ti�n Tr�n", 45, 100},{"��o H��ng Th�n", 47, 101},{"Long M�n Tr�n", 55, 121},{"Th�ch C� Tr�n", 59, 153},{"Long Tuy�n Th�n", 65, 174}
	},
	[9] = {	--"M�n Ph�i"
		{"Thi�n V��ng", 21, 59},{"Thi�u L�m", 52, 103},{"���ng M�n", 15, 25},{"Ng� ��c", 71, 183},{"Nga Mi", 13, 13},{"Th�y Y�n", 61, 154},{"Thi�n Nh�n", 28, 49},{"C�i Bang", 53, 115},{"V� �ang", 40, 81},{"C�n L�n", 58, 131}
	},
};
--�趨�����㣨ѡ���У�
function set_backpos()
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("Kh�ng th� s� d�ng � ��y!");
			return 1;
		end
	end	
	

	
	local tab_Content = {
		"Th�nh ��/#setpos_step2(1)",
		"T��ng D��ng/#setpos_step2(2)",
		"Ph��ng T��ng/#setpos_step2(3)",
		"��i L�/#setpos_step2(4)",
		"Bi�n Kinh/#setpos_step2(5)",
		"D��ng Ch�u/#setpos_step2(6)",
		"L�m An/#setpos_step2(7)",
		"Th�n Tr�n/#setpos_step2(8)",
		"M�n Ph�i/#setpos_step2(9)",
		"Kh�ng �i/no"
	}
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end;

--ѡ�ص�
function setpos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#setpos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "Kh�ng �i.../no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end;

--ѡ�ص�
function setpos_step3(nIdx, nSubIdx)
	SetRevPos(tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);
	Say("�� ��n "..tab_RevivePos[nIdx][nSubIdx][1], 0);
	Msg2Player("�� ��n "..tab_RevivePos[nIdx][nSubIdx][1]);
end;

--�س�
function gototown()
	
	local tab_Content = {
		
		"Th�nh/gopos_step2town",
		"Th�n/#gopos_step2(8)",
		"M�n ph�i/#gopos_step2(9)",
		"B�n �� 90/#gopos_step2lv90()",
		"T�ng Kim/gopos_step2battle",
		"Kh�ng �i/no"
	}
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end;


function gopos_step2town()
	local tab_Content = {
		
		"Th�nh ��/#gopos_step2(1)",
		"T��ng D��ng/#gopos_step2(2)",
		"Ph��ng T��ng/#gopos_step2(3)",
		"��i L�/#gopos_step2(4)",
		"Bi�n Kinh/#gopos_step2(5)",
		"D��ng Ch�u/#gopos_step2(6)",
		"L�m An/#gopos_step2(7)",
		"Kh�ng �i./no"
	}
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end

--���з����������ڶ���
function gopos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#gopos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "Kh�ng �i/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end;

--���з���������������
function gopos_step3(nIdx, nSubIdx)
	local file = [[\settings\RevivePos.ini]];
	ini_loadfile(file, 0)
	local szData = ini_getdata(file, tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);

	local szArr = split(szData);
	local nPosX = floor(tonumber(szArr[1]) / 32);
	local nPosY = floor(tonumber(szArr[2]) / 32);
	
	if (not nPosX or not nPosY) then
		return
	end;
	NewWorld(tab_RevivePos[nIdx][nSubIdx][3], nPosX, nPosY)
	SetFightState(0);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_RevivePos[nIdx][nSubIdx][1].."��");
end;


tab_lv90map = {
		{322,1589,3164	,"Tr��ng B�ch S�n B�c",},
		{321,967,2313	,"Tr��ng B�ch S�n Nam",},
		{75,1811,3012	,"Xi V�u ��ng M� Cung",},
		{227,1588,3237	,"Sa M�c M� Cung 3",},
		{225,1474,3275	,"Sa M�c M� Cung 1",},
		{226,1560,3184	,"Sa M�c M� Cung 2",},
		{336,1124,3187	,"Phong L�ng ��",},
		{340,1845,3438	,"M�c Cao Qu�t",},
		{144,1691,3020	,"D��c V��ng ��ng T�ng 4",},
		{93,1529,3166	,"Ti�n C�c ��ng M�t Cung",},
		{124,1675,3418	,"Hi�n Vi�n ��ng M� Cung",},
		{152,1672,3361	,"Tuy�t B�o ��ng T�ng 8",},
	}

function gopos_step2lv90(ns, ne)
	print(ns, ne)
	if (not ns) then
		ns_1 = 1;
		ne_1 = 7;
	else
		ns_1 = ns;
		ne_1 = ne;
	end
	
	if (ne_1 - ns_1 > 6) then
		ne_1 = ns_1 + 6;
	end
	
	local n_count = getn(tab_lv90map);
	
	local tab_Content = {};
	for i = ns_1, ne_1 do
		tinsert(tab_Content, tab_lv90map[i][4].."/#gopos_step3lv90( "..i..")");
	end
	
	if (ns_1 ~= 1) then
		tinsert(tab_Content, "Trang tr��c/#gopos_step2lv90( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang sau/#gopos_step2lv90( "..(ne_1+1)..","..n_count..")");
	end
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv90(nIdx)
	NewWorld(tab_lv90map[nIdx][1], tab_lv90map[nIdx][2], tab_lv90map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv90map[nIdx][4].."!");
end


function gopos_step2battle()
	if ( GetLevel() < 120 ) then
		Talk( 1, "", "Chi�n Tr��ng t�n kh�c, ng��i ch�a ��t ��n LV120, n�n ��ng c� ham h� :v" );
	else
		Say ( "Ng��i qu� th�t mu�n ��n chi�n tr��ng T�ng Kim?", 3, "T�ng qu�n ghi danh./#DoRescriptFunc(1)", "Kim qu�n ghi danh/#DoRescriptFunc(2)","� �... �� ta suy ngh� l�i./no" );
	end;
end

function gopos_sevencityfield()
	Say("Th�t ��i Th�nh Chi�n, ng��i mu�n ��n n�i n�o?", 8,
		"Th�nh �� chi�n tr��ng/#goto_sevencityfield(1)",
		"T��ng D��ng chi�n tr��ng/#goto_sevencityfield(2)",
		"Ph��ng T��ng chi�n tr��ng/#goto_sevencityfield(3)",
		"��i L� chi�n tr��ng/#goto_sevencityfield(4)",
		"Bi�n Kinh chi�n tr��ng/#goto_sevencityfield(5)",
		"D��ng Ch�u chi�n tr��ng/#goto_sevencityfield(6)",
		"L�m An chi�n tr��ng/#goto_sevencityfield(7)",
		"Th�i kh�ng �i.../Cancel")
end

function goto_sevencityfield(nIndex)
	local player = PlayerList:GetPlayer(PlayerIndex)
	local tbErr = {}
	if (BattleWorld:CheckMapPermission(player, tbErr) == 0) then
		player:Say(tbErr.Msg)
		return
	end
	local nMapId = FIELD_LIST[nIndex]
	BattleWorld:Transfer(player, nMapId)
end

function DoRescriptFunc(nSel)
	if ( GetLevel() < 120 ) then
		Talk( 1, "", "Chi�n Tr��ng t�n kh�c, ng��i ch�a ��t ��n LV120, n�n ��ng c� ham h� :v" );
		return
	end
	local tbsongjin_pos = {1608,3254};	
	local szstr = "T�ng qu�n ghi danh.";
	if (nSel == 2) then
		tbsongjin_pos = {1566,3277};
		szstr = "Kim qu�n ghi danh.";
	end;
	szstr = ""
	if ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); 
		Msg2Player( "Chi�n Tr��ng S� c�p" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); 
		Msg2Player( "Chi�n Tr��ng Trung c�p" );
	else
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); 
		Msg2Player( "Chi�n Tr��ng Cao c�p" );
	end
end


function no()
end
