--baijuwanhead.lua
--定义常量

AEXP_SMALL_TIME_TASKID		= 1801;							-- 记录 小白驹（以此为倍数的） 经验挂机剩余时间
AEXP_TASKID 				= 605;							-- 记录 大白驹（小白驹的1.5倍）剩余挂机时间任务变量
AEXP_SPECIAL_TIME_TASKID	= 2317;							-- 记录 特效大白驹（小白驹的2倍效果）经验挂机剩余时间
AEXP_TIANXING_TIME_TASKID	= 2655;							-- 记录 天星白驹丸（小白驹的5倍）剩余挂机时间任务变量

AEXP_SMALL_SKILL_TASKID 	= 1802							-- 记录 技能小白驹（以此为倍数的） 技能挂机剩余时间
AEXP_SKILL_TIME_TASKID		= 2315;							-- 记录 技能大白驹（技能小白驹的1.5倍效果）剩余挂技能时间任务变量
AEXP_SPECIAL_SKILL_TASKID	= 2318;							-- 记录 特效技能大白驹（技能小白驹的2倍效果）技能挂机剩余时间

AEXP_SKILL_ID_TASKID		= 2316;							-- 记录离线挂技能升级的技能ID任务变量

AEXP_FREQ					= 5;							-- 扣除时每次循环扣除时间，经验每5分钟增加一次
FRAME2TIME					= 18;							-- 将时间转化为侦数，18侦相当于游戏中1秒钟
AEXP_MAXTIME				= 10000 * 3600 * FRAME2TIME;	-- 用户可以累积的最大时间
AEXP_BIGCHANGE				= 8 * 3600 * FRAME2TIME;	    -- 一个大白驹丸增加的时间	8小时
AEXP_SMALLCHANGE 			= AEXP_BIGCHANGE	    		-- 一个白驹丸增加的时间
AEXP_SKILLCHANGE			= AEXP_BIGCHANGE				-- 一个技能大白驹丸增加的时间
AEXP_SPECIALCHANGE			= AEXP_BIGCHANGE				-- 一个特效白驹丸增加的时间
AEXP_SPECIALSKILLCHANGE 	= AEXP_BIGCHANGE				-- 一个特效技能大白驹丸增加的时间

AEXP_INTERVAL		= 5 * 60 * FRAME2TIME;		    -- 增加经验的周期
--大白驹丸的详细信息
AEXP_BIG_NGENTYPE 	= 6;
AEXP_BIG_DETAILTYPE	= 1;
AEXP_BIG_PARTYPE 	= 130;
--白驹丸的详细信息
AEXP_SMALL_NGENTYPE 	= 6;
AEXP_SMALL_DETAILTYPE	= 1;
AEXP_SMALL_PARTYPE		= 74;
--加经验的等级限制
AEXP_NEEDLEVEL					= 50;
AEXP_NEEDLEVEL_PARTNER	= 10;	--同伴在托管时获得经验的最低等级
AEXP_OFFLINE_PLAYERCOUNT_LIMIT	= 1000;				-- 当一台服务器的人数超过此数目，则不允许玩家在这台服务器内进行离线托管
AEXP_OFFLINE_PLAYERCOUNT_SPECIAL = 1500;				--专用托管服务器允许托管的人数
AEXP_INVALIDTIMEBEGIN 			= 18;		        --离线挂机无效的起始时间
AEXP_INVALIDTIMEEND 			= 24;		        --离线挂机无效的终止时间

AEXP_TEMPOFFLINETASKID 			= 170;				--使用白驹丸时的任务变量

AEXP_120SKILL_UPGRADE_EXP = 137500;					--120技能熟练度提升为定值

--离线挂技能各技能级别对应的熟练度提升比例
ARY_UPGRADE_SKILL_EXP_PERCENT = {	0.0775,	0.0388,	0.0258,	0.0194,	0.0155,	0.013,	0.0111,	0.0097,	0.0086,	0.0039,
									0.0035,	0.0032,	0.0030,	0.0028,	0.0026,	0.0024,	0.0023,	0.0022,	0.0020	};
