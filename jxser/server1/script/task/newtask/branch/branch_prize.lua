-- 正派支线任务脚本
-- by xiaoyang(2005\1\4)

Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\branch\\branch_head.lua")
Include([[\script\task\newtask\branch\extent_prize.lua]]);


--正派：1    中立：2     邪派：3

saying = "Ngi v蕋 v� qu�! H穣 ch鋘 m閠 m鉵 cho m譶h 甶!";
ItemText = {
				{"Trang b� Ho祅g Kim/15/2/get_golditem1","Trang b� Ho祅g Kim/15/2/get_golditem2","Trang b� Ho祅g Kim/15/2/get_golditem3"},
				{"Trang b� Ho祅g Kim/15/3/get_golditem1","Trang b� Ho祅g Kim/15/3/get_golditem2","Trang b� Ho祅g Kim/15/3/get_golditem3"},
				{"Trang b� Ho祅g Kim/15/4/get_golditem1","Trang b� Ho祅g Kim/15/4/get_golditem2","Trang b� Ho祅g Kim/15/4, 3/get_golditem3"},
				{"Trang b� Ho祅g Kim/15/5/get_golditem1","Trang b� Ho祅g Kim/15/5/get_golditem2","Trang b� Ho祅g Kim/15/5/get_golditem3"},
				{"Ti襫/3/2/get_qualityitem1","Ti襫/3/2/get_qualityitem2","Ti襫/3/2/get_qualityitem3"},
				{"Ti襫/3/5/get_qualityitem1","Ti襫/3/5/get_qualityitem2","Ti襫/3/5/get_qualityitem3"},
				{"kinh nghi謒 /4/2/get_oreitem1","kinh nghi謒 /4/2/get_oreitem2","kinh nghi謒 /4/2/get_oreitem3"},
				{"kinh nghi謒 /4/3/get_oreitem1","kinh nghi謒 /4/3/get_oreitem2","kinh nghi謒 /4/3/get_oreitem3"},
				{"kinh nghi謒 /4/4/get_oreitem1","kinh nghi謒 /4/4/get_oreitem2","kinh nghi謒 /4/4/get_oreitem3"},
				{"kinh nghi謒 /4/5/get_oreitem1","kinh nghi謒 /4/5/get_oreitem2","kinh nghi謒 /4/5/get_oreitem3"},
				{"V藅 ph萴/14/3/get_propitem1","V藅 ph萴/14/3/get_propitem2","V藅 ph萴/14/3/get_propitem3"},
				{"V藅 ph萴/14/4/get_propitem1","V藅 ph萴/14/4/get_propitem2","V藅 ph萴/14/4/get_propitem3"},
			}

