-- 中立支线任务脚本
-- by xiaoyang(2005\1\11)

Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\branch\\branch_head.lua")
Include("\\script\\task\\newtask\\branch\\branch_prize.lua")
Include("\\script\\task\\newtask\\branch\\branch_problem.lua")

----------------------------------------------------------江一萧--------------------------------------------------------------------------
function branch_jiangyixiao()
	Uworld1012 = nt_getTask(1012)
	Uworld1054 = nt_getTask(1054)
	local name = GetName()
	if (( Uworld1054 == 20) or ( Uworld1054 == 30 )) and ( Uworld1012 == 20 ) then
		if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
			nt_setTask(1054,30)
			Describe(name.."<#>:  Giang ti猲 sinh, Li評 Nam V﹏ b秓 ta n t譵 玭g.<enter>"
			..DescLink_JiangYiXiao.."<#>:  L穙 Li評 �? g 蕐 b秓 ngi n y l祄 g�?.<enter>"
			..name.."<#>:  G莕 y nghe n鉯 B秓 kh� xu蕋 hi謓 t筰 Dng Ch﹗.<enter>�! Th� ra l� v� chuy謓 n祔.<enter>"
			..name.."<#>:  Trc khi t筰 h� n,  gi髉 玭g qu衪 s筩h l� Nh輒.<enter> Giang Nh蕋 Ti猽: V﹜ �? Зy ch綾 l� � c馻 L穙 Li評. Ta c� quen L筩 Thanh Thu th� sinh, y t鮪g l� nh� b譶h ki誱 n鎖 ti課g. Ch� v� m閠 l莕 ngo礽 � mu鑞  ph� c竛h tay, ngi h穣 n t譵 玭g.<enter> "
			..name.."<#>: V﹜ c竚 琻 玭g.<enter>Giang Nh蕋 Ti猽: ng kh竎h s竜, thay ta h醝 th╩ l穙 Li評.<enter>",
			1,"K誸 th骳 i tho筰/branch_jiangyixiao1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	else
		Describe(DescLink_JiangYiXiao.."<#>:  Dng Ch﹗ d� ch辵 h琻 T莕 L╪g, nh璶g tr竎h nhi謒 tr猲 vai v蒼  n苙g.",1,"K誸 th骳 i tho筰/no")
	end
end
---------------------------------------------------------乐清秋-----------------------------------------------------------------------------
function branch_leqingqiu()
	Uworld1012 = nt_getTask(1012)
	Uworld1054 = nt_getTask(1054)
	local name = GetName()
	if ( Uworld1054 == 40) or ( Uworld1054 == 50 ) then
		if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
			nt_setTask(1054,50)
			Describe(name.."<#>:  L筩 ti猲 sinh, nghe n鉯 玭g bi誸 b譶h ki誱, T筰 h� 頲 Giang ch� s� gi韎 thi謚 n.<enter>"
			..DescLink_LeQingQiu.."<#>: �, chuy謓 c馻 Giang ch� s� c騨g l� chuy謓 c馻 L筩 m�, ch� ti誧 hi謓 ta kh玭g c� t﹎ tr筺g b譶h ki誱.<enter>"
			..name.."<#>:  Ti猲 sinh c� chuy謓 g� c� n鉯 ch╪g?<enter>L筩 Thanh Thu: Ai da! Ngi  t祅 ph�, c遪 c� chuy謓 g�  n鉯......<enter>"
			..name.."<#>:  Ti猲 sinh ngi n鉯 v藋 l� c� � g�?<enter> Ta thi誹 B秓 k� s遪g b筩 m閠 m鉵 ti襫 l韓,  30 n╩ v蒼 ch璦 tr� xong th� l祄 sao m� n鉯 v� ki誱 o n鱝 ch�.<enter>"
			..name.."<#>:  Chuy謓 n祔 d� th玦, ta gi髉 玭g gi秈 quy誸.<enter>",
			1,"K誸 th骳 i tho筰/branch_leqingqiu1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	elseif ( Uworld1054 == 110 ) or ( Uworld1054 == 120 ) then
		if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
			nt_setTask(1054,120)
			Describe(name.."<#>:  L筩 ti猲 sinh, m鉵 s� s遪g b筩 c馻 玭g ta  gi秈 quy誸 xong.<enter>"
			..DescLink_LeQingQiu.."<#>:  Ta bi誸 r錳, th藅 kh玭g ng�, ngi tr� h琻 ta nhi襲 v藋 m� d騨g c秏 b蕋 khu蕋. L筩 m� coi nh�  u鎛g ph� c� cu閏 i.<enter>"
			..name.."<#>:  L筩 ti猲 sinh ng n鉯 nh� th�, 玭g l� ngi r蕋 ki猲 cng, n誹 kh玭g Giang ti猲 sinh  kh玭g l祄 b筺 v韎 玭g.<enter>B籲g h鱱......T鑤! Ngi 甧m ki誱 n ta s� b譶h ki誱 cho.<enter>"
			..name.."<#>:  C竚 琻!.<enter>L筩 Thanh Thu: H穣 ra ngo礽 th祅h 畂箃 l蕐 b秓 ki誱 c馻 (Nh﹏ v藅 V� l﹎) .<enter>",
			1,"K誸 th骳 i tho筰/branch_leqingqiu2")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	elseif ( Uworld1054 == 140 ) or ( Uworld1054 == 150 ) then
		if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
			nt_setTask(1054,150)
			Describe(name.."<#>:  L筩 ti猲 sinh, b秓 ki誱 y.<enter>"
			..DescLink_LeQingQiu.."<#>:  Thanh ki誱 n祔, thanh ki誱 n祔.<enter>"
			..name.."<#>:  Thanh ki誱 n祔 th� n祇?<enter>"
			..name.."<#>:  Ph� r錳? <enter>�!<enter>"
			..name.."<#>:  V藋, v藋......<enter>Ngi kh玭g c莕 ti誧, v韎 s� anh d騨g c馻 ngi mai n祔 nh蕋 nh s� l祄 n猲 chuy謓 l韓.<enter>"
			..name.."<#>:  Th藅 ng ti誧 m閠 thanh B秓 ki誱.<enter>L遪g d騨g c秏 m韎 l� v� kh� quan tr鋘g nh蕋!<enter>"
			..name.."<#>:  с l� c竔 g�?<enter>N緈 m! N緈 m l� v� kh� l頸 h筰 nh蕋 m� ngi c�, h穣 d飊g n� 甶 d裵 h誸 chuy謓 b蕋 b譶h c馻 th� gian.<enter>"
			..name.."<#>:......C竚 琻 玭g, ta hi觰 r錳.<enter>",
			1,"K誸 th骳 i tho筰/branch_leqingqiu3")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	else
		Describe(DescLink_LeQingQiu.."<#>:  C� ngi su鑤 i ch� bi誸 ╪ b竚 v祇 s� b� th� c馻 ngi kh竎!",1,"K誸 th骳 i tho筰/no")
	end
end
-----------------------------------------------------------赌棍--------------------------------------------------------------------------
function branch_dugun()
	Uworld1012 = nt_getTask(1012)
	Uworld1054 = nt_getTask(1054)
	local name = GetName()
	if ( Uworld1054 == 60) or ( Uworld1054 == 70 ) then
		if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
			nt_setTask(1054,70)
			Describe(name.."<#>:  A, ngi n r錳.<enter>"
			..DescLink_DuGun.."<#>:  N鉯 ai v藋?<enter>"
			..name.."<#>:  Ch輓h l� ngi! Qua y.<enter> H�! Ngi ch竛 s鑞g r錳 �? <enter>"
			..name.."<#>:  ng a! L筩 Thanh Thu n� ngi bao nhi猽 ti襫? <enter>Ngi c� ti襫 tr� kh玭g m� h醝?<enter>"
			..name.."<#>:  Chuy謓 nh�! Ngo礽 tr� ti襫 c遪 c竎h n祇 kh竎 kh玭g.<enter> C遪! Nh璶g ngi kh玭g l祄 n鎖 u.<enter>"
			..name.."<#>:  C� g� c� n鉯 ng 髉 髉 m� m�.<enter> Л頲! Ra ngo礽 th祅h l蕐 m筺g L� Trng Thi猲, m鉵 n� c馻 h� L筩 kh玭g ph秈 tr�.<enter>"
			..name.."<#>: Л頲.<enter>",
			1,"K誸 th骳 i tho筰/branch_dugun1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	elseif ( Uworld1054 == 90 ) or ( Uworld1054 == 100 ) then
		if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
			nt_setTask(1054,100)
			Describe(name.."<#>:  Ngi ta  ti猽 di謙 xong.<enter>"
			..DescLink_DuGun.."<#>:  Ngi.....th藅 s�  l蕐 m筺g L� Trng Thi猲?<enter>"
			..name.."<#>:  Kh玭g tin �? H穣 n Nha m玭 xem th�.<enter> Чi hi謕! M鉵 n� c馻 h� L筩  頲 x鉧.<enter>",
			1,"K誸 th骳 i tho筰/branch_dugun2")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	else
		Describe(DescLink_DuGun.."<#>:  Thi誹 n� tr� ti襫, gi誸 ngi n m筺g.",1,"K誸 th骳 i tho筰/no")
	end
end		
---------------------------------------------------双鹰镖局主人------------------------------------------------------
function branch_shuangying()
	Uworld1012 = nt_getTask(1012)
	Uworld1055 = nt_getTask(1055)
	local name = GetName()
	if ( Uworld1055 == 20) or ( Uworld1055 == 30 ) then
		if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
			nt_setTask(1055,30)
			Describe(name.."<#>:  Ch祇 玭g! Tal� ngi c馻 Nam V﹏ ph竔 n!.<enter>"
			..DescLink_BiaoJuZhuRen.."<#>:  Li評 S� ph� ph竔 ngi n?! B籲g h鱱 xin m阨 ng錳.<enter>"
			..name.."<#>:  M芻 d� ta ra giang h� ch璦 l﹗, nh璶g danh ti課g Song g ti猽 c鬰 nh� s蕀 n� b猲 tai, l莕 n祔 t筰 sao l筰 th秏 th�?<enter> So v韎 Ti猽 c鬰 kh竎 ch髇g ta  may m緉 輙 t鎛 th蕋 h琻. цi th� qu� ra tay c 竎, m蕐 mi n╩ qua ch璦 g苝 Th� ph� n祇 m筺h th� nh� v藋.<enter>"
			..name.."<#>:  C� g� kh� n鉯 v藋?<enter> Ti猽 c鬰 ta c� m閠 ngi may m緉 tho竧 kh醝, y t猲 A Ng璾, 產ng � trong th祅h, ngi h穣 n t譵 h緉.<enter>"
			..name.."<#>:  Л頲.<enter>Mong ngi s韒 t譵 ra t猲 kh鑞 , ta thay m苩 30 ti猽 c鬰 c竚 琻 ngi.<enter>",
			1,"K誸 th骳 i tho筰/branch_shuangying1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	else
		Describe(DescLink_BiaoJuZhuRen.."<#>:  V薾 ti猽 nhi襲 n╩, h玬 nay coi nh� xong r錳, s韒 bi誸 s� c� ng祔 n祔.",1,"K誸 th骳 i tho筰/no")
	end
end		
-----------------------------------------------------阿牛------------------------------------------------------------------------------
function branch_aniu()
	Uworld1012 = nt_getTask(1012)
	Uworld1055 = nt_getTask(1055)
	local name = GetName()
	if ( Uworld1055 == 40) or ( Uworld1055 == 50 ) then
		if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
			nt_setTask(1055,50)
			Describe(name.."<#>:  A Ng璾, Ch� nh﹏ Ti猽 c鬰 b秓 ta n t譵 huynh, h醝 th╩ tin t鴆 ti猽 xa b� cp.<enter>"
			..DescLink_ANiu.."<#>:  Ngi l� tr� th� m� c鬰 ch� t譵 頲 �?<enter>"	
			..name.."<#>:  ng! <enter>B籲g h鱱, ngi h穣 v� 甶! C鬰 ch�  t譵 頲 3 v� cao th�, nh鱪g ngi n祔 trong qu� tr譶h 甶襲 tra tung t輈h  m蕋 t輈h m閠 c竎h b� 萵<enter>"
			..name.."<#>:  Ta  nh薾 l阨 th� kh玭g bao gi� r髏 lui.<enter>Ngi khi課 ta c秏 th蕐 h﹎ m�! Hy v鋘g ngi s� l� ngi ngo筰 l�.<enter>"
			..name.."<#>:  Ta s� ch鴑g minh cho huynh th蕐 b秐 l躰h c馻 ta!<enter> T鑤 l緈! ng n鉯 su玭g nh�!<enter>"
			..name.."<#>:  Huynh kh玭g tin th� ta 甶 y!<enter>B籲g h鱱! Khoan 甶 ! Ta c� chuy謓 mu鑞 n鉯.<enter>"
			..name.."<#>:  Chuy謓 g�?<enter>Kh玦 gi竝 n祔 t苙g cho ngi! Mong l� c鬰 ch�  kh玭g nh譶 l莔 ngi!<enter>"
			..name.."<#>:   t�!<enter>",
			1,"L蕐 頲 竜 gi竝 b筺 h穣 ki觤 tra t� m�./branch_aniu1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	else
		Describe(DescLink_ANiu.."<#>:  Цm ngi  th﹏ ph竝 nh� t猲 b緉! Ngi ph秈 h誸 s鴆 c萵 th薾!",1,"K誸 th骳 i tho筰/no")
	end
end

----------------------------------------------------------冷枪镖局主人-------------------------------------------------------------------
function branch_lengqiang()
	Uworld1012 = nt_getTask(1012)
	Uworld1055 = nt_getTask(1055)
	local name = GetName()
	if ( Uworld1055 == 60) or ( Uworld1055 == 70 ) then
		if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
			nt_setTask(1055,70)
			Describe(name.."<#>:  Ho綾 c鬰 ch�.<enter>"
			..DescLink_BiaoJuZhuRen.."<#>:  Cho d� C竎 h� l� ai, l穙 phu  r鯽 tay g竎 ki誱, kh玭g m祅g chuy謓 giang h� n鱝.<enter>"
			..name.."<#>:  C� v飊g T﹜ B綾 xu蕋 hi謓 o t芻 cp ti猽 xa, ph筸 nhi襲 huy誸 竛. Ch糿g l� 玭g ch� bi誸 nh譶 th玦 �? <enter> Ti觰 t�! Ngi bi誸 c竔 g�? T礽 ngh� bao nhi猽 m� h鑞g h竎h th�? <enter>"
			..name.."<#>:  Qu� C玭g T� kh醗 kh玭g?<enter>Kh玭g xong r錳! Чi phu n鉯 n誹 kh玭g c� 50 b� 鉩 kh� � Th鬰 Cng s琻 th� ta s� ph秈 g苝 c秐h ngi u b筩 ti詎 ngi u xanh.<enter>"
			..name.."<#>:  V藋 頲!<enter>",
			1,"K誸 th骳 i tho筰/branch_lengqiang1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	elseif (( Uworld1055 == 80) or ( Uworld1055 == 90 )) and ( Uworld1012 == 20 ) then
		if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
			nt_setTask(1055,90)
			Describe(name.."<#>:  Ho綾 c鬰 ch�, 鉩 kh� ta  甧m v� r錳.<enter>"
			..DescLink_BiaoJuZhuRen.."<#>:  B籲g h鱱, ch髇g ta giang th駓 tng ph飊g, ngi h� t蕋 ph秈 nh� th�.<enter>"
			..name.."<#>:  Gi髉 nhau l� chuy謓 thng t譶h <enter>Л頲 r錳! Lai l辌h t猲 n祔 ta  x竎 nh r�. B鋘 h� l� H� Hoa Чo, thng xu蕋 hi謓 g莕 C玭 L玭 ph竔. Nh璶g xin C竎 h� h穣 tha cho h� con 阯g s鑞g. Ta t苙g ngi m閠 vi猲 B秓 th筩h t� l�  t� ch髏 l遪g th祅h.<enter>",
			1,"K誸 th骳 i tho筰/branch_lengqiang2")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	elseif ( Uworld1055 == 110 ) or ( Uworld1055 == 120 ) then
		if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
			nt_setTask(1055,120)
			Describe(name.."<#>:  Ho綾 c鬰 ch�, ngh� t譶h 玭g ta kh玭g gi誸 b鋘 h�. Nh璶g ta mu鑞 h醝 玭g t筰 sao l筰 tha cho b鋘 h�?<enter>"
			..DescLink_BiaoJuZhuRen.."<#>:  Th藅 ra c竎 c� 蕐 u l� con nh� gia gi竜, Thanh Minh n╩  khi ra ngo礽 d筼 b� t猲 Ti猽 S� l祄 nh鬰. Sau  c竎 c� 頲 D� nh﹏ gi髉  h鋍 頲 v� c玭g, b鋘 h� m韎 b総 u cp ti猽. Th藅 s� b秐 t輓h c馻 h� kh玭g x蕌.<enter>"
			..name.."<#>:  Th� ra l� th�, ai c騨g c� n鏸 kh� ri猲g, ch� mong qua l莕 n祔 b鋘 h� s� r髏 頲 kinh nghi謒. N誹 kh玭g s� c� ng祔 b� ngi kh竎 gi誸 ch誸.<enter>Ch� nh﹏ L穘h Thng Ti猽 c鬰: Ch� mong nh� th�.<enter>",
			1,"K誸 th骳 i tho筰/branch_lengqiang3")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	else
		Describe(DescLink_BiaoJuZhuRen.."<#>:  Ngi trong giang h� s韒 t cho ngo筰 hi謚 Ho綾 L穘h Thng, nh璶g t� khi l藀 gia th蕋, ta  kh玭g c遪 nh� x璦 n鱝!",1,"K誸 th骳 i tho筰/no")
	end
end
---------------------------------------------------龙追舞-----------------------------------------------------------------------------
function branch_longzhuiwu()
	Uworld1057 = nt_getTask(1057)
	local name = GetName()
	if ( Uworld1057 == 80) then
		if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then
			Describe(name.."<#>:  Long Truy V�, ngi bi誸 Li評 Nam V﹏ kh玭g.<enter>"
			..DescLink_LongZhuiWu.."<#>:  H�! Sao l筰 kh玭g bi誸! Mi n╩ trc, ch輓h ta  khi課 h緉 tuy謙 t� tuy謙 t玭.<enter>"
			..name.."<#>:  M鉵 n� n祔 h玬 nay ngi s� ph秈 tr�.<enter> Ta � ngo礽 th祅h ch� ngi.<enter>",
			1,"K誸 th骳 i tho筰/branch_longzhuiwu1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	elseif ( Uworld1057 >= 90 ) then
		Talk(1,"","ng gi誸 ta! Ta ch� l�   c馻 Long Truy V�, gi� d筺g h緉 g箃 ngi m� th玦.")
	else
		Talk(1,"","ng c� su鑤 ng祔 phi襫 ta.")
	end
end


function branch_jiangyixiao1()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function branch_leqingqiu1()
	AddOwnExp(5000)
	nt_setTask(1054,60)
	Msg2Player("B筺 h鴄 gi髉 L筩 Thanh Thu gi秈 quy誸 m鉵 n� c馻 anh ta.")
end

function branch_leqingqiu2()
	Uworld1012 = nt_getTask(1012)
	AddOwnExp(5000)
	nt_setTask(1012,0)
	nt_setTask(1054,130)
	Msg2Player("L筩 Thanh Thu n鉯 ki誱 產ng b� (Nh﹏ v藅 V� l﹎) � ngo礽 th祅h gi�, b秓 b筺 n猲 nhanh tay 畂箃 l蕐!")
end

function branch_leqingqiu3()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_zl_level20();
end

function branch_dugun1()
	AddOwnExp(5000)
	nt_setTask(1054,80)
	Msg2Player("B秓 k� s遪g b筩 b秓 b筺 ch� c莕 ti猽 di謙 Bang ch�  L� Trng Thi猲 s� x鉧 kho秐 n� c馻 L筩 Thanh Thu.")
end

function branch_dugun2()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function branch_shuangying1()
	AddOwnExp(15000)
	nt_setTask(1055,40)
	Msg2Player("Ch� nh﹏ Song g Ti猽 c鬰 b秓 b筺 甶 t譵 A Ng璾, 玭g hy v鋘g b筺 c� th� gi秈 quy誸 kh� kh╪ n祔.")
end

function branch_aniu1()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function branch_lengqiang1()	
	Uworld1012 = nt_getTask(1012)
	AddOwnExp(15000)
	nt_setTask(1012,10)
	nt_setTask(1055,80)
	AddPlayerEvent(3) 
	Msg2Player("Ch� nh﹏ L穘h Thng Ti猽 c鬰 b秓 b筺 甶 Th鬰 Cng S琻 gi誸 50 con kh� x竚, l蕐 鉩 kh� v� tr� b謓h cho con 玭g ta.")
end

function branch_lengqiang2()	
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function branch_lengqiang3()	
	AddOwnExp(15000)
	nt_setTask(1055,130)
	Msg2Player("Ch� nh﹏ L穘h Thng Ti猽 c鬰 cu鑙 c飊g  r� lai l辌h th藅 s� c馻 H� Hoa Чo. B筺 c� th� quay v� g苝 Li評 Nam V﹏ ph鬰 m謓h.")
end

function branch_longzhuiwu1()
	Msg2Player("Long Truy V� khinh thng b筺, n鉯 r籲g h緉 i b筺 ngo礽 th祅h.")
end

function no()
end
