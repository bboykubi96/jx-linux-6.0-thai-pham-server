-- 新任务系统教学任务主要NPC  （\游戏运行资源\script\global\dragonfive.lua）
-- 下一步进行到新手村武师处		 (\游戏运行资源\script\global\各派接引弟子\轻功_武师模版.lua)
-- BY：XIAOYANG（2004-11-29）

Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\branch\\branch_head.lua")
Include("\\script\\task\\newtask\\master\\newtaskprize.lua")
Include("\\script\\task\\newtask\\education_setnpcpos.lua")
Include("\\script\\task\\partner\\master\\partner_mastertask.lua")
---------------------------------龙五对话-------------------------------------

function Uworld1000_word()
do 
Say("T輓h n╪g  頲 ng.",0)
return
 end
	--Say("Lo筺 th� phong v﹏, binh kh雐 t� phng",0)
	-- Say("Lo筺 th� phong v﹏, binh kh雐 t� phng, ta c� v礽 nhi謒 v� ph秈 nh� ngi gi髉",5,"Ta n nh薾 nhi謒 v� S� nh藀/iwantdotask","Ta mu鑞 b� nhi謒 v� s� nh藀/iwantkilltask","Ta n l祄 nhi謒 v� Ch輓h tuy課 c蕄 20 tr� l猲/iwantgetmastertask","Ta n xem gi韎 thi謚 v� nhi謒 v� /iwantseetask","Sau n祔 h穣 n鉯/no")
	Say("Lo筺 th� phong v﹏, binh kh雐 t� phng, ta c� v礽 nhi謒 v� ph秈 nh� ngi gi髉",3,"Ta n l祄 nhi謒 v� Ch輓h tuy課 c蕄 20 tr� l猲/iwantgetmastertask","Ta n xem gi韎 thi謚 v� nhi謒 v� /iwantseetask","Sau n祔 h穣 n鉯/no")
end

