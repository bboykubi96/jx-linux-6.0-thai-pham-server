Include("\\script\\tong\\workshop\\workshop_head.lua");

if (MODEL_GAMESERVER == 1) then --如果是GameServer
-- 读入随机任务头文件
Include("\\script\\task\\system\\task_main.lua");
Include([[\script\tong\workshop\tongcolltask.lua]]);
end

aLevelCoef = {}

aLevelRenWuPrice = {}
function LoadLevelData()
	local b1 = TabFile_Load("\\settings\\tong\\workshop\\tianyi_level_data.txt", "tianyiLevelData")
	if b1~=1 then
		print("тc t謕 config Thi猲 � phng th蕋 b筰!")
		return
	end
	local nRowCount = TabFile_GetRowCount("tianyiLevelData")
	for y = 2, nRowCount do
		local nLevel = tonumber(TabFile_GetCell("tianyiLevelData", y, "LEVEL"))
		aLevelCoef[nLevel] = tonumber(TabFile_GetCell("tianyiLevelData", y, "OUTPUT_COEF"))
		aLevelRenWuPrice[nLevel] = tonumber(TabFile_GetCell("tianyiLevelData", y, "PRICE"))
	end
	--TabFile_UnLoad("tianyiLevelData")
end
LoadLevelData()

if MODEL_GAMESERVER == 1 or MODEL_RELAY == 1 then
--------------------如果非客户端---------------------------
function ws_main(nTongID, nWorkshopID)
	if SVR_CheckUse(nTongID, nWorkshopID, "T鎛g qu秐 Thi猲 � phng") ~= 1 then
		return 0
	end
	Say("<#>T鎛g qu秐 Thi猲 � phng: C� duy猲 do thi猲 �, m謓h v薾 b雐 con ngi, h穣 nh� l蕐!", 3, 
		"Nh薾 nhi謒 v� ng蓇 nhi猲/#use_g_1_ok".."("..nTongID..","..nWorkshopID..")",
		"L謓h b礽 nhi謒 v� c bi謙/#use_g_1_ok22".."("..nTongID..","..nWorkshopID..")",
		"Kh玭g c莕 u/cancel");
	return 1;
end

----------------------------------------------------------------------------------------------------
function MAINTAIN_R(nTongID, nWorkshopID) --日常活动
	if nWorkshopID <= 0 then
		return 0
	end	
	local eType = TWS_GetType(nTongID, nWorkshopID)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	local nTotal = floor(aLevelCoef[nLevel]*(TONG_GetMemberCount(nTongID)) * 100)
	TWS_ApplyAddDayOutput(nTongID, nWorkshopID, nTotal) --初始化可领取任务数
	return 1
end

function USE_R(nTongID, nWorkshopID)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	if nLevel < 1 then
		return 0
	end
	local nHongbaoLeft = TWS_GetDayOutput(nTongID, nWorkshopID);
	if (TWS_IsOpen(nTongID, nWorkshopID) ~= 1 or nHongbaoLeft < 100) then
		return 0
	end
	TWS_ApplyAddDayOutput(nTongID, nWorkshopID, -100);
	TONG_ApplyAddTaskValue(nTongID, TONGTSK_WEEK_WSCONSUME, aLevelRenWuPrice[1])
	return 1;
end

function USE_G_1(nTongID, nWorkshopID)
	ws_main(nTongID, nWorkshopID)
end

function use_g_1_ok(nTongID, nWorkshopID)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	_dbgMsg("S� l莕 nh薾 c遪 l筰 * 100: "..TWS_GetDayOutput(nTongID, nWorkshopID))
	if (TWS_GetDayOutput(nTongID, nWorkshopID) < 100) then
		Say("<#>T鎛g qu秐 Thi猲 � phng: Nhi謒 v� ng蓇 nhi猲 h玬 nay  k誸 th骳, ng祔 mai h穣 n v藋!", 0)
		return 0;
	end
	Say("<#>S� d鬾g <color=yellow>"..aLevelRenWuPrice[nLevel].."<color> 甶觤 c鑞g hi課 i l蕐 1 l謓h b礽 ng蓇 nhi猲, ngi ng � kh玭g?", 2,
		"ta mu鑞 i/#use_g_1_ok21".."("..nTongID..","..nWorkshopID..")",
		"H駓 b� /cancel")
end

