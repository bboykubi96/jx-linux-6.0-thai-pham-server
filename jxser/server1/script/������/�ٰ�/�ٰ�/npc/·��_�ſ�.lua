-- 临安 路人NPC 张浚（丐帮50级任务）
-- by：Dan_Deng(2003-07-28)
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	if allbrother_0801_CheckIsDialog(3) == 1 then
		allbrother_0801_FindNpcTaskDialog(3)
		return 0;
	end
	UTask_gb = GetTask(8)
	Uworld75 = GetTask(75)
	U75_sub5 = GetTask(56)
	if (UTask_gb == 50*256+20) and (HaveItem(139) == 0) then		--带着50级任务
		Talk(5,"L50_Step1","Trng i nh﹏! Ch髇g ta l筰 g苝 nhau","L莕 trc may nh?c?qu?bang hi謕 ngh躠 gi髉 ! Kh玭g bi誸 l莕 n祔 t筰 h?c?th?gi髉 頲 g?","Bang ch?ph竔 ta mang b鴆 a  c馻 Trung Nguy猲 giao n cho Ho祅g Thng. Nh璶g kh玭g c?l謓h b礽 n猲 kh玭g th?v祇 頲 Ho祅g cung","V藋 kh玭g lo! ?y ta c?l謓h b礽. Xin c?c莔 l蕐 m?d飊g"," t?Trng i nh﹏!")
	elseif (UTask_gb == 50*256+30) then
		Talk(5,"L50_Step2","Trng i nh﹏! Зy l?l謓h b礽 th玭g h祅h! Xin g鰅 l筰 cho ng礽!","Sao r錳! Х g苝 頲 Ho祅g thng ch璦?","Ho祅g thng th?ch璦 g苝. Nh璶g m?c?g苝 m閠 v?l?T祇 c玭g c玭g, 玭g ta l?ngi th﹏ t輓 c馻 Ho祅g thng. Ta  giao cho 玭g 蕐!","Ai da! Чi s?kh玭g th祅h r錳! Ngi c遪 c?甶襲 ch璦 bi誸, g?T祇 c玭g c玭g n祔 v鑞 c?quan h?m藅 thi誸 v韎 b鋘 Kim qu鑓. Ho祅g thng  kh玭g c遪 tin d飊g 玭g ta n鱝. B﹜ gi?a  l筰 r琲 v祇 tay 玭g ta. E r籲g s?l筰 s緋 c?i h鋋","Th藅 kh玭g ng? Х v祇 n ho祅g cung r錳 v藋 m?l筰 c遪 b?l鮝! Trng i nh﹏ ng lo! Ta s?甶 畂箃 l筰 b鴆 a  !")
	elseif (UTask_gb == 50*256+50) then		--此处不再检测两样物品是否存在，个人觉得不是很有意义，而且也省了不少工作量
		Talk(3,"L50_Step3","Ta  畂箃 l筰 b鴆 a  n祔. L莕 n祔 xin giao l筰 cho Trng i nh﹏! Khi n祇 Ho祅g thng l﹎ tri襲 xin h穣 giao t薾 tay cho Ho祅g Thng","C騨g 頲. L莕 n祔 ta s?v?s?th辬h tr?c馻 tri襲 nh m?h祅h ng","L?ngi T鑞g Qu鑓,c莕 ph秈 nh?v藋! T筰 h?c竜 t? ")
	elseif (UTask_gb >= 50*256+20) and (UTask_gb < 50*256+40) and (HaveItem(139) == 0) then
		AddEventItem(139)
		Msg2Player("L筰 nh薾 頲 l謓h b礽 甶 v祇 Ho祅g cung ")
		Talk(1,"","L謓h b礽 th玭g h祅h b?m蕋 r錳? Kh玭g sao! Ta v蒼 c遪 m閠 c竔. ")
	elseif (Uworld75 == 10) and (U75_sub5 < 10) then		-- 拳倾天下任务中，接取子任务
		if (HaveItem(384) == 1) then
			SetTask(56,10)
			AddNote("Nh薾 nhi謒 v?ti誴 theo: Gi髉 Trng Tu蕁 t譵 5 mi課g Ng﹏ Lng kho竛g ")
			Msg2Player("Nh薾 nhi謒 v� ti誴 theo: Gi髉 Trng Tu蕁 t譵 5 mi課g Ng﹏ Lng kho竛g ")
			Talk(1,"","Ta c騨g kh玭g mu鑞 l祄 kh?ngi. ng l骳 ta c騨g 產ng nh ch?t筼 m閠 chi誧 竜 gi竝 m韎. Ngi h穣 甶 t譵 gi髉 ta 5 mi課g Lng Ng﹏ Kho竛g")
		else
		 	Talk(1,"","дn c?m閠 b鴆 th?t輓 c騨g kh玭g c?ch?l?n鉯 mi謓g.Ta l祄 sao c?th?tin ngi?")
		end
	elseif (Uworld75 == 10) and (U75_sub5 == 10) then		-- 子任务完成判断
		if (GetItemCount(118) >= 5) then
			DelItem(118)
			DelItem(118)
			DelItem(118)
			DelItem(118)
			DelItem(118)
			SetTask(56,20)
			AddNote("T譵 頲 5 mi課g Ng﹏ Lng kho竛g: Х ho祅 th祅h nhi謒 v?")
			Msg2Player("T譵 頲 5 mi課g Ng﹏ Lng kho竛g: Х ho祅 th祅h nhi謒 v?")
			Talk(1,"","Ti觰 b籲g h鱱 l祄 vi謈 th藅 c?n╪g l鵦. Ti襫  s?r閚g m?")
		else
			Talk(1,"","H譶h nh?kho竛g th筩h v蒼 c遪 thi誹! C?l猲! C?l猲!")
		end
	else
Talk(1,"","T� tu蕁  th藅 v蕋 v� c� c� h閕 thi tri觧 tay ch﹏ , nh璶g l� l筰 kh緋 n琲 ch� tr鰑 . ai ") 
	end
end;

function L50_Step1()
	AddEventItem(139)
	AddNote("L筰 nh薾 頲 l謓h b礽 甶 v祇 Ho祅g cung ")
	Msg2Player("L筰 nh薾 頲 l謓h b礽 甶 v祇 Ho祅g cung ")
end

function L50_Step2()
	DelItem(139)
	SetTask(8,50*256+40)
	AddNote("L藀 t鴆 甶 l蕐 l筰 b鴆 a  Trung Nguy猲 ")
	Msg2Player("L藀 t鴆 甶 l蕐 l筰 b鴆 a  Trung Nguy猲 ")
end

function L50_Step3()
	SetTask(8,50*256+60)
	DelItem(199)
	AddNote("Х giao b鴆 a  Trung Nguy猲  cho Trng Tu蕁 r錳! ")
	Msg2Player("Х giao b鴆 a  Trung Nguy猲  cho Trng Tu蕁 r錳! ")
end