function iwantdotask()
	Uworld1000 = nt_getTask(1000)
	Uworld1001 = nt_getTask(1001)
	Uworld1002 = nt_getTask(1002)
	Uworld1003 = nt_getTask(1003)
	Uworld1014 = nt_getTask(1014)
	local name = GetName()
	if ( Uworld1000 == 0 ) and ( GetLevel() <= 1 ) then --等级小于1而且第一次登陆游戏，这里还需修改。
		Say("Ch祇 m鮪g b筺 n v韎 th� gi韎 V� L﹎ Truy襫 K�. B筺 c� mu鑞 t譵 hi觰 ki課 th鴆 s� lc kh玭g? Nh鱪g ki課 th鴆 n祔 c� th� gi髉 b筺  sinh t錸 trong th� gi韎 n祔.",2,"T鑤 qu�! Ta mu鑞 c遪 kh玭g 頲./Uworld1000_goon","Th玦 kh醝! g th� bi誸 c竔 g� /Uworld1000_no")
	elseif ( GetLevel() > 1 ) and ( Uworld1000 == 0 ) then --等级大于1，没有做过教学任务的玩家
		Say("Hoan ngh猲h ngi n th玭,  c� mu鑞 h鋍 v礽 甶襲  t錸 t筰 trong giang h� kh玭g?",2,"H鋍 ch�!/Uworld1000_goon","Th玦 sau n祔 h穣 n鉯./Uworld1000_no")
	elseif ( Uworld1000 == 40 ) or ( Uworld1000 == 50 ) then 
		nt_setTask(1000,50) --环节3start
		Talk (9,"Uworld1000_good2",name.."<#>: Long th� l躰h, Ta  t譵 V� s� h鋍 v� xong.","Nhanh th� �?",name.."<#>: Ta  th╪g c蕄 r錳.","Th� t鑤, nh蕁 F3 m� giao di謓 thu閏 t輓h, th蕐 thanh s竛g s鴆 m筺h, th﹏ ph竝, n閕 c玭g, ngo筰 c玭g.",name.."<#>: Th蕐 r錳.","S鴆 m筺h 秐h hng n s� d鬾g v� kh� v� kh� n╪g c玭g k輈h ngo筰 c玭g. M鏸 l莕 t╪g 5 甶觤 s鴆 m筺h t蕁 c玭g c� b秐 t╪g 1 甶觤?th﹏ ph竝 秐h hng n vi謈 t蕁 c玭g c� b秐 ngo筰 c玭g.m鏸 l莕 t╪g 5 甶觤 th﹏ ph竝 t蕁 c玭g c� b秐 t╪g 1 甶觤. уng th阨 th﹏ ph竝 c騨g 秐h hng n kh� n╪g n� tr竛h c馻 nh﹏ v藅. m鏸 l莕 t╪g 1 甶觤 th﹏ ph竝, Kim M閏 Th駓 H醓 Th� Th� ph﹏ bi謙 t╪g 4 甶觤 sinh l鵦.",name.."<#>: Sao ph鴆 t筽 th�?","Ta  s韒 b秓 ngi nh� nh蕁 F12 xem th� ta g鰅 cho ngi, c� g� kh玭g hi觰 nh蕁 F1 xem C萴 nang.",name.."<#>: �, th� th� ti謓 l頸 h琻.")
	elseif (( Uworld1000 == 60 ) or ( Uworld1000 == 70 )) and ( GetLevel() >= 3 ) then
		nt_setTask(1000,70) --环节4start
		Talk (5,"Uworld1000_high4",name.."<#>: Long th� l躰h, ta t� th蕐 m譶h c� ti課 b�.","Ti課 b�? Ngi ra ngo礽 ch� l� l祄 m錳 cho ngi ta th玦.",name.."<#>:......","Chi課 tranh tri襫 mi猲, hi觤 nguy kh� lng! N誹 g苝 kh� kh╪ h穣 t譵 c竎 thng nh﹏ nh� ch� dc 甶誱, th� r蘮, ch� t筽 h鉧  h鋍 輙 kinh nghi謒.",name.."<#>:......")	
	elseif ( Uworld1000 == 140 ) or (Uworld1000 == 150 ) then
		nt_setTask(1000,150) --环节8start
		Talk (5,"Uworld1000_high8","Th� n祇, h鋍 頲 kh玭g 輙 ph秈 kh玭g.",name.."<#>: C騨g t筸.","B﹜ gi� h穣 甶 u鑞g nc, l猲 <color=red>c蕄 5<color> n t譵 ta, th� c莕 h鋍 c遪 nhi襲 l緈, m鋓 ngi u th� c�.",name.."<#>:  Hi觰 r錳.","Л頲 r錳, b﹜ gi� n誹 kh玭g m謙, c� th� 甶 t譵 V� s� h鋍 khinh c玭g, kh玭g h鋍 c騨g kh玭g sao.")
	elseif (( Uworld1000 == 160 ) or ( Uworld1000 == 170 )) and ( GetLevel() >= 5 ) then
		nt_setTask(1000,170) --环节9start
		Talk (9,"Uworld1000_good3","V� r錳 �? G莕 y m鏸 l骳 tr╪g tr遪 ban m thng c� 竎 lang, ngi ra ngo礽 luy謓 c玭g n猲 c莕 th薾.",name.."<#>: M閠 hai con S鉯 th� c� ng g�?","Ch糿g ng g�? Ngi c� gi醝 th� 甶 gi誸 m閠 ng祅 con v� y.",name.."<#>:? Mu鑞 l祄 kh� ta sao?","H�! N猲 khi猰 t鑞 1 ch髏! Ngi d� d祅g t� m穘 nh� th� sao ra giang h� 頲!",name.."<#>:...... Hi觰 r錳.","Ngi n誹 kh玭g tin c� th� 甶 h醝 ngi kh竎 xem. ",name.."<#>: L祄 sao h醝?","蕁 ph輒 (Enter) (nh� ch鋘 t莕 s� t竛 g蓇) sau  tr鵦 ti誴 nh藀 v祇 l阨 ngi c莕 n鉯 r錳 l筰 nh蕁 (Enter )  g鰅 甶")
	elseif (( Uworld1000 == 200 ) or ( Uworld1000 == 210 )) then
		nt_setTask(1000,210) --环节11start
		Talk (5,"Uworld1000_high10","Th� n祇?",name.."<#>: L� ta sai!","Л頲 r錳! Ngi c� th� l穘h ng�, ch鴑g t� t� ch蕋 kh玭g t�! Ngi c� th� luy謓 t藀 th猰, kh玭g l﹗ sau ta s� cho ngi bi誸 m閠 quy誸 nh quan tr鋘g.",name.."<#>: L� quy誸 nh g�?","ьi <color=red>c蕄 10<color> r錳 h絥g n鉯,  trong th玭 c� v� D� T萿,  玭g ta c� v礽 nhi謒 v� nh� cho ngi,  n誹 ho祅 th祅h kh玭g nh鱪g 頲 甶觤 kinh nghi謒 m� c遪 nh薾 頲 v藅 ph萴 c bi謙.")
	elseif (( Uworld1000 == 220 ) or ( Uworld1000 == 230 )) and ( GetLevel() >= 10 ) then --新手村教育任务结束
		nt_setTask(1000,230) --环节12start
		Talk (7,"Uworld1000_high11","Nhanh th� �? M韎 y th玦  h鋍 m鋓 th� � ta.",name.."<#>: H鋍 xong r錳?","Ch� v閕 m鮪g, ngi ch� m韎  t� c竎h gia nh藀 Th藀 i m玭 ph竔 trong V� l﹎.",name.."<#>: Th藀 i m玭 ph竔 l� g�?","Kh玭g th蕐 е t� c竎 ph竔 trong th玭 sao? K誸 c鬰 T鑞g Kim kh� 畂竛, giang h� hi觤 竎, c竎 m玭 ph竔 u chi猽 m� th猰  t�  t╪g th猰 th� l鵦. Ngi trong giang h� th﹏ b蕋 do k�, con 阯g c馻 ngi t� quy誸 nh l蕐.",name.."<#>: Long......Ng�, 玭g c遪 g� c╪ d苙 g� n鱝 kh玭g?.","Л阯g xa hi觤 tr�, n猲 t� b秓 tr鋘g.  t譵 е t� ti誴 d蒼 Nh藀 m玭 甶. Nh藀 m玭 xong, t譵 npc gi髉  l� c� th� t譵 ta, nh� ph秈 li猲 l筩 v韎 ta, ta c� ch髏 chuy謓? Mu鑞 giao cho ngi. Khi kh玭g r� g� v� nhi謒 v� nh蕁 F12, v� thao t竎 nh蕁 F1.")
	elseif ( Uworld1000 == 260 ) or (Uworld1000 == 270 ) then
		nt_setTask(1000,270) --环节14start(1)
		Talk (3,"Uworld1000_good","Ta nghi猰 kh綾 v韎 ngi v� th蕐 ngi c� t� ch蕋, hy v鋘g s� kh玭g ph� l遪g ta, v� c玭g chia l祄 n閕 c玭g v� ngo筰 c玭g. Thu閏 t輓h c騨gchia l祄 h� n閕 c玭g v� h� ngo筰 c玭g.L骳 ngi luy謓 v� c玭g n猲 xem r�.",name.."<#>: N閕 c玭g v� ngo筰 c玭g kh竎 nhau � u?","Tr猲 v� kh� c� c竎 thu閏 t輓h h� tr� c� th� t╪g th猰 v� c玭g c馻 ngi. N誹 ngi theo n閕 c玭g th� c� n閕 b╪g, n閕 th駓, n閕 c. Sau khi c竎 thu閏 t輓h c馻 v� kh� 頲  k輈h ho箃 th� c� th� t╪g th猰. Ngo筰 b╪g, ngo筰 h醓 kh玭g gi髉 g� ngi. V� ngc l筰!",name.."<#>:  A! Th� ra l� th�.")	
	elseif (( Uworld1000 == 280 ) or ( Uworld1000 == 290) ) and ( GetLevel() >= 20 ) then
		nt_setTask(1000,290) --环节15start
		Talk (5,"Uworld1000_high13","T筰 sao l筰 n, t筰 sao l筰 n?",name.."<#>:......Ng� Gia, l﹗ ng祔 kh玭g g苝, 玭g  gi� nhi襲 r錳.","Kim C萿 m蕐 ng祔 trc 甶 qua y, B� ch� ti謒 t筽 h鉧 b�......",name.."<#>: Ng� Gia!","Th玦 r錳, u鎛g c玭g ta ph� nhi襲 c玭g s鴆, n cu鑙 c飊g c騨g nh kh玭g l筰 Kim C萿, ta  gi� r錳, th� gi韎 n祔 l� c馻 tu鎖 tr� c竎 ngi.")
	elseif ( Uworld1000 >= 10) and ( Uworld1000 <= 440 ) then
		Talk (1,"","Phi猽 b箃 giang h� r蕋 c鵦 kh�, ngi n猲 t� luy謓 t藀 th猰. C� g� kh玭g hi觰 nh蕁<color=red>F12<color>, xem th� nhi謒 v�.")
	elseif ( Uworld1000 == 1000 ) then
		Talk(1,"","Giang h� hi觤 竎, m鋓 chuy謓 ngi n猲 c萵 th薾. Sau n祔 ta kh玭g th� lo cho ngi, h穣 b秓 tr鋘g!")
	end
