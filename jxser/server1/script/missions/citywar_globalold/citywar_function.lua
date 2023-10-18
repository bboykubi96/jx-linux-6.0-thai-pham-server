--Edit by NamCungNhatThien
--Date: 31-08-2015
--http://www.clbgamesvn.com/
--*****************************************


IncludeLib("LEAGUE")
IncludeLib("TITLE")
Include("\\script\\lib\\gb_modulefuncs.lua");

Include("\\script\\misc\\league_cityinfo.lua")

TASK_ACTIVE_TITLE = 1122
CW_TITLE_TIME = 7*24*60*60*18;
TB_CITYWAR_ARRANGE = {
				{3,4},--·ïÏè
				{1,2},--³É¶¼
				{2,3},--´óÀí
				{5,6},--ãê¾©
				{4,5},--ÏåÑô
				{0,1},--ÑïÖİ
				{6,0},--ÁÙ°²
			}
			
-----¹ºÂò¹¥³ÇÕ½µÀ¾ß start
function AskDeal()
	Say("Dông cô hç trî c«ng thµnh chiÕn cùc kú hiÖu dông, chØ cã thÓ dïng Nguyªn b¶o ®Ó mua! Kh¸ch quan nÕu bá lì kh«ng mua th× thËt v« cïng ®¸ng tiÕc!", 4, 
	--"»ëÊ¯ÁÑ/DealBuy", 
	"NghiÖt Long Xung Xa/#DealBuy(1)", 
	"V©n Kú Binh Phï/#DealBuy(2)", 
	"Ngoan Cæ Binh Phï/#DealBuy(3)", 
	"Kh«ng cÇn ®©u/OnCancelBuy");
end;

function DealBuy(ItemID)
	if (ItemID == 0) then
		SetTaskTemp(15, 29);
	elseif (ItemID == 1) then
		SetTaskTemp(15, 30);
	elseif (ItemID == 2) then
		SetTaskTemp(15, 31);
	elseif (ItemID == 3) then
		SetTaskTemp(15, 32);
	else
		return
	end;
	Say("Do qu¸ nhiÒu ng­êi mua! Kh¸ch quan chØ cã thÓ mua mét lÇn mét th«i!Cã ®ång ı kh«ng?", 2, "Muèn/DoBuy", "ta nghÜ l¹i xem /OnCancelBuy");
end;

function DoBuy()
	TheItem = GetTaskTemp(15);
	if (TheItem >= 29 and TheItem <= 32) then
		if (GetItemCountEx(1503) > 0) then
			DelItemEx(1503);
			AddItem(6,1,TheItem,1,0,0);
			WriteLog(format("%s dïng kim nguyªn b¶o 343 ®Ó mua 1 ®¹o cô c«ng thµnh >> %s",GetName(),TheItem));
			Say("Kh¸ch quan thËt biÕt xem hµng!", 0);
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù kh«ng cã Nguyªn B¶o?", 0);
		end;
	end;
end;
function OnCancelBuy()
	Say("Chóc nghÜa sÜ khai ®¾c th¾ng, sím ca khóc kh¶i hoµn!", 0);
end;
-----¹ºÂò¹¥³ÇÕ½µÀ¾ß end

--»ñµÃµ½7Ììºó 20:00·Ö µÄÊ±¼äìõ
function getUsedLine()
	local nh = tonumber(GetLocalDate("%H"));
	local nm = tonumber(GetLocalDate("%M"));
	return (CW_TITLE_TIME-((nh-20)*60+nm)*60*18);
end;

--»ñµÃµ±Ç°±¨Ãû¹¥³ÇÕ½µÄ³ÇÊĞ
--nSel=1,±¨Ãû£»nSel=2,¹¥³Ç
function getSigningUpCity(nSel)
	local nWeek = tonumber(GetLocalDate("%w"));
	for i = 1, getn(TB_CITYWAR_ARRANGE)do
		if (TB_CITYWAR_ARRANGE[i][nSel] == nWeek) then
			return i;
		end;
	end;