function branchprize()
	Uworld1050 = nt_getTask(1050)
	Uworld1051 = nt_getTask(1051)
	Uworld1052 = nt_getTask(1052)
	Uworld1053 = nt_getTask(1053)
	Uworld1054 = nt_getTask(1054)
	Uworld1055 = nt_getTask(1055)
	Uworld1056 = nt_getTask(1056)
	Uworld1057 = nt_getTask(1057)
	Uworld1058 = nt_getTask(1058)
	Uworld1059 = nt_getTask(1059)
	Uworld1060 = nt_getTask(1060)
	Uworld1061 = nt_getTask(1061)
	Uworld192 = nt_getTask(192) --正派支线奖励变量，各字位意义：
								--1-20~30级正派一；2-20~30级正派二；3-20~30级正派三； 4-30~40级正派一； 5-30~40级正派二； 6-30~40级正派三；
								--7-40~50级正派一； 8-40~50级正派二； 9-40~50级正派三； 10-50~60级正派一； 11-50~60级正派二； 12-50~60级正派三；
	Uworld193 = nt_getTask(193) --中立支线奖励变量，各字位意义：
								--1-20~30级中立一；2-20~30级中立二；3-20~30级中立三； 4-30~40级中立一； 5-30~40级中立二； 6-30~40级中立三；
								--7-40~50级中立一； 8-40~50级中立二； 9-40~50级中立三； 10-50~60级中立一； 11-50~60级中立二； 12-50~60级中立三；
	Uworld194 = nt_getTask(194) --邪派支线奖励变量，各字位意义：
								--1-20~30级邪派一；2-20~30级邪派二；3-20~30级邪派三； 4-30~40级邪派一； 5-30~40级邪派二； 6-30~40级邪派三；
								--7-40~50级邪派一； 8-40~50级邪派二； 9-40~50级邪派三； 10-50~60级邪派一； 11-50~60级邪派二； 12-50~60级邪派三；
	Uworld195 = nt_getTask(195)	--确定要发奖/发过奖，开关

	if ( nt_getTask(1050) == 50 and GetBit(GetTask(192), 1) ~= 1) then 						--缺少奖励变量设置  正派支线20-30任务一
		nt_setTask(195, 1)
		Prise(saying,ItemText[1][1],ItemText[5][1],ItemText[7][1])

	elseif ( nt_getTask(1050) == 110 and GetBit(GetTask(192), 2) ~= 1 ) then  				--正派支线20-30任务二
		nt_setTask(195, 1)
		Prise(saying,ItemText[1][1],ItemText[5][1],ItemText[7][1])
		
	elseif ( nt_getTask(1050) == 140 and GetBit(GetTask(192), 3) ~= 1 ) then	 			--正派支线20-30任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[1][1],ItemText[5][1],ItemText[7][1])	
	
	elseif ( nt_getTask(1051) == 30 and GetBit(GetTask(192), 4) ~= 1 ) then   				--正派支线30-40任务一
		--AddItem() --奖励一件一孔的紫色装备
		nt_setTask(195, 1)
		Prise(saying,ItemText[2][1],ItemText[11][1],ItemText[8][1])
		
	elseif ( nt_getTask(1051) == 90 and GetBit(GetTask(192), 5) ~= 1 ) then	 			--正派支线30-40任务二
		--AddItem() --奖励一颗概率宝石
		nt_setTask(195, 1)
		Prise(saying,ItemText[2][1],ItemText[11][1],ItemText[8][1])	
	
	elseif ( nt_getTask(1051) == 180 and GetBit(GetTask(192), 6) ~= 1 ) then	 			--正派支线30-40任务三
		--AddItem() --奖励一颗金系的暗属性宝石
		nt_setTask(195, 1)
		Prise(saying,ItemText[2][1],ItemText[11][1],ItemText[8][1])	
	
	elseif ( nt_getTask(1052) == 30 and GetBit(GetTask(192), 7) ~= 1 ) then				--正派支线40-50任务一
		nt_setTask(195, 1)
		Prise(saying,ItemText[3][1],ItemText[12][1],ItemText[9][1])
		
	elseif ( nt_getTask(1052) == 70 and GetBit(GetTask(192), 8) ~= 1 ) then  				--正派支线40-50任务二
		nt_setTask(195, 1)
		Prise(saying,ItemText[3][1],ItemText[12][1],ItemText[9][1])	
	
	elseif ( nt_getTask(1052) == 120 and GetBit(GetTask(192), 9) ~= 1 ) then 				--正派支线40-50任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[3][1],ItemText[12][1],ItemText[9][1])
		
	elseif ( nt_getTask(1053) == 25 and GetBit(GetTask(192), 10) ~= 1 ) then 				--正派支线50-60任务一
		nt_setTask(195, 1)
		Prise(saying,ItemText[4][1],ItemText[6][1],ItemText[10][1])	
	
	elseif ( nt_getTask(1053) == 50 and GetBit(GetTask(192), 11) ~= 1 ) then 				--正派支线50-60任务二
		nt_setTask(195, 1)
		Prise(saying,ItemText[4][1],ItemText[6][1],ItemText[10][1])	
	
	elseif ( nt_getTask(1053) == 80 and GetBit(GetTask(192), 12) ~= 1 ) then 				--正派支线50-60任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[4][1],ItemText[6][1],ItemText[10][1])		

	elseif ( nt_getTask(1054) == 30 and GetBit(GetTask(193), 1) ~= 1 ) then 				--中立支线20-30任务一
		Prise(saying,ItemText[1][2],ItemText[5][2],ItemText[7][2])
		nt_setTask(195, 1)
		
	elseif ( nt_getTask(1054) == 100 and GetBit(GetTask(193), 2) ~= 1 ) then 				--中立支线20-30任务二
		nt_setTask(195, 1)
		Prise(saying,ItemText[1][2],ItemText[5][2],ItemText[7][2])	
	
	elseif ( nt_getTask(1054) == 150 and GetBit(GetTask(193), 3) ~= 1 ) then 				--中立支线20-30任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[1][2],ItemText[5][2],ItemText[7][2])	

	elseif ( nt_getTask(1055) == 50 and GetBit(GetTask(193), 4) ~= 1 ) then 				--中立支线30-40任务一
		--AddItem() --奖励一件一孔的紫色装备
		nt_setTask(195, 1)
		Prise(saying,ItemText[2][2],ItemText[11][2],ItemText[8][2])	
	
	elseif ( nt_getTask(1055) == 90 and GetBit(GetTask(193), 5) ~= 1 ) then 				--中立支线30-40任务二
		--AddItem() --奖励一颗概率宝石
		nt_setTask(195, 1)
		Prise(saying,ItemText[2][2],ItemText[11][2],ItemText[8][2])

	elseif ( nt_getTask(1055) == 140 and GetBit(GetTask(193), 6) ~= 1 ) then 				--中立支线30-40任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[2][2],ItemText[11][2],ItemText[8][2])

	elseif ( nt_getTask(1056) == 25 and GetBit(GetTask(193), 7) ~= 1 ) then 				--中立支线40-50任务一
		nt_setTask(195, 1)
		Prise(saying,ItemText[3][2],ItemText[12][2],ItemText[9][2])

	elseif ( nt_getTask(1056) == 50 and GetBit(GetTask(193), 8) ~= 1 ) then 				--中立支线40-50任务二
		nt_setTask(195, 1)
		Prise(saying,ItemText[3][2],ItemText[12][2],ItemText[9][2])

	elseif ( nt_getTask(1056) == 80 and GetBit(GetTask(193), 9) ~= 1 ) then 				--中立支线40-50任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[3][2],ItemText[12][2],ItemText[9][2])

	elseif ( nt_getTask(1057) == 30 and GetBit(GetTask(193), 10) ~= 1 ) then				--中立支线50-60任务一
		nt_setTask(195, 1)
		Prise(saying,ItemText[4][2],ItemText[6][2],ItemText[10][2])

	elseif ( nt_getTask(1057) == 70 and GetBit(GetTask(193), 11) ~= 1 ) then					--中立支线50-60任务二
		nt_setTask(195, 1)
		Prise(saying,ItemText[4][2],ItemText[6][2],ItemText[10][2])

	elseif ( nt_getTask(1057) == 100 and GetBit(GetTask(193), 12) ~= 1 ) then					--中立支线50-60任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[4][2],ItemText[6][2],ItemText[10][2])

	elseif ( nt_getTask(1058) == 30 and GetBit(GetTask(194), 1) ~= 1 ) then 				--邪派支线20-30任务一
		nt_setTask(195, 1)
		Prise(saying,ItemText[1][3],ItemText[5][3],ItemText[7][3])

	elseif ( nt_getTask(1058) == 50 and GetBit(GetTask(194), 2) ~= 1 ) then 				--邪派支线20-30任务二
		nt_setTask(195, 1)
		Prise(saying,ItemText[1][3],ItemText[5][3],ItemText[7][3])

	elseif ( nt_getTask(1058) == 100 and GetBit(GetTask(194), 3) ~= 1 ) then 				--邪派支线20-30任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[1][3],ItemText[5][3],ItemText[7][3])

	elseif ( nt_getTask(1059) == 30 and GetBit(GetTask(194), 4) ~= 1 ) then 				--邪派支线30-40任务一
		nt_setTask(195, 1)
		Prise(saying,ItemText[2][3],ItemText[11][3],ItemText[8][3])

	elseif ( nt_getTask(1059) == 50 and GetBit(GetTask(194), 5) ~= 1 ) then 				--邪派支线30-40任务二
		nt_setTask(195, 1)
		Prise(saying,ItemText[2][3],ItemText[11][3],ItemText[8][3])
		
	elseif ( nt_getTask(1059) == 120 and GetBit(GetTask(194), 6) ~= 1 ) then 				--邪派支线30-40任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[2][3],ItemText[11][3],ItemText[8][3])

	elseif ( nt_getTask(1060) == 50 and GetBit(GetTask(194), 7) ~= 1 ) then 				--邪派支线40-50任务一
		nt_setTask(195, 1)
		Prise(saying,ItemText[3][3],ItemText[12][3],ItemText[9][3])

	elseif ( nt_getTask(1060) == 90 and GetBit(GetTask(194), 8) ~= 1 ) then 				--邪派支线40-50任务二
		nt_setTask(195, 1)
		Prise(saying,ItemText[3][3],ItemText[12][3],ItemText[9][3])

	elseif ( nt_getTask(1060) == 120 and GetBit(GetTask(194), 9) ~= 1 ) then 				--邪派支线40-50任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[3][3],ItemText[12][3],ItemText[9][3])

	elseif ( nt_getTask(1061) == 30 and GetBit(GetTask(194), 10) ~= 1 ) then 				--邪派支线50-60任务一
		nt_setTask(195, 1)
		Prise(saying,ItemText[4][3],ItemText[5][3],ItemText[9][3])

	elseif ( nt_getTask(1061) == 70 and GetBit(GetTask(194), 11) ~= 1 ) then 				--邪派支线50-60任务二
		nt_setTask(195, 1)
		Prise(saying,ItemText[4][3],ItemText[5][3],ItemText[9][3])

	elseif ( nt_getTask(1061) == 120 and GetBit(GetTask(194), 12) ~= 1 ) then 				--邪派支线50-60任务三
		nt_setTask(195, 1)
		Prise(saying,ItemText[4][3],ItemText[5][3],ItemText[9][3])

	end