end

function iwantkilltask()
	Uworld1000 = nt_getTask(1000)
	Uworld1067 = nt_getTask(1067)
	local name = GetName()
	if ( Uworld1000 ~= 0 ) and ( Uworld1000 ~= 1000 ) then
		if ( Uworld1067 ~= 10 ) then
			education_changewuxing()
		end
		nt_setTask(1000,1000)
		Msg2Player("B筺  x鉧 b� nhi謒 v� s� nh藀. Tr猲 giao di謓 nhi謒 v� s� hi觧 th� nh鱪g nhi謒 v�  ho祅 th祅h, n誹 b筺 ch璦 nh薾 nhi謒 v� c� th� n i tho筰 v韎 Long Ng�. Sau n祔 b筺 s� kh玭g th� l祄 nhi謒 v� s� nh藀 n鱝!")
	elseif ( Uworld1000 == 1000 ) then
		Talk(1,"","Ngi  ho祅 th祅h nhi謒 v� S� nh藀, kh玭g c莕 l祄 n鱝.")
	else
		Talk(1,"","Ngi ch璦 nh薾 nhi謒 v� S� nh藀!")
	end
end

function iwantgetmastertask()
	Uworld1000 = nt_getTask(1000)
	Uworld1001 = nt_getTask(1001)
	Uworld1002 = nt_getTask(1002)
	Uworld1003 = nt_getTask(1003)
	Uworld1014 = nt_getTask(1014)
	local name = GetName()
	if ( Uworld1001 == 320 ) then
		Talk(1,"Uworld1000_zhenghigh1000","Nhi謒 v� kh� kh╪ c馻 M筩 S莡 giao, kh玭g ph秈 ai c騨g l祄 頲! Long m� t� h祇 v� ngi!")
	elseif ( Uworld1002 == 310 ) then
		Talk(1,"Uworld1000_zhonghigh1000","S竧 th� xu蕋 th﹏ t� L﹎ Uy猲 Nhai u l� cao th� tuy謙 th�! Ngi h穣 n   r蘮 luy謓 甶!")
	elseif ( Uworld1003 == 430 ) then
		Talk(1,"Uworld1000_xiepai1000","C� ch髏 qu� n祔 t苙g ngi!")
	elseif  (GetLevel() >= 20 ) then -- 等级大于20的玩家
		Say("Ngi tr猲 giang h�  c� ch髏 c╪ c�, c� mu鑞 nh薾 v礽 nhi謒 v� kh玭g?",2,"Ta mu鑞 l祄 nhi謒 v� c蕄 20 tr� l猲/Uworld1000_more","Ta ch� n ch琲 /Uworld1000_no")
	elseif ( GetLevel() < 20 ) then
		Talk(1,"","Ъng c蕄 c馻 ngi ch璦 t y猽 c莡, i c蕄 20 h穣 quay l筰.")
	elseif ( GetLastFactionNumber() == -1 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 gia nh藀 m玭 ph竔, nh鱪g nhi謒 v� n祔 kh玭g th輈h h頿!")
	end
end

function iwantseetask()
	Describe(DescLink_LongWu.."<#>:  H� th鑞g nhi謒 v� m韎 chia th祅h<color=red> s� nh藀, ch輓h tuy課 v� ph� tuy課<color>.<color=red>Nhi謒 v� s� nh藀<color>: t蕋 c� ngi ch琲 u c� th� ti誴 nh薾, muc ch  gi韎 thi謚 nh鱪g c s綾 v� thao t竎 trong V� L﹎ Truy襫 K�. C� th� b� <color=red> nhi謒 v� s� nh藀<color>, nh璶g sau n祔 s� kh玭g th� l祄 頲.<color=red> Nhi謒 v� ch� tuy課<color>:  t�<color=red> c蕄 20<color> n<color=red> c蕄 60<color>, m鏸<color=red> 10 c蕄<color> c� m閠 nhi謒 v�, g錷 3 phe: <color=red>Ch輓h ph竔, Trung l藀, T� ph竔<color> Ph秈 nh藀 m玭 m韎 c� th� ti誴 nh薾 nhi謒 v�. Sau khi ho祅 th祅h s� nh薾 頲 Trang b� Ho祅g Kim v� 甶觤 kinh nghi謒. <color=red> Nhi謒 v� ph� tuy課<color> ph秈 ti誴 nh薾 nhi謒 v� tng 鴑g v韎 ng c蕄 m韎 c� th� ho祅 th祅h, n誹 b筺 mu鑞 ti誴 nh薾 nhi謒 v� ph� tuy課 t� c蕄 30 n 39, b筺 ph秈 ti誴 nh薾  nhi謒 v� ch� tuy課 T� ph竔 c蕄 30 trc. Khi 產ng l祄 nhi謒 v� s� nh藀 kh玭g th� ti誴 nh薾 nhi謒 v� ph� tuy課. Gi秈 thng c馻 c竎 nhi謒 v� r蕋 phong ph�, hy v鋘g b筺 c� th� m m譶h v� thng"
	.."<color=red> N誹 ngi ch琲 m韎 bc v祇 th� gi韎 c馻 tr� ch琲, ch髇g ta s� cho m閠 ngi b筺 ng h祅h c飊g b筺 phi猽 b箃 giang h�. Ch� c莕 nh蕁'ta mu鑞 l祄 nhi謒 v� c飊g b筺 ng h祅h' l� c� th� ch鋘 b筺 ng h祅h.<color>",1,"K誸 th骳 i tho筰/no")
end

function Uworld1000_goon()
	Talk (1,"Uworld1000_title","Ch髇g ta b総 u h鋍. N鉯 trc,  v祇 th玭 xem nh� ngi m閠 nh�, n誹 th蕐 ta nghi猰 kh綾 th� th玦 v藋! Trc khi b総 u ngi c� th� ch鋘 m閠 ngi b筺 ng h祅h c飊g phi猽 b箃 giang h�. H穣 nh蕁 v祇 d遪g 'Ta mu鑞 l祄 nhi謒 v� ng h祅h'.")
end


function Uworld1000_more() --此处为20级任务的入口之一
	Uworld1001 = nt_getTask(1001)
	Uworld1002 = nt_getTask(1002)
	Uworld1003 = nt_getTask(1003)
	Uworld183 = nt_getTask(183)
	Uworld186 = nt_getTask(186)
	Uworld189 = nt_getTask(189)
	if (( Uworld1001 < 10 ) or ( Uworld1002 < 10 ) or ( Uworld1003 < 10 ))  and ( GetLastFactionNumber() ~= -1 ) then
	Say("Ngi mu鑞 l祄 nhi謒 v� phe n祇?",4,"Phe Ch輓h/Uworld1000_camp1","Phe Trung l藀/Uworld1000_camp2","Phe T� ph竔/Uworld1000_camp3","в ta ngh� l筰!/Uworld1000_no")
	elseif ( HaveCommonItem(6,1,131) > 0 ) then
		Talk(1,"","Ch糿g ph秈 ngi  nh薾 頲 t骾 th� c馻 ta �, mau m� ra xem.")
	elseif ( GetLastFactionNumber() == -1 ) then
		Talk(1,"","Ngi ch璦 nh藀 m玭 ph竔 n祇,kh玭g th� ti誴 nh薾 nhi謒 v�.")
	else
		Talk(1,"","B籲g h鱱, sau n祔 ngi ph秈 t� b秓 tr鋘g.")
	end
end

function Uworld1000_camp1()
	Uworld1001= nt_getTask(1001)
	Uworld183 = nt_getTask(183)
  	if ( Uworld1001 < 10 ) then
	  	AddItem(6,1,131,0,0,0)
	  	nt_setTask(183,10)
	  	Msg2Player("Nh薾 頲 m閠 t骾 th� c馻 Long Ng�.")
	else 
		Talk(1,"","Ngi ch糿g ph秈 產ng l祄 nhi謒 v� phe Ch輓h sao? T筰 sao c遪 mu鑞 l祄 n鱝.")
	end
end

function Uworld1000_camp2()
	Uworld186 = nt_getTask(186)
	Uworld1002 = nt_getTask(1002)
	if ( Uworld1002 < 10 ) then
  	AddItem(6,1,131,0,0,0)
  	nt_setTask(186,10)
  	Msg2Player("Nh薾 頲 m閠 t骾 th� c馻 Long Ng�.")
  else 
		Talk(1,"","Ch糿g ph秈 ngi 產ng l祄 nhi謒 v� Phe Trung l藀 sao?")
	end
end

function Uworld1000_camp3()
	Uworld189 = nt_getTask(189)
	Uworld1003 = nt_getTask(1003)
	if ( Uworld1003 < 10 ) then
	  	AddItem(6,1,131,0,0,0)
	  	nt_setTask(189,10)
	  	Msg2Player("Nh薾 頲 m閠 t骾 th� c馻 Long Ng�.")
  	else 
		Talk(1,"","Ch糿g ph秈 ngi  ti誴 nh薾 nhi謒 v� Phe T� ph竔 sao? T筰 sao mu鑞 l祄 n鱝.")
	end
end

function Uworld1000_no()
	Talk (1,"","Khi n祇 g苝 nguy hi觤 h穣 nh蕁 F1, xem C萴 nang c� th� gi髉 頲 b筺.")
end

function Uworld1000_title()
	local name = GetName()  
	Talk (4,"Uworld1000_and","Hoan ngh猲h ngi n y, ta l� trng th玭. B﹜ gi� b猲 ngo礽 r蕋 h鏽 lo筺. B鋘 gi芻 Kim d� man gi誸 ngi kh玭g ch韕 m総, xa xa c� th� nghe th蕐 ti課g v� ng鵤, ti課g gm 產o lo秐g xo秐g. Ban m m﹜ m� x竚 x辴, kh鉯 l鯽 kh緋 n琲, l遪g d﹏ ho秐g lo筺. Ngi 甶 阯g nh蕋 nh ph秈 c萵 th薾",name.."<#>:  Ta m韎 n n猲 c� nhi襲 vi謈 kh玭g hi觰, xin i ca ch� d箉!","Trong th玭 v鮝 m� l韕 d箉 nh鱪g ngi tr� tu鎖 nh� ngi, h鋍 m閠 輙 c騨g l� t鑤 v� ngi c� th� m蕋 m筺g b蕋 c� l骳 n祇","Cho d� th� n祇 c騨g ph秈 c� gi� l蕐 t輓h m筺g",name.."<#>:  � ta c� m閠 l� tng,  l� s� c� m閠 ng祔 ta.....")
	
end

function Uworld1000_and()
	local name = GetName()
	if( SubWorldIdx2ID( SubWorld ) == 53 ) then  --巴陵
		Talk(1,"","Khoan n鉯 ! Mau ra ngo礽 th玭 t譵 v� s� 甶! Trc  h穣 gi誸 v礽 con heo r鮪g, l蕐 3 mi課g th辴 heo a cho 玭g ta. T鋋  <color=red>209/186<color>.")
	elseif ( SubWorldIdx2ID( SubWorld ) == 174 ) then  --龙泉村
		Talk(1,"","Khoan n鉯 ! Mau ra ngo礽 th玭 t譵 v� s� 甶! Trc  h穣 gi誸 v礽 con heo r鮪g, l蕐 3 mi課g th辴 heo a cho 玭g ta. T鋋  <color=red>197/216<color>.")
 	elseif ( SubWorldIdx2ID( SubWorld ) == 121 ) then  --龙门镇
		Talk(1,"","Khoan n鉯 !! Mau ra ngo礽 th玭 t譵 v� s� 甶, trc khi 甶 nh v礽 con th�, l蕐 3 mi課g th辴 ti a cho 玭g ta. T鋋  <color=red>237/239<color>.")
 	elseif ( SubWorldIdx2ID( SubWorld ) == 153 ) then  --石鼓镇
		Talk(1,"","Khoan n鉯 ! Mau ra ngo礽 th玭 t譵 v� s� 甶! Trc  h穣 gi誸 v礽 con heo r鮪g, l蕐 3 mi課g th辴 heo a cho 玭g ta. T鋋  <color=red>207/203<color>.")
 	elseif ( SubWorldIdx2ID( SubWorld ) == 101 ) then  --稻香村
		Talk(1,"","Khoan n鉯 ! Mau ra ngo礽 th玭 t譵 v� s� 甶! Trc  h穣 gi誸 v礽 con heo r鮪g, l蕐 3 mi課g th辴 heo a cho 玭g ta. T鋋  <color=red>208/184<color>.")
 	elseif ( SubWorldIdx2ID( SubWorld ) == 99 ) then   --永乐镇
		Talk(1,"","Khoan n鉯 ! Mau ra ngo礽 th玭 t譵 v� s� 甶! Trc  h穣 gi誸 v礽 con heo r鮪g, l蕐 3 mi課g th辴 heo a cho 玭g ta. T鋋  <color=red>207/214<color>.")
 	elseif ( SubWorldIdx2ID( SubWorld ) == 100 ) then  --朱仙镇
		Talk(1,"","Khoan n鉯 ! Mau ra ngo礽 th玭 t譵 v� s� 甶! Trc  h穣 gi誸 v礽 con heo r鮪g, l蕐 3 mi課g th辴 heo a cho 玭g ta. T鋋  <color=red>217/192<color>.")
 	elseif ( SubWorldIdx2ID( SubWorld ) == 20 ) then   --江津村
		Talk(1,"","Khoan n鉯 ! Mau ra ngo礽 th玭 t譵 v� s� 甶! Trc  h穣 gi誸 v礽 con heo r鮪g, l蕐 3 mi課g th辴 heo a cho 玭g ta. T鋋  <color=red>454/391<color>.")
 	end
 	Talk(5,"Uworld1000_find","g 蕐 r蕋 th輈h u鑞g ru, 甧m ch髏 m錳 qua, kh玭g ch鮪g s� d箉 ngi ch髏 v� c玭g.  kh玭g nhanh c� th� b蕀 n髏 R  ch箉.","C� th蕐 b秐  nh� ph輆 tr猲 b猲 ph秈 kh玭g?  N誹 kh玭g th蕐 nh蕁 tab m� ra. Ph輆 tr猲 c� v� tr�,  s� th� nh蕋 l� hng Йng T﹜, b猲 tr竔 l� ph輆 T﹜, b猲 ph秈 l� ph輆 Йng. S� th� hai l� hng Nam B綾, b猲 tr猲 l� ph輆 B綾, � di l� ph輆 Nam.","C� theo v� tr� m� 甶, ph輆 di b猲 ph秈 b秐  nh� c� v礽 bi觰 tng nh�, ngi xem qua s� bi誸. Gi� chu閠 ph秈 ch� v祇 b秐  c� th� xem c竎 khu v鵦 kh礳. Th玦 ta m謙 r錳, ngi 甶 甶.",name.."<#>:  Hi觰 r錳.","ng r錳, sau n祔 n誹 kh玭g nh� chuy謓 ta n鉯 v韎 ngi, nh蕁 <color=red>F12<color>, xem th� c馻 ta g鰅 cho ngi s� r�.")
end


function Uworld1000_find()
	nt_setTask(1000,10) --让玩家去找武师，任务变量设为10，环节一start
	Msg2Player("Long Ng� b秓 b筺 ra ngo礽 th玭 t譵 V� s�, trc khi 甶 h穣 nh th� l蕐 頲 3 mi課g th辴 ti.") 
	seteducationnpcpos()
end


function Uworld1000_good2()
	local name = GetName()
	Talk(4,"Uworld1000_high3","Ngo筰 c玭g t╪g sinh l鵦, n閕 c玭g t╪g n閕 l鵦. Ng� h祅h tng kh綾, t╪g sinh l鵦 v� n閕 l鵦 c騨g kh玭g gi鑞g nhau. Gi� ngi c� th� th� xem, quy t綾 l�: t╪g 1 甶觤 ngo筰 c玭g 鴑g v韎 Kim M閏 Th駓 H醓 Th� m鏸 th� t╪g 8, 5, 6, 7, 3 甶觤 sinh l鵦.",name.."<#>:  V藋 n閕 c玭g th� sao?","M鏸 l莕 t╪g 1 甶觤 n閕 c玭g 鴑g v韎 Kim M閏 Th駓 H醓 Th� m鏸 th� t╪g 1, 3, 3, 2, 4 甶觤 n閕 l鵦.",name.."<#>:  Th� ra l� v藋, xem ra ta ph秈 th薾 trong t╪g 甶觤.","H玬 nay c騨g m謙 r錳, ngh� ng琲 trc , ng祔 mai quay l筰 t譵 ta. H穣 nh�, trc h誸 h穣 luy謓 n c蕄 3")
	
end

function Uworld1000_high3()
Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 50 ) then
		AddOwnExp(350)						
		nt_setTask(1000,60) --环节3end
		Msg2Player("Long Ng� Ngi t n c蕄 3 h穣 n t譵 ta")
	end
