--description: 附湖区 拜戈县 药店迪板对话（天蒗帮40级任务、孝手任务小渔爹爹的病）
--author: yuanlan	
--date: 2003/4/26
-- Update: Dan_Deng(2003-08-10)
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\lib\\awardtemplet.lua");	
function main(sel)
	UTask_tw = GetTask(3)
	UTask_world18 = GetTask(46)
	if (UTask_tw == 40*256+20) then						-- 天蒗40级任务
		Talk(5, "L40_tw_talk2", "ht1", "ht2", "ht3<color=Red>4<color> 5<color=Red>6<color>.7", "ht8")
	elseif(UTask_world18 == 1) then				-- 孝手村小渔任务
		Talk(1,"","H�?B� c馻 Ti觰 Ng� b謓h �? Ngi n ch薽 r錳! Ta v鮝 b竛 vi猲 T� B� ho祅 cu鑙 c飊g cho  t� Thi猲 Vng. Hay l� ngi h醝 th� 玭g ta xem. ")
		Msg2Player("Ch� dc 甶誱 cho bi誸: T� B� Ho祅  b竛 h誸. B筺 h穣 甶 h醝 th�  t� Thi猲 Vng Bang. ")
		AddNote("Ch� dc 甶誱 cho bi誸: T� B� Ho祅  b竛 h誸. B筺 h穣 甶 h醝 th�  t� Thi猲 Vng Bang. ")
	elseif (UTask_tw == 40*256+50) then
		Say("ht12<color=Red>13�<color> 14<olor=Red>115<color> 16<color=Red>17<color>, 18<color=Red>19<color>20", 2, "21/yes", "22/no")
	else							-- 非任务状态
		--Say("B鎛 ti謒 u l� th莕 dc! C� b謓h s� kh醝 b謓h, kh玭g b謓h s� kh醗, gi� c� ph秈 ch╪g. Mua m閠 輙 ch�? ", 4, "Giao d辌h/yes", "Ta n nh薾 nhi謒 v� s� nh藀/yboss","Mua M竨 Nhanh/muamauquanhanh","Kh玭g giao d辌h/no");
		Say("B鎛 ti謒 u l� th莕 dc! C� b謓h s� kh醝 b謓h, kh玭g b謓h s� kh醗, gi� c� ph秈 ch╪g. Mua m閠 輙 ch�? ", 3, "Giao d辌h/yes", "Mua T骾 M竨 T﹏ Th� (100 V筺)/tuimautanthu","Mua M竨 Nhanh (2000 lng -1 b譶h)/muamauquanhanh","Kh玭g giao d辌h/no");
	end
end;

function L40_tw_talk2()
	Talk(2,"","ht23<color=Red>24<color> 26<color=Red>27<color>28<color=Red>29<color>,30<color=Red>31<color>32", "33")
	SetTask(3, 40*256+50)								-- 天蒗40级任务
	AddNote("ht34")
	Msg2Player("ht35.")
end;

function yes()
	Sale(12);  			--弹出交易框
end;

function no()
end;
function tuimautanthu()
	if GetCash()>=1000000 then
		Pay(1000000)
		tbAwardTemplet:GiveAwardByList({{szName = "T骾 M竨",tbProp={6,1,4461,1,1},nCount=1},}, "test", 1);
	else
		Say("H祅h trang kh玭g c�  100 V筺")
		return
	end
end
function muamauquanhanh()
	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>Чi hi謕  c� y rng m竨.",0)
	return
	end
	if money>=totalcount*2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� hoa ng鋍 l� ho祅", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount}}, format("Get %s", "Than pham 1"))
	Pay(totalcount*2000)
	else
		Say("Чi hi謕 kh玭g  ng﹏ lng  mua m竨 nhanh.")
		return
	end
end