--离线挂技能可提升的技能ID
ARY_UPGRADE_SKILL = { 318, 319, 321, 322, 323, 325, 339, 302, 342, 353, 355, 328, 380, 336, 337, 357, 359, 362, 361, 368, 365, 375, 372, 709, 708, 710, 711, 712, 713, 714, 715, 716, 717 };

		--对应门派			1   0    2    3    4    5    6    7    8    9
ARY_120SKILLID = { 708, 709, 710, 711, 712, 713, 714, 715, 716, 717 };
-- 150级技能
ARY_UPGRADE_SKILL_150 = {1055,1056,1057,1059,1060,1058,1066,1067,1069,1070,1071,1061,1062,1114,1063,1065,1075,1076,1074,1073,1079,1078,1080,1081,}

--Include("\\script\\missions\\boss\\makeboss_head.lua")
IncludeLib("SETTING")

if (GetProductRegion() == "cn_ib") then
	Include("\\script\\item\\ib\\zimudai.lua");
end

--查询剩余时间
function get_left_time()
	--白驹丸
	local nSmallExpSpareTime = GetTask(AEXP_SMALL_TIME_TASKID);
	local nSmallExpSpareTime_Hours, nSamllExpSpareTime_Minutes = getFrame2MinAndSec(nSmallExpSpareTime);					--给用户提示显示到分钟
	
	--技能白驹丸
	local nSamllSkillSpareTime = GetTask(AEXP_SMALL_SKILL_TASKID);
	local nSamllSkillSpareTime_Hours, nSamlllSkillSpareTime_Minutes = getFrame2MinAndSec(nSamllSkillSpareTime);	--给用户提示显示到分钟
	
	--普通大白驹丸
	local nExpSpareTime = GetTask(AEXP_TASKID);
	local nExpSpareTime_Hours, nExpSpareTime_Minutes = getFrame2MinAndSec(nExpSpareTime);					--给用户提示显示到分钟
	
	--技能大白驹丸
	local nSkillExpSpareTime = GetTask(AEXP_SKILL_TIME_TASKID);
	local nSkillExpSpareTime_Hours, nSkillExpSpareTime_Minutes = getFrame2MinAndSec(nSkillExpSpareTime);	--给用户提示显示到分钟
	
	--特效大白驹丸
	local nSpecialExpSpareTime = GetTask(AEXP_SPECIAL_TIME_TASKID);
	local nSpecialExpSpareTime_Hours, nSpecialExpSpareTime_Minutes = getFrame2MinAndSec(nSpecialExpSpareTime);
	
	--特效技能大白驹丸
	local nSpecialSkillSpareTime = GetTask(AEXP_SPECIAL_SKILL_TASKID);
	local nSpecialSkillSpareTime_Hours, nSpecialSkillSpareTime_Minutes = getFrame2MinAndSec(nSpecialSkillSpareTime);
	
	-- 天星白驹丸
	local nTianxingExpSpareTime = GetTask(AEXP_TIANXING_TIME_TASKID);
	local nTianxingExpSpareTime_Hours, nTianxingExpSpareTime_Minutes = getFrame2MinAndSec(nTianxingExpSpareTime);
	

if (GetProductRegion() == "cn_ib") then
	--摆摊
	local restStall = GetTask(AEXP_STALL_TIME_TASKID)
	local nStall_Hour, nStall_Min = getFrame2MinAndSec(restStall)

	--蓬莱仙草露
	local nXianCaoTime = GetTask(AEXP_XIANCAO_TIME_TASKID);
	local nXianCao_Hour, nXianCao_Min = getFrame2MinAndSec(nXianCaoTime);