end


function get_golditem1(lel)		--正派	
	if ((nt_getTask(1050) == 50 and GetBit(GetTask(192), 1) ~= 1) ==1 or (nt_getTask(1050) == 110 and GetBit(GetTask(192), 2) ~= 1) == 1 or (nt_getTask(1050) == 140 and GetBit(GetTask(192), 3) ~= 1) ==1) then			--判断属于哪个等级任务
			-- AddGoldItem(0, 184)
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")
			zhengpai_lel2()
	elseif((nt_getTask(1051) == 30 and GetBit(GetTask(192), 4) ~= 1) == 1 or (nt_getTask(1051) == 90 and GetBit(GetTask(192), 5) ~= 1) == 1 or (nt_getTask(1051) == 180 and GetBit(GetTask(192), 6) ~= 1) == 1) then	
			-- AddGoldItem(0, 178)
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")
			nt_setTask(195, 0)
			zhengpai_lel3()
	elseif((nt_getTask(1052) == 30 and GetBit(GetTask(192), 7) ~= 1) == 1 or (nt_getTask(1052) == 70 and GetBit(GetTask(192), 8) ~= 1) == 1 or (nt_getTask(1052) == 120 and GetBit(GetTask(192), 9) ~= 1) == 1) then
			local array4 = {181, 182, 183}
			local i= random(1, 3)
			-- AddGoldItem(0, array4[i])			--AddGoldItem(0,181or182or183)
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")		
			nt_setTask(195, 0)
			zhengpai_lel4()
	elseif((nt_getTask(1053) == 25 and GetBit(GetTask(192), 10) ~= 1) == 1 or (nt_getTask(1053) == 50 and GetBit(GetTask(192), 11) ~= 1) == 1 or (nt_getTask(1053) == 80 and GetBit(GetTask(192), 12) ~= 1) == 1) then
			local array5 = {179, 180, 185}
			local i = random(1, 3)
			-- AddGoldItem(0, array5[i])
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")
			nt_setTask(195, 0)
			zhengpai_lel5()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end


function get_golditem2(lel)		--中立	
	if((nt_getTask(1054) == 30 and GetBit(GetTask(193), 1) ~= 1) == 1 or (nt_getTask(1054) == 100 and GetBit(GetTask(193), 2) ~= 1) == 1 or (nt_getTask(1054) == 150 and GetBit(GetTask(193), 3) ~= 1) == 1) then			--判断属于哪个等级任务
			-- AddGoldItem(0, 184)		
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")
			zhongli_lel2()
	elseif((nt_getTask(1055) == 50 and GetBit(GetTask(193), 4) ~= 1) == 1 or (nt_getTask(1055) == 90 and GetBit(GetTask(193), 5) ~= 1) == 1 or (nt_getTask(1055) == 140 and GetBit(GetTask(193), 6) ~= 1 ) == 1 ) then	
			-- AddGoldItem(0, 178)
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")		
			zhongli_lel3()
	elseif((nt_getTask(1056) == 25 and GetBit(GetTask(193), 7) ~= 1) == 1 or (nt_getTask(1056) == 50 and GetBit(GetTask(193), 8) ~= 1) == 1 or (nt_getTask(1056) == 80 and GetBit(GetTask(193), 9) ~= 1) == 1 ) then
			local array4 = {181, 182, 183}
			local i= random(1, 3)
			-- AddGoldItem(0, array4[i])			--AddGoldItem(0,181or182or183)
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")		
			zhongli_lel4()
	elseif((nt_getTask(1057) == 30 and GetBit(GetTask(193), 10) ~= 1) == 1 or (nt_getTask(1057) == 70 and GetBit(GetTask(193), 11) ~= 1) == 1 or (nt_getTask(1057) == 100 and GetBit(GetTask(193), 12) ~= 1) == 1 ) then
			local array5 = {179, 180, 185}
			local i = random(1, 3)
			-- AddGoldItem(0, array5[i])			--AddGoldItem(0,181or182or183)
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")		
			zhongli_lel5()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end