end

function Uworld1000_high4()			
Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 70 ) then
		AddOwnExp(350)			
		nt_setTask(1000,80) --环节4end
		Msg2Player("Long Ng� b秓 b筺 n i tho筰 v韎 Ch� ti謒 t筽 h鉧.")
		seteducationnpcpos()
	end
end

function Uworld1000_high8()
	nt_setTask(1000,160) --环节8end
	Msg2Player("Long Ng� b秓 b筺 t n c蕄 5 h穣 n, b﹜ gi� n g苝 V� s� h鋍 khinh c玭g.")
end

function Uworld1000_good3()
	local name = GetName()
	Talk(6,"Uworld1000_high9","Trong tr� ch琲 b筺 g苝 b蕋 c� v蕁  g� u c� th� th玭g qua c竎h i tho筰 v韎 ngi ch琲 kh竎 t譵 tr� gi髉. Nh蕁<color=red> ctrl<color> d飊g chu閠 ch� v祇 ngi b筺 mu鑞 i tho筰 l� c� th� i tho筰. L骳 m韎 b総 u, ch� c� th� ch鋘 k猲h <Ngi ch琲 ph� c薾>  i tho筰 v韎 ngi kh竎.",name.."<#>:  g n鉯 v韎 ta nhi襲 th�  l祄 g�?","H�! Th� 甶 h醝 m鋓 ngi xem, m閠 t猲 t玬 t衟 c馻 T﹏ Th� th玭 nh� ngi th� c� ng g�? Ngi tng m譶h l� i hi謕 giang h� r錳 sao?",name.."<#>: g n鉵g n秠 qu�!","H穣 甶 t譵 V� s�, ng qu猲 甧m <color=red>5 mi課g th辴 ti.<color>! C� g緉g luy謓 t藀.",name.."<#>:......")
