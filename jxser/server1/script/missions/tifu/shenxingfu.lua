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
		Msg2Player("Kh«ng thÓ sö dông thÇn hµnh phï!");
		return 1
	end
	
	local nSubWorldID = GetWorldPos();
	if (nSubWorldID >= 375 and nSubWorldID <= 386) then
		Msg2Player("Xin lçi, ®ang ë khu vùc ®Æc biÖt, kh«ng thÓ sö dông thÇn hµnh phï!");
		return 1
	end
	
	if (nSubWorldID >= 416 and nSubWorldID <= 511) then
		Msg2Player("Xin lçi, ®ang ë khu vùc ®Æc biÖt, kh«ng thÓ sö dông thÇn hµnh phï!");
		return 1
	end
	
	if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223)	or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342	or nSubWorldID == 175	or nSubWorldID == 337	or nSubWorldID == 338	or nSubWorldID == 339 or ( nSubWorldID >= 387 and  nSubWorldID <= 395 ) )then 
		Msg2Player("Xin lçi, ®ang ë khu vùc ®Æc biÖt, kh«ng thÓ sö dông thÇn hµnh phï!");
		return 1
	end;

	--ÎÀ¹úÕ½ÕùÖ®·é»ðÁ¬³ÇµØÍ¼£¬²»ÄÜÊ¹ÓÃ
	if (CheckAllMaps(nSubWorldID) == 1) then
		Msg2Player("Xin lçi, ®ang ë khu vùc ®Æc biÖt, kh«ng thÓ sö dông thÇn hµnh phï!");
		return 1
	end;
	
	if (GetLevel() < 5) then
		Say("LV5 trë lªn míi cã thÓ sö dông ThÇn Hµnh Phï!", 0);
		return 1
	end;
	
	Say("ThÇn Hµnh Phï, cã thÓ ®i ®Õn nh÷ng n¬i cÇn ®Õn 1 c¸ch nhanh chãng.", 2, 
		"Di ChuyÓn.../gototown",
		--"ÉèÖÃÖØÉúµã£¬Ï¢´ÎÊ¹ÓÃÍÁµØ·û¼´¿ÉË²¼äµÖ´ï¡£/set_backpos", 
		"§ãng/no");
		--"È¥ÆäËûµØÍ¼/#tbVNGWORDPOS:GotoOtherMap()");
	return 1	
end;

tab_RevivePos = {
	[1] = {	--"Thµnh §«"
		{"Cöa §«ng", 6, 11},{"Cöa T©y", 7, 11},{"Cöa Nam", 8, 11},{"Cöa B¾c", 9, 11},{"Trung T©m", 5, 11}
	},
	[2] = {	--"T­¬ng D­¬ng"
		{"Cöa §«ng", 30, 78},{"Cöa T©y", 32 , 78},{"Cöa Nam", 31, 78},{"Cöa B¾c", 33, 78},{"Trung T©m", 29, 78}
	},
	[3] = {	--"Ph­îng T­êng"
		{"Cöa §«ng", 1, 1},{"Cöa T©y", 2, 1},{"Cöa Nam", 3, 1},{"Cöa B¾c", 4, 1},{"Trung T©m", 0, 1}
	},
	[4] = {	--"§¹i Lý"
		{"Cöa B¾c", 64, 162},{"Trung T©m", 63, 162}
	},
	[5] = {	--"BiÖn Kinh"
		{"Cöa §«ng", 24, 37},{"Cöa T©y", 25, 37},{"Cöa Nam", 24, 37},{"Cöa B¾c", 26, 37},{"Trung T©m", 23, 37}
	},
	[6] = {	--"D­¬ng Ch©u"
		{"Cöa §«ng", 35, 80},{"Cöa T©y", 38, 80},{"Cöa Nam", 37, 80},{"Cöa B¾c", 36, 80},{"Trung T©m", 34, 80}
	},
	[7] = {	--"L©m An"
		{"Cöa §«ng", 68, 176},{"Cöa Nam", 67, 176},{"Cöa B¾c", 69, 176}
	},
	[8] = {	--"Th«n TrÊn"
		{"Ba L¨ng HuyÖn", 19, 53},{"Giang T©n Th«n", 10, 20},{"VÜnh L¹c TrÊn", 43, 99},{"Chu Tiªn TrÊn", 45, 100},{"§¹o H­¬ng Th«n", 47, 101},{"Long M«n TrÊn", 55, 121},{"Th¹ch Cæ TrÊn", 59, 153},{"Long TuyÒn Th«n", 65, 174}
	},
	[9] = {	--"M«n Ph¸i"
		{"Thiªn V­¬ng", 21, 59},{"ThiÕu L©m", 52, 103},{"§­êng M«n", 15, 25},{"Ngò §éc", 71, 183},{"Nga Mi", 13, 13},{"Thóy Yªn", 61, 154},{"Thiªn NhÉn", 28, 49},{"C¸i Bang", 53, 115},{"Vâ §ang", 40, 81},{"C«n L«n", 58, 131}
	},
};
--Éè¶¨ÖØÉúµã£¨Ñ¡³ÇÊÐ£©
function set_backpos()
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("Kh«ng thÓ sö dông ë ®©y!");
			return 1;
		end
	end	
	

	
	local tab_Content = {
		"Thµnh §«/#setpos_step2(1)",
		"T­¬ng D­¬ng/#setpos_step2(2)",
		"Ph­îng T­êng/#setpos_step2(3)",
		"§¹i Lý/#setpos_step2(4)",
		"BiÖn Kinh/#setpos_step2(5)",
		"D­¬ng Ch©u/#setpos_step2(6)",
		"L©m An/#setpos_step2(7)",
		"Th«n TrÊn/#setpos_step2(8)",
		"M«n Ph¸i/#setpos_step2(9)",
		"Kh«ng ®i/no"
	}
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
end;