function get_golditem3(lel)		--邪派	
	if((nt_getTask(1058) == 30 and GetBit(GetTask(194), 1) ~= 1) == 1 or (nt_getTask(1058) == 50 and GetBit(GetTask(194), 2) ~= 1) ==1  or (nt_getTask(1058) == 100 and GetBit(GetTask(194), 3) ~= 1) == 1) then			--判断属于哪个等级任务
			-- AddGoldItem(0, 184)
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")		
			xiepai_lel2()
	elseif((nt_getTask(1059) == 30 and GetBit(GetTask(194), 4) ~= 1) == 1 or (nt_getTask(1059) == 50 and GetBit(GetTask(194), 5) ~= 1) == 1 or (nt_getTask(1059) == 120 and GetBit(GetTask(194), 6) ~= 1) == 1) then	
			-- AddGoldItem(0, 178)
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")
			xiepai_lel3()
	elseif((nt_getTask(1060) == 50 and GetBit(GetTask(194), 7) ~= 1) == 1 or (nt_getTask(1060) == 90 and GetBit(GetTask(194), 8) ~= 1) == 1 or (nt_getTask(1060) == 120 and GetBit(GetTask(194), 9) ~= 1) == 1) then	
			local array4 = {181, 182, 183}
			local i= random(1, 3)
			-- AddGoldItem(0, array4[i])			--AddGoldItem(0,181or182or183)
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")
			xiepai_lel4()
	elseif((nt_getTask(1061) == 30 and GetBit(GetTask(194), 10) ~= 1) == 1 or (nt_getTask(1061) == 70 and GetBit(GetTask(194), 11) ~= 1) == 1 or (nt_getTask(1061) == 120 and GetBit(GetTask(194), 12) ~= 1) == 1) then
			local array5 = {179, 180, 185}
			local i = random(1, 3)
			-- AddGoldItem(0, array5[i])			
			-- Msg2Player("B筺 nh薾 頲 1 b� Trang b� Ho祅g Kim")
			xiepai_lel5()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end

-- 加金钱
function get_qualityitem1(lel)		--正派	
	if ((nt_getTask(1050) == 50 and GetBit(GetTask(192), 1) ~= 1) ==1 or (nt_getTask(1050) == 110 and GetBit(GetTask(192), 2) ~= 1) == 1 or (nt_getTask(1050) == 140 and GetBit(GetTask(192), 3) ~= 1) ==1) then			--判断属于哪个等级任务
			Earn(20000);
			zhengpai_lel2()
	elseif((nt_getTask(1053) == 25 and GetBit(GetTask(192), 10) ~= 1) == 1 or (nt_getTask(1053) == 50 and GetBit(GetTask(192), 11) ~= 1) == 1 or (nt_getTask(1053) == 80 and GetBit(GetTask(192), 12) ~= 1) == 1) then
			Earn(20000);
			zhengpai_lel5()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end


-- 加金钱
function get_qualityitem2(lel)		--中立	
	if((nt_getTask(1054) == 30 and GetBit(GetTask(193), 1) ~= 1) == 1 or (nt_getTask(1054) == 100 and GetBit(GetTask(193), 2) ~= 1) == 1 or (nt_getTask(1054) == 150 and GetBit(GetTask(193), 3) ~= 1) == 1) then			--判断属于哪个等级任务
			Earn(20000);
			zhongli_lel2()
	elseif((nt_getTask(1057) == 30 and GetBit(GetTask(193), 10) ~= 1) == 1 or (nt_getTask(1057) == 70 and GetBit(GetTask(193), 11) ~= 1) == 1 or (nt_getTask(1057) == 100 and GetBit(GetTask(193), 12) ~= 1) == 1 ) then
			Earn(20000);
			zhongli_lel5()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end


-- 加金钱
function get_qualityitem3(lel)	
	if((nt_getTask(1058) == 30 and GetBit(GetTask(194), 1) ~= 1) == 1 or (nt_getTask(1058) == 50 and GetBit(GetTask(194), 2) ~= 1) == 1 or (nt_getTask(1058) == 100 and GetBit(GetTask(194), 3) ~= 1) == 1) then			--判断属于哪个等级任务
			Earn(20000);
			xiepai_lel2()
	elseif((nt_getTask(1061) == 30 and GetBit(GetTask(194), 10) ~= 1) == 1 or (nt_getTask(1061) == 70 and GetBit(GetTask(194), 11) ~= 1) == 1 or (nt_getTask(1061) == 120 and GetBit(GetTask(194), 12) ~= 1) == 1) then
			Earn(20000);
			xiepai_lel5()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end


-- 经验
function get_oreitem1(lel)		--正派	
	if ((nt_getTask(1050) == 50 and GetBit(GetTask(192), 1) ~= 1) ==1 or (nt_getTask(1050) == 110 and GetBit(GetTask(192), 2) ~= 1) == 1 or (nt_getTask(1050) == 140 and GetBit(GetTask(192), 3) ~= 1) ==1) then			--判断属于哪个等级任务
			AddOwnExp(20000);
			zhengpai_lel2()
	elseif((nt_getTask(1051) == 30 and GetBit(GetTask(192), 4) ~= 1) == 1 or (nt_getTask(1051) == 90 and GetBit(GetTask(192), 5) ~= 1) == 1 or (nt_getTask(1051) == 180 and GetBit(GetTask(192), 6) ~= 1) == 1) then		
			AddOwnExp(20000);
			zhengpai_lel3()
	elseif((nt_getTask(1052) == 30 and GetBit(GetTask(192), 7) ~= 1) == 1 or (nt_getTask(1052) == 70 and GetBit(GetTask(192), 8) ~= 1) == 1 or (nt_getTask(1052) == 120 and GetBit(GetTask(192), 9) ~= 1) == 1) then	
			AddOwnExp(20000);
			zhengpai_lel4()
	elseif((nt_getTask(1053) == 25 and GetBit(GetTask(192), 10) ~= 1) == 1 or (nt_getTask(1053) == 50 and GetBit(GetTask(192), 11) ~= 1) == 1 or (nt_getTask(1053) == 80 and GetBit(GetTask(192), 12) ~= 1) == 1) then
			AddOwnExp(20000);
			zhengpai_lel5()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end


