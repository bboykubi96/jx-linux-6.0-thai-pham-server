Include("\\script\\gb_taskfuncs.lua")
--Include("\\RelaySetting\\Task\\sukien\\callboss_incityhead.lua")
--Include("\\script\\mission\\boss\\bigboss.lua")

QY_GOLDBOSS_APOS_INFO = {
	-- {"Tuyªn ThËt Thµ", random( 1989, 1997), 95, 3, {"ChiÕn Long §éng","ChiÕn Long §éng","ChiÕn Long §éng"}},
	--{"Chñ V­ên §µo", 1950, 95, 3, {"§¹i ChiÕn V­ên §µo","§¹i ChiÕn V­ên §µo","§¹i ChiÕn V­ên §µo"}},
}

greatseed_configtab = {
	{1004, 3, 72, "\\settings\\maps\\daichientuongduong\\huyhoangcao.txt","§¹i ChiÕn V­ên §µo"},			-- §¹i ChiÕn V­ên §µo (Huy Hoµng Cao)
	{1004, 4, 5, "\\settings\\maps\\daichientuongduong\\hoangkim.txt","§¹i ChiÕn V­ên §µo"},			--  §¹i ChiÕn V­ên §µo (Hoµng Kim)
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
	
	if righttime_add() ~= 1 then--Èç¹ûÊ±¼ä²»¶Ô
		gb_SetTask("QUA HUY HOANG", 12, 30);	--12ºÅ±äÁ¿ÓÃÀ´´æ´¢NPCµÄÐòºÅ
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
	--µ±·þÎñÆ÷Õý³£ÔËÐÐÊ±£¬Ã¿Ìì×¼Ê±¿ªÊ¼»î¶¯Ê±£¬µÚÒ»³¡Ê±
	if nNowTime >= 1215 and nNowTime < 1210 then	--	
		gb_SetTask("QUA HUY HOANG", 20, 30);	
	end
	--------------------
	local nBatch = floor(mod(nNowTime,100)/5) + 1
	--
	local nMapCount = getn(greatseed_configtab);
	----- Tr­íc m¾t lµ thêi gian m­a thuËn giã hßa, ®Ó ®¸p t¹ c«ng søc ®ãng gãp c¸c vÞ ®¹i hiÖp, Vâ l©m minh chñ §éc C« KiÕm ®· tæ chøc ho¹t ®éng <color=yellow>'§ªm huy hoµng'<color>. Thêi gian b¾t ®Çu ho¹t ®éng mçi ngµy lµ 12h00. <enter><color=yellow>12h00 tr­a nay sÏ diÔn ra ho¹t ®éng 'Huy chi ch­¬ng'
	--
	-----
	for i = 1, nMapCount do
		local strExecute = format("dw Global_GreatSeedExecute(%d, %d, %d, [[%s]], [[%s]],%d)", greatseed_configtab[i][1], greatseed_configtab[i][2], greatseed_configtab[i][3], greatseed_configtab[i][4],greatseed_configtab[i][5],nBatch);
		GlobalExecute(strExecute);
		local szMsg = "";
		if (mod(nBatch,2) == 1) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "h¹t Huy Hoµng"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "h¹t Huy Hoµng"
		elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "h¹t Huy Hoµng"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "H¹t Hoµng Kim"
		end; 
		if (mod(nBatch,2) == 1) then
			szMsg = format("<color=green>M­a thuËn giã hßa, nhµ nhµ b×nh yªn, kh«ng biÕt ai gieo <color=cyan>%s<color> t¹i <color=cyan>%s<color>, cho giang hå ®¸nh nhau. CÈn thËn cã ®Þch!<color>",
			szMsg,
			greatseed_configtab[i][5]);
			GlobalExecute(format("dw AddLocalNews([[%s]])",szMsg));
			GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg));
		elseif (mod(nBatch,2) == 0) then
			szMsg = format("GÆp thêi tiÕt thuËn lîi <%s> ®· kÕt tr¸i t¹i %s, C¸c §¹i HiÖp h·y nhanh chãng thu ho¹ch!!",
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

function goldenseedmap()	--Ëæ»úÏ¢Ò»´Î»Æ½ðÖÖ×Ó³öÏÖµÄµØÍ¼£»1´óÀí£¬2ÑïÖÝ£»
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