end

function Uworld1000_high9()
Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 170 ) then
		AddOwnExp(800)
		nt_setTask(1000,180) --环节9end
		Msg2Player("Long Ng� mu鑞 b筺 甶 t譵 ngi n鉯 chuy謓, sau  甶 t譵 V� s�. ng qu猲 甧m theo 5 mi課g th辴 ti.")
		seteducationnpcpos()
	end
end

function Uworld1000_high10()
Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 210 ) then
		AddOwnExp(400)
		nt_setTask(1000,220) --环节11end
		Msg2Player("Long Ng� mu鑞 b筺 n c蕄 10 m韎 n 玭g ta.")
	end
end

function Uworld1000_high11()
Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 230 ) then
		AddOwnExp(3000)
		nt_setTask(1000,240) --环节12end
		Msg2Player("Long Ng� b秓 b筺 c� th� nh藀 m玭 Th藀 i ph竔, h穣 v祇 th玭 t譵 е t� ti誴 d蒼 c馻 M玭 ph竔. Sau khi nh藀 m玭 n ch� NPC tr� gi髉 t譵 Long Ng�.")
	end
end

function Uworld1000_good()
	local name = GetName()
	Talk(4,"Uworld1000_high12","C� th� 蕁 [F5]  xem t蕋 c� c竎 k� n╪g  h鋍. N誹 mu鑞 chuy觧 i nhanh chi猽 th鴆, c� th� nh蕄 chu閠 v祇 bi觰 tng k� n╪g s� d鬾g � di g鉩 ph秈 giao di謓 cho xu蕋 hi謓 c竎 chi猽 th鴆 theo h祅g ngang, sau  ch� chu閠 v祇 chi猽 th鴆 b蕋 k�.","D飊g c竎 ph輒 <color=red><q>, <w>, <e>, <a>, <s>, <d>, <z>, <x>, <c><color>  chuy觧 i nhanh khi s� d鬾g.",name.."<#>:  �, nh� th� l� c� th� thao t竎 頲 r錳.","Sau n祔 luy謓 v� s� ng祔 c祅g c鵦 kh�, ngi chu萵 b� xong r錳 th� 甶 甶. дn c蕄 20 n t譵 ta, ta s� i ngi � y.")