end	

	local nSkillExpID = GetTask(AEXP_SKILL_ID_TASKID);
	local szSkillExpName = "";
	if (nSkillExpID ~= 0) then
		szSkillExpName = "<color=yellow>"..GetSkillName(nSkillExpID).."<color>";
	else
		szSkillExpName = "<color=blue>Ch璦 ch鋘 k� n╪g<color>";
	end
	
	local szmsg = format("Th阨 gian 駓 th竎 r阨 m筺g c遪: Thi猲 tinh b筩h c﹗ ho祅 <color=red>%d<color>ti課g <color=red>%d<color> ph髏"..
	"<enter>Чi B筩h C莡 Ho祅 c Bi謙<color=red>%d<color>gi�<color=red>%d<color>ph髏"..
	"<enter>Чi B筩h C莡 Ho祅 駓 th竎<color=red>%d<color>gi�<color=red>%d<color>ph髏"..
	"<enter>B筩h C莡 Ho祅 駓 th竎<color=red>%d<color>gi�<color=red>%d<color>ph髏"..
	"<enter>ч thu莕 th鬰 k� n╪g(%s): i B筩h C莡 Ho祅 k� n╪g c hi謚<color=red>%d<color>gi�<color=red>%d<color>ph髏"..
	"<enter>Чi B筩h C莡 Ho祅 K� N╪g<color=red>%d<color>gi�<color=red>%d<color>ph髏"..
	"<enter>Bach C莡 Ho祅 K� N╪g<color=red>%d<color>gi�<color=red>%d<color>ph髏"..
	"<enter>Khi 駓 th竎 n誹 nh� c� hi謚 qu� cu� Thi猲 Tinh B筩h C莡 Ho祅, 璾 ti猲 hi謚 qu� c馻 lo筰 B筩h c莡 Ho祅 n祔 v� kinh nghi謒 v� s� tr� 甶 th阨 gian hi謚 qu� tng 鴑g.",
	 				nTianxingExpSpareTime_Hours, nTianxingExpSpareTime_Minutes,
					nSpecialExpSpareTime_Hours,nSpecialExpSpareTime_Minutes,
					nExpSpareTime_Hours,nSamllExpSpareTime_Minutes,
					nSmallExpSpareTime_Hours,nExpSpareTime_Minutes,
					szSkillExpName, nSpecialSkillSpareTime_Hours,nSpecialSkillSpareTime_Minutes,
					nSkillExpSpareTime_Hours,nSkillExpSpareTime_Minutes,
					nSamllSkillSpareTime_Hours,nSamlllSkillSpareTime_Minutes);
	
	Describe(szmsg, 1, "K誸 th骳 i tho筰/cancel");
end


--帮助功能
function help()
	Talk(1,"help1","Hng d蒼 駓 th竎: B筺 c� th� v祇 K� Tr﹏ C竎  mua B筩h C﹗ Ho祅 (t╪g kinh nghi謒) v� B筩h C﹗ Ho祅 k� n╪g (t╪g th鬰 luy謓 k� n╪g).");
end
function help1()
	Talk(1,"help2","1 vi猲 <color=blue>B筩h C﹗ Ho祅<color> c� th� 駓 th竎 trong <color=red>8 gi�<color>. Th阨 gian 駓 th竎 c� th� c閚g d錸. B筺 c騨g c� th� xem th玭g tin th阨 gian c馻 m譶h tr猲 v藅 ph萴 c騨g nh� � giao di謓 駓 th竎.");
end

function help2()
	Talk(1,"help3","H筺 ch� s� d鬾g: B筺 c� th� � c竎 th祅h th�, th玭 tr蕁 v� th藀 i m玭 ph竔, ch鋘 tho竧 ra giao di謓 (B籲g c竎h nh蕁 Esc hi謓 ra ra giao di謓) trong  ta ch鋘 r阨 m筺g v蒼 t╪g kinh nghi謒, l藀 t鴆 v祇 tr筺g th竔 r阨 m筺g v蒼 t╪g kinh nghi謒.");