-- 经验
function get_oreitem2(lel)	
	if((nt_getTask(1054) == 30 and GetBit(GetTask(193), 1) ~= 1) == 1 or (nt_getTask(1054) == 100 and GetBit(GetTask(193), 2) ~= 1) == 1 or (nt_getTask(1054) == 150 and GetBit(GetTask(193), 3) ~= 1) == 1) then			--判断属于哪个等级任务
			AddOwnExp(20000);
			zhongli_lel2()
	elseif((nt_getTask(1055) == 50 and GetBit(GetTask(193), 4) ~= 1) == 1 or (nt_getTask(1055) == 90 and GetBit(GetTask(193), 5) ~= 1) == 1 or (nt_getTask(1055) == 140 and GetBit(GetTask(193), 6) ~= 1 ) == 1 ) then	
			AddOwnExp(20000);
			zhongli_lel3()
	elseif((nt_getTask(1056) == 25 and GetBit(GetTask(193), 7) ~= 1) == 1 or (nt_getTask(1056) == 50 and GetBit(GetTask(193), 8) ~= 1) == 1 or (nt_getTask(1056) == 80 and GetBit(GetTask(193), 9) ~= 1) == 1 ) then	
			AddOwnExp(20000);
			zhongli_lel4()
	elseif((nt_getTask(1057) == 30 and GetBit(GetTask(193), 10) ~= 1) == 1 or (nt_getTask(1057) == 70 and GetBit(GetTask(193), 11) ~= 1) == 1 or (nt_getTask(1057) == 100 and GetBit(GetTask(193), 12) ~= 1) == 1 ) then
			AddOwnExp(20000);
			zhongli_lel5()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end


-- 经验
function get_oreitem3(lel)	
	if((nt_getTask(1058) == 30 and GetBit(GetTask(194), 1) ~= 1) == 1 or (nt_getTask(1058) == 50 and GetBit(GetTask(194), 2) ~= 1) == 1 or (nt_getTask(1058) == 100 and GetBit(GetTask(194), 3) ~= 1) == 1) then			--判断属于哪个等级任务
			AddOwnExp(20000);
			xiepai_lel2()
	elseif((nt_getTask(1059) == 30 and GetBit(GetTask(194), 4) ~= 1) == 1 or (nt_getTask(1059) == 50 and GetBit(GetTask(194), 5) ~= 1) == 1 or (nt_getTask(1059) == 120 and GetBit(GetTask(194), 6) ~= 1) == 1) then		
			AddOwnExp(20000);
			xiepai_lel3()
	elseif((nt_getTask(1060) == 50 and GetBit(GetTask(194), 7) ~= 1) == 1 or (nt_getTask(1060) == 90 and GetBit(GetTask(194), 8) ~= 1) == 1 or (nt_getTask(1060) == 120 and GetBit(GetTask(194), 9) ~= 1) == 1) then		
			AddOwnExp(20000);
			xiepai_lel4()
	elseif((nt_getTask(1061) == 30 and GetBit(GetTask(194), 10) ~= 1) == 1 or (nt_getTask(1061) == 70 and GetBit(GetTask(194), 11) ~= 1) == 1 or (nt_getTask(1061) == 120 and GetBit(GetTask(194), 12) ~= 1) == 1) then
			AddOwnExp(20000);
			xiepai_lel5()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end


function get_propitem1(lel)	
	if((nt_getTask(1051) == 30 and GetBit(GetTask(192), 4) ~= 1) == 1 or (nt_getTask(1051) == 90 and GetBit(GetTask(192), 5) ~= 1) == 1 or (nt_getTask(1051) == 180 and GetBit(GetTask(192), 6) ~= 1) == 1) then				--判断属于哪个等级任务
			-- AddItem(6, 1, 72, 1, 0, 0, 0)
			-- Msg2Player("B筺 nh薾 頲 1 v藅 ph萴")
			zhengpai_lel3()
	elseif((nt_getTask(1052) == 30 and GetBit(GetTask(192), 7) ~= 1) == 1 or (nt_getTask(1052) == 70 and GetBit(GetTask(192), 8) ~= 1) == 1 or (nt_getTask(1052) == 120 and GetBit(GetTask(192), 9) ~= 1) == 1) then
			-- AddItem(6, 1, 73, 1, 0, 0, 0)
			-- Msg2Player("B筺 nh薾 頲 1 v藅 ph萴")
			zhengpai_lel4()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end


function get_propitem2(lel)	
	if((nt_getTask(1055) == 50 and GetBit(GetTask(193), 4) ~= 1) == 1 or (nt_getTask(1055) == 90 and GetBit(GetTask(193), 5) ~= 1) == 1 or (nt_getTask(1055) == 140 and GetBit(GetTask(193), 6) ~= 1 ) == 1 ) then			--判断属于哪个等级任务
			-- AddItem(6, 1, 72, 1, 0, 0, 0)
			-- Msg2Player("B筺 nh薾 頲 1 v藅 ph萴")
			zhongli_lel3()
	elseif((nt_getTask(1056) == 25 and GetBit(GetTask(193), 7) ~= 1) == 1 or (nt_getTask(1056) == 50 and GetBit(GetTask(193), 8) ~= 1) == 1 or (nt_getTask(1056) == 80 and GetBit(GetTask(193), 9) ~= 1) == 1 ) then
			-- AddItem(6, 1, 73, 1, 0, 0, 0)
			-- Msg2Player("B筺 nh薾 頲 1 v藅 ph萴")
			zhongli_lel4()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end


function get_propitem3(lel)	
	if((nt_getTask(1059) == 30 and GetBit(GetTask(194), 4) ~= 1) == 1 or (nt_getTask(1059) == 50 and GetBit(GetTask(194), 5) ~= 1) == 1 or (nt_getTask(1059) == 120 and GetBit(GetTask(194), 6) ~= 1) == 1) then				--判断属于哪个等级任务
			-- AddItem(6, 1, 72, 1, 0, 0, 0)
			-- Msg2Player("B筺 nh薾 頲 1 v藅 ph萴")
			xiepai_lel3()
	elseif((nt_getTask(1060) == 50 and GetBit(GetTask(194), 7) ~= 1) == 1 or (nt_getTask(1060) == 90 and GetBit(GetTask(194), 8) ~= 1) == 1 or (nt_getTask(1060) == 120 and GetBit(GetTask(194), 9) ~= 1) == 1) then	
			-- AddItem(6, 1, 73, 1, 0, 0, 0)
			-- Msg2Player("B筺 nh薾 頲 1 v藅 ph萴")
			xiepai_lel4()
	else
		print("error:transfors parameter was wrong!!")
		Talk(1,"","Xin l鏸! Kh玭g th� nh薾 頲 ph莕 thng! Xin h穣 ph秐 秐h v韎 GM!!")
		return
	end
end