function use_g_1_ok22(nTongID, nWorkshopID)--领取特殊任务令牌
	nLevel = TWS_GetUseLevel(nTongID, nWorkshopID);
	if (nLevel < 4) then
		Say("T鎛g qu秐 Thi猲 � phng: Ъng c蕄 Thi猲 � phng t c蕄 <color=yellow>4<color> m韎 c� th� ch� t筼 l謓h b礽 nhi謒 v� c bi謙. Ngi mu鑞 l祄 g�?", 2, "T譵 hi觰 l謓h b礽 nhi謒 v� c bi謙/tong_tylp_aobut", "R阨 kh醝/cancel");
		return
	end;
	Say("T鎛g qu秐 Thi猲 � phng: G莕 y ta c� m閠 s� nhi謒 v� c bi謙 c莕 gi秈 quy誸, kh玭g nh鱪g gi髉 ngi n﹏g cao kinh nghi謒, m� c遪 gi秏 頲 PK, ngi mu鑞 th� xem kh玭g?", 7, 
	"T譵 hi觰 L謓h b礽 nhi謒 v� c bi謙/tong_tylp_aobut", 
	"фi l謓h b礽 nhi謒 v� c bi謙/#tong_tylp_tobuy("..nLevel..")",
	"Xem ti課  nhi謒 v� l謓h b礽/tong_tylp_knowabout",
	"Ta mu鑞 i nhi謒 v�/tong_tylp_turn",
	"Ta nh薾 頲  Th� ti課 c� r錳/tong_tylp_award",
	"H駓 b� nhi謒 v�/tong_tylp_giveup",
	"Ta mu鑞 r阨 kh醝!/cancel");
end;

function tong_tylp_turn()
	local nLPLvl = get_lp_lvl();
	if (0 == nLPLvl) then
		Say("Ngi ch璦 nh薾 nhi謒 v� l謓h b礽.", 0);
		return
	end;
	
	local nLevel, nWorkshopIdx, nCount, nContri, nConLimit, nMax;
	nContri = GetContribution();
	nConLimit = tab_buyLingPai_gxd[nLPLvl] / 10;
	if (nContri < nConLimit) then
		Say("фi 1 L謓h b礽 nhi謒 v� <color=yellow>c蕄 "..nLPLvl.."<color> c莕 <color=yellow> "..nConLimit.." 甶觤 <color>c鑞g hi課 (gi� l謓h b礽 ch� b籲g 10% gi� ban u), 甶觤 c鑞g hi課 c馻 ngi kh玭g .", 0);
		return
	end;
	rwlp_cleartask()	--清除任务变量；
	for i = 1, 10 do
		nLevel = 1;
		nWorkshopIdx = random(1, 7); -- 随机一个作坊
		
		if (nLPLvl == 1) then
			nLevel = random(1, 3);
		elseif (nLPLvl == 2) then
			nLevel = random(4, 6);
		elseif (nLPLvl == 3) then
			nLevel = random(7, 8);
		end;
		
		nCount = random(1, 9);
		nMax = get_workshop_count(nWorkshopIdx, nLevel);
		if (nCount > nMax) then
			nCount = nMax;
		end;
		if (nCount > 0) then
			break
		end;
	end;
	AddContribution(-1 * nConLimit);
	Msg2Player("S� d鬾g <color=yellow>"..nConLimit.." 甶觤 <color> c鑞g hi課 i l蕐 1 l謓h b礽 nhi謒 v� c蕄 <color=yellow>"..nLPLvl..".");
	nt_SetTask(TASK_LP_ZONGGUANIDX, nWorkshopIdx);
	nt_SetTask(TASK_LP_ZONGGUANLEVEL, nLevel);
	nt_SetTask(TASK_LP_COUNT, nCount);
	Say("S� d鬾g <color=yellow>"..nConLimit.." 甶觤 <color> c鑞g hi課 i l蕐 1 l謓h b礽 nhi謒 v� c蕄 <color=yellow>"..nLPLvl.."c蕄-<color>Nhi謒 v� l謓h b礽. <color=yellow>"..tab_Workshop[nWorkshopIdx].."Phng t鎛g qu秐<color> d筼 n祔 tinh th莕 kh玭g 頲 t鑤, mu鑞 l猲 kinh 鴑g th� nh璶g c莕 ph秈 thu th藀  Th� ti課 c� c馻 c竎 danh s� n琲 y. Phi襫 ngi 甶 t譵 gi髉 <color=yellow>"..nCount.." v� Phng t鎛g qu秐 c蕄 "..nLevel.."<color> tr� l猲 � c竎 bang h閕 kh竎 nhau<color=yellow>"..tab_Workshop[nWorkshopIdx].."<color>, nh薾 th� ti課 c� c馻 h�.", 1, "Л頲, ta s� c� g緉g./cancel")