end
function help3()
	Talk(2,"help4", "Hi謚 qu� s� d鬾g B筩h C﹗ Ho祅: Sau khi bc v祇 tr筺g th竔 駓 th竎 r阨 m筺g, th阨 gian 駓 th竎 b総 u 頲 t輓h. H� th鑞g s� ghi nh� tr筺g th竔 hi謓 t筰 c馻 b筺 (bao g錷 tr筺g th竔 ng錳 b竛 h祅g). Khi 駓 th竎, ngi ch琲 c蕄 <color=red>di 50<color> s� kh玭g nh薾 頲 kinh nghi謒.","<color=red>Ngi ch琲 <color=red>c蕄 t� 50 tr� l猲<color>, c� m鏸 <color=red>5 ph髏<color> s� nh薾 頲 甶觤 kinh nghi謒 tng 鴑g. � tr筺g th竔 駓 th竎 r阨 m筺g, c� th� s� d鬾g c竎 v藅 ph萴 t╪g kinh nghi謒 kh竎 (nh� Ti猲 Th秓 L�, b竛h B竧 Tr﹏ Ph骳 Nguy謙), th阨 gian hi謚 qu� c馻 nh鱪g v藅 ph萴 v蒼 b� gi秏 甶. уng th阨, � tr筺g th竔 駓 th竎, th阨 gian th阨 ch琲 c馻 b筺 v蒼 b� kh蕌 tr�.");
end
function help4()
	Talk(2,"help5", "Hi謚 qu� s� d鬾g B筩h C﹗ Ho祅 k� n╪g: Sau khi bc v祇 tr筺g th竔 駓 th竎, th阨 gian 駓 th竎 s� b総 u 頲 t輓h. H� th鑞g s� ghi nh� tr筺g th竔 hi謓 t筰 c馻 b筺 (bao g錷 tr筺g th竔 ng錳 b竛 h祅g). � tr筺g th竔 駓 th竎, m鴆  luy謓 k� n╪g c蕄 90 c馻 b筺 c� m鏸 5 ph髏 s� t� ng t╪g l猲 1 l莕.","Trong th阨 gian n祔 b筺 v蒼 c� th� ch鋘 ch鴆 n╪g ' thu莕 th鬰 k� n╪g c蕄 90'");
end
function help5()
	Talk(2,"", "Khi th阨 gian r阨 m筺g gi秏 xu鑞g <color=red>0<color>, th� b筺 s� t� ng r阨 m筺g. Trong l骳 b筺 v祇 tr筺g th竔 r阨 m筺g v蒼 t╪g kinh nghi謒, n誹 b� r韙 m筺g ho芻 Server b秓 tr�, b筺 s� t� ng r阨 m筺g, ng th阨 b秓 l璾 l筰 th阨 gian c遪 l筰 trong l骳 r阨 m筺g v蒼 t╪g kinh nghi謒, v� kh玭g c� k誸 n鑙 l筰.","Khi b筺 ng nh藀 tr� ch琲 s� t� ng k誸 th骳 tr筺g th竔 r阨 m筺g v蒼 t╪g kinh nghi謒, ng th阨 b秓 l璾 l筰 th阨 gian c遪 d� r阨 m筺g v蒼 t╪g kinh nghi謒.");
end

-- 获取玩家可以离线挂技能升级的技能
function getexpskill()
	local aryExpSkill = {};
	local nExpSkillCount = 0;
	local nAllUpgradeSkillCount = getn(ARY_UPGRADE_SKILL);
	for i = 1, nAllUpgradeSkillCount do
		local nCurSkillID = ARY_UPGRADE_SKILL[i];
		local nCurSkillLevel = GetCurrentMagicLevel(nCurSkillID, 0);
		if (nCurSkillLevel >= 1 and nCurSkillLevel <= getn(ARY_UPGRADE_SKILL_EXP_PERCENT)) then
			nExpSkillCount = nExpSkillCount + 1;
			aryExpSkill[nExpSkillCount] = {};
			aryExpSkill[nExpSkillCount][1] = nCurSkillID;
			aryExpSkill[nExpSkillCount][2] = GetSkillName(nCurSkillID);
		end
	end
	return aryExpSkill;