end

function Uworld1000_high12()
Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 270 ) then
		AddOwnExp(3000)
		nt_setTask(1000,280) --环节14end
		Msg2Player("Long Ng� n鉯 v韎 b筺 ch� n c蕄 20 n g苝 玭g ta.")
	end
end

function Uworld1000_high13()
	local name = GetName()
	local curCamp = nt_getCamp();
	if  ( curCamp == 0 ) then --缺少支线npc的坐标
		Talk(3,"Uworld1000_find2","B筺 h穣 n Ph鬾g Tng t譵 Ng筼 V﹏ T玭g, 玭g ta s� ti誴 t鬰 gi髉  b筺",name.."<#>:  Ng� Gia, sau n祔 玭g c� d� t輓h g�?","Y猲 t﹎ 甶, h� Long ta kh玭g d� ch誸 nh� v藋 u, ta c遪 ph秈 u v韎 b鋘 Kim C萿 t韎 c飊g!")
	elseif  ( curCamp == 1 ) then --缺少支线npc的坐标
		Talk(3,"Uworld1000_find2","Ngi n t譵 Li評 Nam V﹏, 玭g ta s� ti誴 t鬰 gi髉 ngi! g ta � L﹎ An.",name.."<#>:  Ng� Gia, sau n祔 玭g c� d� t輓h g�?","Y猲 t﹎ 甶, h� Long ta kh玭g d� ch誸 nh� v藋 u, ta c遪 ph秈 u v韎 b鋘 Kim C萿 t韎 c飊g!")
	elseif  ( curCamp == 2 ) then --缺少支线npc的坐标
	  	Talk(3,"Uworld1000_find2","Ngi h穣 n Bi謓 Kinh t譵 Ti猽 s� c馻 Th竎 B箃 Ho礽 Xuy猲, 玭g ta s� gi髉 ngi, y 產ng � Bi謓 Kinh.",name.."<#>:  Ng� Gia, sau n祔 玭g c� d� t輓h g�?","Y猲 t﹎ 甶, h� Long ta kh玭g d� ch誸 nh� v藋 u, ta c遪 ph秈 u v韎 b鋘 Kim C萿 t韎 c飊g!")
	end