--Ñ¡µØµã
function setpos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#setpos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "Kh«ng ®i.../no");
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
end;

--Ñ¡µØµã
function setpos_step3(nIdx, nSubIdx)
	SetRevPos(tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);
	Say("§· ®Õn "..tab_RevivePos[nIdx][nSubIdx][1], 0);
	Msg2Player("§· ®Õn "..tab_RevivePos[nIdx][nSubIdx][1]);
end;

--»Ø³Ç
function gototown()
	
	local tab_Content = {
		
		"Thµnh/gopos_step2town",
		"Th«n/#gopos_step2(8)",
		"M«n ph¸i/#gopos_step2(9)",
		"B¶n ®å 90/#gopos_step2lv90()",
		"Tèng Kim/gopos_step2battle",
		"Kh«ng ®i/no"
	}
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
end;


function gopos_step2town()
	local tab_Content = {
		
		"Thµnh §«/#gopos_step2(1)",
		"T­¬ng D­¬ng/#gopos_step2(2)",
		"Ph­îng T­êng/#gopos_step2(3)",
		"§¹i Lý/#gopos_step2(4)",
		"BiÖn Kinh/#gopos_step2(5)",
		"D­¬ng Ch©u/#gopos_step2(6)",
		"L©m An/#gopos_step2(7)",
		"Kh«ng ®i./no"
	}
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
end

--ÉñÐÐ·û£­£­£­£­µÚ¶þ²½
function gopos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#gopos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "Kh«ng ®i/no");
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
end;

--ÉñÐÐ·û£­£­£­£­µÚÈý²½
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
	Msg2Player("Ngåi yªn! Chóng ta ®i!"..tab_RevivePos[nIdx][nSubIdx][1].."¿©");
end;


tab_lv90map = {
		{322,1589,3164	,"Tr­êng B¹ch S¬n B¾c",},
		{321,967,2313	,"Tr­êng B¹ch S¬n Nam",},
		{75,1811,3012	,"Xi V­u §éng Mª Cung",},
		{227,1588,3237	,"Sa M¹c Mª Cung 3",},
		{225,1474,3275	,"Sa M¹c Mª Cung 1",},
		{226,1560,3184	,"Sa M¹c Mª Cung 2",},
		{336,1124,3187	,"Phong L¨ng §é",},
		{340,1845,3438	,"M¹c Cao QuËt",},
		{144,1691,3020	,"D­îc V­¬ng §éng TÇng 4",},
		{93,1529,3166	,"TiÕn Cóc §éng MËt Cung",},
		{124,1675,3418	,"Hiªn Viªn §éng Mª Cung",},
		{152,1672,3361	,"TuyÕt B¸o §éng TÇng 8",},
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
		tinsert(tab_Content, "Trang tr­íc/#gopos_step2lv90( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang sau/#gopos_step2lv90( "..(ne_1+1)..","..n_count..")");
	end
	
	tinsert(tab_Content, "Hñy bá/no");
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
end


function gopos_step3lv90(nIdx)
	NewWorld(tab_lv90map[nIdx][1], tab_lv90map[nIdx][2], tab_lv90map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ngåi yªn! Chóng ta ®i!"..tab_lv90map[nIdx][4].."!");
end


function gopos_step2battle()
	if ( GetLevel() < 120 ) then
		Talk( 1, "", "ChiÕn Tr­êng tµn khèc, ng­êi ch­a ®¹t ®Õn LV120, nªn ®õng cã ham hè :v" );
	else
		Say ( "Ng­¬i qu¶ thËt muèn ®Õn chiÕn tr­êng Tèng Kim?", 3, "Tèng qu©n ghi danh./#DoRescriptFunc(1)", "Kim qu©n ghi danh/#DoRescriptFunc(2)","À ê... ®Ó ta suy nghÜ l¹i./no" );
	end;
end

function gopos_sevencityfield()
	Say("ThÊt §¹i Thµnh ChiÕn, ng­êi muèn ®Õn n¬i nµo?", 8,
		"Thµnh §« chiÕn tr­êng/#goto_sevencityfield(1)",
		"T­¬ng D­¬ng chiÕn tr­êng/#goto_sevencityfield(2)",
		"Ph­îng T­êng chiÕn tr­êng/#goto_sevencityfield(3)",
		"§¹i Lý chiÕn tr­êng/#goto_sevencityfield(4)",
		"BiÖn Kinh chiÕn tr­êng/#goto_sevencityfield(5)",
		"D­¬ng Ch©u chiÕn tr­êng/#goto_sevencityfield(6)",
		"L©m An chiÕn tr­êng/#goto_sevencityfield(7)",
		"Th«i kh«ng ®i.../Cancel")
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
		Talk( 1, "", "ChiÕn Tr­êng tµn khèc, ng­êi ch­a ®¹t ®Õn LV120, nªn ®õng cã ham hè :v" );
		return
	end
	local tbsongjin_pos = {1608,3254};	
	local szstr = "Tèng qu©n ghi danh.";
	if (nSel == 2) then
		tbsongjin_pos = {1566,3277};
		szstr = "Kim qu©n ghi danh.";
	end;
	szstr = ""
	if ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); 
		Msg2Player( "ChiÕn Tr­êng S¬ cÊp" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); 
		Msg2Player( "ChiÕn Tr­êng Trung cÊp" );
	else
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); 
		Msg2Player( "ChiÕn Tr­êng Cao cÊp" );
	end
end


function no()
end
