--Nhiem vu hai thuoc, co gai hai thuoc
--西南北区 成都府 采药少女对话（“采集药材”任务）
-- Update: Xiao_Yang(2004-04-26)（增加“采集药材任务”）
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\repute_head.lua")

function main(sel)

	--dofile("script/西南北区/成都/成都/职能npc/西南北区-成都府--采药少女对话.lua")

	Uworld132 = GetTask(132)
	Uworld133 = GetByte(GetTask(133),1)

	if (Uworld132 == 10) and (HaveItem(112) == 1) and (HaveItem(113) ==1) and (HaveItem(114) ==1) and (HaveItem(115) ==1) and (HaveItem(116) ==1) then
		Talk(2,"Uworld132_finish","Ti觰 c� nng! Nh鱪g th� c� c莕 u � ch� ta","Th藅 �! C秏 琻 ngi nhi襲 l緈!")
	elseif (GetLevel() >= 20) and (GetRepute() >= 2) and ((Uworld132 < 10) or ((GetGameTime() > Uworld132) and (Uworld132 > 255))) then		-- “采集药材”任务允许启动
		if (Uworld133 >= 5) then
			SetTask(133,0)
		end
		Talk(5,"Uworld132_get","莥...","Ti觰 c� nng c� vi謈 g� lo l緉g v藋?","Hi謚 thu鑓 c馻 ta g莕 y thi誹 v礽 v� thu鑓 ch� y誹. To祅 b� s� thu鑓  � Thng Ch﹗ u b� c竎 玭g ch� l韓 mua h誸 r錳,danh d� c馻 玭g ch�  b� m蕋 s筩h, n誹 kh玭g c� c竎h  ch� nh鱪g dc li謚 n祔 th� kh玭g bi誸 ph秈 l祄 sao n鱝.","Chuy謓 bu玭 b竛 ta kh玭g hi觰 nh璶g c騨g thng n ti謒 c馻 mu閕 mua thu鑓, c� kh� kh╪ g� c� n鉯 ra bi誸 u ta c� th� gi髉 mu閕.","Th藅 sao? Ngi bi誸 � u c� th� t譵 頲 5 lo筰: T� M鬰 T骳, мa C萴 Th秓, Thi課 Th秓, H� Nh� th秓, Linh Chi kh玭g?","Ha ha,! May qu�! Nh鱪g lo筰 thu鑓 n祔 ta  t鮪g th蕐 qua trong Dc Vng C鑓")
	else
		i = random(0,2)
		if (i == 0) then
			Talk(1,"","V飊g Th祅h Й c� r蕋 nhi襲 n骾,g莕 th� c� n骾 Nga Mi,n骾 Thanh Th祅h, xa m閠 ch髏 th� c� n骾 T� C� Nng, n骾 D﹏ S琻, n骾 nhi襲 th秓 dc t� nhi猲 s� nhi襲, c bi謙 l� Xuy猲 B鑙, Thi猲 Ma, Tr飊g Th秓")
		elseif (i == 1) then
			Talk(1,"","Th秓 dc mu閕 h竔 v�, m閠 輙 t� m譶h d飊g, m閠 輙 b竛 cho c竎 ti謒 thu鑓,  l蕐 ti襫 nu玦 s鑞g m譶h v� b� n閕.")
		else
			Talk(1,"","Cha m� mu閕 m蕋 s韒, ch� c遪 m譶h ta v� b� n閕 s鑞g nng t鵤 v祇 nhau, b� n閕 l� ngi th﹏ duy nh蕋 c馻 mu閕")
		end
	end
end;

function Uworld132_get()
	Say("V藋 ngi c� th� gi髉 ta h竔 m閠 輙 mang v� y kh玭g?",2,"Ch� l� chuy謓 nh�, c� nng h穣 i 1 l骳. /Uworld132_yes","�  qu竔 v藅 r蕋 nhi襲, t筰 h� t礽 k衜 l鵦 th蕄, t鑤 h琻 l� n猲 t藀 luy謓 v� c玭g trc v藋. /Uworld132_no")
end

function Uworld132_yes()
	SetTask(132,10)
	Msg2Player("Ngi nh� l�  th蕐 頲 5 v� dc li謚 T� M鬰 T骳, мa C萴 Th秓, Thi課 Th秓, H� Nh� Th秓, Linh Chi � Dc Vng C鑓, h鴄 s� t譵 gi髉 c� g竔 h竔 thu鑓. ")
end

function Uworld132_no()
end

function Uworld132_finish()
	
	local nResult = 0;
	
	-- 检查物品是还存在，如果非 1 则直接 return
	for i=112, 116 do
		nResult = HaveItem(i);
		if nResult~=1 then
			return
		end;
		DelItem(i);
	end;
	
	SetTask(132,GetGameTime()+3600)
	
	Uworld133 = GetByte(GetTask(133),1)
	Uworld133_2 = GetByte(GetTask(133),2)
	Cur_date = tonumber(date("%d"))
	if (Uworld133_2 == Cur_date) then
		Uworld133 = Uworld133 + 1
	else
		Uworld133 = 1
	end
	AddRepute(Uworld133)
	Msg2SubWorld("Чi hi謕 <color=green>"..GetName().."<color> ra tay gi髉  C� G竔 H竔 Thu鑓 t 頲 "..Uworld133.." 甶觤 danh v鋘g v� ph莕 thng h蕄 d蒼")
	if (Uworld133 >= 5)then
		SetTask(133,0)
		AddRepute(10)
		Msg2SubWorld("Чi hi謕 <color=green>"..GetName().."<color>  nhi襲 l莕 ra tay gi髉  C� G竔 H竔 Thu鑓, 頲 th猰 10 甶觤 danh v鋘g n鱝! ")
		--tbAwardTemplet:GiveAwardByList({nExp_tl = 45000000}, "Ph莕 thng kinh nghi謒 khi ho祅 th祅h nhi謒 v� D� T萿 h籲g ng祔")
		--local tbItem = {szName = "H箃 gi鑞g hoa h錸g",tbProp={6,1,30156,1,0,0},nCount=5}
		--tbAwardTemplet:GiveAwardByList(tbItem, "Ph莕 thng 5 hat giong HH ho祅 th祅h nhi謒 v� D� T萿 40 h籲g ng祔");
	else
		Uworld133 = SetByte(Uworld133,2,Cur_date)
		SetTask(133,Uworld133)
	end
end