end;

-- ¼ì²éÁì½±Ìõ¼ş
function check_award_condition(city_index, show_talk)
	if (city_index == 0) then
		if (show_talk == 1) then
			Talk(1, "", "<#> ChØ cã bang ph¸i chiÕm ®­îc thµnh th× míi nhËn ®­îc phÇn th­ëng, h·y dÉn anh em cña m×nh ®i chiÕm mét thµnh nµo ®i!")
		end
		return 0
	end
	
	--local tong_master = GetTongMaster()
	--local player_name = GetName()
	--if (tong_master ~= player_name) then
--		if (show_talk == 1) then
	--		Talk(1, "", "<#>Ö»ÓĞ°ïÖ÷²ÅÄÜÁìÈ¡°ï»á½±Àø£¬½ĞÄãÃÇ°ïÖ÷À´°É")
		--end
		--return 0
	--end
	
	local wday = tonumber(GetLocalDate("%w"))	-- ½ñÌìÊÇĞÇÆÚ¼¸£¿
	local hour = tonumber(GetLocalDate("%H"))
	--Msg2Player("wday"..wday)
	--Msg2Player("hour"..hour)
	if (wday ~= 1 or hour < 9 or hour >= 23) then
		if (show_talk == 1) then
			Talk(1, "", "<#>Thø 2 ®Çu tuÇn tõ 9:00~23:00 thêi gian l·nh th­ëng, ®Õn giê ®ã tíi ®i")
		end
		return 0
	end
	--Msg2Player("CITYINFO_LEAGUETASK_BONUS"..CITYINFO_LEAGUETASK_BONUS)
	--Msg2Player("city_index"..city_index)
	local ndate = tonumber(GetLocalDate("%Y%m%d"))
	if (ndate == get_citybonus_task(city_index, CITYINFO_LEAGUETASK_BONUS)) then
		if (get_city_orecount(city_index) <= get_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT)) then
			if (show_talk == 1) then
				Talk(1, "", "<#>PhÇn th­ëng tuÇn nµy ®· nhËn hÕt, tuÇn sau h·y ®Õn nhĞ")
			end
			return 0
		end;
	else
		set_citybonus_task(city_index, CITYINFO_LEAGUETASK_BONUS, ndate);
		set_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT, 0);
	end

	return 1
end

TSK_CITYTONG_DATE = 2518
-- ÁìÈ¡Õ¼³Ç°ï»á½±Àø
function talk_citytong_award()
	local city_index = gettongownercity()
	if (check_award_condition(city_index, 1) == 1) then
		Say("<#>PhÇn th­ëng bang chiÕm thµnh. Thµnh viªn bang chiÕm thµnh cã thÓ ®i t×m C«ng Thµnh Quan ®Ó nhËn phÇn th­ëng huyÒn tinh cÊp 5, mçi ng­êi cã thÓ nhËn 1 viªn. Giíi h¹n: (T­¬ng D­¬ng) nhËn 50 viªn cÊp 5, Thµnh ThŞ(nh÷ng thµnh thŞ kh¸c) nhËn 40 viªn huyÒn tinh cÊp 5. NÕu sau 18h00 vÉn ch­a nhËn hÕt th× bang chñ tr­íc 23h00 cã thÓ nhËn sè cßn l¹i.",
			3,
			"<#>Ta muèn nhËn Tiªn Th¶o Lé, QuÕ Hoa Töu/#take_tong_award(1)",
			"<#>Ta lµ bang chñ ®Õn ®Ó nhËn phÇn th­ëng cßn l¹i/take_tong_resaward",
			"<#> T¹m thêi ta kh«ng l·nh ®©u/nothing")
	end
end