end

function Uworld1000_find2()
Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 290 ) then
		AddOwnExp(5000)
		nt_setTask(1000,300)
		Msg2Player("Long Ng� b秓 b筺 甶 t譵 m閠 ngi, y c� th� gi髉 b筺.")
	end
end

function Uworld1000_zhenghigh1000()
Uworld1001 = nt_getTask(1001)
	if ( Uworld1001 == 320 ) then
		AddOwnExp(150000)
		prize()
		
		Msg2Player("B筺  ho祅 th祅h nhi謒 v� M筩 S莡 giao, Long Ng� v� c飊g h礽 l遪g, nh璶g bc 阯g giang h� ch� m韎 b総 u.")
	end
end

function Uworld1000_zhonghigh1000()
Uworld1002 = nt_getTask(1002)
	if ( Uworld1002 == 310 ) then
		AddOwnExp(150000)
		prize()
		
		Msg2Player("B筺  ho祅 th祅h nhi謒 v� s竧 th� Ph� Nam B╪g giao, tr猲 giang h� b筺  c� ch髏 danh ti課g, y c騨g kh玭g ph秈 l� chuy謓 t鑤, trong th祅h c� nhi襲 tai m総 theo d鈏")
	end
end

function Uworld1000_xiepai1000()
Uworld1003 = nt_getTask(1003)
	if ( Uworld1003 == 430 ) then
		prize()
		
		Msg2Player("B筺  ho祅 th祅h nhi謒 v� ch� tuy課 T� ph竔, sau n祔 c� l� c� nhi襲 tr薾 chi課 產ng ch� ngi, m閠 k� m竨 l筺h.")
	end