end

-- 选择离线托管技能
function selectofflineskill()
	local aryExpSkill = getexpskill();
	local nExpSkillCount = getn(aryExpSkill);
	local aryszExpSkill = {};
	local szSayCmd = "Xin l鵤 ch鋘 ch鴆 n╪g 駓 th竎:";
	for i = 1, nExpSkillCount do
		aryszExpSkill[i] = format("%s/#onSetUpgradeSkill(%d)",aryExpSkill[i][2],aryExpSkill[i][1]);
	end
	tinsert(aryszExpSkill, "Tr� l筰/judgecontion")
	Say(szSayCmd, getn(aryszExpSkill), aryszExpSkill);
end

-- 设置离线托管技能
function onSetUpgradeSkill(nUpgradeSkillID, funcCallBack)
	SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID);
	funcCallBack();
end

-- 根据技能级别熟练度自动设置离线挂技能升级的技能ID
function autosetupgradeskill()
	local nSkillCount = getn(ARY_UPGRADE_SKILL);
	local nUpgradeSkillID = 0;
	local nUpgradeSkillLevel = 0;
	local nUpgradeSkillExp = 0;
	for i = 1, nSkillCount do
		local nCurSkillID = ARY_UPGRADE_SKILL[i];
		local nCurSkillLevel = GetCurrentMagicLevel(nCurSkillID, 0);
		local nCurSkillExp = GetSkillExp(nCurSkillID);
		if (nCurSkillLevel >= 1 and nCurSkillLevel <= getn(ARY_UPGRADE_SKILL_EXP_PERCENT) and
			(nCurSkillLevel > nUpgradeSkillLevel or 
			(nCurSkillLevel == nUpgradeSkillLevel and nCurSkillExp > nUpgradeSkillExp))) then
			nUpgradeSkillID = nCurSkillID;
			nUpgradeSkillLevel = nCurSkillLevel;
			nUpgradeSkillExp = nCurSkillExp;
		end
	end
	SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID);
end

function getFrame2MinAndSec(nframe)
	local minutes = floor(nframe / (FRAME2TIME * 60));		--给用户提示显示到分钟
	local hours = floor(minutes / 60);
	local minutes = minutes - hours * 60; 
	return hours, minutes;
end;

--判断玩家是否充过卡
function IsCharged()
	if( GetExtPoint( 0 ) >= 1 ) then
		return 1;
	else
		return 0;
	end
end;

function cancel()
--do nothing
end;

function getBaiJutimeinfo()
										--特效大白驹丸	普通大白驹丸	白驹丸
	local tbAexpTask = {AEXP_TIANXING_TIME_TASKID,AEXP_SPECIAL_TIME_TASKID,AEXP_TASKID, AEXP_SMALL_TIME_TASKID,
											--特效技能大白驹丸	技能大白驹丸	技能白驹丸
												AEXP_SPECIAL_SKILL_TASKID, AEXP_SKILL_TIME_TASKID, AEXP_SMALL_SKILL_TASKID};
	local tbszItem = {"offlineitem_tianxing", "offlineitem_special",	"offlineitem_normal",	"offlineitem_small",
						"skillofflineitem_special",	"skillofflineitem_normal",	"skillofflineitem_small"};
	local szmsg = "";
	for i = 1, getn(tbAexpTask) do
		local nhour, nminite = getFrame2MinAndSec(GetTask(tbAexpTask[i]));	--给用户提示显示到分钟
		szmsg = format("%s\n          %s lasttime:%d hour %d minite", szmsg, tbszItem[i], nhour, nminite);
	end;
	return szmsg;
end;

function writeUseBaiJulog(szitem, nhour,nmin)
	local szlog = format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tuse<%s>, lasttime %d hour %d minite", 
		GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), szitem, nhour, nmin);
	WriteLog(szlog);
end;