function zhengpai_lel2()
	if (nt_getTask(1050) == 50) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 1, 1))
		nt_setTask(1050, 60)
		Msg2Player("Nhi謒 v� k誸 th骳! Th� ra  ngi n祔 l� Si T╪g gi� d筺g! B筺 h穣 tr� v� t譵 Ng筼 V﹏ T玭g.")
		Msg2Player("B筺 nh薾 頲 2.000 甶觤 kinh nghi謒")
		for i=1,5 do
			DelItem(504)
		end
		AddOwnExp(2000)
	elseif (nt_getTask(1050) == 110) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 2, 1))
		nt_setTask(1050, 120)
		Msg2Player("T譵 頲 S莔 H飊g, nhi謒 v� k誸 th骳! S莔 H飊g cho bi誸 s竧 th� n╩ x璦 th輈h s竧 Nh筩 Tng Qu﹏ 產ng � ngo礽 th祅h.")				
		Msg2Player("B筺 nh薾 頲 2.000 甶觤 kinh nghi謒")
		AddOwnExp(2000)
	elseif (nt_getTask(1050) == 140) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 3, 1))
		nt_setTask(1050, 1000)
		Msg2Player("Nhi謒 v� ho祅 th祅h! B筺 c� th� quay v� t譵 Ng筼 V﹏ T玭g  nh薾 ph莕 thng c馻 giai 畂筺 n祔!")
	end
end

function zhengpai_lel3()
	if (nt_getTask(1051) == 30) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 4, 1))
		nt_setTask(1051, 40)
		Msg2Player("Nhi謒 v� k誸 th骳, H� Lan Chi cho bi誸 B秓 Th筩h  b�  b� � qu� nh�. B筺 c� th� 甶  t譵 Ng� L穙 Th竔  nh薾 m閠 b� 竜 gi竝 th莕 k�!")
		Msg2Player("B筺 nh薾 頲 1 b� trang b� m� bao nhi猽 ngi h籲g mong c!")
		Msg2Player("B筺 nh薾 頲 5.000 甶觤 kinh nghi謒")
		-- if ( GetSex() == 0 ) then
			-- AddGoldItem(0, 178); -- 增加一件金枫衣服
		-- else
			-- AddGoldItem(0, 178);
		-- end
		AddOwnExp(5000)
	elseif (nt_getTask(1051) == 90) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 5, 1))
		nt_setTask(1051, 100)
		Uworld1011 = nt_getTask(1011)
		nt_setTask(1011,0)
--		Msg2Player("你成功获得了足够的狼骨，任务完成！傲云宗给了你奇怪的一颗概率宝石，留下它也许有大用。你可以去襄阳找龚阿牛制作药材了。")
--		AddItem(6,1,147,1,1,1)
	elseif (nt_getTask(1051) == 180) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 6, 1))
		nt_setTask(1051, 1000)
--		Msg2Player("你完成了任务，傲云宗将吴老太太赠送的，多余的一颗矿石送给了你。并告诉你，带着你得到的带孔铠甲，概率宝石，和这颗属性矿石，去找神秘铁匠，有可能合出一件好的装备。你可以再次与他对话，领取该阶段任务全完成的大奖了。")
--		Msg2Player("你得到一颗矿石")
		Msg2Player("B筺 nh薾 頲 12.000 甶觤 kinh nghi謒")
--		AddItem(6,1,149,1,0,0,0) --加明一矿石
		AddOwnExp(12000)
	end
end

function zhengpai_lel4()
	if (nt_getTask(1052) == 30) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 7, 1))
		nt_setTask(1052, 40)
		Uworld1011 = nt_getTask(1011) --正派支线杀怪变量，设置为0，清空
		nt_setTask(1011,0)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Ng筼 V﹏ T玭g b秓 b筺 n Dng Ch﹗ t譵 H鏽 H鏽. Th玭g qua y  x﹎ nh藀 v祇 t� ch鴆 s竧 th� L﹎ Uy猲 Nhai t譵 ra k�  th輈h s竧 Nh筩 Nguy猲 So竔 n╩ x璦.")
		Msg2Player("B筺 nh薾 頲 10.000 甶觤 kinh nghi謒")
		AddOwnExp(10000)
	elseif (nt_getTask(1052) == 70) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 8, 1))
		nt_setTask(1052, 80)
		Uworld1011 = nt_getTask(1011)
		nt_setTask(1011, 0) --杀怪变量置为0
		Msg2Player("Nhi謒 v� ho祅 th祅h! H鏽 H鏽 sai b筺 甶 gi誸 Du Tng T﹏ nh璶g b筺 quy誸 nh quay v� h醝 Ng筼 V﹏ T玭g trc.")
		Msg2Player("B筺 nh薾 頲 10.000 甶觤 kinh nghi謒")
		AddOwnExp(10000)
	elseif (nt_getTask(1052) == 120) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 9, 1))
		nt_setTask(1052, 1000)
		Msg2Player("Nhi謒 v� ho祅 th祅h! B筺 c� th� quay v� t譵 Ng筼 V﹏ T玭g  nh薾 ph莕 thng c馻 giai 畂筺 n祔!")
	end
end

function zhengpai_lel5()
	if (nt_getTask(1053) == 25) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 10, 1))
		nt_setTask(1053, 27)
		Uworld1011 = nt_getTask(1011)
		nt_setTask(1011, 0)
		Msg2Player("Nhi謒 v� ho祅 th祅h! H鏽 H鏽 khen ng頸 b筺! Nh璶g dng v蒼 c遪 c� 甶襲 g�  萵 ch鴄 ph輆 sau!")
		Msg2Player("B筺 nh薾 頲 20.000 甶觤 kinh nghi謒")
		AddOwnExp(20000)
	elseif (nt_getTask(1053) == 50) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 11, 1))
		nt_setTask(1053, 60)
		Msg2Player("Nhi謒 v� ho祅 th祅h! H鏽 H鏽 cu鑙 c飊g  ti誸 l�, c莔 u th輈h s竧 Nh筩 Nguy猲 So竔 n╩ x璦 ch輓h l� T� T鴆 Phong. H緉 產ng � b猲 ngo礽 th祅h L﹎ An.")
		Msg2Player("B筺 nh薾 頲 20.000 甶觤 kinh nghi謒")
		AddOwnExp(20000)
	elseif (nt_getTask(1053) == 80) then
		Uworld192 = nt_getTask(192)
		nt_setTask(192, SetBit(Uworld192, 12, 1))
		nt_setTask(1053, 1000)
		Msg2Player("Ng筼 V﹏ T玭g e ng筰 ph輆 sau nh蕋 nh c� m閠 t� ch鴆 ng莔 thao t髇g. Xem ra h緉 mu鑞 ch th﹏ 甶 th萴 tra. B筺 h箉 ti誴 t鬰 i tho筰 v韎 Ng筼 V﹏ T玭g  nh薾 ph莕 thng.")

	end
