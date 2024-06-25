IL("FILESYS"); 
IL("ITEM"); 
IL("LEAGUE"); 
IL("SETTING"); 
IL("TITLE"); 
IL("RELAYLADDER"); 
Include("\\script\\missions\\leaguematch\\tb_head.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
--------------------------------------------------Phan Thuong
GLB_WLLS_PHASE = 820
GLB_WLLS_SID = 821
GLB_WLLS_MATCHID= 822 
GLB_WLLS_TYPE = 823 
GLB_WLLS_NEXT = 824
GLB_WLLS_TIME = 825
GLB_WLLS_CLOSE = 826
WLLS_LGTASK_MTYPE = 11 
WLLS_LGTASK_LAST = 1  
WLLS_LGTASK_SVRID = 2 
WLLS_LGTASK_MSCAMP = 3
WLLS_LGTASK_POINT = 4
WLLS_LGTASK_RANK = 5
WLLS_LGTASK_WIN = 6
WLLS_LGTASK_TIE = 7
WLLS_LGTASK_TOTAL = 8
WLLS_LGTASK_JOIN = 9 
WLLS_LGTASK_TIME = 10
WLLS_LGTASK_STYPE = 12
WLLS_LGTASK_EMY1 = 13
WLLS_LGTASK_EMY2 = 14 
WLLS_LGTASK_EMY3 = 15
WLLS_LGTASK_TOTAL_EX= 16
WLLS_LGTASK_USE_LingQi_COUNT= 17
WLLS_LGMTASK_JOB = 1 
WLLS_LGMTASK_STATE = 2 
WLLS_LGMTASK_ADDSID = 3
WLLS_LGMTASK_WIN = 4
WLLS_LGMTASK_TIE = 5
WLLS_LGMTASK_TOTAL = 6
WLLS_LGMTASK_OVER = 7  
WLLS_TB = 1715 
WLLS_TASKID_FROMMAP = WLLS_TB
WLLS_TASKID_FROM_X = WLLS_TB+1
WLLS_TASKID_FROM_Y = WLLS_TB+2
WLLS_TASKID_ORGCAMP = WLLS_TB+3
WLLS_TASKID_GOTAWARD= WLLS_TB+4
WLLS_TASKID_WIN = WLLS_TB+5
WLLS_TASKID_TIE = WLLS_TB+6
WLLS_TASKID_TOTAL = WLLS_TB+7
WLLS_TASKID_POINT = 2500 
WLLS_TASKID_HONOUR = 2501 
WLLS_TASKID_LGTYPE = WLLS_TB+11
WLLS_TASKID_LGPOINT = WLLS_TB+12
WLLS_TASKID_LGRANK = WLLS_TB+13
WLLS_TASKID_LGWIN = WLLS_TB+14
WLLS_TASKID_LGTIE = WLLS_TB+15
WLLS_TASKID_LGTOTAL = WLLS_TB+16
WLLS_TASKID_LGTIME = WLLS_TB+17
WLLS_TASKID_EX = WLLS_TB+18
WLLS_TASKID_SWITCH = WLLS_TB+19
WLLS_TASKID_AWARDEX = WLLS_TB+20
WLLS_TEMPTASK = 246 
WLLS_STRINGTASK = 5   
WLLS_MSID_SCHEDULE = 24
WLLS_MSID_COMBAT = 25 
WLLS_MSID_GLB = 26
WLLS_MSV_MSID = 1 
WLLS_TIMERID_SCHEDULE = 50
WLLS_TIMERID_COMBAT = 51
WLLS_FRAME2TIME = 18
WLLS_TIMER_PREP_FREQ = 10
WLLS_TIMER_PREP_TOTAL = 24 
WLLS_TIMER_FIGHT_FREQ = 5
WLLS_TIMER_FIGHT_PREP = 2  
WLLS_TIMER_FIGHT_TOTAL = 120  
WLLS_LGTYPE = 5
WLLS_REG_LGTYPE = 2
WLLS_LEVEL_JUNIOR = 80 
WLLS_LEVEL_SENIOR = 120 
WLLS_MIN_TEAM = 2 
WLLS_MAPPOS_SIGN = {1523, 3024}
WLLS_MAPPOS_PRE = {1596, 2977}
WLLS_LingQi_PerCOUNT = 4 

WLLS_CITY_INDEX = { 
	[37] = {1,1}, 
	[176] = {1,2}, 
	[78] = {1,3}, 
	[162] = {2,1}, 
	[80] = {2,2}, 
	[1] = {2,3}, 
	[11] = {2,4}, 
}  

WLLS_MAX_COUNT = 200

WLLS_FILE_DEATHSCRIPT = "\\script\\missions\\leaguematch\\combat\\playerdeath.lua"

WLLS_FORBID_ITEM = {--Cam Thuoc
	{" c«ng tèc hoµn ", {6, 1, 218, -1, 0, 0}, 511 }, 
	{" ch¹y tèc hoµn ", {6, 1, 219, -1, 0, 0}, 512 }, 
	{" phæ phßng hoµn ", {6, 1, 220, -1, 0, 0}, 513 }, 
	{" ®éc phßng hoµn ", {6, 1, 221, -1, 0, 0}, 514 }, 
	{" b¨ng phßng hoµn ", {6, 1, 222, -1, 0, 0}, 515 }, 
	{" löa phßng hoµn ", {6, 1, 223, -1, 0, 0}, 516 }, 
	{" l«i phßng hoµn ", {6, 1, 224, -1, 0, 0}, 517 }, 
	{" gi¶m th­¬ng hoµn ", {6, 1, 225, -1, 0, 0}, 518 }, 
	{" gi¶m ngÊt hoµn ", {6, 1, 226, -1, 0, 0}, 519 }, 
	{" gi¶m ®éc hoµn ", {6, 1, 227, -1, 0, 0}, 520 }, 
	{" gi¶m b¨ng hoµn ", {6, 1, 228, -1, 0, 0}, 521 }, 
	{" phæ c«ng hoµn ", {6, 1, 229, -1, 0, 0}, 522 }, 
	{" ®éc c«ng hoµn ", {6, 1, 230, -1, 0, 0}, 523 }, 
	{" b¨ng c«ng hoµn ", {6, 1, 231, -1, 0, 0}, 524 }, 
	{" löa c«ng hoµn ", {6, 1, 232, -1, 0, 0}, 525 }, 
	{" l«i c«ng hoµn ", {6, 1, 233, -1, 0, 0}, 526 }, 
	{" tr­êng mÖnh hoµn ", {6, 1, 234, -1, 0, 0}, 527 }, 
	{" tr­êng bªn trong hoµn ", {6, 1, 235, -1, 0, 0}, 528 }, 
	{" an hång ®an ", {6, 1, 115, -1, 0, 0}, 450 }, 
	{" x· lam ®an ", {6, 1, 116, -1, 0, 0}, 451 }, 
	{" bªn trong phæ hoµn ", {6, 1, 117, -1, 0, 0}, 453 }, 
	{" bªn trong ®éc hoµn ", {6, 1, 118, -1, 0, 0}, 454 }, 
	{" bªn trong b¨ng hoµn ", {6, 1, 119, -1, 0, 0}, 455 }, 
	{" néi háa hoµn ", {6, 1, 120, -1, 0, 0}, 456 }, 
	{" bªn trong l«i hoµn ", {6, 1, 121, -1, 0, 0}, 457 }, 
	{" tr­êng mÖnh hoµn ", {6, 0, 1, -1, 0, 0}, 256 }, 
	{" thªm ch¹y hoµn ", {6, 0, 2, -1, 0, 0}, 257 }, 
	{" ®¹i lùc hoµn ", {6, 0, 3, -1, 0, 0}, 258 }, 
	{" cao nhanh chãng hoµn ", {6, 0, 4, -1, 0, 0}, 259 }, 
	{" trung häc ®Ö nhÞ cÊp hoµn ", {6, 0, 5, -1, 0, 0}, 260 }, 
	{" nhanh chãng hoµn ", {6, 0, 6, -1, 0, 0}, 261 }, 
	{" b¨ng phßng hoµn ", {6, 0, 7, -1, 0, 0}, 262 }, 
	{" l«i phßng hoµn ", {6, 0, 8, -1, 0, 0}, 263 }, 
	{" löa phßng hoµn ", {6, 0, 9, -1, 0, 0}, 264 }, 
	{" ®éc phßng hoµn ", {6, 0, 10, -1, 0, 0}, 265 }, 
	{" lËt tö tèng tö ", {6, 0, 60, -1, 0, 0}, 401 }, 
	{" thÞt heo tèng tö ", {6, 0, 61, -1, 0, 0}, 402 }, 
	{" thÞt bß tèng tö ", {6, 0, 62, -1, 0, 0}, 403 }, 
	{" tr¨m qu¶ lé ", {6, 1, 73, -1, 0, 0}, 442 }, 
	{" c¸t t­êng bao tiÒn l× x× ", {6, 1, 19, -1, 0, 0}, 442 }, 
	{" hoµng kim b¶o r­¬ng ", {6, 1, 69, -1, 0, 0}, 442}, 
	{" méc lÖnh bµi tin/th¬ khiÕn cho ", {6, 1, 885, -1, 0 ,0}, 542}, 
	{" ®ång lÖnh bµi tin/th¬ khiÕn cho ", {6, 1, 886, -1, 0 ,0}, 543}, 
	{" ng©n lÖnh bµi tin/th¬ khiÕn cho ", {6, 1, 887, -1, 0 ,0}, 544}, 
	{" kim lÖnh bµi tin/th¬ khiÕn cho ", {6, 1, 888, -1, 0 ,0}, 545}, 
	{" ngù tø tin/th¬ khiÕn cho lÖnh bµi ", {6, 1, 889, -1, 0 ,0}, 546}, 
	{" tói viªn thuèc ", {6, 1, 910, -1, 0 ,0}, 635}, 
	{" thÇn bÝ bao tiÒn l× x× hép quµ ", {6, 1, 1074, -1, 0 ,0}, 635}, 
	{" hép quµ [ huy hoµng qu¶ ]", {6, 1, 1075, -1, 0 ,0}, 635}, 
	{" ng­êi gi¶ ", {6, 1, 1389, -1, 0, 0}, 635 },  
--	{" håi thiªn t¸i t¹o cÈm nang ", {6, 1, 1781, -1, 0, 0},635}, 
	{" méc chÕ b¶o hép ", {6, 1, 2318, -1, 0, 0},635}, 
	{" lµm b»ng ®ång b¶o hép ", {6, 1, 2319, -1, 0, 0},635}, 
	{" lµm b»ng b¹c b¶o hép ", {6, 1, 2320, -1, 0, 0},635}, 
	{" hoµng kim b¶o r­¬ng ", {6, 1, 2321, -1, 0, 0},635}, 
	{" b¹ch kim b¶o r­¬ng ", {6, 1, 2322, -1, 0, 0},635}, 
	{" s¸t thñ bÝ b¶o ", {6, 1, 2347, -1, 0, 0},635}, 
	{" d· tÈu thÇn bÝ b¶o r­¬ng ", {6, 1, 2374, -1, 0, 0},635}, 
	{" chÝ t«n bÝ b¶o ", {6, 1, 2375, -1, 0, 0},635}, 
	{" n­íc tÆc tµi b¶o ", {6, 1, 2376, -1, 0, 0},635}, 
	{" Håi thiªn t¸i t¹o lÔ bao Vip ", {6, 1, 4832, -1, 0, 0},635}, 
	{" nhanh chãng hoµn lÔ tói ", {6, 1, 2520, -1, 0, 0},635}, 
	{" ®¹i lùc hoµn lÔ tói ", {6, 1, 2517, -1, 0, 0},635}, 
	{" c«ng thµnh chiÕn lÔ tói ", {6, 1, 2377, -1, 0, 0},635}, 
	{" ®éc phßng hoµn lÔ tói ", {6, 1, 2524, -1, 0, 0},635}, 
	{" tr­êng mÖnh hoµn lÔ tói ", {6, 1, 2515, -1, 0, 0},635}, 
	{" gia tèc hoµn lÔ tói ", {6, 1, 2516, -1, 0, 0},635}, 
	{" cao nhanh chãng hoµn lÔ tói ", {6, 1, 2518, -1, 0, 0},635}, 
	{" trung häc ®Ö nhÞ cÊp hoµn lÔ tói ", {6, 1, 2519, -1, 0, 0},635}, 
	{" nhanh chãng hoµn lÔ tói ", {6, 1, 2520, -1, 0, 0},635}, 
	{" b¨ng phßng hoµn lÔ tói ", {6, 1, 2521, -1, 0, 0},635}, 
	{" l«i phßng hoµn lÔ tói ", {6, 1, 2522, -1, 0, 0},635}, 
	{" löa phßng hoµn lÔ tói ", {6, 1, 2523, -1, 0, 0},635}, 
	{" ®éc phßng hoµn lÔ tói ", {6, 1, 2524, -1, 0, 0},635}, 
	{" vi s¬n lÖnh bµi lÔ tói ", {6, 1, 2525, -1, 0, 0},635}, 
	{" hoµn hån ®an lÔ tói ", {6, 1, 2830, -1, 0, 0},635}, 
	{" tiªu dao t¸n ", {6, 1, 2831, -1, 0, 0},635}, 
	{" hoµn hån ®an ", {6, 1, 2837, -1, 0, 0},635}, 
}  

WLLS_FORBID_STATES = { 
	{"BÊt ®éng minh v­¬ng ", 15}, 
	{"Nh­ ngµy qua/n÷a l¸ ", 273}, 
	{"TÜnh t©m quyÕt ", 33}, 
	{"Kim chung tr¸o ", 42}, 
	{"Cöu thiªn cuång l«i ", 67}, 
	{"XÝch diÔm phÖ ngµy ", 70}, 
	{"B¨ng lam thñy tinh ", 64}, 
	{"MÆc quÇn ¸o ph¸ gi¸p ", 356}, 
	{"V¹n ®éc thùc t©m ", 73}, 
	{"Xuyªn tim gai ®éc ", 72}, 
	{"§o¹n g©n hñ cèt ", 390}, 
	{"B¨ng t©m tr¸i ¶nh ", 269}, 
	{"Hé thÓ hµn b¨ng ", 100}, 
	{"TuyÕt ¶nh ", 109},  
	{"Ho¹t kh«ng l­u tay ", 277}, 
	{"BÓ ®iÖp cuèng ng÷ ", 130}, 
	{"löa ngay c¶ ph©n hoa ", 136}, 
	{"¶o ¶nh bay hå ", 137}, 
	{"Thiªn ma gi¶i thÓ ", 150}, 
	{"Ngåi quªn v« ng· ", 157}, 
	{"Giã m¸t phï ", 171}, 
	{"C¬ nöa phï ", 174}, 
	{"Mét khÝ ba thanh ", 178}, 
	{"B¾c minh ®Õn h¶i ", 393}, 
	{"Ngµy thanh ®Þa träc ", 173}, 
	{"Kú hµn ng¹o tuyÕt ", 175}, 
	{"Say tiªn ®¸nh cèt ", 394}, 
	{"Kü n¨ng lÖnh bµi 1", 631}, 
	{"Kü n¨ng lÖnh bµi 2", 632}, 
	{"Kü n¨ng lÖnh bµi 3", 633}, 
	{"Kü n¨ng lÖnh bµi 4", 634}, 
	{"Kü n¨ng lÖnh bµi 5", 635}, 
	{"Kü n¨ng tiªn phong ", 958}, 
	{"Kü n¨ng Nguyªn so¸i ", 959}, 
	{"Kü n¨ng Thõa t­íng ", 960}, 
	{"Kü n¨ng hoµng ®Õ ", 961}, 
	{"Kü n¨ng thiªn tö ", 962}, 
	{"TÝch c«ng trî lùc hoµn ", 1120}, 
	{"TÝch c«ng trî lùc hoµn ", 261}, 
	{"TÝch c«ng trî lùc hoµn ", 258}, 
	{"TÝch c«ng trî lùc hoµn ", 260}, 
	{"¢m d­¬ng ho¹t huyÕt ®an ", 1121}, 
	{"¢m d­¬ng ho¹t huyÕt ®an ", 256}, 
	{"¢m d­¬ng ho¹t huyÕt ®an ", 259}, 
	{"¢m d­¬ng ho¹t huyÕt ®an ", 257}, 
} 

WLLS_LEVEL_DESC = {"Vâ L©m liªn ®Êu","Vâ L©m liªn ®Êu"} 
WLLS_AWARD_TITLE = {85, 81} 


WLLS_AWARD_TITLE_EX = { 
	[1] = {204,205,206,207}, 
	[2] = {200,201,202,203}, 
	[3] = {200,201,202,203}, 
	[4] = {204,205,206,207}, 
	[5] = {204,205,206,207}, 
	[6] = {200,201,202,203}, 
	[7] = {81, 82, 83,84}, 
} 

Include("\\script\\missions\\leaguematch\\macthtype\\double.lua")
Include("\\script\\missions\\leaguematch\\macthtype\\faction.lua")
Include("\\script\\missions\\leaguematch\\macthtype\\teacher.lua") 
Include("\\script\\missions\\leaguematch\\macthtype\\three.lua")
Include("\\script\\missions\\leaguematch\\macthtype\\single.lua") 
Include("\\script\\missions\\leaguematch\\macthtype\\series.lua") 
Include("\\script\\missions\\leaguematch\\macthtype\\mixeddoubles.lua")

function wlls_player_type()
	local n_nexttype = GetGlbValue(GLB_WLLS_NEXT)
	return WLLS_TAB[n_nexttype].player_type()
end

function wlls_check_addmem(n_capidx, n_lid, n_mtype)
	local n_nexttype = GetGlbValue(GLB_WLLS_NEXT)
	return WLLS_TAB[n_nexttype].check_addmem(n_capidx, n_lid, n_mtype)
end

function wlls_award_pl_exp(n_rate, n_alevel)
	if (GetUUID() == 0) then
		wlls_award_log("Bëi v× ng­êi ch¬i ®· tho¸t m¹ng, kh«ng thÓ nhËn phÇn th­ëng kinh nghiÖm.")
		return
	end
	local n_level = GetLevel()
	if (n_level >= WLLS_LEVEL_SENIOR) then
		n_level = WLLS_LEVEL_SENIOR + n_alevel - 2
	elseif (n_level < 90) then
		n_level = 90
	end
	local n_exp = (700+floor((n_level*4-350)/5)*100)*60*0.6*n_rate
	wlls_add_exp(n_exp)
	local str = "NhËn ®­îc phÇn th­ëng thi ®Êu——<color=yellow>"..n_exp.."<color>®iÓm kinh nghiÖm"
	wlls_award_log(str)
	Msg2Player(str)
end

function wlls_get_level(n_mtype)
	local n_type = GetGlbValue(GLB_WLLS_TYPE)
	return WLLS_TAB[n_type].match_type[n_mtype].level
end

function FALSE(value)
	if (value == 0 or value == nil) then
		return 1
	else
		return nil
	end
end

function wlls_player_level()
	local n_level = GetLevel()
	if (n_level >= WLLS_LEVEL_SENIOR) then
		return 2
	elseif (n_level >= WLLS_LEVEL_JUNIOR) then
		return 1
	else
		return 0
	end
end 

function wlls_get_mapid(n_whichmap, n_mtype, n_groupid)
	if (FALSE(n_mtype)) then
		n_mtype, n_groupid = wlls_get_mapinfo()
		if (FALSE(n_mtype)) then
			return nil
		end
	end
	local n_type = GetGlbValue(GLB_WLLS_TYPE)
	local tb = WLLS_TAB[n_type].match_type[n_mtype]
	if (not tb) then
		return nil
	end
	tb = tb.map[n_groupid]
	if (not tb) then
		return nil
	end
	return tb[n_whichmap]
end 

function wlls_get_mapinfo(n_idx)
	local n_mapid = SubWorldIdx2ID(SubWorld)
	local n_type = GetGlbValue(GLB_WLLS_TYPE)
	local tb = WLLS_TAB[n_type].map_index[n_mapid]
	if (not tb) then
		return nil
	end
	if (n_idx) then
		return tb[n_idx]
	else
		return unpack(tb)
	end
end 

function wlls_getcityinfo()
	local n_mapid = SubWorldIdx2ID(SubWorld)
	local tb = WLLS_CITY_INDEX[n_mapid]
	if (not tb) then
		return nil
	end
	return unpack(tb)
end

function wlls_get_desc(n_style, n_mtype, n_group, n_type)
	if (not n_mtype) then
		n_mtype, n_group = wlls_get_mapinfo()
		if (not n_mtype) then
			return WLLS_LEVEL_DESC[wlls_getcityinfo()]
		end
	end
	if not n_type then
		n_type = GetGlbValue(GLB_WLLS_TYPE)
	end
	local tb = WLLS_TAB[n_type].match_type[n_mtype]
	if (n_style == 2) then
		return WLLS_LEVEL_DESC[tb.level] .. tb.name
	elseif (n_style == 3) then
		return WLLS_LEVEL_DESC[tb.level] .. tb.name .. tb.map[n_group][4]
	else
		return WLLS_LEVEL_DESC[tb.level]
	end
end 

function wlls_check_player(str_plname, n_level, n_needtype)
	local n_lid = LG_GetLeagueObjByRole(WLLS_LGTYPE, str_plname)
	if (FALSE(n_lid)) then
		return nil
	end
	local n_stype = LG_GetLeagueTask(n_lid, WLLS_LGTASK_STYPE)
	local n_type = GetGlbValue(GLB_WLLS_TYPE)
	if (n_stype ~= n_type) then
		return nil
	end
	local n_mtype = LG_GetLeagueTask(n_lid, WLLS_LGTASK_MTYPE)
	if (n_needtype) then
		if (n_needtype ~= n_mtype) then
			return nil
		else
			return n_lid
		end
	elseif (n_level == wlls_get_level(n_mtype)) then
		return n_lid, n_mtype
	else
		return nil
	end
end

function wlls_lg_info(str_plname)
	if (not str_plname) then
		str_plname = GetName()
	end
	
	local n_lid = LG_GetLeagueObjByRole(WLLS_LGTYPE, str_plname)
	if (FALSE(n_lid)) then
		return nil
	end
	
	local n_mtype = LG_GetLeagueTask(n_lid, WLLS_LGTASK_MTYPE)
	local str_lgname, _, n_mcount = LG_GetLeagueInfo(n_lid)
	local n_job = LG_GetMemberTask(WLLS_LGTYPE, str_lgname, str_plname, WLLS_LGMTASK_JOB)
	return n_lid, n_mtype, n_job, str_lgname, n_mcount
end

function wlls_GetLGInfo(szPlayerName)
	if (not szPlayerName) then
		szPlayerName = GetName()
	end
	
	local tbLG	= {}
	
	tbLG.nLGID = LG_GetLeagueObjByRole(WLLS_LGTYPE, szPlayerName)
	if (FALSE(tbLG.nLGID)) then
		return nil
	end
	
	tbLG.szName, _, tbLG.nMemCount = LG_GetLeagueInfo(tbLG.nLGID)
	tbLG.nNameID= Number2Int(String2Id(tbLG.szName))
	tbLG.nMType	= LG_GetLeagueTask(tbLG.nLGID, WLLS_LGTASK_MTYPE)
	tbLG.nPoint	= LG_GetLeagueTask(tbLG.nLGID, WLLS_LGTASK_POINT)
	tbLG.nWin	= LG_GetLeagueTask(tbLG.nLGID, WLLS_LGTASK_WIN)
	tbLG.nTie	= LG_GetLeagueTask(tbLG.nLGID, WLLS_LGTASK_TIE)
	tbLG.nTotal	= LG_GetLeagueTask(tbLG.nLGID, WLLS_LGTASK_TOTAL)
	tbLG.tbEmys	= {}
	tbLG.tbEmys[LG_GetLeagueTask(tbLG.nLGID, WLLS_LGTASK_EMY1)]	= 1
	tbLG.tbEmys[LG_GetLeagueTask(tbLG.nLGID, WLLS_LGTASK_EMY2)]	= 2
	tbLG.tbEmys[LG_GetLeagueTask(tbLG.nLGID, WLLS_LGTASK_EMY3)]	= 3
	return tbLG
end

function wlls_getmapmissionv(n_mapid, n_valueid)
	local OldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(n_mapid)
	local n_value = GetMissionV(n_valueid) 
	SubWorld = OldSubWorld
	return n_value
end 

function wlls_setmapmissionv(n_mapid, n_valueid, n_value)
	local OldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(n_mapid)
	SetMissionV(n_valueid, n_value)
	SubWorld = OldSubWorld
end 

function wlls_set_pl_state()
	SetTaskTemp(200, 1)
	SetLogoutRV(1);
	SetPunish(0);
	DisabledStall(1)
	ForbitTrade(1);
	DisabledUseTownP(1)
	SetFightState(0);
	ForbitStamina(1)
end

function wlls_clear_pl_state()
	SetCurCamp(GetCamp());
	DisabledStall(0);
	SetTaskTemp(200, 0);
	SetPunish(1);
	ForbitTrade(0);
	SetDeathScript("");
	RestoreOwnFeature();
	SetFightState(0);
	DisabledUseTownP(0)
	ForbitStamina(0)
end
 
function wlls_get_ms_troop()
	local tb_troop = {}
	local n_msid = GetMissionV(WLLS_MSV_MSID);
	
	for i = 1, WLLS_MAX_COUNT do
		if (GetMSPlayerCount(n_msid, i) > 0) then
			tb_troop[getn(tb_troop)+1] = i
		end
	end
	return tb_troop
end 
 
function wlls_get_ms_plidx(n_camp)
	local tb_idx = {}
	local n_msid = GetMissionV(WLLS_MSV_MSID)
	local n_idx = 0
	local n_pidx
	repeat
		n_idx, n_pidx = GetNextPlayer(n_msid, n_idx, n_camp)
		if (n_pidx > 0 ) then
			tb_idx[getn(tb_idx)+1] = n_pidx
		end
	until (n_idx == 0)
	return tb_idx
end

function wlls_camp2league(n_camp)
	_M("wlls_camp2league", n_camp)
	local n_msid = GetMissionV(WLLS_MSV_MSID);
	local _, n_pidx = GetNextPlayer(n_msid, 0, n_camp);
	if (n_pidx <= 0) then
		wlls_error_log("wlls_camp2league", "n_pidx <= 0", n_pidx, n_camp)
		return 0, ""
	end
	
	local n_oldidx = PlayerIndex
	PlayerIndex = n_pidx
	local str_plname = GetName()
	PlayerIndex = n_oldidx
	
	local n_lid = LG_GetLeagueObjByRole(WLLS_LGTYPE, str_plname)
	if (FALSE(n_lid)) then
		wlls_error_log("wlls_camp2league", "FALSE(n_lid)", str_plname)
		return 0, ""
	end

	return n_lid, LG_GetLeagueInfo(n_lid)
end 
 
function wlls_get_ms_damage(n_camp)
	_M("wlls_get_ms_damage", n_camp)
	
	local n_damage	= 0
	
	-- Ã¿¸öÔÚ³¡ÈËÔ±ÉËº¦ÊýÀÛ¼Ó
	local n_oldidx	= PlayerIndex
	local tb_pidx	= wlls_get_ms_plidx(n_camp);
	for i = 1, getn(tb_pidx) do
	 	PlayerIndex = tb_pidx[i];
	 	n_damage	= n_damage + ST_GetDamageCounter();
	end
	PlayerIndex	= n_oldidx
	
	return n_damage
end

function wlls_remove_camp(n_camp)
	_M("wlls_remove_camp", n_camp)
	local tb_idx = wlls_get_ms_plidx(n_camp)
	local n_signmap = wlls_get_mapid(1)
	local n_oldidx = PlayerIndex
	for i = 1, getn(tb_idx) do
		PlayerIndex = tb_idx[i]
		SetLogoutRV(0);
		NewWorld(n_signmap, WLLS_MAPPOS_SIGN[1], WLLS_MAPPOS_SIGN[2])
	end
	PlayerIndex = n_oldidx
end 

--PhÇn Th­ëng Bªn Th¾ng - Bªn Thua
function wlls_award_pl(nLevel, nWin, nTie, nTotal)
	_M("wlls_award_pl", nLevel, nWin, nTie, nTotal)
	
	if (nWin > 0) then	SetTask(WLLS_TASKID_WIN, GetTask(WLLS_TASKID_WIN) + nWin) end
	if (nTie > 0) then	SetTask(WLLS_TASKID_TIE, GetTask(WLLS_TASKID_TIE) + nTie) end
	if (nWin > 0 or nTie > 0) then
		local nPoint	= wlls_GetAddPoint(nLevel, nWin, nTie)
		SetTask(WLLS_TASKID_POINT, GetTask(WLLS_TASKID_POINT) + nPoint)
		SetTask(WLLS_TASKID_HONOUR, GetTask(WLLS_TASKID_HONOUR) + nPoint)
		Msg2Player(format("Chóc mõng b¹n ®· nhËn ®­îc phÇn th­ëng --- §iÓm vinh dù lµ %d ®iÓm", nPoint))
		wlls_award_log(format("Chóc mõng b¹n ®· nhËn ®­îc phÇn th­ëng liªn ®Êu - §iÓm vinh dù lµ %d ®iÓm. Tæng céng cã %d ®iÓm", nPoint, GetTask(WLLS_TASKID_HONOUR)))
	end
	SetTask(WLLS_TASKID_TOTAL, GetTask(WLLS_TASKID_TOTAL) + nTotal)
end

function wlls_record_one_match_result(n_level, str_lgname, n_result, n_usedtime)
	local n_lid = LG_GetLeagueObj(WLLS_LGTYPE, str_lgname)
	if (FALSE(n_lid)) then
		wlls_error_log("wlls_award_lg: FALSE(n_lid)")
		return
	end
	local nWin, nTie	= 0, 0
	if (n_result == 1) then
		nWin = 1
		LG_ApplyAppendLeagueTask(WLLS_LGTYPE, str_lgname, WLLS_LGTASK_WIN, 1)
	elseif (n_result == 0) then
		nTie = 1
		LG_ApplyAppendLeagueTask(WLLS_LGTYPE, str_lgname, WLLS_LGTASK_TIE, 1)
	end
	local n_point	= wlls_GetAddPoint(n_level, nWin, nTie)
	LG_ApplyAppendLeagueTask(WLLS_LGTYPE, str_lgname, WLLS_LGTASK_POINT, n_point)
	LG_ApplyAppendLeagueTask(WLLS_LGTYPE, str_lgname, WLLS_LGTASK_TIME, n_usedtime)
	_M("Thêi gian thi ®Êu tæng céng: "..(n_usedtime/18).." gi©y")
	
	local _, _, n_memcount = LG_GetLeagueInfo(n_lid)
	local n_oldidx = PlayerIndex
	for i = 0, n_memcount-1 do
		local str_plname = LG_GetMemberInfo(n_lid, i)
		local n_plidx = SearchPlayer(str_plname)
		if (n_plidx > 0) then
			PlayerIndex = n_plidx
			--start
			if (n_result == 1) then
				
				if n_level == 2 then
					DynamicExecuteByPlayer(n_plidx, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "wulinliansai")
				end
			elseif (n_result == 0) then
				
				SetTask(WLLS_TASKID_LGTIE, GetTask(WLLS_TASKID_LGTIE) + 1)
			else	
				
			end
			wlls_award_pl(n_level, nWin, nTie, 1)
			SetTask(WLLS_TASKID_LGPOINT, GetTask(WLLS_TASKID_LGPOINT) + n_point)
			SetTask(WLLS_TASKID_LGTOTAL, GetTask(WLLS_TASKID_LGTOTAL) + 1)
			SetTask(WLLS_TASKID_LGTIME, GetTask(WLLS_TASKID_LGTIME) + n_usedtime)
			SyncTaskValueMore(WLLS_TASKID_WIN, WLLS_TASKID_LGTIME)
			SyncTaskValueMore(WLLS_TASKID_POINT, WLLS_TASKID_HONOUR)
		else
			if (n_result == 1) then
				LG_ApplyAppendMemberTask(WLLS_LGTYPE, str_lgname, str_plname, WLLS_LGMTASK_WIN, 1, "", "")
			elseif (n_result == 0) then	--Æ½
				LG_ApplyAppendMemberTask(WLLS_LGTYPE, str_lgname, str_plname, WLLS_LGMTASK_TIE, 1, "", "")
			end
			LG_ApplyAppendMemberTask(WLLS_LGTYPE, str_lgname, str_plname, WLLS_LGMTASK_TOTAL, 1, "", "")
		end
	end
	PlayerIndex = n_oldidx
end

function wlls_AddMatchCount(str_lgname, nCount)
	local n_lid = LG_GetLeagueObj(WLLS_LGTYPE, str_lgname)
	if (FALSE(n_lid)) then
		wlls_error_log("wlls_award_lg: FALSE(n_lid)")
		return
	end
	if LG_GetLeagueTask(n_lid, WLLS_LGTASK_TOTAL) >= 48 then
		
		
		LG_ApplyAppendLeagueTask(WLLS_LGTYPE, str_lgname, WLLS_LGTASK_TOTAL_EX, nCount)
	else
		LG_ApplyAppendLeagueTask(WLLS_LGTYPE, str_lgname, WLLS_LGTASK_TOTAL, nCount)	
	end
end

--Phan Thuong
function wlls_award_pl_Respect(nRespect)
	local tbAward = {
		[1] = {
			{nExp_tl = 2e8},
			{szName="KNB",tbProp={4,417,1,1,0,0},nCount=200},
                        {szName = "B¸ch NghÖ Tinh Ngäc",tbProp={6,1,49004,1,0,0},nCount=10},
		        {szName = "B¸ch NghÖ Thiªn Th¹ch",tbProp={6,1,30355,1,0,0},nCount=10},
			{szName="Tinh Ngoc",tbProp={6,1,30332,1,1},nCount=1},
		},
		[2] = {
			--pFun = function (nItemCount, szLogTitle)
			--	AddEnergy(1000)
			--end,
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Liªn §Êu")
        SetTask(5138,GetTask(5138)+1)
	Msg2Player(format("Uy danh gia t¨ng %d", nRespect)); AddRespect(nRespect)
	wlls_award_log(format("§¹t ®­îc 1 trµng liªn cuéc so tµi t­ëng th­ëng %d ®iÓm , tæng céng cã %d ®iÓm uy danh ", nRespect, GetRespect())) 
end 

function wlls_award_lg(n_level, str_lgname, n_result, n_usedtime)
	_M("wlls_award_lg", n_level, str_lgname, n_result, n_usedtime)
	local n_lid = LG_GetLeagueObj(WLLS_LGTYPE, str_lgname)
	if (FALSE(n_lid)) then
		wlls_error_log("wlls_award_lg: FALSE(n_lid)")
		return
	end
	
	local n_total = LG_GetLeagueTask(n_lid, WLLS_LGTASK_TOTAL) + 1
	local nTotalEx = LG_GetLeagueTask(n_lid, WLLS_LGTASK_TOTAL_EX) + 1
	local nMaxCountEx = LG_GetLeagueTask(n_lid, WLLS_LGTASK_USE_LingQi_COUNT) * WLLS_LingQi_PerCOUNT
	
	wlls_AddMatchCount(str_lgname, 1)
	
	if n_total <= 48 then
		wlls_record_one_match_result(n_level, str_lgname, n_result, n_usedtime)
	end
	
	local _, _, n_memcount = LG_GetLeagueInfo(n_lid)
	local n_oldidx = PlayerIndex
	for i = 0, n_memcount-1 do
		local str_plname = LG_GetMemberInfo(n_lid, i)
		local n_plidx = SearchPlayer(str_plname)
		if (n_plidx > 0) then
			PlayerIndex = n_plidx
			
			G_ACTIVITY:OnMessage("LeagueResult", n_level, n_result);
			
			tongaward_league()
			
			if (n_result == 1) then
				wlls_award_pl_exp(20 * 4, n_level)
				wlls_award_pl_Respect(3)
				
				
			elseif (n_result == 0) then
				wlls_award_pl_exp(10 * 4, n_level)
				wlls_award_pl_Respect(2)
			else	--¸º
				wlls_award_pl_exp(8 * 4, n_level)
				wlls_award_pl_Respect(1)
			end
			
			SetTask(WLLS_TASKID_ORGCAMP, 0)
			ST_StopDamageCounter()
			if (n_total > 48 ) then
				local szMsg = format("§· tham gia %d trËn liªn ®Êu më réng vµ cßn %d trËn më réng", nTotalEx, nMaxCountEx - nTotalEx)
				Msg2Player(szMsg)
			end
		end
	end
	PlayerIndex = n_oldidx
end
 
function wlls_matchresult(str_league1, str_league2, result, n_usedtime)
	_M("wlls_matchresult", str_league1, str_league2, result, n_usedtime)
	local n_mtype = wlls_get_mapinfo(1)
	local n_level = wlls_get_level(n_mtype)
	local str = wlls_get_desc(2, n_mtype)
	if (not str_league2) then
		str_league2 = ""
		result = 1
		str = str.." ®éi ["..str_league1.."] giµnh th¾ng lîi"
		wlls_award_lg(n_level, str_league1, 1, n_usedtime)
	else
		if (result == 1) then
			str = str.." ®éi ["..str_league1.."]chiÕn th¾ng ["..str_league2.."]!"
			wlls_award_lg(n_level, str_league1, 1, n_usedtime)
			wlls_award_lg(n_level, str_league2, 2, n_usedtime)
		else
			str = str.." ®éi ["..str_league1.."]cïng ®éi ["..str_league2.."] hßa nhau!"
			wlls_award_lg(n_level, str_league1, 0, n_usedtime)
			wlls_award_lg(n_level, str_league2, 0, n_usedtime)
		end
	end
	Msg2SubWorld("<color=cyan>"..str)
	local n_mid = GetGlbValue(GLB_WLLS_MATCHID)
	local szResult = n_mtype.." "..n_mid.." "..str_league1.." "..str_league2.." "..result 
	LG_ApplyDoScript(0, "", "", "\\script\\leaguematch\\log.lua", "OnReceiveMatchResult", szResult , "", "")
	WriteLog(n_mid.."\t"..szResult)
end 
 
function wlls_in_mission(n_msid, str_plname)
	local n_plidx = SearchPlayer(str_plname)
	if (n_plidx > 0) then
		local n_plmsidx = PIdx2MSDIdx(n_msid, n_plidx)
		if (n_plmsidx > 0) then
			return GetMSIdxGroup(n_msid, n_plmsidx)
		end
	end
end

function wlls_findfriend(n_msid, str_plname)
	local n_lid = LG_GetLeagueObjByRole(WLLS_LGTYPE, str_plname)
	if (n_lid == 0) then
		--wlls_error_log("wlls_findfriend", "n_lid == 0")
		return
	end
	
	local str_lgname, _, n_memcount = LG_GetLeagueInfo(n_lid)
	for i = 0, n_memcount-1 do
		local str_friendname = LG_GetMemberInfo(n_lid, i)
		local n_mscamp = wlls_in_mission(n_msid, str_friendname)
		if (n_mscamp) then
			return n_mscamp, str_lgname
		end
	end
	return nil, str_lgname
end

function OnCancel()
end

function wlls_en_check()
	local forbiditem_con = 0
	local forbiditem_key = 0
	local keyitem = {}
	local keyitem_g = {}
	local keyitem_d = {}
	local keyitem_p = {}
	for i = 1, 3 do
		keyitem[i] = ITEM_GetImmediaItemIndex (i)
		if (keyitem[i] ~= 0) then
			keyitem_g[i], keyitem_d[i], keyitem_p[i] = GetItemProp(keyitem[i])
		else
			keyitem_g[i] = 0
			keyitem_d[i] = 0
			keyitem_p[i] = 0
		end
	end
	for i = 1, getn(WLLS_FORBID_ITEM) do
		forbiditem_con = CalcEquiproomItemCount( WLLS_FORBID_ITEM[i][2][1], WLLS_FORBID_ITEM[i][2][2], WLLS_FORBID_ITEM[i][2][3], WLLS_FORBID_ITEM[i][2][4] )
		if (forbiditem_con > 0) then
			break
		end
		forbiditem_con = CalcItemCount( 1, WLLS_FORBID_ITEM[i][2][1], WLLS_FORBID_ITEM[i][2][2], WLLS_FORBID_ITEM[i][2][3], WLLS_FORBID_ITEM[i][2][4] )
		if (forbiditem_con > 0) then
			break
		end
		for j = 1, 3 do 
			if (keyitem_g[j] == WLLS_FORBID_ITEM[i][2][1] and keyitem_d[j] == WLLS_FORBID_ITEM[i][2][2] and keyitem_p[j] == WLLS_FORBID_ITEM[i][2][3]) then
				forbiditem_key = 1
				break
			end
		end
	end
	if(forbiditem_con > 0 or forbiditem_key > 0) then
		Say("Ng­¬i thËt to gan! D¸m kh«ng tu©n lÖnh cña Vâ L©m Minh Chñ, tù ý ®em d­îc phÈm cÊm vµo, mau rêi khái ®©y!", 0)
		return nil
	end
	return 1
end 

function wlls_sync_lginfo(n_lid)
	_M("wlls_sync_lginfo("..n_lid..")")
	if (n_lid ~= 0) then
		local n_mtype = LG_GetLeagueTask(n_lid, WLLS_LGTASK_MTYPE)
		local n_type = LG_GetLeagueTask(n_lid, WLLS_LGTASK_STYPE)
		SetTask(WLLS_TASKID_LGTYPE, WLLS_TAB[n_type].match_type[n_mtype].level)
		SetTask(WLLS_TASKID_LGRANK, LG_GetLeagueTask(n_lid, WLLS_LGTASK_RANK))
		SetTask(WLLS_TASKID_LGPOINT, LG_GetLeagueTask(n_lid, WLLS_LGTASK_POINT))
		SetTask(WLLS_TASKID_LGWIN, LG_GetLeagueTask(n_lid, WLLS_LGTASK_WIN))
		SetTask(WLLS_TASKID_LGTIE, LG_GetLeagueTask(n_lid, WLLS_LGTASK_TIE))
		SetTask(WLLS_TASKID_LGTOTAL, LG_GetLeagueTask(n_lid, WLLS_LGTASK_TOTAL))
		SetTask(WLLS_TASKID_LGTIME, LG_GetLeagueTask(n_lid, WLLS_LGTASK_TIME))
		SyncTaskValueMore(WLLS_TASKID_WIN, WLLS_TASKID_LGTIME)
	else
		SetTask(WLLS_TASKID_LGTYPE, 0)
		SyncTaskValue(WLLS_TASKID_LGTYPE)
		SyncTaskValueMore(WLLS_TASKID_WIN, WLLS_TASKID_TOTAL, 1)
	end
	SyncTaskValue(WLLS_TASKID_POINT)
end
 
function wlls_add_exp(n_exp)
	local n_switch	= GetTask(WLLS_TASKID_SWITCH)
	local b_expswt	= GetBit(n_switch, 1)
	local b_expsub	= GetBit(n_switch, 2)
	if (b_expswt ~= 0) then
		Msg2Player("B¹n ®· thiÕt lËp ®ãng phÇn th­ëng kinh nghiÖm liªn ®Êu, phÇn th­ëng kinh nghiÖm cña b¹n ®· bÞ hñy bá. NÕu cÇn cã thÓ ®Õn gÆp Quan viªn liªn ®Êu thay ®æi l¹i thiÕt lËp nµy.")
		return
	end
	if (b_expsub ~= 0) then
		n_exp	= n_exp - GetTaskTemp(WLLS_TEMPTASK)
		Msg2Player("B¹n chØ nhËn ®­îc trong sè ®ã"..n_exp.."®iÓm kinh nghiÖm")
	end
	tl_addPlayerExp(n_exp)
end

function wlls_award_log(str)
	_M(str)
	WriteLog("[WLLS_AWARD]"..date("%y-%m-%d,%H:%M:%S").."\t"..GetAccount().."\t"..GetName().."\t"..str)
end

function wlls_levelcheck()
	local str_myname = GetName()
	local n_lid = LG_GetLeagueObjByRole(WLLS_LGTYPE, str_myname)
	if (FALSE(n_lid)) then
		return nil
	end
	local str_lgname, _, n_memcount = LG_GetLeagueInfo(n_lid)
	local n_sid = GetGlbValue(GLB_WLLS_SID)
	if (GetGlbValue(GLB_WLLS_PHASE) == 1) then
		n_sid = n_sid + 1
	end
	local tb = {}
	for i = 0, n_memcount-1 do
		local str_plname = LG_GetMemberInfo(n_lid, i)
		local n_over = LG_GetMemberTask(WLLS_LGTYPE, str_lgname, str_plname, WLLS_LGMTASK_OVER)
		if (n_over > 0 and n_sid > n_over) then
			if (str_plname == str_myname) then
				return "Xin lçi, t­ c¸ch tham gia cña b¹n ®· bÞ hñy bá. Nguyªn nh©n cã thÓ trong lÇn thi ®Êu cña b¹n kú tr­íc qu¸ <color=red>®¼ng cÊp h¹n chÕ<color>, ®éi thi ®Êu hoÆc <color=red>®éi tr­ëng (s­ phô) cña b¹n ®· rêi khái ®éi thi ®Êu<color>. Mêi b¹n rêi khái ®éi thi ®Êu hiÖn t¹i, nÕu kh«ng ®éi b¹n sÏ kh«ng ®­îc tham gia thi ®Êu."
			end
			tb[getn(tb)+1] = str_plname
		end
	end
	if (getn(tb) == 0) then
		return nil
	end
	return "Xin lçi! mét sè thµnh viªn trong ®éi ®· qu¸ ®¼ng cÊp h¹n chÕ trong thi ®Êu kú tr­íc: <color=red>"..join(tb, "  ").."<color><enter>Nhãm cña b¹n kh«ng thÓ tham gia mïa thi ®Êu nµy. NÕu muèn b¹n cã thÓ rêi nhãm."
end 

function wlls_get_subworld(nMapType)
	local tbSub = {}
	local nSType = GetGlbValue(GLB_WLLS_TYPE)
	local tb = WLLS_TAB[nSType].match_type
	for nMType = 1, getn(tb) do
		local tbMaps = tb[nMType].map
		local nGroups	= getn(tbMaps)
		for nGroupIdx = 1, nGroups do
			local nSubIdx = SubWorldID2Idx(tbMaps[nGroupIdx][nMapType])
			if (nSubIdx >= 0) then
				tbSub[nSubIdx] = (nMType-1)*nGroups + nGroupIdx
			end
		end
	end
	return tbSub
end

function wlls_transback()
	SetLogoutRV(0);
	NewWorld(GetTask(WLLS_TASKID_FROMMAP), GetTask(WLLS_TASKID_FROM_X), GetTask(WLLS_TASKID_FROM_Y))
end

function wlls_GetAddPoint(nLevel, nWin, nTie)
	return nWin * 5 * nLevel + nTie * 2 * nLevel
end

function wlls_CheckIsOpen(nLevel)
	local nClose = GetGlbValue(GLB_WLLS_CLOSE)
	if (nClose) then
		if (GetBit(nClose, nLevel) ~= 0) then
			Say(wlls_npcname().."Xin lçi! M¸y chñ "..WLLS_LEVEL_DESC[nLevel].."hiÖn ®ang t¹m dõng!", 0)
			return nil
		end
	end
	return 1
end

function wlls_error_log(...)
	local str = "WLLS_ERROR["..tostring(GetName()).."]("..tostring(SubWorldIdx2ID(SubWorld))..")"..date("%y-%m-%d,%H:%M:%S")..": "..join(arg)
	WriteLog(str)
	_ERRORMESSAGE(str)
end

function _M(...)
end
----------------------------------------------------------------------------------------------------------------------------------------------------------