end;

function get_lp_lvl()
	if (GetTask(TASK_LP_COUNT) == 0) then	--如果没有帮会特殊令牌任务
		return 0;
	end;
	local nLPLvl = ceil(GetTask(TASK_LP_ZONGGUANLEVEL) / 3);
	if (nLPLvl > 3) then
		nLPLvl = 3;
	elseif (nLPLvl < 1) then
		nLPLvl = 1;
	end;
	return nLPLvl;
end;

function tong_tylp_giveup()	--取消任务
	if (GetTask(TASK_LP_COUNT) == 0) then
		Say("T鎛g qu秐 Thi猲 � phng: Ngi kh玭g c� nhi謒 v� g� th� sao m� h駓 b� 頲 ch�?", 0)
		return
	end;
	nt_SetTask(TASK_LP_COUNT, 0);
	rwlp_cleartask()	--清除任务变量；
	Msg2Player("T鎛g qu秐 Thi猲 � phng: Ngi  h駓 b� nhi謒 v� <color=yellow>L謓h b礽 nhi謒 v�<color>.")
end;

function tong_tylp_tobuy(nLevel)--购买任务令牌
	if (1 == TONG_GetPauseState(nTongID, nWorkshopID)) then
		Say("T鎛g qu秐 Thi猲 � phng: Th藅 ng ti誧, T竎 phng 產ng t筸 ng璶g ho箃 ng. Bang h閕 c莕 ph秈 n筽 ti襫 v祇 ng﹏ s竎h chi課 b� cho  s� b秓 tr� h祅g tu莕, v� sau 12h m th� T竎 phng m韎 c� th� ho箃 ng tr� l筰.", 0);
		Msg2Player("T竎 phng  t筸 ng鮪g ho箃 ng, kh玭g th� nh薾 bang v藅.");
		return
	end;
	local tab_selete = {};
	tinsert(tab_selete, "фi l謓h b礽 c蕄 1/#tong_tylp_buy( 1 )");
	if (nLevel >= 7) then
		tinsert(tab_selete, "фi l謓h b礽 c蕄 2/#tong_tylp_buy( 2 )")
	end
	if (nLevel >= 9) then
		tinsert(tab_selete, "фi l謓h b礽 c蕄 3/#tong_tylp_buy( 3 )")
	end
	
	tinsert(tab_selete, "Ta mu鑞 r阨 kh醝!/cancel");
	Say("T鎛g qu秐 Thi猲 � phng: L謓h b礽 chia th祅h c竎 m鴆  t� 1 n 3, l謓h b礽 c蕄 1 c莕 100 甶觤 c鑞g hi課, sau khi ho祅 th祅h s� nh薾 頲 30 v筺 甶觤 kinh nghi謒 v� gi秏 甶 2 PK; L謓h b礽 c蕄 2 c莕 150 甶觤 c鑞g hi課, sau khi ho祅 th祅h s� nh薾 頲 40 v筺 甶觤 kinh nghi謒 v� gi秏 甶 5 PK; L謓h b礽 c蕄 3 c莕 200 甶觤 c鑞g hi課, sau khi ho祅 th祅h s� nh薾 頲 60 v筺 甶觤 kinh nghi謒 v� gi秏 甶 10 PK. Ngi ng � i kh玭g?", getn(tab_selete), tab_selete);
end;

function tong_tylp_knowabout()
	if (GetTask(TASK_LP_COUNT) == 0) then	--如果没有帮会特殊令牌任务
		Say("Ngi ch璦 nh薾 nhi謒 v� l謓h b礽.", 0);
		return
	end;
	local nNeedCount = GetTask(TASK_LP_COUNT);
	local nGetCount = rwlp_getjuanshucount();
	if (nGetCount >= nNeedCount and nGetCount > 0) then
		Say("Th� ti課 c�  nh薾  r錳, h穣 mau 甶 t譵 T鎛g qu秐 Thi猲 � phng 甶.", 0);
	end;
	Say("H穣 n g苝 c竎 Phng t鎛g qu秐 kh竎 nhau <color=yellow>"..tab_Workshop[GetTask(TASK_LP_ZONGGUANIDX)].."<color>  thu th藀  <color=yellow>"..nNeedCount.." b鴆 <color>Th� ti課 c�, ngi ch� c�<color=yellow> "..nGetCount.." b鴆<color> m� th玦, h穣 n� l鵦 h琻!", 0);