end

function zhongli_lel2()
	if (nt_getTask(1054) == 30) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 1, 1))
		nt_setTask(1054, 40)
		Uworld1012 = nt_getTask(1012)
		nt_setTask(1012, 0)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Giang Nh蕋 Ti猽 b秓 b筺 甶 v祇 th祅h t譵 Th� Sinh L筩 Thanh Thu, anh ta l� m閠 ngi r蕋 am hi觰 v� binh kh� ")
		Msg2Player("B筺 nh薾 頲 2.000 甶觤 kinh nghi謒")
		AddOwnExp(2000)
	elseif(nt_getTask(1054) == 100) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 2, 1))
		nt_setTask(1054, 110) 
		Msg2Player("Nhi謒 v� ho祅 th祅h! х C玭 b� b筺 nh b筰, h緉 n鉯 s� x鉧 h誸 m鉵 n� cho L筩 Thanh Thu.")
		Msg2Player("B筺 nh薾 頲 2.000 甶觤 kinh nghi謒")
		AddOwnExp(2000)
	elseif(nt_getTask(1054) == 150) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 3, 1))
		nt_setTask(1054, 1000)
		Msg2Player("L筩 Thanh Thu n鉯, t� tin m韎 l� v� kh� l頸 h筰 nh蕋. Nhi謒 v� ho祅 th祅h. B筺 quay v� g苝 Li評 V﹏ Nam  nh薾 ph莕 thng.")
		Msg2Player("B筺 nh薾 頲 5.000 甶觤 kinh nghi謒")
		AddOwnExp(5000)
	end
end

function zhongli_lel3()
	if (nt_getTask(1055) == 50) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 4, 1))
		nt_setTask(1055, 60)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Tr猲 b� gi竝 n祔 c� kh綾 m閠 c﹜ Trng thng, y l� d蕌 蕁 c馻 Th祅h Й L穘h Thng Ti猽 c鬰, b筺 quy誸 nh 甶 n  m閠 chuy課.")
		Msg2Player("B筺 nh薾 頲 1 b� trang b�!")
		Msg2Player("B筺 nh薾 頲 5.000 甶觤 kinh nghi謒")
		-- if ( GetSex() == 0 ) then
			-- AddGoldItem(0, 178); -- 增加一件金枫衣服
		-- else
			-- AddGoldItem(0, 178); -- 增加一件金枫衣服
		-- end
		AddOwnExp(5000)
	elseif (nt_getTask(1055) == 90) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 5, 1))
		nt_setTask(1055, 100)
		Uworld1012 = nt_getTask(1012)
		nt_setTask(1012, 0)
--		Msg2Player("冷枪镖局主人让你不要对荷花盗赶尽杀绝，他送给了你一颗概率宝石。")
--		Msg2Player("你得到一颗概率宝石")
		Msg2Player("B筺 nh薾 頲 5.000 甶觤 kinh nghi謒")
--		AddItem(6, 1, 147, 1, 1, 1)
		AddOwnExp(5000)
	elseif (nt_getTask(1055) == 140) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 6, 1))
		nt_setTask(1055, 1000)
--		Msg2Player("任务完成！柳南云给了你一颗属性矿石，至于这颗属性矿石有什么用处，那就得以后你遇见高人时才能得以解答的了。")
--		Msg2Player("你得到一颗属性矿石")
		Msg2Player("B筺 nh薾 頲 12.000 甶觤 kinh nghi謒")
--		AddItem(6,1,149,1,0,0,0)
		AddOwnExp(12000)
	end
end

function zhongli_lel4()
	if (nt_getTask(1056) == 25) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 7, 1))
		nt_setTask(1056, 27)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Nh璶g Li評 V﹏ Nam t鵤 h� c遪 c� ch髏 do d�, dng nh� c遪 c� 甶襲 g� ch璦 n鉯.")--柳南云让你去演武场打胜一场比赛，看来有重要的事即将发生了")
		Msg2Player("B筺 nh薾 頲 10.000 甶觤 kinh nghi謒")
		AddOwnExp(10000)
	elseif (nt_getTask(1056) == 50) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 8, 1))
		nt_setTask(1056, 60)
		Uworld1012 = nt_getTask(1012)
		nt_setTask(1012, 0)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Li評 Nam V﹏ b秓 b筺 甶  t譵 di謙 Du Tng T﹏ - k�  t鮪g nhi襲 n╩ v� ch v� trng")
		Msg2Player("B筺 nh薾 頲 10.000 甶觤 kinh nghi謒")
		AddOwnExp(10000)
	elseif (nt_getTask(1056) == 80) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 9, 1))
		nt_setTask(1056, 1000)
		Msg2Player("Nhi謒 v� ho祅 th祅h! T� ch鴆 r蕋 h礽 l遪g v韎 b筺. B筺 h穣 quay l筰 i tho筰 v韎 Li評 V﹏ Nam   nh薾 ph莕 thng") 
		Msg2Player("B筺 nh薾 頲 26.000 甶觤 kinh nghi謒")
		AddOwnExp(26000)
	end
end

