Include("\\script\\gb_taskfuncs.lua")
greatseed_configtab = {
--	{340,3,100,"\\settings\\maps\\great_night\\莫高窟.txt","M筩 Cao Qu藅"},			--莫高窟
--	{336,3,100,"\\settings\\maps\\great_night\\风陵渡.txt","Phong L╪g ч"},			--风陵渡
	
	
	{333,4,15,"\\settings\\maps\\great_night\\hoasoncao.txt","Hoa S琻"},		-- 硄ua i hoang kim
--	{959,3,11,"\\settings\\maps\\great_night\\chienlongdongtrung.txt","Chi課 Long чng"},		-- 硄ua hoang kim

--	{322,2,100,"\\settings\\maps\\great_night\\长白山北⒋.txt","Trng B筩h S琻 B綾"},	-- 长白山北⒋
--	{321,2,100,"\\settings\\maps\\great_night\\长白山南.txt","Trng B筩h S琻 Nam"},		-- 长白山南
--	{225,2,30,"\\settings\\maps\\great_night\\沙漠山洞1.txt","Sa m筩 S琻 чng 1"},		-- 长白山南
--	{226,2,30,"\\settings\\maps\\great_night\\沙漠山洞2.txt","Sa m筩 S琻 чng 2"},		-- 长白山南
--	{227,2,40,"\\settings\\maps\\great_night\\沙漠山洞3.txt","Sa m筩 S琻 чng 3"},		-- 长白山南
	
	--{182,1,25,"\\settings\\maps\\great_night\\孽龙洞迷宫.txt","Nghi謙 Long чng"},	-- 长白山南
	--{167,1,25,"\\settings\\maps\\great_night\\点苍山.txt","觤 Thng S琻"},			-- 长白山南
	--{200,1,25,"\\settings\\maps\\great_night\\古阳洞迷宫.txt","C?Dng чng"},	-- 长白山南
	--{92,1,25,"\\settings\\maps\\great_night\\蜀冈山.txt","Th鬰 Cng S琻"},				-- 长白山南

--	{341, 4, 1, "\\settings\\maps\\great_night\\漠北草原.txt","M筩 B綾 Th秓 Nguy猲"},		-- 漠北草原
--	{333, 4, 1, "\\settings\\maps\\great_night\\华山派.txt","Hoa S琻 Ph竔"},			-- 华山派
--	{319, 4, 1, "\\settings\\maps\\great_night\\临渝关.txt","L﹎ Du Quan"},			-- 临渝关
--	{959, 4, 3, "\\settings\\maps\\great_night\\双龙洞.txt","Kh醓 Lang чng"},			-- 双龙洞
--	{181, 4, 1, "\\settings\\maps\\great_night\\两水洞.txt","Lng Th駓 чng"},			-- 两水洞
};
tblantern_area = {2, 21, 167, 193}

function TaskShedule()
	--设置方案名称
	TaskName("辉煌果")
	
	-- 12点00分开始
	TaskTime(11,10);
	
	--设置间隔时间，单位为分钟
	TaskInterval(5)
	
	--设置触发次数，0表示无限次数
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
	--在19:30到20:01分中间才能触发
	local START_TIME = 1110;
	local END_TIME = 1129;
	
	if righttime_add() ~= 1 then--如果时间不对
		gb_SetTask("HOAT DONG HOA DANG", 1, 0)
		gb_SetTask("QUA HUY HOANG", 20, 10);	--12号变量用来存储NPC的序号
		return
	end;
	--AddGlobalCountNews("Trc m総 l?th阨 gian m璦 thu薾 gi?h遖,  p t?c玭g s鴆 ng g鉷 c竎 v?i hi謕, V?l﹎ minh ch?чc C?Ki誱  t?ch鴆 ho箃 ng <color=yellow>'Иm huy ho祅g'<color>. Th阨 gian b総 u ho箃 ng m鏸 ng祔 l?20h20.",1)
	OutputMsg("QUA HUY HOANG on started at 20h10 PM")
	--保险起见，在活动最开始将变量清零
	local nNowTime = tonumber(date("%H%M"))
	
	--当服务器正常运行时，每天准时开始活动时，第一场时
	if nNowTime >= 1110 and nNowTime < 1129 then	--	
		--NPC序号 = NPC的顺序 +  日期(4)；用以验证点击的NPC是否属于可被摘取的果实
		gb_SetTask("QUA HUY HOANG", 20, 10);	--12号变量用来存储NPC的序号

	end
	--------------------
	--
	--------------------
	--检查是第几个5分钟，即第几批次
	--执行的时候根据批次的奇偶来确定是刷种子还是果实
	local nBatch = floor(mod(nNowTime,100)/5) + 1
	--
	local nMapCount = getn(greatseed_configtab);
	----- Trc m総 l?th阨 gian m璦 thu薾 gi?h遖,  p t?c玭g s鴆 ng g鉷 c竎 v?i hi謕, V?l﹎ minh ch?чc C?Ki誱  t?ch鴆 ho箃 ng <color=yellow>'Иm huy ho祅g'<color>. Th阨 gian b総 u ho箃 ng m鏸 ng祔 l?20h15. <enter><color=yellow>20h15 tr璦 nay s?di詎 ra ho箃 ng 'Huy chi chng'
	--
	-----
	for i = 1, nMapCount do
		local strExecute = format("dw Global_GreatSeedExecute(%d, %d, %d, [[%s]], [[%s]],%d)", greatseed_configtab[i][1], greatseed_configtab[i][2], greatseed_configtab[i][3], greatseed_configtab[i][4],greatseed_configtab[i][5],nBatch);
		GlobalExecute(strExecute);
		local szMsg = "";
		if (mod(nBatch,2) == 1) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "H箃 Huy Ho祅g Cao"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "H箃 Huy Ho祅g Trung"
		elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "H箃 Huy Ho祅g Ti觰"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "H箃 Ho祅g Kim"
		end; 
		if (mod(nBatch,2) == 1) then
			szMsg = format("Xu蕋 hi謓, <color=yellow>Administrator<color>  gieo <color=green><%s><color> t筰 %s, 5 ph髏 sau c竎 Чi Hi謕 c?th?thu ho筩h!!",
			szMsg,
			greatseed_configtab[i][5]);
			GlobalExecute(format("dw AddLocalNews([[%s]])",szMsg));
			GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg));
		elseif (mod(nBatch,2) == 0) then
			szMsg = format("G苝 th阨 ti誸 thu薾 l頸 <color=pink><%s><color> do <color=yellow>Administrator<color> gieo h箃  k誸 qu秚筰 <color=green>%s<color>, C竎 Чi Hi謕 h穣 nhanh ch鉵g thu ho筩h!!",
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

function goldenseedmap()	--随机息一次黄金种子出现的地图；1大理，2扬州；
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