end;

tab_buyLingPai_gxd = {100, 150, 200};
function tong_tylp_buy(nLPLvl1)--购买令牌实体
	local nLPLvl = tonumber(nLPLvl1);
	local nAttr = GetContribution();
	if (nAttr < tab_buyLingPai_gxd[nLPLvl]) then
		Say("T鎛g qu秐 Thi猲 � phng: Th藅 ng ti誧, 甶觤 c鑞g hi課 kh玭g  <color=yellow>"..tab_buyLingPai_gxd[nLPLvl].."<color>, kh玭g th� i l蕐 bang v藅,h穣 c� g緉g c鑞g hi課 cho th藅 nhi襲.", 0);
		Msg2Player("觤 c鑞g hi課 c� nh﹏ kh玭g , kh玭g th� i l蕐 bang v藅.");
		return
	end;
	AddContribution(-tab_buyLingPai_gxd[nLPLvl]);
	
	_, nTongID = GetTongName();
	local nWorkshopID = TWS_GetFirstWorkshop(nTongID, 5);
	TWS_ApplyAddDayOutput(nTongID, nWorkshopID, -(tab_buyLingPai_gxd[nLPLvl]));
	
	nGoodIdx = 1101 + nLPLvl;
	--AddItem();
	local nRandomItemIndex = AddItem(6, 1, nGoodIdx, 0, 1, 0, 0);	--物品的id待定
	SetSpecItemParam(nRandomItemIndex, 1, nLPLvl);	--将令牌等级记录
	SyncItem(nRandomItemIndex); -- 同步物品魔法属性
	
	Msg2Player("B筺 ti猽 t鑞 "..tostring(tab_buyLingPai_gxd[nLPLvl]).." 甶觤 c鑞g hi課!");
	Msg2Player("<color=green>Х i l蕐 l謓h b礽 nhi謒 v� c蕄 "..nLPLvl.."!<color>");
end;

tab_LPAward = {[1] = {300000, 2}, [2] = {400000, 5}, [3] = {600000, 10}}
function tong_tylp_award()
	if (GetTask(TASK_LP_COUNT) == 0) then	--如果没有帮会特殊令牌任务
		Say("Ngi ch璦 nh薾 nhi謒 v� l謓h b礽.", 0);
		return
	end;
	
	local nGetCount = rwlp_getjuanshucount();
	local nGoalCount = GetTask(TASK_LP_COUNT);
	local nLPLvl = get_lp_lvl();
	local nPK = GetPK();
	local nDate = GetLocalDate("%m%d");
	local nday, nmon = mod(nDate, 100), floor(nDate / 100);
	local nTsk_Times = GetTask(TASK_LP_TIMESLIMIT);
	local ncurday, ncurmon, ncuttimes = GetByte(nTsk_Times, 2), GetByte(nTsk_Times, 3), GetByte(nTsk_Times, 1);
	
	if (nPK == 0) then
		Say("Hi謓 t筰 b筺 kh玭g c� PK, kh玭g th� ho祅 th祅h nhi謒 v� n祔 頲.", 0);
		return 0;
	end
	
	if (nday ~= ncurday or nmon ~= ncurmon) then
		ncurday = nday;
		ncurmon = nmon;
		ncuttimes = 0;
		nTsk_Times = SetByte(nTsk_Times, 2, ncurday);
		nTsk_Times = SetByte(nTsk_Times, 3, ncurmon);
		nTsk_Times = SetByte(nTsk_Times, 1, ncuttimes);
		SetTask(TASK_LP_TIMESLIMIT, nTsk_Times);
	end
	
	if (ncuttimes >= 100) then
		Say(format("H玬 nay b筺 th鵦 hi謓 nhi謒 v� n祔 %d l莕 r錳, ng祔 mai h穣 quay l筰 nh�.", 100), 0);
		return 0;
	end
	
	if (nGetCount >= nGoalCount and nGetCount > 0) then
		ncuttimes = ncuttimes + 1;
		nTsk_Times = SetByte(nTsk_Times, 1, ncuttimes);
		SetTask(TASK_LP_TIMESLIMIT, nTsk_Times);
		
		Say("T鎛g qu秐 Thi猲 � phng: Ngi h穣 c遪 tr�,  ta xem t譶h tr筺g PK c馻 ngi th� n祇, ha ha�", 0);
		--清空任务变量
		AddOwnExp(tab_LPAward[nLPLvl][1]);
		Msg2Player("B筺 nh薾 頲<color=yellow>"..tab_LPAward[nLPLvl][1].."<color> ph莕 thng 甶觤 kinh nghi謒.");
		local nDecCount = tab_LPAward[nLPLvl][2];
		
		if (nDecCount > nPK) then
			nDecCount = nPK;
		end;
		if (nDecCount > 0) then
			SetPK(nPK - nDecCount);
			Msg2Player("PK m gi秏 <color=yellow>"..nDecCount.."<color> 甶觤");
		else
			Msg2Player("PK  gi秏 xu鑞g c遪 <color=yellow>0<color>.");
		end;
		rwlp_cleartask()	--清除任务变量；
	else
		Say("T鎛g qu秐 Thi猲 � phng: Ngi ph秈 t譵 頲 <color=yellow>"..nGoalCount.."<color> Th� ti課 c�, hi謓 t筰  c� <color=yellow>"..nGetCount.."<color>c竔", 0);
	end;