function zhongli_lel5()
	if (nt_getTask(1057) == 30) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 10, 1))
		nt_setTask(1057, 40)
		Uworld1012 = nt_getTask(1012)
		nt_setTask(1012, 0)
		Msg2Player("Nhi謒 v� ho祅 th祅h! B筺 c� th� tr� l阨 c竎 v蕁  v� T鑞g Kim")
		Msg2Player("B筺 nh薾 頲 20.000 甶觤 kinh nghi謒")
		AddOwnExp(20000)
	elseif (nt_getTask(1057) == 70) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 11, 1))
		nt_setTask(1057, 80)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Li評 Nam V﹏ b竜 v韎 b筺 m閠 hung tin.")
		Msg2Player("B筺 nh薾 頲 20.000 甶觤 kinh nghi謒")
		AddOwnExp(20000)
	elseif (nt_getTask(1057) == 100) then
		Uworld193 = nt_getTask(193)
		nt_setTask(193, SetBit(Uworld193, 12, 1))
		nt_setTask(1057, 1000)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Li評 Nam V﹏ vui m鮪g r琲 l�. B筺 quay l筰 i tho筰 v韎 Li評 V﹏ Nam   nh薾 ph莕 thng")

	end
end

function xiepai_lel2()
	if (nt_getTask(1058) == 30) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 1, 1))
		nt_setTask(1058, 40)
		Uworld1013 = nt_getTask(1013)
		nt_setTask(1013, 0)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 甶 Th祅h Й t譵 t猲 gian t� Tr﹗ Trng C鰑.")
		Msg2Player("B筺 nh薾 頲 2.000 甶觤 kinh nghi謒")
		AddOwnExp(2000)
	elseif (nt_getTask(1058) == 50) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 2, 1))
		nt_setTask(1058, 60)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Tr﹗ Trng C鰑 b秓 b筺 c莔 v礽 quy觧 m藅 t辌h 甶 Dng Ch﹗ t譵 Th萴 Phong.")
		Msg2Player("B筺 nh薾 頲 2.000 甶觤 kinh nghi謒")
		AddOwnExp(2000)
	elseif (nt_getTask(1058) == 100) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 3, 1))
		nt_setTask(1058, 1000)
		Msg2Player("Nhi謒 v� ho祅 th祅h! B筺 quay g苝 Th竎 B箃  nh薾 ph莕 thng.")
		Msg2Player("B筺 nh薾 頲 5.000 甶觤 kinh nghi謒")
		AddOwnExp(5000)
	end
end
function xiepai_lel3()
	if (nt_getTask(1059) == 30) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 4, 1))
		nt_setTask(1059, 40) 
		Uworld1013 = nt_getTask(1013)
		nt_setTask(1013, 0)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Th竎 B箃  b秓 b筺 甶 Tng Dng t譵 L璾 U萵 C�, t猲 gian t� c馻 Чi Kim 產ng l萵 tr鑞")
		Msg2Player("B筺 nh薾 頲 5.000 甶觤 kinh nghi謒")
		AddOwnExp(5000)
	elseif (nt_getTask(1059) == 50) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 5, 1))
		nt_setTask(1059, 60)
		Msg2Player("L璾 U萵 C� cho bi誸 Thi Nghi Sinh th藅 s� c� bi觰 hi謓 ph秐 qu鑓, b筺 l藀 t鴆 quay l筰 b竜 cho Th竎 B箃 Ho礽 Xuy猲.")
		Msg2Player("B筺 nh薾 頲 5.000 甶觤 kinh nghi謒")
		AddOwnExp(5000)
	elseif (nt_getTask(1059) == 120) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 6, 1))
		nt_setTask(1059, 1000)
		Msg2Player("Nhi謒 v� ho祅 th祅h! B筺 quay g苝 Th竎 B箃  nh薾 ph莕 thng.")
		Msg2Player("B筺 nh薾 頲 12.000 甶觤 kinh nghi謒")
		AddOwnExp(12000)
	end
end

function xiepai_lel4()
if (nt_getTask(1060) == 50) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 7, 1))
		nt_setTask(1060, 60)
		Uworld1013 = nt_getTask(1013)
		nt_setTask(1013, 0)
		Msg2Player("Nhi謒 v� ho祅 th祅h! L璾 U萵 C�  b秓 b筺 tr� v� b竜 tng t薾 v韎 Th竎 B箃  v� t譶h h譶h thi u.")
		Msg2Player("B筺 nh薾 頲 10.000 甶觤 kinh nghi謒")
		AddOwnExp(10000)
	elseif (nt_getTask(1060) == 90) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 8, 1))
		nt_setTask(1060, 100)
		Uworld1013 = nt_getTask(1013)
		nt_setTask(1013, 0)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Th竎 B箃  b秓 b筺 甶 Tng Dng 竚 s竧 i ph� h� Nguy詎 Minh Vi詎.")
		Msg2Player("B筺 nh薾 頲 10.000 甶觤 kinh nghi謒")
		AddOwnExp(10000)
	elseif (nt_getTask(1060) == 120) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 9, 1))
		nt_setTask(1060, 1000)
		Msg2Player("Nhi謒 v� ho祅 th祅h! B筺 quay g苝 Th竎 B箃  nh薾 ph莕 thng.")
		Msg2Player("B筺 nh薾 頲 26.000 甶觤 kinh nghi謒")
		AddOwnExp(26000)
	end
end

function xiepai_lel5()
	if (nt_getTask(1061) == 30) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 10, 1))
		nt_setTask(1061, 40)
		Uworld1013 = nt_getTask(1013)
		nt_setTask(1013, 0)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Th竎 B箃  h誸 m鵦 t竛 thng b筺 v� cho bi誸 Ho祅g thng chu萵 b� tri謚 ki課 b筺. B筺 c莕 chu萵 b� v礽 ki課 th鴆 v� qu﹏ s�!")
		Msg2Player("B筺 nh薾 頲 20.000 甶觤 kinh nghi謒")
		AddOwnExp(20000)
	elseif (nt_getTask(1061) == 70) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 11, 1))
		nt_setTask(1061, 80)
		Msg2Player("Nhi謒 v� ho祅 th祅h! Th竎 B箃  r蕋 vui nh璶g h譶h nh� y 產ng c� v蕁  g� kh� n鉯.")
		Msg2Player("B筺 nh薾 頲 20.000 甶觤 kinh nghi謒")
		AddOwnExp(20000)
	elseif (nt_getTask(1061) == 120) then
		Uworld194 = nt_getTask(194)
		nt_setTask(194, SetBit(Uworld194, 12, 1))
		nt_setTask(1061, 1000)
		Msg2Player("Nhi謒 v� ho祅 th祅h! B筺 quay g苝 Th竎 B箃  nh薾 ph莕 thng.")

	end
end