-- ÁìÈ¡ºì°ü
function take_tong_award(count)
	-- Ò»¸öºì°üÕ¼Ò»¸ö¸ñ×Ó
	if (CalcFreeItemCellCount() < count) then
		Talk(1, "", "<#> Hµnh trang cña ng­¬i ®· ®Çy, chØnh l¹i xong míi ®Õn l·nh th­ëng.")
		return
	end
	
	local city_index = gettongownercity()
	if (check_award_condition(city_index, 0) == 0) then
		return
	end
	
	local nH = tonumber(GetLocalDate("%H"));
	if (nH >= 18) then
		Talk(1, "", "<#>Thêi gian nhËn th­ëng cña mçi bang héi tõ 9h00 ®Õn 18h00, h·y ®Õn ®óng giê nµy ®Ó nhËn th­ëng. §èi víi phÇn th­ëng ch­a ®­îc nhËn, h·y th«ng b¸o cho bang chñ ®Õn nhËn tr­íc 23h00.");
		return 0;
	end;
	local today = tonumber(GetLocalDate("%Y%m%d"));
	local nMydate = GetTask(TSK_CITYTONG_DATE);
	--Msg2Player("CITYINFO_LEAGUETASK_COUNT"..CITYINFO_LEAGUETASK_COUNT)
	if (nMydate ~= today) then
		AddItem(6,1,1181,1,0,0);
		AddItem(6,1,125,1,0,0);
		AddItem(4,random(771,778),1,1,0,0)
		AddItem(4,random(903,942),1,1,0,0)

		SetTask(TSK_CITYTONG_DATE, today);
		add_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT, 1);
	local msg =	format("%s %s (%s) nhËn %s TLL8h,QHT, m·nh HK tai Kim s¬n ch­ëng m«n nh©n",GetLocalDate("[%y-%m-%d %H:%M] "),GetAccount(),GetName(),count)
		WriteLog(msg);
		Talk(1, "", "<#>§©y lµ phÇn th­ëng cña ng­¬i, h·y nhËn lÊy.")
	else
		Talk(1, "", "<#>Ng­¬i ®· nhËn phÇn th­ëng tuÇn nµy råi, ®îi tuÇn sau nhĞ");
	end
end

function take_tong_resaward()
	local city_index = gettongownercity()
	if (check_award_condition(city_index, 0) == 0) then
		return
	end
	
	local nH = tonumber(GetLocalDate("%H"));
	if (nH < 18 or nH >= 23) then
		Talk(1, "", "<#>Bang chñ vµo mçi thø hai cã thÓ ®Õn nhËn phÇn th­ëng cßn l¹i tr­íc 18h00 ®Õn 23h00, h·y ®Õn ®óng giê ®Ó nhËn.");
		return 0;
	end;
	
	if (GetName() ~= GetTongMaster()) then
		Talk(1, "", "<#>ChØ cã bang chñ míi cã thÓ nhËn phÇn th­ëng bang héi cßn l¹i. H·y th«ng b¸o cho bang chñ quı bang ®Õn ®©y nhËn tr­íc 23h00.");
		return 0;
	end;
	
	local nFreecell = CalcFreeItemCellCount();
	if (nFreecell < 20) then
		Talk(1, "", "<#>Hµnh trang kh«ng ®ñ chç trèng, h·y s¾p xÕp l¹i hµnh trang.")
		return 0;
	end;
	
	local nCount = get_city_orecount(city_index) - get_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT);
	
	for i = 1, nCount do
		AddItem(6,1,1181,1,0,0);
		AddItem(6,1,125,1,0,0);
		AddItem(4,random(771,778),1,1,0,0)
		AddItem(4,random(903,942),1,1,0,0)
	end;
	add_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT, nCount);
	local msg =	format("%s %s (%s) nhËn %s TLL8H, QHT, M¶nh HK tai Kim s¬n ch­ëng m«n nh©n",GetLocalDate("[%y-%m-%d %H:%M] "),GetAccount(),GetName(),nCount)
	WriteLog(msg);
	--Say(format("§©y lµ phÇn th­ëng cña quı bang, %s viªn huyÒn tinh cßn l¹i!",nCount), 0);
	Msg2SubWorld("Bang chñ "..GetAccount().." cña bang "..GetTongName().." ®· nhËn phÇn th­ëng C«ng Thµnh ChiÕn 50 viªn HuyÒn Tinh 5 t¹i NPC C«ng Thµnh Quan")