end;

function tong_tylp_aobut()--关于特殊令牌
	Say("T鎛g qu秐 Thi猲 � phng: Nhi謒 v� l謓h b礽 y猽 c莡 ph秈 t譵 頲 m閠 s� bang h閕 m� T竎 Phng th醓 m穘 甶襲 ki謓, n鉯 chuy謓 v韎 Phng t鎛g qu秐 c馻 h�, h� s� giao Th� ti課 c� cho ngi. Ch� c莕 thu th藀  s� lng th� y猽 c莡 甧m v� cho ta th� c� th� ho祅 th祅h nhi謒 v�.", 0);
end;

function use_g_1_ok21(nTongID, nWorkshopID)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	if (GetContribution() < aLevelRenWuPrice[nLevel]) then
		Say("<#>T鎛g qu秐 Thi猲 � phng: Kh玭g 頲 r錳, 甶觤 c鑞g hi課 c馻 ngi kh玭g !", 0)
		return
	end
	if (GetTaskTemp(196) ~= 0)then
		Say("<#>T鎛g qu秐 Thi猲 � Phng: V藅 ph萴 ngi c莕 v蒼 ch璦 c�, h穣 ti誴 t鬰 ch� i!", 0)
		return
	end
	SetTaskTemp(196, 1)
	TWS_ApplyUse(nTongID, nWorkshopID);
end

function USE_G_2(nTongID, nWorkshopID)
	SetTaskTemp(196, 0)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID);
	if (GetContribution() < aLevelRenWuPrice[nLevel]) then
		return
	end
	local nRandomTaskID = createRandomTask();
	local nRandomItemIndex = 0;
	
	if nRandomTaskID~=nil and nRandomTaskID~=0 then
		
		AddContribution(-aLevelRenWuPrice[nLevel]);
		
		Msg2Player("B筺 ti猽 t鑞 "..tostring(aLevelRenWuPrice[nLevel]).." 甶觤 c鑞g hi課!");
		
		nRandomItemIndex = AddItem(6, 2, 1020, 0, 1, 0, 0);
		SetItemMagicLevel(nRandomItemIndex, 1, nRandomTaskID);
		
		-- 同步物品魔法属性
		SyncItem(nRandomItemIndex);		
				
		Msg2Player("<color=green>Nh薾 頲 m閠 l謓h b礽 nhi謒 v� ng蓇 nhi猲!<color>");
	end;
end

function cancel()
end