end

function education_changewuxing()
	Uworld1067 = nt_getTask(1067)
	local Uworld445 = HaveMagic(445)
	local Uworld446 = HaveMagic(446)
	local Uworld447 = HaveMagic(447)
	local Uworld448 = HaveMagic(448)
	local Uworld449 = HaveMagic(449)
	if ( Uworld445 ~= -1 ) or ( Uworld446 ~= -1 ) or ( Uworld447 ~= -1 ) or ( Uworld448 ~= -1 ) or ( Uworld449 ~= -1 ) then
		if ( Uworld445 ~= -1 ) then
			DelMagic(445)
			AddMagic(534,1)
			AddMagicPoint(Uworld445)
		elseif ( Uworld446 ~= -1 ) then
			DelMagic(446)
			AddMagic(535,1)
			AddMagicPoint(Uworld446)
		elseif ( Uworld447 ~= -1 ) then
			DelMagic(447)
			AddMagic(536,1)
			AddMagicPoint(Uworld447)
		elseif ( Uworld448 ~= -1 ) then
			DelMagic(448)
			AddMagic(537,1)
			AddMagicPoint(Uworld448)
		elseif ( Uworld449 ~= -1 ) then
			DelMagic(449)
			AddMagic(538,1)
			AddMagicPoint(Uworld449)
		end
		nt_setTask(1067,10)
		Msg2Player("Ng� h祅h trc y c馻 b筺 ch�  h� th﹏, kh玭g th� chi課 u! Hi謓  thay i  k� n╪g chi課 u cho b筺!")
	end
end