end;

function get_city_orecount(cityid)
	--if (cityid == 4 or cityid == 7) then--lam an 7 bien kinh 5, tuong duong 5
	if (cityid == 5) then
		return 50;
	else
		return 40;
	end;
end;
--------------------------------------------------------------------------------
--µÃµ½Ò»¸öÍæ¼ÒËùÔÚ°ï»áÕ¼ÁìµÄ³ÇÊĞ,·µ»ØË÷ÒıÖµ
function gettongownercity()
	--µÃµ½Íæ¼Ò°ï»áÃû³Æ
	local strTongName = GetTongName()
	if (strTongName == nil or strTongName == "") then
		return 0
	end

	--·Ö±ğµÃµ½Æß´ó³ÇÊĞµÄ°ï»áÃû³ÆÓëÍæ¼Ò°ï»áÃû³Æ¶Ô±È
	local strCityTongName

	for nCityID=1, 7 do
		strCityTongName = GetCityOwner(nCityID)
		if (strCityTongName ~= "" and strCityTongName == strTongName) then 
			return nCityID
		end
	end
	
	--±íÊ¾Íæ¼ÒËùÔÚµÄ°ï»áÃ»ÓĞÕ¼Áì³ÇÊĞ
	return 0
end

--Èç¹ûÎªnil»ò0£¬·µ»Ø1£¬·ñÔò·µ»Ø0
function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end

LEAGUETYPE_CITYWAR_SIGN = 508;
LEAGUETYPE_CITYWAR_FIRST = 509;

function checkCityWarLeague()
	for i = 1, 7 do
		local szLg = cityid_to_lgname(i);
		local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szLg);
		if (FALSE(nlid)) then
			local nNewLeagueID = LG_CreateLeagueObj()	--Éú³ÉÉçÍÅÊı¾İ¶ÔÏó(·µ»Ø¶ÔÏóID)
			LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_SIGN, szLg)	--ÉèÖÃÉçÍÅĞÅÏ¢(ÀàĞÍ¡¢Ãû³Æ)
			local ret = LG_ApplyAddLeague(nNewLeagueID, "", "");
			LG_FreeLeagueObj(nNewLeagueID);
		end;
		
		nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLg);
		if (FALSE(nlid)) then
			local nNewLeagueID = LG_CreateLeagueObj()	--Éú³ÉÉçÍÅÊı¾İ¶ÔÏó(·µ»Ø¶ÔÏóID)
			LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_FIRST, szLg)	--ÉèÖÃÉçÍÅĞÅÏ¢(ÀàĞÍ¡¢Ãû³Æ)
			local ret = LG_ApplyAddLeague(nNewLeagueID, "", "");
			LG_FreeLeagueObj(nNewLeagueID);
		end;
	end;
end;

function cityid_to_lgname(nCityID)
	return GetCityAreaName(nCityID);
end;

--½öÔÚÒ»Ì¨·şÎñÆ÷ÉÏÖ´ĞĞ¼´¿É
--ËùÒÔ£¬ÅĞ¶ÏÓĞ»ªÉ½µÄµØÍ¼

--*************Relay Add Bang khiªu chiÕn**********************
function citywar_appointchallenger(szCityName, szTongName)
	if (SubWorldID2Idx(2) >= 0 and not FALSE(szCityName) and not FALSE(szTongName)) then
		AppointChallenger(szCityName, szTongName)
	end;
end;

--************Relay Add Bang chiÕm thµnh***********************
function citywar_appointviceroy(szCityName, szTongName)
	if (SubWorldID2Idx(2) >= 0 and not FALSE(szCityName) and not FALSE(szTongName)) then
		AppointViceroy(szCityName, szTongName)
	end;
end;