else
-----------------如果是客户端---------------
function GET_DESC(nTongID, nWorkshopID, nType)
	if (nTongID == 0) then
		return "<color=water>Kh玭g c� bang h閕"	
	end
	local bOpen	--是否开启
	local bPause --是否暂停
	local nCurLevel --当前等级
	local nUseLevel --当前使用等级
	local nOpenFund --当前开启消耗
	local nMaintainFund --当前维护消耗
	local nPrice  --当前换取任务令牌的贡献度
	local dTokenCount	--当前每日任务令牌产出总量提高
	if (nWorkshopID ~= 0)then
		bOpen = TWS_IsOpen(nTongID, nWorkshopID) 
		bPause = TONG_GetPauseState(nTongID) 
		nCurLevel = TWS_GetLevel(nTongID, nWorkshopID) 
		nUseLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
		nOpenFund = wsGetOpenCost(nTongID, nType, nUseLevel) 
		nMaintainFund = wsGetMaintainCost(nTongID, nType, nUseLevel, bOpen)  
		if(nUseLevel > 0)then
			nPrice = aLevelRenWuPrice[nUseLevel]
			dTokenCount = format("%.2f", aLevelCoef[nUseLevel] / aLevelCoef[1])	
		else
			nPrice = "--"
			dTokenCount = "--"	
		end
	else	--作坊未建立时只显示下一级信息
		nCurLevel = 0
		bOpen = 1
		nUseLevel = 0
	end
	--下级信息
	local nUpgradeCostFund, nNextMaintainFund, nNextPrice, nNextOpenFund, dNextTokenCount
	if (nCurLevel < wsGetMaxLevel(nTongID, nType))then
		nUpgradeCostFund = wsGetUpgradeCostFund(nTongID, nType, nCurLevel)  --升级消耗
	else
		nUpgradeCostFund = "--"
	end	
	if (nUseLevel < wsGetMaxLevel(nTongID, nType))then
		nNextMaintainFund = wsGetMaintainCost(nTongID, nType, nUseLevel+1, bOpen)  --下级维护消耗
		nNextOpenFund = wsGetOpenCost(nTongID, nType, nUseLevel+1) 	--下级开启消耗
		nNextPrice = aLevelRenWuPrice[nUseLevel + 1] --下级换取任务令牌的贡献度
		dNextTokenCount = format("%.2f", aLevelCoef[nUseLevel + 1] / aLevelCoef[1]) --下级每日任务令牌产出总量提高
	else
		nNextMaintainFund = "--"
		nNextOpenFund = "--"
		nNextPrice = "--"
		dNextTokenCount = "--"
	end
	if (nWorkshopID ~= 0)then
		local state 
		if bPause == 1 then state="<color=yellow>T筸 ng鮪g" elseif bOpen == 1 then state="<color=green>Khai m�" else state="<color=red>сng c鯽" end
		local szMsg = "Tr筺g th竔 t竎 phng: "..state.."<color>\n"..
			"Ъng c蕄 t竎 phng: <color=gold>"..nCurLevel.."<color>\n"..
			"Ъng c蕄 s� d鬾g hi謓 t筰: <color=gold>"..nUseLevel.."<color>\n"..
			"S� lng l謓h b礽 nhi謒 v� h祅g ng祔 t╪g l猲: <color=gold>"..dTokenCount.."<color> l莕\n"..		
			"觤 c鑞g hi課 c莕  i l謓h b礽 nhi謒 v�: <color=gold>"..nPrice.."<color>\n"..
			"Ng﹏ s竎h chi課 b� chi cho ph� b秓 tr� bang m鏸 ng祔: <color=gold>"..nMaintainFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸 ban u: <color=gold>"..nOpenFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸  n﹏g c蕄: <color=gold>"..nUpgradeCostFund.." v筺<color>\n"..
			"<color=green>Ъng c蕄 s� d鬾g k� ti誴 <color>\n"..
			"<color=water>S� lng l謓h b礽 nhi謒 v� h祅g ng祔 t╪g l猲: <color=Violet>"..dNextTokenCount.."<color> l莕\n"..	
			"觤 c鑞g hi課 c莕  i l謓h b礽 nhi謒 v�: <color=Violet>"..nNextPrice.."<color>\n"..
			"Ng﹏ s竎h chi課 b� chi cho ph� b秓 tr� bang m鏸 ng祔: <color=Violet>"..nNextMaintainFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸 ban u: <color=Violet>"..nNextOpenFund.." v筺<color>\n"
		return szMsg
	else
		local szMsg = "Tr筺g th竔 t竎 phng: <color=water>Ch璦 th祅h l藀<color>\n"..
			"Ng﹏ s竎h ki課 th誸 c莕  x﹜ d鵱g: <color=gold>"..nUpgradeCostFund.." v筺<color>\n"..
			"<color=green>Ъng c蕄 k� ti誴 <color>\n"..
			"<color=water>S� lng l謓h b礽 nhi謒 v� h祅g ng祔 t╪g l猲: <color=Violet>"..dNextTokenCount.."<color> l莕\n"..	
			"觤 c鑞g hi課 c莕  i l謓h b礽 nhi謒 v�: <color=Violet>"..nNextPrice.."<color>\n"..
			"Ng﹏ s竎h chi課 b� chi cho ph� b秓 tr� bang m鏸 ng祔: <color=Violet>"..nNextMaintainFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸 ban u: <color=Violet>"..nNextOpenFund.." v筺<color>\n"
		return szMsg
	end
end

end