Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
Include("\\script\\thoren\\danglong_config.lua")
Include("\\script\\thoren\\tinhsuong_config.lua")
Include("\\script\\thoren\\nguyetkhuyet_config.lua")
Include("\\script\\thoren\\rollback_config.lua")
Include("\\script\\thoren\\hoason_config.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("ITEM")
function OnExit()

end;

function main()
	dofile("script/thoren/thoren.lua");
	dofile("script/thoren/rollback_config.lua");
	dofile("script/thoren/nguyetkhuyet_config.lua");
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	
	
	tbDailog.szTitleMsg = "<#><npc>N¬i nµy tÊt c¶ ®Òu lµ kú tr©n dÞ b¶o, ngµi mÆc dï tïy ý lùa chän!"
	--tbDailog:AddOptEntry("§çi Thuéc TÝnh Phi Phong", doithuoctinh_phiphong)
       -- tbDailog:AddOptEntry("Ta muèn ChÕ T¹o  Huynh §Ö",ngocboihuynhde)
	--tbDailog:AddOptEntry("Ta muèn n©ng CÊp Phi Phong", nangcapphiphong)
       -- tbDailog:AddOptEntry("§çi Thuéc TÝnh Ên §· Dung LuyÖn",nangcapan)
	tbDailog:AddOptEntry("n©ng cÊp Trang Søc Vµ Ên ",DoiNgayChoi)
       --tbDailog:AddOptEntry("Trïng luyÖn xuyªn y ph¸ gi¸p ",nangcapxuyeny)
     --tbDailog:AddOptEntry("§çi Thuéc TÝnh Skill Cè S¬n",nangcapbaotay)
      --tbDailog:AddOptEntry("Ta Muèn Ph©n vò Dieu duong ", DoiNguyenLieuNhan)
        --tbDailog:AddOptEntry("Ta Muèn Doi Ngua 3 Skill", DoiNguyenLieu5678)

--"N©ng CÊp Phi Phong PhÖ Quang(7)-->Phi Phong V« Cùc(8)/#hoidapphiphong7len8()",


	tbDailog:Show()
end;
function nangcapxuyeny()

local tbSay = 
{

"§çi Thuéc TÝnh Xuyªn Y 5 §· Trïng LuyÖn/#DoiNguyenLieu5678tl()",
--"§çi Thuéc TÝnh Xuyªn Y 6 §· Trïng LuyÖn/#DoiNguyenLieu5678tc()",
--"§çi Thuéc TÝnh Xuyªn Y 7 §· Trïng LuyÖn/#DoiNguyenLieu5678t()",
--"§çi Thuéc TÝnh Xuyªn Y 8 §· Trïng LuyÖn/#DoiNguyenLieu5678z()",
--"§çi Thuéc TÝnh Xuyªn Y 9 §· Trïng LuyÖn/#DoiNguyenLieu56789z()",
--"§çi Thuéc TÝnh Xuyªn Y 10 §· Trïng LuyÖn/#DoiNguyenLieux56789z()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ",getn(tbSay),tbSay)
	
end 
function nangcapbaotay()

local tbSay = 
{

"§çi Thuéc TÝnh Bao Tay Cè S¬n /#DoiNguyenLieu56781z()",
"§çi Thuéc TÝnh Bao Tay Cè S¬n Ph¸ Thiªn/#DoiNguyenLieu56781xz()",
"§çi Thuéc TÝnh D©y ChuyÒn Cè S¬n Ph¸ Thiªn/#DoiNguyenLieu56782z()",
"§çi Thuéc TÝnh Bao Tay Cè S¬n truyÒn nh©n/#DoiNguyenLieuzxc1z()",
"§çi Thuéc TÝnh D©y ChuyÒn Cè S¬n TruyÒn Nh©n/#DoiNguyenLieudssd()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ",getn(tbSay),tbSay)
	
end 
------------============================================================
function doiphiphong_lebao12()

local tbSay = 
{

"Bá qua kh¸ng háa/#chonboquakhang_lebao1(0)",
"Bá qua kh¸ng b¨ng/#chonboquakhang_lebao1(1)",
"Bá qua kh¸ng l«i/#chonboquakhang_lebao1(2)",
"Bá qua kh¸ng ®éc/#chonboquakhang_lebao1(3)",
"Bá qua phæ phßng/#chonboquakhang_lebao1(4)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Xin H·y Chän §óng Kh¸ng Cña FF,Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)
end

function chonboquakhang_lebao1(num_lb)
numtrong12=num_lb
local tbSay = 
{

"Chän PLVL/#tangsaokhapthan_lebao1(0)",
"Chän Kh¸ng B¨ng/#tangsaokhapthan_lebao1(1)",
"Chän Kh¸ng L«i/#tangsaokhapthan_lebao1(2)",
"Chän Kh¸ng Háa/#tangsaokhapthan_lebao1(3)",
"Chän Kh¸ng §éc/#tangsaokhapthan_lebao1(4)",
"Chän Kh¸ng XSTK/#tangsaokhapthan_lebao1(5)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)

end


function tangsaokhapthan_lebao1(num_lb)
numtrong22=num_lb
	szDescription = format("Phi phong Ngù Phong 9 t­¬ng øng \n.8000 B¸ch NghÖ Tinh Th¹ch\n.8000 B¸ch NghÖ Tinh Ngäc\n ChØ Bá FF9 vµo « nhÐ ")
	GiveItemUI("5000 v¹n vµ", szDescription, "Run_tangsaokhapthan_lebao1", "no", 1)
end


function Run_tangsaokhapthan_lebao1(nCount)
	if nCount ~= 1 then
		Say("ChØ bá Phi Phong vµo trong, nguyªn liÖu kh¸c bá ë hµnh trang nhÐ", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/doiphiphong_lebao12", "Ta xin th«i")
		return
	end

		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local bachnghethienthach= CalcEquiproomItemCount(6,1,49004,-1)
		
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	local bindState = GetItemBindState(nItemIndex)
		if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 5647 or nGoldEquipIdxFF >5976) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/doiphiphong_lebao12", "no")
		return 0
		end
		capcuaphiphong_lebao= (nGoldEquipIdxFF+1)-(5647+numtrong12*66+numtrong22*11) --6460-(6161+240+50
		 
		 if capcuaphiphong_lebao<=0 or capcuaphiphong_lebao>10 then
			Say("B¹n ®· chän sai hÖ, xin chän l¹i")
		 return 0
		end

		local  idcualebao=capcuaphiphong_lebao+50003			

			if bachnghetinhngoc<8000 or bachnghethienthach<8000 then		
			Say("§æi cÇn 8000 viªn B¸ch NghÖ Tinh Ngäc + 8000 viªn B¸ch nghÖ Thiªn Th¹ch nhÐ")
			return 0
			end
			

			
				if ConsumeEquiproomItem(8000, 6,1, 30355,-1) >0 and ConsumeEquiproomItem(8000, 6,1, 49004,-1) >0 and 	RemoveItemByIndex(nItemIndex)>0 then

					local tbAward100k ={
					{szName="Tói LÔ Bao Phi Phong CÊp 9",tbProp={6,1,idcualebao,1,0,0},nCount=1},
					}
					tbAwardTemplet:GiveAwardByList(tbAward100k,"Tói LÔ Bao Phi Phong CÊp 9")
				WriteLogPro("dulieu/doilebaoff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da doi  Item la--"..nGoldEquipIdxFF.." sang tui le bao\n");	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Tói LÔ Bao Phi Phong CÊp 9 "..idcualebao.."")
				end

	
		end



function doiphiphong_lebao13()

local tbSay = 
{

"Bá qua kh¸ng háa/#chonboquakhang_lebao12(0)",
"Bá qua kh¸ng b¨ng/#chonboquakhang_lebao12(1)",
"Bá qua kh¸ng l«i/#chonboquakhang_lebao12(2)",
"Bá qua kh¸ng ®éc/#chonboquakhang_lebao12(3)",
"Bá qua phæ phßng/#chonboquakhang_lebao12(4)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Xin H·y Chän §óng Kh¸ng Cña FF,Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)
end

function chonboquakhang_lebao12(num_lb)
numtrong12=num_lb
local tbSay = 
{

"Chän PLVL/#tangsaokhapthan_lebao2(0)",
"Chän Kh¸ng B¨ng/#tangsaokhapthan_lebao2(1)",
"Chän Kh¸ng L«i/#tangsaokhapthan_lebao2(2)",
"Chän Kh¸ng Háa/#tangsaokhapthan_lebao2(3)",
"Chän Kh¸ng §éc/#tangsaokhapthan_lebao2(4)",
"Chän Kh¸ng XSTK/#tangsaokhapthan_lebao2(5)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)

end


function tangsaokhapthan_lebao2(num_lb)
numtrong22=num_lb
	szDescription = format("Phi phong Ngù Phong 9 t­¬ng øng \n.10000 B¸ch NghÖ Tinh Th¹ch\n.10000 B¸ch NghÖ Tinh Ngäc\n ChØ Bá FF10 vµo « nhÐ ")
	GiveItemUI("5000 v¹n vµ", szDescription, "Run_tangsaokhapthan_lebao13", "no", 1)
end


function Run_tangsaokhapthan_lebao13(nCount)
	if nCount ~= 1 then
		Say("ChØ bá Phi Phong vµo trong, nguyªn liÖu kh¸c bá ë hµnh trang nhÐ", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/doiphiphong_lebao13", "Ta xin th«i")
		return
	end

		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local bachnghethienthach= CalcEquiproomItemCount(6,1,49004,-1)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	local bindState = GetItemBindState(nItemIndex)
		if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 6005 or nGoldEquipIdxFF >6334) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/doiphiphong_lebao13", "no")
		return 0
		end
		capcuaphiphong_lebao= (nGoldEquipIdxFF+1)-(6005+numtrong12*66+numtrong22*11) --6460-(6161+240+50
		 
		 if capcuaphiphong_lebao<=0 or capcuaphiphong_lebao>10 then
			Say("B¹n ®· chän sai hÖ, xin chän l¹i")
		 return 0
		end

		local  idcualebao=capcuaphiphong_lebao+30164			

			if bachnghetinhngoc<20000 or bachnghethienthach<20000 then		
			Say("§æi cÇn 20000 viªn B¸ch NghÖ Tinh Ngäc + 20000 viªn B¸ch nghÖ Thiªn Th¹ch nhÐ")
			return 0
			end
			

			
				if ConsumeEquiproomItem(20000, 6,1, 30355,-1) >0 and ConsumeEquiproomItem(20000, 6,1, 49004,-1) >0 and 	RemoveItemByIndex(nItemIndex)>0 then

					local tbAward100k ={
					{szName="Tói LÔ Bao Phi Phong CÊp 10",tbProp={6,1,idcualebao,1,0,0},nCount=1},
					}
					tbAwardTemplet:GiveAwardByList(tbAward100k,"Tói LÔ Bao Phi Phong CÊp 10")
				WriteLogPro("dulieu/doilebaoff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da doi  Item la--"..nGoldEquipIdxFF.." sang tui le bao\n");	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Tói LÔ Bao Phi Phong CÊp 10 "..idcualebao.."")
				end

	
		end
-----------------=======================================================================================================================================================
function doiphiphong_lebao()

local tbSay = 
{

"Bá qua kh¸ng háa/#chonboquakhang_lebao(0)",
"Bá qua kh¸ng b¨ng/#chonboquakhang_lebao(1)",
"Bá qua kh¸ng l«i/#chonboquakhang_lebao(2)",
"Bá qua kh¸ng ®éc/#chonboquakhang_lebao(3)",
"Bá qua phæ phßng/#chonboquakhang_lebao(4)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Xin H·y Chän §óng Kh¸ng Cña FF,Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)
end

function chonboquakhang_lebao(num_lb)
numtrong12=num_lb
local tbSay = 
{

"Chän PLVL/#tangsaokhapthan_lebao(0)",
"Chän Kh¸ng B¨ng/#tangsaokhapthan_lebao(1)",
"Chän Kh¸ng L«i/#tangsaokhapthan_lebao(2)",
"Chän Kh¸ng Háa/#tangsaokhapthan_lebao(3)",
"Chän Kh¸ng §éc/#tangsaokhapthan_lebao(4)",
"Chän Kh¸ng XSTK/#tangsaokhapthan_lebao(5)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)

end


function tangsaokhapthan_lebao(num_lb)
numtrong22=num_lb
	szDescription = format("Phi phong Lang Tuyet 8 t­¬ng øng \n.5000 B¸ch NghÖ Tinh Th¹ch\n.5000 B¸ch NghÖ Tinh Ngäc\n ChØ Bá FF8 vµo « nhÐ ")
	GiveItemUI("5000 v¹n vµ", szDescription, "Run_tangsaokhapthan_lebao", "no", 1)
end


function Run_tangsaokhapthan_lebao(nCount)
	if nCount ~= 1 then
		Say("ChØ bá Phi Phong vµo trong, nguyªn liÖu kh¸c bá ë hµnh trang nhÐ", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/tangsaokhapthan", "Ta xin th«i")
		return
	end

		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local bachnghethienthach= CalcEquiproomItemCount(6,1,49004,-1)
		
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	local bindState = GetItemBindState(nItemIndex)
		if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	--if nItemTime ~= 0 then
	--	Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
	--	return
	--end
		if nQuality ~=1 or (nGoldEquipIdxFF < 5347 or nGoldEquipIdxFF >5646) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/tangsaokhapthan", "no")
		return 0
		end
		capcuaphiphong_lebao= (nGoldEquipIdxFF+1)-(5347+numtrong12*60+numtrong22*10) --6460-(6161+240+50
		 
		 if capcuaphiphong_lebao<=0 or capcuaphiphong_lebao>10 then
			Say("B¹n ®· chän sai hÖ, xin chän l¹i")
		 return 0
		end

		local  idcualebao=capcuaphiphong_lebao+43044			

			if bachnghetinhngoc<5000 or bachnghethienthach<5000 then		
			Say("§æi cÇn 5000 viªn B¸ch NghÖ Tinh Ngäc + 5000 viªn B¸ch nghÖ Thiªn Th¹ch nhÐ")
			return 0
			end
			

			
				if ConsumeEquiproomItem(5000, 6,1, 30355,-1) >0 and ConsumeEquiproomItem(5000, 6,1, 49004,-1) >0 and 	RemoveItemByIndex(nItemIndex)>0 then

					local tbAward100k ={
					{szName="Tói LÔ Bao Phi Phong CÊp 8",tbProp={6,1,idcualebao,1,0,0},nCount=1},
					}
					tbAwardTemplet:GiveAwardByList(tbAward100k,"Tói LÔ Bao Phi Phong CÊp 8")
				WriteLogPro("dulieu/doilebaoff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da doi  Item la--"..nGoldEquipIdxFF.." sang tui le bao\n");	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Tói LÔ Bao Phi Phong CÊp 8 "..idcualebao.."")
				end

	
		end
-----------------tang tangsao khapthan khap than--
function chonphiphongcantangsao()

local tbSay = 
{

"Bá qua kh¸ng háa/#chonboquakhang112(0)",
"Bá qua kh¸ng b¨ng/#chonboquakhang112(1)",
"Bá qua kh¸ng l«i/#chonboquakhang112(2)",
"Bá qua kh¸ng ®éc/#chonboquakhang112(3)",
"Bá qua phæ phßng/#chonboquakhang112(4)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)
end

function chonboquakhang112(num)
numtrong1=num
local tbSay = 
{

"Chän PLVL/#tangsaokhapthan112(0)",
"Chän Kh¸ng B¨ng/#tangsaokhapthan112(1)",
"Chän Kh¸ng L«i/#tangsaokhapthan112(2)",
"Chän Kh¸ng Háa/#tangsaokhapthan112(3)",
"Chän Kh¸ng §éc/#tangsaokhapthan112(4)",
"Chän Kh¸ng XSTK/#tangsaokhapthan112(5)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)

end


function tangsaokhapthan112(num)
numtrong2=num
	szDescription = format("Bá FF vµo, nguyªn liÖu ®Ó ngoµi \n.1-2=10000 DTN  \n.2-3=15000 DTN\n.3-4=30000 DTN\n.4-5=35000 DTN\n.5-6=40000 DTN\n.6-7=42000 DTN\n.7-8=48000 DTN\n.8-9=50000 DTN \n.9-10=55000 DTN\n")
	GiveItemUI("§¹i Tinh Ngäc", szDescription, "Run_tangsaokhapthan112", "no", 1)
end


function Run_tangsaokhapthan112(nCount)
	if nCount ~= 1 then
		Say("ChØ bá Phi Phong vµo trong, nguyªn liÖu kh¸c bá ë hµnh trang nhÐ", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/tangsaokhapthan112", "Ta xin th«i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local daitinhngoc= CalcEquiproomItemCount(6,1,4873,-1) 
                local TASK_HUYETCHIEN = GetTask(3002);
          	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
              if nQuality ~=1 or (nGoldEquipIdxFF < 5647 or nGoldEquipIdxFF >5977) then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/tangsaokhapthan112", "no")
		return 0
		end
		capcuaphiphong= (nGoldEquipIdxFF+1)-(5647+numtrong1*66+numtrong2*11) --6460-(6161+364+56
		 if capcuaphiphong<=0 or capcuaphiphong> 7 then
			Say("Phi Phong ®· ®¹t sè sao cao nhÊt hoÆc chän sai hÖ Cña Phi Phong §ang Mang")
		 return 0
		end

		 soluongdaitinhngoccan=0
                                   
			if capcuaphiphong==1 then	
			soluongdaitinhngoccan=10000
                             soluongdaikimbai=10
				elseif capcuaphiphong==2 then	
				soluongdaitinhngoccan=15000
                          
			elseif capcuaphiphong==3 then	
				soluongdaitinhngoccan=20000
                               
			elseif capcuaphiphong==4 then	
				soluongdaitinhngoccan=30000
                     
				elseif capcuaphiphong==5 then	
				soluongdaitinhngoccan=35000
                            
                              elseif capcuaphiphong==6 then	
				soluongdaitinhngoccan=35000
                                soluongdaikimbai=700000
                               elseif capcuaphiphong==7 then	
				soluongdaitinhngoccan=40000
                                  soluongdaikimbai=800000
				elseif capcuaphiphong==8 then	
				soluongdaitinhngoccan=42000
                                 soluongdaikimbai=900000
			        elseif capcuaphiphong==9 then
                                 soluongdaitinhngoccan=45000	
				 soluongdaikimbai=1000000
                                elseif capcuaphiphong==10 then	
				soluongdaitinhngoccan=50000
                                 soluongdaikimbai=1500000
			end				

			if daitinhngoc  < soluongdaitinhngoccan then		
			Say("Kh«ng ®ñ "..soluongdaitinhngoccan.." §¹i Tinh Ngäc, xem l¹i hµnh trang nhÐ")
			return 0
                       
	end
			if TASK_HUYETCHIEN  < soluongdaikimbai then		
			Say("Kh«ng ®ñ "..soluongdaikimbai.."  Huyet chien, xem l¹i di  nhÐ")
			return 0
                       
	end
			SetTask(3002,GetTask(3002)- soluongdaikimbai)
			if ConsumeEquiproomItem(soluongdaitinhngoccan, 6,1, 4873,-1) >0 then
	                  	RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);
				WriteLogPro("dulieu/epff9.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da nang sao thanh cong "..nGoldEquipIdxFF.." len them 1* \n");	
				
				end

	
		end
	
------------------nang ff7-->8
function hoidapphiphong7len8()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
local bachluyen= CalcEquiproomItemCount(6,1,49006,-1) --B¸ch LuyÖn Thµnh C­¬ng
--local tilethanhcong= 100-(80-bachluyen)
	local tilethanhcong =floor(bachluyen*10/20000) 

local tbSay = 
{
"Ta ch¾c ch¾n tiÕp tôc, ta sÏ bá FF7 vµo « luyÖn/#nangcapphiphong7len8()",
"Th«i ta kh«ng muèn n÷a/no"
}
hienthitile=tilethanhcong*10
if bachluyen>=20000 then


Say( "<color=green>Nhµ ng­¬i ®ang cã <color=yellow> >20000 viªn<color> <color=white><B¸ch LuyÖn Thµnh C­¬ng><color> rong hµnh trang v× vËy tØ lÖ thµnh c«ng lµ 100%, TiÕp tôc chø ?",getn(tbSay),tbSay)
else 
Say( "<color=green><color=green>Nhµ ng­¬i ®ang cã <color=yellow> "..bachluyen.." viªn <color> <color=white><B¸ch LuyÖn Thµnh C­¬ng><color>\n trong hµnh trang v× vËy tØ lÖ thµnh c«ng lµ  thÊp \n TiÕp tôc chø ?",getn(tbSay),tbSay)
end
end


function nangcapphiphong7len8()
	szDescription = format("Phi phong Ngù Phong t­¬ng øng \nKh«ng bá B¸ch LuyÖn Thµnh C­¬ng vµo trong n.\n ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_nangcapphiphong7len8", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_nangcapphiphong7len8(nCount)
local henxui= random(1,10)
	if nCount ~= 1 then
		Say("Kh«ng bá B¸ch LuyÖn Thµnh C­¬ng vµo trong.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/nangcapphiphong7len8", "Ta xin th«i")
		return 1;
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachluyen= CalcEquiproomItemCount(6,1,49006,-1)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		--local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local tilethanhcong =0
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	--	Msg2Player(" Chóc mõng "..tilethanhcong.." *************** "..nGoldEquipIdxFF.."" )

		
		
		if nQuality ~=1 or (nGoldEquipIdxFF < 5322 and nGoldEquipIdxFF >5346) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
		 
		end

		if nQuality ==1 and (nGoldEquipIdxFF == 5322 or nGoldEquipIdxFF == 5326 or nGoldEquipIdxFF == 5331 or nGoldEquipIdxFF == 5336 or nGoldEquipIdxFF == 5341 or nGoldEquipIdxFF == 5346) then
								if bachluyen>=20000 then
									tilethanhcong=10
								else if bachluyen <=9999 and bachluyen >=9900 then
								tilethanhcong=2
								else if bachluyen <=8999 and bachluyen>=5900 then
								tilethanhcong = 1
								else if bachluyen <=4999 and bachluyen >=4900 then
								tilethanhcong = random(0,1)

								else if bachluyen<=3990 then
										tilethanhcong=0
								 end
								 end
								 
								 end
								 end
								 end
		--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")
		if tilethanhcong==10 then
															RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(20000, 6,1, 49006,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "Tói LÔ Bao Phi Phong CÊp 8 (1 Sao)",tbProp={6,1,43045,1,0},nCount=1},}, "test", 1);
												--	Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang t­¬ng øng")
													WriteLogPro("dulieu/epff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff8 voi 100 \n");		
		return
		end
											 if henxui<=tilethanhcong then
													RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(bachluyen, 6,1, 49006,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "Tói LÔ Bao Phi Phong CÊp 8 (1 Sao)",tbProp={6,1,43045,1,0},nCount=1},}, "test", 1);
												--	Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang t­¬ng øng")
													WriteLogPro("dulieu/epff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi "..bachluyen.." --hen xui:"..henxui.."\n");	
									--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")													
												else 
															ConsumeEquiproomItem(bachluyen, 6,1, 49006,-1)
															Msg2Player(" Chia buån cïng gia quyÕn - Chóc b¹n may m¾n lÇn sau nhÐ")
															WriteLogPro("dulieu/epff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep Xit FF voi "..bachluyen.."\n");	
															--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")		
											 end
		 else Say("Nguyªn LiÖu Kh«ng §ñ Råi B¹n ¥i"..nGoldEquipIdxFF.."")
		end
		
		end
		
		
		
function doithuoctinh_phiphong()

local tbSay = 
{
"§æi Thuéc TÝnh Cho Phi Phong  Phong Van/doithuoctinh7",
--"§æi ff L¨ng TuyÖt ===> Tói FF L¨ng TuyÖt /doiphiphong_lebao",
--"§æi ff Tö V©n ===> Tói FF Tö V©n  /doiphiphong_lebao12",
--"§æi ff Vo Song ===> Tói FF Vo Song  /doiphiphong_lebao13",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ",getn(tbSay),tbSay)
	
end 

function doithuoctinh7()

local tbSay = 
{

"Ta Muèn §æi Sang PTVL/#doithuoctinhff7(1)",
"Ta Muèn §æi Sang Kh¸ng B¨ng/#doithuoctinhff7(2)",
"Ta Muèn §æi Sang Kh¸ng L«i/#doithuoctinhff7(3)",
"Ta Muèn §æi Sang Kh¸ng Háa/#doithuoctinhff7(4)",
"Ta Muèn §æi Sang Kh¸ng §éc/#doithuoctinhff7(5)",
"Ta Muèn §æi Sang Kh¸ng XSTK/#doithuoctinhff7(6)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ",getn(tbSay),tbSay)
	
end

function doithuoctinhff7(luachon)
suluachon=luachon
	szDescription = format("Phi phong Ngù Phong 7 t­¬ng øng \n.1000 B¸ch NghÖ Tinh Th¹ch\n.1000 B¸ch NghÖ Tinh Ngäc\n ChØ Bá FF7 vµo « nhÐ ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "run_doithuoctinhff7", "no", 1)

		
end


function run_doithuoctinhff7(nCount)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/doithuoctinh7", "Ta xin th«i")
		return
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhthach= CalcEquiproomItemCount(6,1,49004,-1) 
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
				if nQuality ~=1 or (nGoldEquipIdxFF < 5317 or nGoldEquipIdxFF >5346) then
		 
					Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
					return
				end
						if bachnghetinhthach<1000 or bachnghetinhngoc <1000 then
					Say("Kh«ng §ñ 1000 B¸ch NghÖ Tinh Ngäc HoÆc 1000 B¸ch NghÖ Thiªn Th¹ch", 1, "§Ó Ta Xem L¹i")
					return
				end	
					

				if nGoldEquipIdxFF>=5317 and nGoldEquipIdxFF<=5321 then
					thutu_nguyenlieu=1
					else if nGoldEquipIdxFF>=5322 and nGoldEquipIdxFF<=5326 then
					thutu_nguyenlieu=2
					else if nGoldEquipIdxFF>=5327 and nGoldEquipIdxFF<=5331 then
					thutu_nguyenlieu=3
					else if nGoldEquipIdxFF>=5332 and nGoldEquipIdxFF<=5336 then
					thutu_nguyenlieu=4
					else if nGoldEquipIdxFF>=5337 and nGoldEquipIdxFF<=5341 then
					thutu_nguyenlieu=5
					else if nGoldEquipIdxFF>=5342 and nGoldEquipIdxFF<=5346 then
					thutu_nguyenlieu=6
					end
					end
					end
					end
					end
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1000, 6,1, 49004,-1)
				ConsumeEquiproomItem(1000, 6,1, 30355,-1)
				idcanadd=nGoldEquipIdxFF+(suluachon-thutu_nguyenlieu)*5
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
					WriteLogPro("dulieu/doithuoctinhff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep FF tu "..thutu_nguyenlieu.." den "..suluachon.."--"..nGoldEquipIdxFF.."\n");	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong 7 t­¬ng øng")
end
function nangcapphiphong()

local tbSay = 
{

--"N©ng CÊp FF HuyÒn Kim-->FF V« Cùc/#checknguyenlieunangcap()",
"N©ng CÊp FF Phong Van-->FF Phong Van Tinh X¶o (KTC)/#nangcapphequangtinhxao()",
"T¨ng Sao Cho Phi Phong Phong Van Tinh X¶o /#tangsaophequang()",
--"T¨ng Sao Cho Phi Phong V« Lang Tuyet(8) /#tangsaolangtuyet()",
--"§æi Thuéc TÝnh Cho Phi Phong V« Cùc/doithuoctinh7",
--"N©ng CÊp FF V« Cùc(7)-->FF L¨ng TuyÖt(8)/#hoidapphiphong7len8()",
--"T¨ng Sao Cho Phi Phong Tö V©n(9)/#chonphiphongcantangsao()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ",getn(tbSay),tbSay)
	
end 
---------------
function tangsaolangtuyet()

local tbSay = 
{

"Bá qua kh¸ng háa/#chonboquakhang1(0)",
"Bá qua kh¸ng b¨ng/#chonboquakhang1(1)",
"Bá qua kh¸ng l«i/#chonboquakhang1(2)",
"Bá qua kh¸ng ®éc/#chonboquakhang1(3)",
"Bá qua phæ phßng/#chonboquakhang1(4)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)
end

function chonboquakhang1(num)
numtrong1=num
local tbSay = 
{

"Chän PLVL/#tangsaokhapthan1(0)",
"Chän Kh¸ng B¨ng/#tangsaokhapthan1(1)",
"Chän Kh¸ng L«i/#tangsaokhapthan1(2)",
"Chän Kh¸ng Háa/#tangsaokhapthan1(3)",
"Chän Kh¸ng §éc/#tangsaokhapthan1(4)",
"Chän Kh¸ng XSTK/#tangsaokhapthan1(5)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)

end


function tangsaokhapthan1(num)
numtrong2=num
	szDescription = format("Bá FF vµo, nguyªn liÖu ®Ó ngoµi \n.1-2=1000 TN \n.2-3=5000 TN\n.3-4=10000 TN\n.4-5=15000 TN\n.5-6=20000 TN \n.6-7=22000 TN \n.7-8=30000 TN \n.8-9=35000 TN \n.9-10=40000 TN \n")
	GiveItemUI("tinh ngoc Tinh Ngäc", szDescription, "Run_tangsaokhapthan", "no", 1)
end


function Run_tangsaokhapthan(nCount)
	if nCount ~= 1 then
		Say("ChØ bá Phi Phong vµo trong, nguyªn liÖu kh¸c bá ë hµnh trang nhÐ", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/tangsaokhapthan1", "Ta xin th«i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local daitinhngoc= CalcEquiproomItemCount(6,1,4807,-1) 
           	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 5347 or nGoldEquipIdxFF >5646) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/tangsaokhapthan", "no")
		return 0
		end
		capcuaphiphong= (nGoldEquipIdxFF+1)-(5347+numtrong1*60+numtrong2*10)
		 if capcuaphiphong<=0 or capcuaphiphong>9 then
			Say("Phi Phong ®· ®¹t sè sao cao nhÊt hoÆc chän sai hÖ Cña Phi Phong §ang Mang")
		 return 0
		end

		 soluongdaitinhngoccan=0
		if capcuaphiphong==1 then	
			soluongdaitinhngoccan=1000
                             soluongdaikimbai=10
				elseif capcuaphiphong==2 then	
				soluongdaitinhngoccan=5000
                             soluongdaikimbai=50
			elseif capcuaphiphong==3 then	
				soluongdaitinhngoccan=1000
                                 soluongdaikimbai=100
			elseif capcuaphiphong==4 then	
				soluongdaitinhngoccan=15000
                                 soluongdaikimbai=150	
				elseif capcuaphiphong==5 then	
				soluongdaitinhngoccan=20000
                                   soluongdaikimbai=200
				elseif capcuaphiphong==6 then	
				soluongdaitinhngoccan=22000
                                    soluongdaikimbai=250
				elseif capcuaphiphong==7 then	
				soluongdaitinhngoccan=30000
                                     soluongdaikimbai=300
				elseif capcuaphiphong==8 then	
				soluongdaitinhngoccan=35000
                                       soluongdaikimbai=350
			        elseif capcuaphiphong==9 then	
				soluongdaitinhngoccan=40000
                                 soluongdaikimbai=400		
			end				

			if daitinhngoc  < soluongdaitinhngoccan then		
			Say("Kh«ng ®ñ "..soluongdaitinhngoccan.."  Tinh Ngäc, xem l¹i hµnh trang nhÐ")
			return 0
			end
			
	
			
				if ConsumeEquiproomItem(soluongdaitinhngoccan, 6,1, 4807,-1) >0 then
	                  	RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);
				WriteLogPro("dulieu/epff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da nang sao thanh cong "..nGoldEquipIdxFF.." len them 1* \n");	
				end

	
		end
------------------------------------------
function tangsaophequang()

	szDescription = format("Phi phong Ngù Phong Tinh X¶o t­¬ng øng \n.5-6 Tèn 8000 Tinh Ngäc\n.6-7 Tèn 9000 Tinh Ngäc\n.7-8 Tèn 12000 Tinh Ngäc\n.8-9 Tèn 15000 Tinh Ngäc\n.9-10 Tèn 19000 Tinh Ngäc\n   ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_tangsaophequang", "no", 1)
		
end


function Run_tangsaophequang(nCount)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "Ta xin th«i")
		return
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local tinhngoc= CalcEquiproomItemCount(6,1,4807,-1) 
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 5311 or nGoldEquipIdxFF >5346) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
		return
		end
		if nQuality ~=1 or (nGoldEquipIdxFF >= 5311 and nGoldEquipIdxFF <=5316) then
		 local soluongtinhngoc=8000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ 8000 Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4807,-1)
				if nGoldEquipIdxFF==5311 then
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,5317},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==5312 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,5322},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==5313 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,5327},nQuality=1,nCount=1},}, "test", 1);	
					elseif nGoldEquipIdxFF==5314 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,5332},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==5315 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,5337},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==5316 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,5342},nQuality=1,nCount=1},}, "test", 1);									
					end
					Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong V« Cùc 6* t­¬ng øng")					
		end

			if nQuality ~=1 or (nGoldEquipIdxFF >= 5317 and nGoldEquipIdxFF <=5346) then
			if nGoldEquipIdxFF==5317 or nGoldEquipIdxFF==5322 or nGoldEquipIdxFF==5327 or nGoldEquipIdxFF==5332 or nGoldEquipIdxFF==5337 or nGoldEquipIdxFF==5342 then 
			local soluongtinhngoc=9000
				if tinhngoc< soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4807,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong  Vo Cùc 7* t­¬ng øng")
			end	
			
			if nGoldEquipIdxFF==5318 or nGoldEquipIdxFF==5323 or nGoldEquipIdxFF==5328 or nGoldEquipIdxFF==5333 or nGoldEquipIdxFF==5338 or nGoldEquipIdxFF==5343 then 
			local soluongtinhngoc=12000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4807,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong v« Cùc 8* t­¬ng øng")
			end	
			if nGoldEquipIdxFF==5319 or nGoldEquipIdxFF==5324 or nGoldEquipIdxFF==5329 or nGoldEquipIdxFF==5334 or nGoldEquipIdxFF==5339 or nGoldEquipIdxFF==5344 then 
			local soluongtinhngoc=15000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4807,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong vo cùc 9* t­¬ng øng")
			end

			if nGoldEquipIdxFF==5320 or nGoldEquipIdxFF==5325 or nGoldEquipIdxFF==5330 or nGoldEquipIdxFF==5335 or nGoldEquipIdxFF==5340 or nGoldEquipIdxFF==5345 then 
			local soluongtinhngoc=19000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4807,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong V« Cùc 10* t­¬ng øng")
			end	
end
		end
	
	

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function nangcapphequangtinhxao()
	szDescription = format("Phi phong V« Cùc t­¬ng øng \n5000 B¸ch NghÖ Tinh Ngäc\n5000 B¸ch NghÖ Thiªn Th¹ch.\n ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_nangcapphequangtinhxao", "no", 1)

end

function Run_nangcapphequangtinhxao(nCount)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "Ta xin th«i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local bachnghethienthach= CalcEquiproomItemCount(6,1,49004,-1)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		--local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end

		if bachnghethienthach <5000 or bachnghetinhngoc<5000 then
		Say("Nguyªn LiÖu Kh«ng §ñ Råi B¹n ¥i")
		return 
		end
		if nQuality ~=1 or (nGoldEquipIdxFF <5305 or nGoldEquipIdxFF >5310) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
		 return
		end
		
		if nQuality ==1 and (nGoldEquipIdxFF >= 5305 and nGoldEquipIdxFF <= 5310) then

			RemoveItemByIndex(nItemIndex)
			ConsumeEquiproomItem(5000, 6,1, 30355,-1)
			ConsumeEquiproomItem(5000, 6,1, 49004,-1)
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+6},nQuality=1,nCount=1},}, "test", 1);
			Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong V« Cùc Tinh Xao t­¬ng øng")
		 else Say("Nguyªn LiÖu Kh«ng §ñ Råi B¹n ¥i")
		end
		
		end
	
	
	
	--------------------------------------------------------
function nangcapphiphong6len7()
	szDescription = format("Phi phong Ngù Phong t­¬ng øng \nKh«ng bá B¸ch LuyÖn Thµnh C­¬ng \nvµo trong n.\n ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_nangcapphiphong6len7", "no", 1)

end

function Run_nangcapphiphong6len7(nCount)
local henxui= random(1,10)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "Ta xin th«i")
		return
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachluyen= CalcEquiproomItemCount(6,1,49006,-1)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		--local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local tilethanhcong =0
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	--	Msg2Player(" Chóc mõng "..tilethanhcong.." *************** "..nGoldEquipIdxFF.."" )

		
		
		if nQuality ~=1 or (nGoldEquipIdxFF <4940 and nGoldEquipIdxFF >4945) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
		 return
		end

			if nQuality ==1 and (nGoldEquipIdxFF >= 4940 and nGoldEquipIdxFF <= 4945) then
								if bachluyen>=10000 then
									tilethanhcong=10
								else if bachluyen <=7900 and bachluyen >7600 then
								tilethanhcong=5
								else if bachluyen <=7600 and bachluyen>7000 then
								tilethanhcong = 2 
								else if bachluyen <=7000 and bachluyen >6500 then
								tilethanhcong = random(1,2)
								else if bachluyen<=6500 and bachluyen>6000 then
								tilethanhcong =1
								else if bachluyen<=6000 and bachluyen>5000 then
								tilethanhcong=random(0,1)
								else if bachluyen<=5000 then
										tilethanhcong=0
								 end
								 end
								 end
								 end
								 
								 end
								 end
								 end
		--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")
		if tilethanhcong==10 then
															RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(10000, 6,1, 49006,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,random(5305,5310)},nQuality=1,nCount=1},}, "test", 1);
													Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong V« Cùc t­¬ng øng")
													WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi 80 \n");		
		return
		end
											 if henxui<=tilethanhcong then
													RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(bachluyen, 6,1, 49006,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,random(5305,5310)},nQuality=1,nCount=1},}, "test", 1);
													Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong V« Cùc t­¬ng øng")
													WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi "..bachluyen.."\n");	
									--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")													
												else 
															ConsumeEquiproomItem(80, 6,1, 49006,-1)
															Msg2Player(" Chia buån cïng gia quyÕn - Chóc b¹n may m¾n lÇn sau nhÐ")
															WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep Xit FF voi "..bachluyen.."\n");	
															--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")		
											 end
		 else Say("Nguyªn LiÖu Kh«ng §ñ Råi B¹n ¥i")
		end
		
		end
	
function checknguyenlieunangcap()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
local bachluyen= CalcEquiproomItemCount(6,1,49006,-1) --B¸ch LuyÖn Thµnh C­¬ng
	local tilethanhcong =floor(bachluyen*10/10000) 

local tbSay = 
{
"Ta ch¾c ch¾n tiÕp tôc, ta sÏ bá FF6 vµo « luyÖn/#nangcapphiphong6len7()",
"Th«i ta kh«ng muèn n÷a/no"
}
hienthitile=tilethanhcong*10
if bachluyen>10000 then


Say( "<color=green>Nhµ ng­¬i ®ang cã <color=yellow> >10000 viªn<color> <color=white><B¸ch LuyÖn Thµnh C­¬ng><color> rong hµnh trang v× vËy tØ lÖ thµnh c«ng lµ 100%, TiÕp tôc chø ?",getn(tbSay),tbSay)
else 
Say( "<color=green><color=green>Nhµ ng­¬i ®ang cã <color=yellow> "..bachluyen.." viªn <color> <color=white><B¸ch LuyÖn Thµnh C­¬ng><color>\n trong hµnh trang v× vËy tØ lÖ thµnh c«ng lµ  thÊp \n TiÕp tôc chø ?",getn(tbSay),tbSay)
end
end


tbEquip2Item = tbActivityCompose:new()

function tbEquip2Item:CheckItem(tbItem ,nItemIndex)
	if IsMyItem(nItemIndex) ~= 1 then
		return
	end
	
	local tbRecItem = self:MakeItem(nItemIndex)
	local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
	local nLeftUsageTime = ITEM_GetLeftUsageTime(nItemIndex)
	if nExpiredTime ~= 0 or nLeftUsageTime ~= 4294967295 then
		return 
	end
	
	for k,v in tbItem do
		if k ~= "szName" and type(v) ~= "table" and v ~= -1 and tbRecItem[k] and v~= tbRecItem[k] then
			return
		elseif  k == "tbProp" and type(v) == "table" then
			local tbProp = tbRecItem[k]
			for k1,v1 in v do
				if type(v1) ~= "table" then
					if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and v1~= tbProp[k1] then
						return 
					end
				else
					if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and ( v1[1] > tbProp[k1] or tbProp[k1] > v1[2] )  then
						return 
					end
				end
			end
		end
	end		
	for key, value in tbItem do 
		if strfind(key, "Limit") and  type(value) == "function" then
			if value(tbItem, nItemIndex) ~= 1 then
				return
			end
		end
	end			
	return 1
end

function WantBuyBaoshi()
	local nPrice = 400
	local szTitle = format("Ng­¬i nghÜ ®æi lo¹i b¶o th¹ch nµo ®©y",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
				
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Trang bÞ  Kim ¤", tbProp = {0, {2055,2284}}, nQuality = 1 },
                  {szName = "TiÒn ®ång", tbProp = {4,417,1,1},nCount = 5},
			},
			tbProduct = {szName="Kim ¤ LÖnh", tbProp={6, 1, 2349, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
              [2] = 
		{
			tbMaterial = 
			{
				{szName = "Trang bÞ B¹ch Hæ", tbProp = {0, {2285,2514}}, nQuality = 1 },
                            {szName = "TiÒn ®ång", tbProp = {4,417,1,1},nCount = 10},
			},
			tbProduct = {szName="B¹ch Hæ LÖnh", tbProp={6, 1, 2357, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§æi lÊy %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end
-------------------che tao phi phong  ------------------------------ Quý---------------

function chetaophiphong()
--	do Say("Chøc n¨ng t¹m thêi ch­a më, xin quay l¹i sau...") return end
	local tab_Content = {
           "Khai Th«ng Phi Phong/khaithongphiphong",
           "Kh¶m Dßng Cho Phi Phong §· Khai Th«ng /khamdongff6",
		"Th«i kh«ng cÇn n÷a./Quit"
	}
	Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ", getn(tab_Content), tab_Content);
end;
---------------------------------------
function doithuoctinh6()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
				
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
                {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 5000},
			--	{szName="Ng©n L­îng",nJxb=100000000,nCount=1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(PLVL)", tbProp={0, 6037}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				  {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng B¨ng)", tbProp={0, 6038}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

		  [3] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng L«i)", tbProp={0, 6039}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[4] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng Háa)", tbProp={0, 6040}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
					[5] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng §éc)", tbProp={0, 6041}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
							[6] = 
		{
			tbMaterial = 
			{
			{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(XSTK)", tbProp={0, 6042}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§æi lÊy %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end
---------------------------------------
function khamdongff6()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{

		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(PLVL)", tbProp={0, 6037}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				{szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng B¨ng)", tbProp={0, 6038}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

		  [3] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng L«i)", tbProp={0, 6039}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[4] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng Háa)", tbProp={0, 6040}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
					[5] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng §éc)", tbProp={0, 6041}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[6] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 5000},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(XSTK)", tbProp={0, 6042}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§æi lÊy %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end
---------------------------------------
function khaithongphiphong()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong", tbProp = {0,6036}, nQuality = 1 },
                 {szName = "Tinh Ngäc", tbProp = {6,1,4806},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(§· Khai Th«ng)", tbProp={0, 6044}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§æi lÊy %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end
-------------------che tao an------------------------------

function epan()
	do Say("Chøc n¨ng t¹m thêi ch­a më, xin quay l¹i sau...") return end
	local tab_Content = {
           "N©ng cÊp Ên 4 -> 5/nangcapan5",
           "N©ng cÊp Ên 5 -> 6/nangcapan6",
	   "N©ng cÊp Ên 6 -> 7/nangcapan7",
	   "N©ng cÊp Ên 7 -> 8/nangcapan8",
	 --  "N©ng cÊp Ên 8 -> 9/nangcapan9",
	--   "N©ng cÊp Ên 9 -> 10/nangcapan10",
	  


	
		"Th«i kh«ng cÇn n÷a./Quit"
	}
	Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ", getn(tab_Content), tab_Content);
end;


---------nang cap an 5-----------------------

function nangcapan5()
	local title = "N©ng cÊp Ên 5"
	g_GiveItemUI(title, "§Ó n©ng cÊp Ên 4 -> Ên 5 vÜnh viÔn cÇn ®Æt vµo 1 Ên 4 vÜnh viªn. Hµnh trang ph¶i cã  200 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 200 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn Ên 4 ", {giveokan5}, nil, nil)


end


function giveokan5(putCount)
	local tban = {
		[1]={	
			{"Ngò hµnh Ên (c­êng hãa) cÊp 4 ",3208},
			{"Ngò hµnh Ên (nh­îc hãa) cÊp 4",3218},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo Ên 4 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Ên cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng Ên 4")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 10 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 10 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 200) then
				rate = 200
			end
			ConsumeEquiproomItem(10, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.5
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


-----------------------nang cap an 6--------------------------


function nangcapan6()
	local title = "N©ng cÊp Ên 6"
	g_GiveItemUI(title, "§Ó n©ng cÊp Ên 5 -> Ên 6 vÜnh viÔn cÇn ®Æt vµo 1 Ên 5 vÜnh viªn. Hµnh trang ph¶i cã 20 Hoµng Kim Th¹ch vµ 250 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 250 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn Ên 5 ", {giveokan6}, nil, nil)


end


function giveokan6(putCount)
	local tban = {
		[1]={	
			{"Ngò hµnh Ên (c­êng hãa) cÊp 5 ",3209},
			{"Ngò hµnh Ên (nh­îc hãa) cÊp 5",3219},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo Ên 5 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Ên cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng Ên 5")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 20 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 20 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 250) then
				rate = 250
			end
			ConsumeEquiproomItem(20, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.4
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


----------------------nang cap an 7--------------------------------------

function nangcapan7()
	local title = "N©ng cÊp Ên 7"
	g_GiveItemUI(title, "§Ó n©ng cÊp Ên 6 -> Ên 7 vÜnh viÔn cÇn ®Æt vµo 1 Ên 6 vÜnh viªn. Hµnh trang ph¶i cã 50 Hoµng Kim Th¹ch vµ 500 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 500 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn Ên 6 ", {giveokan7}, nil, nil)


end


function giveokan7(putCount)
	local tban = {
		[1]={	
			{"Ngò hµnh Ên (c­êng hãa) cÊp 6 ",3210},
			{"Ngò hµnh Ên (nh­îc hãa) cÊp 6",3220},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo Ên 6 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Ên cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng Ên 6")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 50 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 500) then
				rate = 500
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.2
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end





------------------------------nang cap an 8--------------------------------------------

function nangcapan8()
	local title = "N©ng cÊp Ên 8"
	g_GiveItemUI(title, "§Ó n©ng cÊp Ên 7 -> Ên 8 vÜnh viÔn cÇn ®Æt vµo 1 Ên 7 vÜnh viªn. Hµnh trang ph¶i cã 250 Hoµng Kim Th¹ch vµ 2500 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 2500 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn Ên 7 ", {giveokan8}, nil, nil)


end


function giveokan8(putCount)
	local tban = {
		[1]={	
			{"Ngò hµnh Ên (c­êng hãa) cÊp 7 ",3211},
			{"Ngò hµnh Ên (nh­îc hãa) cÊp 7",3221},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo Ên 6 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Ên cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng Ên 7")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 250 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 250 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 2500) then
				rate = 2500
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.04
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


--------------------------------------------------------------------------------------


-------------------che tao phi phong ----------------------

function epphiphong()
	local tab_Content = {
           "N©ng cÊp phi ph«ng 4 -> 5/nangcappp5",
           "N©ng cÊp phi ph«ng 5 -> 6/nangcappp6",
	   "N©ng cÊp phi ph«ng 6 -> 7/nangcappp7",
	   "N©ng cÊp phi ph«ng 7 -> 8/nangcappp8",
	  -- "N©ng cÊp phi ph«ng 8 -> 9/nangcappp9",
	 --  "N©ng cÊp phi ph«ng 9 -> 10/nangcappp10",
	--   "N©ng cÊp phi ph«ng 10 -> siªu cÊp/nangcapppsc",


	
		"Th«i kh«ng cÇn n÷a./Quit"
	}
	Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ", getn(tab_Content), tab_Content);
end;

----------nang cap ff5------------------------------------------------


function nangcappp5()
	local title = "N©ng cÊp Phi phong 5"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 4 -> phi phong 5 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 4 vÜnh viªn. Hµnh trang ph¶i cã 250 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 250 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 4 ", {giveokff5}, nil, nil)


end



function giveokff5(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi Phong Ng¹o TuyÕt (dÞch chuyÓn tøc thêi)",3468},
			{"Phi Phong Ng¹o TuyÕt (hãa gi¶i s¸t th­¬ng)",3469},
			

		},

		[2]={
			{"Phi phong K×nh L«i (dÞch chuyÓn tøc thêi)",3470},
			{"Phi phong K×nh L«i (hãa gi¶i s¸t th­¬ng)",3471},
			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 4 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[2][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 4")
			return
		
		end
		
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 250) then
				rate = 250
			end
			

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.4
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 2)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 2)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


-----------phi phong 6 --------------

function nangcappp6()
	local title = "N©ng cÊp Phi phong 6"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 5 -> phi phong 6 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 5 vÜnh viªn. Hµnh trang ph¶i  500 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 500 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 5 ", {giveokff6}, nil, nil)


end


function giveokff6(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong K×nh L«i (dÞch chuyÓn tøc thêi)",3470},
			{"Phi phong K×nh L«i (hãa gi¶i s¸t th­¬ng)",3471},
			{"Phi phong K×nh L«i (Träng kÝch)",3472},

			

		},

		[2]={
			{"Phi phong Ngù phong (dÞch chuyÓn tøc thêi)",3473},
			{"Phi phong Ngù phong (hãa gi¶i s¸t th­¬ng)",3474},
			{"Phi phong Ngù phong (Träng kÝch)",3475},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 5 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 5")
			return
		
		end
		
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 500) then
				rate = 500
			end
			
			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.2
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end

------------------------nang cap ff 7 --------------------------------

function nangcappp7()
	local title = "N©ng cÊp Phi phong 7"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 6 -> phi phong 7 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 6 vÜnh viªn. Hµnh trang ph¶i cã 50 Hoµng Kim Th¹ch vµ 1000 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 1000 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 6 ", {giveokff7}, nil, nil)


end


function giveokff7(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong Ngù phong (dÞch chuyÓn tøc thêi)",3473},
			{"Phi phong Ngù phong (hãa gi¶i s¸t th­¬ng)",3474},
			{"Phi phong Ngù phong (Träng kÝch)",3475},
			

		},

		[2]={
			{"Phi phong PhÖ Quang (dÞch chuyÓn tøc thêi)",3476},
			{"Phi phong PhÖ Quang (hãa gi¶i s¸t th­¬ng)",3477},
			{"Phi phong PhÖ Quang (Träng kÝch)",3478},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 6 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 6")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 50 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 1000) then
				rate = 1000
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.1
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end




--------------nang cap ff8------------------------------------------


function nangcappp8()
	local title = "N©ng cÊp Phi phong 8"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 7 -> phi phong 8 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 7 vÜnh viªn. Hµnh trang ph¶i cã 50 Hoµng Kim Th¹ch vµ 2500 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 2500 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 7 ", {giveokff8}, nil, nil)


end


function giveokff8(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong PhÖ Quang (dÞch chuyÓn tøc thêi)",3476},
			{"Phi phong PhÖ Quang (hãa gi¶i s¸t th­¬ng)",3477},
			{"Phi phong PhÖ Quang (Träng kÝch)",3478},			

		},

		[2]={
			{"Phi phong KhÊp ThÇn (dÞch chuyÓn tøc thêi)",3479},
			{"Phi phong KhÊp ThÇn (hãa gi¶i s¸t th­¬ng)",3480},
			{"Phi phong KhÊp ThÇn (Träng kÝch)",3481},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 7 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 7")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 50 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 2500) then
				rate = 2500
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.04
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


---------------------------nang cap ff9-----------------------------------------
function nangcappp9()
	local title = "N©ng cÊp Phi phong 9"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 8 -> phi phong 9 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 8 vÜnh viªn. Hµnh trang ph¶i cã 500 Hoµng Kim Th¹ch vµ 5000 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 5000 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 8 ", {giveokff9}, nil, nil)


end


function giveokff9(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong KhÊp ThÇn (dÞch chuyÓn tøc thêi)",3479},
			{"Phi phong KhÊp ThÇn (hãa gi¶i s¸t th­¬ng)",3480},
			{"Phi phong KhÊp ThÇn (Träng kÝch)",3481},			

		},

		[2]={
			{"Phi phong K×nh Thiªn (dÞch chuyÓn tøc thêi)",3482},
			{"Phi phong K×nh Thiªn (hãa gi¶i s¸t th­¬ng)",3483},
			{"Phi phong K×nh Thiªn (Träng kÝch)",3484},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 8 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 8")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 500 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 500 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 5000) then
				rate = 5000
			end
			ConsumeEquiproomItem(500, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.02
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end




------------------------------nag cap ff10------------------------------------------------



function nangcappp10()
	local title = "N©ng cÊp Phi phong 10"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 9 -> phi phong 10 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 9 vÜnh viªn. Hµnh trang ph¶i cã 1000 Hoµng Kim Th¹ch vµ 10000 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 10000 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 8 ", {giveokff10}, nil, nil)


end


function giveokff10(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong K×nh Thiªn (dÞch chuyÓn tøc thêi)",3482},
			{"Phi phong K×nh Thiªn (hãa gi¶i s¸t th­¬ng)",3483},
			{"Phi phong K×nh Thiªn (Träng kÝch)",3484},			

		},

		[2]={
			{"Phi phong V« Cùc (dÞch chuyÓn tøc thêi)",3485},
			{"Phi phong V« Cùc (hãa gi¶i s¸t th­¬ng)",3486},
			{"Phi phong V« Cùc (Träng kÝch)",3487},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 9 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 9")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 1000 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 1000 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 10000) then
				rate = 10000
			end
			ConsumeEquiproomItem(1000, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.01
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end



----------------------------------nang cap ff sieu cap-----------------------------------------------------

function nangcapppsc()

do Say("TÝnh n¨ng hiÖn t¹i ch­a më, xin quay l¹i sau...") return end


end


-----------------------------------------------------


function cachchetao()
	local tab_Content = {
        --   "Ta muèn xem c¸ch chÕ t¹o trang bÞ XÝch L©n/chetaoxichlan",
       --    "Xem c¸ch chÕ t¹o trang bÞ Minh Ph­îng /chetaominhphuong",
	--"Xem c¸ch chÕ t¹o trang bÞ §»ng Long/chetaodanglong",
	
		"Th«i kh«ng b¸n n÷a./Quit"
	}
	Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn t×m hiÓu c¸ch chÕ t¹o trang bÞ nµo?  ", getn(tab_Content), tab_Content);
end;

function chetaoxichlan()
Talk(1,"", "<color=yellow> ChÕ t¹o trang bÞ XÝch L©n cÇn 1 mãn ®å B¹ch Hæ + 2 ThÇn BÝ Kho¸ng Th¹ch + 20 ®å phæ XÝch L©n cïng lo¹i. Chó ý chØ bá ®å b¹ch hæ vµo « yªu cÇu, ThÇn bÝ Kho¸ng th¸ch vµ ®å phæ bá s½n trong hµnh trang kh«ng b¶o vµo « yªu cÇu")

end

function chetaominhphuong()
Talk(1,"", "<color=yellow> ChÕ t¹o trang bÞ Minh Ph­îng cÇn 1 mãn ®å XÝch L©n + 4 ThÇn BÝ Kho¸ng Th¹ch + 50 ®å phæ Minh Ph­îng cïng lo¹i. Chó ý: ChØ bá trang bÞ XÝch L©n vµo h«p tho¹i, ThÇn bÝ Kho¸ng th¸ch vµ ®å phæ bá s½n trong hµnh trang kh«ng b¶o vµo « yªu cÇu")

end

------------------------------------------------------------------------------------------

function chetaodanglong()
Talk(1,"", "<color=yellow> ChÕ t¹o trang bÞ §»ng Long cÇn 1 mãn ®å Minh Ph­îng + 6 ThÇn BÝ Kho¸ng Th¹ch + 100 ®å phæ §»ng Long cïng lo¹i. Chó ý: ChØ bá trang bÞ Minh Ph­îng vµo h«p tho¹i, ThÇn bÝ Kho¸ng th¸ch vµ ®å phæ bá s½n trong hµnh trang kh«ng b¶o vµo « yªu cÇu")

end 
--------------------------------------------------------------------------

function bachqua1()
local nIndex = AddStackItem(1,4,417,1,1,0,0,0)
SyncItem(nIndex)
SetItemBindState(nIndex,-2)
end
-----------------------------------------------------------------------------------
--------------------------------------------------------------
------------------------------------------------------------------
----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
function doilenhbai()
	local nPrice = 400
	local szTitle = format("Ng­¬i nghÜ ®æi lo¹i b¶o th¹ch nµo ®©y",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
			
              [1] = 
		{
			tbMaterial = 
			{
				{szName="LÖnh bµi kim ¤", tbProp={6,1,2349,1,0,0}},
                            --{szName = "TiÒn ®ång(kh«ng khãa)", tbProp = {4,417,1,1},nCount = 500},
                            {szName="ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398, 1, 0, 0}},
                            {szName="HuyÒn tinh kho¸ng th¹ch(cÊp 10)", tbProp={6,1,147,10,0,0}},
			},
			tbProduct = {szName="LÖnh bµi B¹ch Hæ", tbProp={6, 1, 2357, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},

		 [2] = 
		{
			tbMaterial = 
			{
				{szName="LÖnh bµi B¹ch Hæ", tbProp={6,1,2357,1,0,0}},
                            --{szName = "TiÒn ®ång(kh«ng khãa)", tbProp = {4,417,1,1},nCount = 500},
                            {szName="ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398, 1, 0, 0},nCount=3},
                            {szName="HuyÒn tinh kho¸ng th¹ch(cÊp 10)", tbProp={6,1,147,10,0,0}},
			},
			tbProduct = {szName="LÖnh bµi XÝch L©n", tbProp={6, 1, 2370, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
			

		},

		[3] = 
		{
			tbMaterial = 
			{
				{szName="LÖnh bµi XÝch L©n", tbProp={6,1,2370,1,0,0}},
                            {szName="ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398, 1, 0, 0},nCount=4},
                            {szName="HuyÒn tinh (cÊp 10)", tbProp={6,1,147,10,0,0},nCount=4},
				
			},
			tbProduct = {szName="LÖnh bµi Minh Ph­îng", tbProp={6,1,2371,1,0,0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
			

		},

          }
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§æi lÊy %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
		-- Msg2SubWorld("<color=metal>B¹n "..GetName().." ®· n©ng cÊp thµnh c«ng tõ BHL lªn XÝch L©n lÖnh t¹i thî rÌn b¸ ®äa Ba L¨ng huyÖn !")
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end

function eptinhsuong()
	local title = "N©ng cÊp §å Tinh S­¬ng"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n  -1 ¸o hoÆc vò khÝ §»ng long.\n  -1000 Tö Tinh kho¸ng.\n  -1 Tinh S­¬ng LÖnh.\n  -10 kv cho ¸o, 20kv cho vò khÝ.\n\n+ Nguyªn liÖu t¨ng may m¾n:\n  -§å phæ Tinh S­¬ng(tèi ®a 10 c¸i).\n  - Tinh S­¬ng th¹ch th­îng(tèi ®a 50 c¸i)", {nangcaptinhsuong}, nil, nil)
end

function epnguyetkhuyen()
	local title = "N©ng cÊp §å NguyÖt KhuyÕn"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n-1 Trang bÞ Tinh S­¬ng \n-2000 Tö Tinh Kho¸ng Th¹ch.\n-1 NK LÖnh.\n\n+ Nguyªn liÖu t¨ng may m¾n:\n  -§å phæ NguyÖt KhuyÕt(tèi ®a 10 c¸i).\n  - NguyÖt KhuyÕn Tinh Th¹ch(tèi ®a 30 c¸i)", {nangcapnguyetkhuyen}, nil, nil)
end
function quynguyentinhsuong()
	local title = "N©ng cÊp §å Tinh S­¬ng"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n  -1 Trang bÞ tinh s­¬ng.\n  -1 kiÓm ®Þnh phï.\n  -1 quy nguyªn phï.", {doiruongtinhsuong}, nil, nil)
end
function quynguyentinhsuongmax()
	local title = "N©ng cÊp §å Tinh S­¬ng Max"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n  -1 Trang bÞ tinh s­¬ng.\n  -VK + ¸o : 50KNB.\n  -C¸c Mãn Kh¸c 10KNB.", {doiruongtinhsuongmax}, nil, nil)
end

function quynguyennguyetkhuyen()
	local title = "N©ng cÊp §å NguyÖt KhuyÕt"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n  -1 Trang bÞ NguyÖt KhuyÕt.\n  -1 kiÓm ®Þnh phï.\n  -1 quy nguyªn phï.\n  -1 Trïng LuyÖn Ngäc.", {doiruongnguyetkhuyet}, nil, nil)
end

function quynguyennguyetkhuyenmax()
	local title = "N©ng cÊp §å NguyÖt KhuyÕt Max"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n  -1 Trang bÞ NguyÖt KhuyÕt Max.\n  Vò KhÝ -200 KNB.\n ¸o - 150 KNB.\n Cßn L¹i - 50KNB", {doiruongnguyetkhuyetmax}, nil, nil)
end




---------nang cap tinh suong

function nangcaptinhsuong(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi §»ng Long. Toµn bé nguyªn liÖu ®Ó ë hµnh trang. Chó ý ®å phæ tèi ®a 10 m¶nh mçi m·nh 5% thµnh c«ng, Tinh s­¬ng th¹ch 50 côc mçi côc 1% thµnh c«ng")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local danglongTable = configTS[1]		
	local minId = danglongTable[1][2]
	local maxId = danglongTable[getn(danglongTable)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	if typeItem > 1 then
		Talk(1,"", "Xin vui lßng bá vµo trang bÞ ®¨ng long ¸o hoÆc vò khÝ")
		return

		
	end
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi §»ng Long. Toµn bé nguyªn liÖu ®Ó ë hµnh trang. Chó ý ®å phæ tèi ®a 10 m¶nh mçi m·nh 5% thµnh c«ng, Tinh s­¬ng th¹ch tèi ®a 50 côc mçi côc 1% thµnh c«ng")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 4885, -1) < 1000) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1000 Tö Tinh Kho¸ng th¹ch Kho¸ng Th¹ch")
		return
	end
	if (CalcEquiproomItemCount(6,1,4882,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 LÖnh bµi Tinh S­¬ng")
		return
	end
      
      local nCash = GetCash()
	  
      if typeItem == 0 then
			if nCash < 100000000 then
				Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 10.000 v¹n ®Ó n©ng cÊp lªn ¸o gi¸p Tinh S­¬ng")
				return
			end
			
	  end
	  
	  if typeItem == 1 then
			if nCash < 200000000 then
				Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 20.000 v¹n ®Ó n©ng cÊp lªn vò khÝ Tinh S­¬ng")
				return
			end
			
	  end

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local dopho = 0
		
		if typeItem == 0 then 
			Pay(100000000) 
			dopho = 4883
		else 
			Pay(200000000)
			dopho = 4884
		end
		
		
	
		local rate1 = CalcEquiproomItemCount(6, 1, dopho , -1);
		local rate2 = CalcEquiproomItemCount(6,1,4881,-1)
		local nrate1 = rate1*3
		local nrate2 = rate2*1.4
		if (nrate2 > 70 ) then
			nrate2 = 70
		end
		if (nrate1 > 30) then
			nrate1 = 30
		end
		rate = nrate1 + nrate2
		if nrate1 > 30 then
			ConsumeEquiproomItem(10, 6, 1, dopho, -1)
		else
			ConsumeEquiproomItem(rate1, 6, 1, dopho, -1)
		end
		if nrate2 == 70 then
			ConsumeEquiproomItem(50, 6, 1, 4881, -1)

		else
		
			ConsumeEquiproomItem(rate2, 6, 1, 4881, -1)
		end
		ConsumeEquiproomItem(1000, 6, 1, 4885, -1)
		ConsumeEquiproomItem(1, 6, 1, 4882, -1)

		
		local rnd = random(0, 5) + rate
		if (rnd >= 100) then
			local addedId = 0
			if (itemType  == 0) then
				addedId = 4509
				tbAward = {
									{szName="B¶o R¬ng Tinh S¬ng Kh¶i",tbProp={6,1,4509,1,0,0},nCount=1,tbParam={6,0,0,0,0,0}},
									
		
		}
			else
				addedId = 4510
				tbAward = {
		
										{szName="B¶o R¬ng Tinh S¬ng Vò KhÝ",tbProp={6,1,4510,1,0,0},nCount=1,tbParam={7,0,0,0,0,0}},
		
								}
			end
			
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Ðp tinh s­¬ng")
			
			logExchangeItem(addedId, rate1 , rate2)	
		else
			logExchangeItem(goldEquipIndex, rate1 , rate2)				
		end
	end
	
end
------------------------------nang cap nguyet khuyen------------------------------
function nangcapnguyetkhuyen(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi NguyÖt KhuyÕt. Toµn bé nguyªn liÖu ®Ó ë hµnh trang. Chó ý ®å phæ tèi ®a 10 m¶nh mçi m·nh 5% thµnh c«ng, NguyÖt khuyÕt tinh th¹ch 30 côc mçi côc 1% thµnh c«ng")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	     local nCash = GetCash()
				if nCash < 200000000 then
				Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 20.000 v¹n ®Ó n©ng cÊp lªn NguyÖt KhuyÕt")
				return
			end
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local nguyetkhuyettb = configNK[1]		
	local minId = nguyetkhuyettb[1][2]
	local maxId = nguyetkhuyettb[getn(nguyetkhuyettb)][2]
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < 3405) or (goldEquipIndex > 3654) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi Tinh S­¬ng. Toµn bé nguyªn liÖu ®Ó ë hµnh trang")
			return
		
	end
	
	if typeItem==0 or typeItem==1 then
	
			Talk(1,"", "HiÖn t¹i ¸o vµ Vò khÝ ta vÉn ch­a nghiªn cøu ®­îc c¸ch chÕ t¹o nhÐ huynh ®µi")
		return
	end
	
	if (CalcEquiproomItemCount(6, 1, 4885, -1) < 2000) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 2000 Tö Tinh Kho¸ng Th¹ch ")
		return
	end
	if (CalcEquiproomItemCount(6,1,4834,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 NguyÖt KhuyÕt LÖnh")
		return
	end
	if typeItem >=5 then
			iddopho=4424+typeItem
			dophonguyetkhuyet= CalcEquiproomItemCount(6, 1,iddopho, -1)
				else 
				iddopho=4434+typeItem
				dophonguyetkhuyet= CalcEquiproomItemCount(6, 1, iddopho, -1)	
				end
				
		nguyetkhuyentinhthach=CalcEquiproomItemCount(6, 1, 4817,-1) --NguyÖt KhuyÕt Tinh Th¹ch
		tilethanhcong = dophonguyetkhuyet*5 + nguyetkhuyentinhthach*1.5
		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 §å Phæ NguyÖt KhuyÕt cïng lo¹i")
		return
	end

		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) < 5 ) or (CalcEquiproomItemCount(6,1,4817,-1) < 20 ) then  -- do duoi 5 va nk tinh thach duoi 20 thi ti le la 0%
		tilethanhcong=0  
		end
		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) == 9) or (CalcEquiproomItemCount(6,1,4817,-1) == 29)  then --- thieu 1 nguyen lieu la 50%
		tilethanhcong=50
		end
		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) == 8) or (CalcEquiproomItemCount(6,1,iddopho,-1) == 7) or (CalcEquiproomItemCount(6,1,4817,-1) == 28)  or (CalcEquiproomItemCount(6,1,4817,-1) == 27) or (CalcEquiproomItemCount(6,1,4817,-1) == 26) or (CalcEquiproomItemCount(6,1,4817,-1) == 25) then
		tilethanhcong=20
		end
		if (CalcEquiproomItemCount(6,1,iddopho,-1) == 6) or  (CalcEquiproomItemCount(6,1,iddopho,-1) == 5) or (CalcEquiproomItemCount(6,1,4817,-1) == 24)  or (CalcEquiproomItemCount(6,1,4817,-1) == 23)  or (CalcEquiproomItemCount(6,1,4817,-1) == 22)  or (CalcEquiproomItemCount(6,1,4817,-1) == 21)  or (CalcEquiproomItemCount(6,1,4817,-1) == 20) then
		tilethanhcong=10
		
		end
		local mayman=random(1,100)
		if mayman<=tilethanhcong or (dophonguyetkhuyet==10 and nguyetkhuyentinhthach==30 ) then
		
		
					 if (RemoveItemByIndex(itemIndex) == 1) then
						local itemType = mod(goldEquipIndex,10)
						local requireIngradent = 0
						local tbparam = 0
				
									for i = 1, getn(configNK[2]) do
												
												if (configNK[2][i][3] == itemType) then
													requireIngradent = configNK[2][i][2]
													tbparam = configNK[2][i][4]
												end
									end
				
										ConsumeEquiproomItem(2000, 6, 1, 4885, -1)
										ConsumeEquiproomItem(1, 6, 1, 4834, -1)
									--	ConsumeEquiproomItem(1, 6, 1, 4830, -1)
									ConsumeEquiproomItem(30, 6, 1, 4817, -1)		
									ConsumeEquiproomItem(10, 6, 1, iddopho, -1)
										tbAward = {
											{szName="B¶o R¬ng NguyÖt KhuyÕt",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
										}
														
											
											tbAwardTemplet:GiveAwardByList(tbAward,"Bao r­¬ng NguyÖt KhuyÕt")
											--	Msg2Player(" Thµnh C«ng,Tinh Th¹ch:"..nguyetkhuyentinhthach.."----. §å Phæ:"..dophonguyetkhuyet.."-.-ID §å Phæ: "..iddopho.."--.-TØ LÖ Thµnh C«ng--"..tilethanhcong.."%------Con Sè may m¾n-"..mayman.."------")
												Msg2Player(" Thµnh C«ng - Chóc Mõng B¹n")
											Pay(200000000)
											WriteLogPro("dulieu/epdonguyetkhuyen.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong nguyet khuyen  Tinh Th¹ch:"..nguyetkhuyentinhthach.."----. §å Phæ:"..dophonguyetkhuyet.."-.-ID §å Phæ: "..iddopho.."--.-TØ LÖ Thµnh C«ng--"..tilethanhcong.."%------Con Sè may m¾n-"..mayman.."------\n");		
										--	logExchangeItem1(requireIngradent, 3307, 3308)	
							else
					--	logExchangeItem1(goldEquipIndex, 0 , 0)				
					end
		else 
		ConsumeEquiproomItem(2000, 6, 1, 4885, -1)
		ConsumeEquiproomItem(1, 6, 1, 4834, -1)		
		ConsumeEquiproomItem(30, 6, 1, 4817, -1)		
		ConsumeEquiproomItem(10, 6, 1, iddopho, -1)
		Pay(200000000)
	--	Msg2Player(" ThÊt b¹i,Tinh Th¹ch:"..nguyetkhuyentinhthach.."----. §å Phæ:"..dophonguyetkhuyet.."-.-ID §å Phæ: "..iddopho.."--.-TØ LÖ Thµnh C«ng--"..tilethanhcong.."%------Con Sè may m¾n-"..mayman.."------")
		Msg2Player(" ThÊt b¹i - Chia Buån Cïng B¹n")
		WriteLogPro("dulieu/epdonguyetkhuyen.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep that bai nguyet khuyen,,  Tinh Th¹ch:"..nguyetkhuyentinhthach.."----. §å Phæ:"..dophonguyetkhuyet.."-.-ID §å Phæ: "..iddopho.."--.-TØ LÖ Thµnh C«ng--"..tilethanhcong.."%------Con Sè may m¾n-"..mayman.."------\n");		

		end
end

---------doi vu khi hoac ao tinh suong lay ruong -------

function doiruongtinhsuong(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bÞ tinh s­¬ng. Quy nguyªn phï vµ kiÓm ®Þnh phï bá ë hµnh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi Tinh s­¬ng. Toµn bé nguyªn liÖu ®Ó ë hµnh trang")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 3007, -1) < 1) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 Ngò linh kiÓm ®Þnh phï")
		return
	end
	if (CalcEquiproomItemCount(6,1,3008,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 Ngò linh quy nguyªn phï")
		return
	end
      
     

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg[2]) do
				
				if (roll_cfg[2][i][3] == itemType) then
					requireIngradent = roll_cfg[2][i][2]
					tbparam = roll_cfg[2][i][4]
				end
	end
	
		ConsumeEquiproomItem(1, 6, 1, 3007, -1)
		ConsumeEquiproomItem(1, 6, 1, 3008, -1)
		tbAward = {
			{szName="B¶o R¬ng Tinh S¬ng",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
									
		
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r­¬ng tinh s­¬ng")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
	
---------doi tinh suong max -------

function doiruongtinhsuongmax(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bÞ Tinh S­¬ng Max. KNB bá ë hµnh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg_ts_max[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bÞ Tinh S­¬ng. KNB ®Ó ë hµnh trang")
			return
		
	end
if typeItem ==6 or typeItem ==5  then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 200) then
		Talk(1,"", "Vò KhÝ +¸o Th× Trong r­¬ng ph·i cã Ýt nhÊt 50 KNB nhÐ b¹n ")
		return
	end
end    
 
   

	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 10) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 10 KNB nhÐ b¹n ")
		return
	end

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg_ts_max[2]) do
				
				if (roll_cfg_ts_max[2][i][3] == itemType) then
					requireIngradent = roll_cfg_ts_max[2][i][2]
					tbparam = roll_cfg_ts_max[2][i][4]
				end
	end
	if typeItem ==6 or typeItem ==5 then  ---kiem tra la vu khi
		ConsumeEquiproomItem(50,4,1496,1,-1)
		else 
			ConsumeEquiproomItem(10,4,1496,1,-1)
			end

		tbAward = {
			{szName="B¶o R­¬ng Tinh S­¬ng Max",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r­¬ng Tinh S­¬ng Max")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end

---------doi nguyet khuyet lay ruong -------

function doiruongnguyetkhuyet(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bÞ NguyÖt khuyÕt. Quy nguyªn phï+kiÓm ®Þnh phï+Ngäc Trïng LuyÖn bá ë hµnh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg_nk[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi NguyÖt KhuyÕt. Toµn bé nguyªn liÖu ®Ó ë hµnh trang")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 3007, -1) < 1) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 Ngò linh kiÓm ®Þnh phï")
		return
	end
	if (CalcEquiproomItemCount(6,1,3008,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 Ngò linh quy nguyªn phï")
		return
	end
      
	  	if (CalcEquiproomItemCount(6,1,4830,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 Ngò linh quy nguyªn phï")
		return
	end
     

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg_nk[2]) do
				
				if (roll_cfg_nk[2][i][3] == itemType) then
					requireIngradent = roll_cfg_nk[2][i][2]
					tbparam = roll_cfg_nk[2][i][4]
				end
	end
	
		ConsumeEquiproomItem(1, 6, 1, 3007, -1)
		ConsumeEquiproomItem(1, 6, 1, 3008, -1)
		ConsumeEquiproomItem(1, 6, 1, 4830, -1)
		tbAward = {
			{szName="B¶o R¬ng NguyÖt KhuyÕt",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r­¬ng NguyÖt KhuyÕt")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
	
---------doi nguyet khuyet lay ruong max -------

function doiruongnguyetkhuyetmax(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bÞ NguyÖt khuyÕt Max. KNB bá ë hµnh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg_nk_max[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi NguyÖt KhuyÕt. Toµn bé nguyªn liÖu ®Ó ë hµnh trang")
			return
		
	end
if typeItem ==6 then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 200) then
		Talk(1,"", "Vò KhÝ Th× Trong r­¬ng ph·i cã Ýt nhÊt 200 KNB nhÐ b¹n ")
		return
	end
end    
 
if typeItem ==5 then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 150) then
		Talk(1,"", "¸o Gi¸p Th× Trong r­¬ng ph·i cã Ýt nhÊt 150 KNB nhÐ b¹n ")
		return
	end
end     

	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 50) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 50 KNB nhÐ b¹n ")
		return
	end

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg_nk_max[2]) do
				
				if (roll_cfg_nk_max[2][i][3] == itemType) then
					requireIngradent = roll_cfg_nk_max[2][i][2]
					tbparam = roll_cfg_nk_max[2][i][4]
				end
	end
	if typeItem ==6 then  ---kiem tra la vu khi
		ConsumeEquiproomItem(200,4,1496,1,-1)
		else
			if typeItem ==5 then  ---kiem tra la vu khi
		ConsumeEquiproomItem(150,4,1496,1,-1)
		else 
			ConsumeEquiproomItem(50,4,1496,1,-1)
			end
			end
		tbAward = {
			{szName="B¶o R­¬ng NguyÖt KhuyÕt Max",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r­¬ng NguyÖt KhuyÕt Max")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
-------------------------------------

function logExchangeItem(gradientItem, gradientnumber, item) 
	local account = GetAccount()
	local name = GetName()
	local row = {account, name, gradientItem, gradientnumber, item}
	local fileName = "logdoido_.txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "Character", "Gradient", "Grandient Number", "Item"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)	
end


function logExchangeItem1(gradientItem, gradientnumber, item) 
	local account = GetAccount()
	local name = GetName()
	local row = {account, name, gradientItem, gradientnumber, item}
	local fileName = "logdoido1_.txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "Character", "Gradient", "Grandient Number", "Item"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)	
end




function phanratrangbi()
local tab_Content = {
"§æi trang bÞ lÊy lÖnh bµi<Kim ¤, B¹ch Hç> /WantBuyBaoshi",
"Ph©n r· trang bÞ<XÝch L©n,Minh Ph­îng,§»ng Long> /phanraxichlan",
" §ãng./no"
}
Say("B¹n muèn ph©n r· lo¹i trang bÞ nµo?", getn(tab_Content), tab_Content);
end;

function phanraxichlan()
	local title = "Ph©n r· §å XÝch L©n"
	g_GiveItemUI(title, "CÇn 1 mãn XL §Æt vµo ¤ vµ 10 tiÒn ®ång trong hµnh trang", {phanraxl}, nil, nil)
end

function phanraxl(putCount) --
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo 1 mãn trang bÞ XÝch L©n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bi co thoi han su dung khong the nang cap")
		return
	end	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local xichLanTable = tbConfig[4]		
	local minId = xichLanTable [1][2]
	local maxId = xichLanTable [getn(xichLanTable )][2]
	local minXichLanHoaSonId = xichLan[1][2]
	local maxXichLanHoaSonId = xichLan[20][2]
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
		if(goldEquipIndex < minXichLanHoaSonId) or (goldEquipIndex > maxXichLanHoaSonId) then
			Talk(1,"", "Xin vui lßng ®Ët vµo 1 mãn XÝch L©n")
			return
		end
	end
	
	if (CalcEquiproomItemCount(4,417,1,1) < 10) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 10 xu trong hµnh trang míi cã thÓ thùc hiÖn")
		return
	end
	if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local responseDP = 0
		if(goldEquipIndex >= minXichLanHoaSonId) and (goldEquipIndex <= maxXichLanHoaSonId) then
			for i = 1, getn(doPhoXichLanHoaSon) do
				if (doPhoXichLanHoaSon[i][3] == itemType) then
					responseDP = doPhoXichLanHoaSon[i][2]
				end
			end
		else
			for i = 1, getn(tbConfig[7]) do
				if (tbConfig[7][i][3] == itemType) then
					responseDP = tbConfig[7][i][2]
				end
			end
		end
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		
		AddItem(6,1,2370,1,0,0)


						
		
	end
end

-----------------------------------
function DoiNgayChoi()----ti le 30-30-15-10-5%
	local a=random(0,20)
	if a>=0 and a<=5 then--30%
	idxuyengiap=4929
	idxuyengiap2=4974
	else if a>=6 and a<=11  then--30%
		idxuyengiap=4930
		idxuyengiap2=4975

	else if a>=12 and a<=16 then--25%
		idxuyengiap=4931
		idxuyengiap2=4976

	else if a>=17 and a<=19 then--15%
					idxuyengiap=4932
					idxuyengiap2=4977
	else if a==20 then --5%
					idxuyengiap=4933	
					idxuyengiap2=4978					
					end
				end
			end
			end
	end


	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Long ChiÕn Vu D· - KiÕm DiÖu 7", tbProp = {0,9358}, nQuality = 1 },
                                {szName = "Tinh Ngäc", tbProp = {6,1,4807,1,0,0},nCount = 2000},
                                {szName="Xu",tbProp={4,417,1,1,0,0},nCount=2000},
			},
			tbProduct = {szName="Long ChiÕn Vu D· - KiÕm DiÖu 7==> Long ChiÕn Vu D· - KiÕm DiÖu 8", tbProp={0, 9359}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Ngò Hµnh Ên 7", tbProp = {0,9345}, nQuality = 1 },
                                {szName = "Tinh Ngäc", tbProp = {6,1,4807,1,0,0},nCount = 2000},
                                {szName="Xu",tbProp={4,417,1,1,0,0},nCount=2000},
			},
			tbProduct = {szName="Ngò Hµnh Ên 7 ==> Ngò Hµnh Ên 8", tbProp={0, 9346}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},  
           
              --  [3] = 
		--{
		--	tbMaterial = 
		--	{
		--		{szName = "Xuyªn Y Ph¸ Gi¸p 8", tbProp = {0,4923}, nQuality = 1 },
                --                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 2000},
               --                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0,0},nCount = 5000},
                --                {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 5000},
		--                {szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=300},
		--	},
		--	tbProduct = {szName="Xuyªn Y Ph¸ Gi¸p 8 ==> Xuyªn Y Ph¸ Gi¸p 8 ( ®· trïng luyÖn) ", tbProp={0, idxuyengiap2}, nQuality = 1},
		--	nWidth = 1,
		--	nHeight = 1,
		--	nFreeItemCellLimit = 0.02
		--},       
              
	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	
end 
----------------------------------------------------------------

function DoiNguyenLieu567()
	szDescription = format("Ngùa Phong ThÇn Dçi Ra 7 M·nh Ngùa Råi Mang L¹i Ðp Lai\n.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "DoiNguyenLieu56_ok", "no", 1)
		
end
function DoiNguyenLieu56_ok()
local nItemIndex = GetGiveItemUnit(1)
local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)

if nGoldEquipIdxFF==4957 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end

if nGoldEquipIdxFF==4958 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end

if nGoldEquipIdxFF==4959 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end

if nGoldEquipIdxFF==4960 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4961 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4962 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4963 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4964 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4965 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4966 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4967 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4968 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m·nh ngùa 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
end
function DoiNguyenLieu5678()
	local tbSay = 
{
"Ta Muèn §æi Sang han huyet long cau/#TienHanhDoiSkillTrungSinh4(4956)",
"Ta Muèn §æi Sang ThiÕt HuyÕt ChiÕn Lang/#TienHanhDoiSkillTrungSinh4(4959)",
"Ta Muèn §æi Sang Ng©n Gi¸p HuyÒn TrÖ/#TienHanhDoiSkillTrungSinh4(4960)",
"Ta Muèn §æi Sang Tø BÊt T­îng/#TienHanhDoiSkillTrungSinh4(4961)",
"Ta Muèn §æi Sang MÆc VËn Kim Søc/#TienHanhDoiSkillTrungSinh4(4962)",
"Ta Muèn §æi Sang XÝch VÜ Kim Søc/#TienHanhDoiSkillTrungSinh4(4963)",
"Ta Muèn §æi Sang TuyÕt Vùc Ng©n Hån/#TienHanhDoiSkillTrungSinh4(4964)",
"Ta Muèn §æi Sang TuyÕt Vùc Kim Gi¸c/#TienHanhDoiSkillTrungSinh4(4965)",
"Ta Muèn §æi Sang TuyÕt Vùc ChiÕn Hån/#TienHanhDoiSkillTrungSinh4(4966)",
"Ta Muèn §æi Sang TuyÕt Vùc XÝch Gi¸c/#TienHanhDoiSkillTrungSinh4(4967)",
"Ta Muèn §æi Sang TuyÕt Vò Ng©n Søc/#TienHanhDoiSkillTrungSinh4(4968)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn Mua G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
		{
                  {szName = "Kim Nguyªn B¶o", tbProp = {4,1496,1,1,0},nCount = 200},
                   {szName = "Ngua 3 Skill", tbProp = {0,{4956,4968}}, nQuality = 1 },
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
-------------------------------------------
function DoiNguyenLieu5678tc()
	local tbSay = 
{
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p 6( bá qua kh¸ng háa)/#TienHanhDoiSkillTrungSinh4tc(4934)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p 6( bá qua kh¸ng B¨ng)/#TienHanhDoiSkillTrungSinh4tc(4935)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p 6( bá qua kh¸ng L«i)/#TienHanhDoiSkillTrungSinh4tc(4936)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p 6( bá qua kh¸ng §äc)/#TienHanhDoiSkillTrungSinh4tc(4937)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p 6( bá qua Phæ Phßng)/#TienHanhDoiSkillTrungSinh4tc(4938)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4tc(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuyªn Y Ph¸ Gi¸p 6(DTL)", tbProp = {0,{4933,4938}}, nQuality = 1 },
               {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0},nCount = 1000},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1000},
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 200},
             	{szName = "KNb", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

------------------------------------------------------------
function DoiNguyenLieu5678tl()
	local tbSay = 
{
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p 5( bá qua kh¸ng háa)/#TienHanhDoiSkillTrungSinh4tl(4929)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p 5( bá qua kh¸ng B¨ng)/#TienHanhDoiSkillTrungSinh4tl(4930)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p 5( bá qua kh¸ng L«i)/#TienHanhDoiSkillTrungSinh4tl(4931)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p 5( bá qua kh¸ng §äc)/#TienHanhDoiSkillTrungSinh4tl(4932)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p 5( bá qua Phæ Phßng)/#TienHanhDoiSkillTrungSinh4tl(4933)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4tl(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuyªn Y Ph¸ Gi¸p 5(DTL)", tbProp = {0,{4929,4933}}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0},nCount = 500},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 500},
                {szName = "Kim Nguyen Bao", tbProp = {4,1496,1,1,0},nCount = 50},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

function DoiNguyenLieu5678t()
	local tbSay = 
{
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng háa)/#TienHanhDoiSkillTrungSinh4t(4969)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng B¨ng)/#TienHanhDoiSkillTrungSinh4t(4970)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng L«i)/#TienHanhDoiSkillTrungSinh4t(4971)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng §äc)/#TienHanhDoiSkillTrungSinh4t(4972)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua Phæ Phßng)/#TienHanhDoiSkillTrungSinh4t(4973)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4t(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuyªn Y Ph¸ Gi¸p 7(DTL)", tbProp = {0,{4969,4973}}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0},nCount = 2000},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 2000},
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 2000},
             	{szName = "KNB ", tbProp = {4,1496,1,1,0},nCount = 300},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

function DoiNguyenLieu5678z()
	local tbSay = 
{
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng háa)/#TienHanhDoiSkillTrungSinh4z(4974)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng B¨ng)/#TienHanhDoiSkillTrungSinh4z(4975)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng L«i)/#TienHanhDoiSkillTrungSinh4z(4976)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng §äc)/#TienHanhDoiSkillTrungSinh4z(4977)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua Phæ Phßng)/#TienHanhDoiSkillTrungSinh4z(4978)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4z(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuyªn Y Ph¸ Gi¸p 8(DTL)", tbProp = {0,{4974,4978}}, nQuality = 1 },
               {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0},nCount = 1000},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1000},
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 1000},
             	{szName = "KNB", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

-----------------------------------------------------------
function DoiNguyenLieu56789z()
	local tbSay = 
{
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng háa)/#TienHanhDoiSkillTrungSinh49z(4979)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng B¨ng)/#TienHanhDoiSkillTrungSinh49z(4980)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng L«i)/#TienHanhDoiSkillTrungSinh49z(4981)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng §äc)/#TienHanhDoiSkillTrungSinh49z(4982)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua Phæ Phßng)/#TienHanhDoiSkillTrungSinh49z(4983)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh49z(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuyªn Y Ph¸ Gi¸p 9(DTL)", tbProp = {0,{4979,4983}}, nQuality = 1 },
               {szName = " Thien Tinh Ngäc", tbProp = {6,1,4806,1,0,0},nCount = 2000},
                {szName = " B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0,0},nCount = 2000},
                {szName = " B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 2000},
                {szName = "KNB", tbProp = {4,1496,1,1,0},nCount = 5000},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
--======================================================================================================
function DoiNguyenLieux56789z()
	local tbSay = 
{
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng háa)/#TienHanhDoiSkillTrungSinhm49z(4984)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng B¨ng)/#TienHanhDoiSkillTrungSinhm49z(4985)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng L«i)/#TienHanhDoiSkillTrungSinhm49z(4986)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua kh¸ng §äc)/#TienHanhDoiSkillTrungSinhm49z(4987)",
"Ta Muèn §æi Sang Xuyªn Y Ph¸ Gi¸p( bá qua Phæ Phßng)/#TienHanhDoiSkillTrungSinhm49z(4988)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinhm49z(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuyªn Y Ph¸ Gi¸p 10(DTL)", tbProp = {0,{4984,4988}}, nQuality = 1 },
               {szName = "Tói §¹i Tinh Ngäc", tbProp = {6,1,5331,1,0,0},nCount = 50},
                {szName = " Tói B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,30160,1,0,0},nCount = 50},
                {szName = "Tói B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30161,1,0,0},nCount = 50},
                {szName = " TruyÒn Nh©n-TÝn VËt", tbProp = {6,1,30187,1,0,0},nCount = 100},
                {szName = "B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh", tbProp = {6,1,30189,1,0,0},nCount = 2000},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

function DoiNguyenLieu56781z()
	local tbSay = 
{
"Ta Muèn §æi Sang  Bao Tay (Phong Ma QuyÕt)/#TienHanhDoiSkillTrungSinh41z(5262)",
"Ta Muèn §æi Sang  Bao Tay (§Êu UyÓn)/#TienHanhDoiSkillTrungSinh41z(5263)",
"Ta Muèn §æi Sang  Bao Tay (Tµn Phong V©n QuyÒn)/#TienHanhDoiSkillTrungSinh41z(5264)",
"Ta Muèn §æi Sang  Bao Tay (§o¹n NguyÖt)/#TienHanhDoiSkillTrungSinh41z(5265)",
"Ta Muèn §æi Sang  Bao Tay (T©m Tinh Thøc)/#TienHanhDoiSkillTrungSinh41z(5266)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh41z(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Cè S¬n ", tbProp = {0,{5262,5266}}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0},nCount = 1000},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1000},
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 400},
             	{szName = "KNB ", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

function DoiNguyenLieu56781xz()
	local tbSay = 
{
"Ta Muèn §æi Sang  Bao Tay (Phong Ma QuyÕt)/#TienHanhDoiSkillTrungSinh4z1z(5978)",
"Ta Muèn §æi Sang  Bao Tay (§Êu UyÓn)/#TienHanhDoiSkillTrungSinh4z1z(5979)",
"Ta Muèn §æi Sang  Bao Tay (Tµn Phong V©n QuyÒn)/#TienHanhDoiSkillTrungSinh4z1z(5980)",
"Ta Muèn §æi Sang  Bao Tay (§o¹n NguyÖt)/#TienHanhDoiSkillTrungSinh4z1z(5981)",
"Ta Muèn §æi Sang  Bao Tay (T©m Tinh Thøc)/#TienHanhDoiSkillTrungSinh4z1z(5982)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4z1z(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Cè S¬n ", tbProp = {0,{5978,5982}}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0},nCount = 2000},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 2000},
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 600},
             	{szName = "KNB ", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

function DoiNguyenLieu56782z()
	local tbSay = 
{
"Ta Muèn §æi Sang D©y ChuyÒn (Triªt Vò Phong ThÓ)/#TienHanhDoiSkillTrungSinh42z(5984)",
"Ta Muèn §æi Sang  D©y ChuyÒn (Hæ KÝch)/#TienHanhDoiSkillTrungSinh42z(5985)",
"Ta Muèn §æi Sang  D©y ChuyÒn(Ngäc Th¹ch PhiÕm)/#TienHanhDoiSkillTrungSinh42z(5986)",
"Ta Muèn §æi Sang  D©y ChuyÒn (L¨ng Phong)/#TienHanhDoiSkillTrungSinh42z(5987)",
"Ta Muèn §æi Sang D©y ChuyÒn (NhËt Nh­ S¬n)/#TienHanhDoiSkillTrungSinh42z(5988)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh42z(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Cè S¬n Ph¸ Thiªn", tbProp = {0,{5984,5988}}, nQuality = 1 },
                  {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0},nCount = 2000},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 2000},
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 600},
             	{szName = "KNB ", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
---------======================================================================================================
function DoiNguyenLieuNhan()
local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "TB Dieu Duong", tbProp = {0,{3920,4189}}, nQuality = 1 },
             	{szName = "KNB ", tbProp = {4,1496,1,1,0},nCount = 20},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={6,1,random(5570,5579),1,0,0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

-----------==========================================================================================================
function nangcapan()

local tbSay = 
{

"§çi Thuéc TÝnh Ên H¹ §· Dung LuyÖn/#DoiNguyenLieu50782z()",
"§çi Thuéc TÝnh Ên Trung §· Dung LuyÖn/#DoiNguyenLieu50782cz()",
--"§çi Thuéc TÝnh Ên Th­îng §· Dung LuyÖn/#DoiNguyenLieu507821cz()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ",getn(tbSay),tbSay)
	
end 
function DoiNguyenLieu50782z()
	local tbSay = 
{
"Ta Muèn §æi Sang Ên H¹ HÖ Kim/#TienHanhDoiSkillTrungSinh402z(4993)",
"Ta Muèn §æi Sang  Ên H¹ HÖ Méc/#TienHanhDoiSkillTrungSinh402z(4994)",
"Ta Muèn §æi Sang   Ên H¹ HÖ Thñy/#TienHanhDoiSkillTrungSinh402z(4995)",
"Ta Muèn §æi Sang   Ên H¹ HÖ Háa/#TienHanhDoiSkillTrungSinh402z(4996)",
"Ta Muèn §æi Sang   Ên H¹ HÖ Thæ/#TienHanhDoiSkillTrungSinh402z(4997)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------

function TienHanhDoiSkillTrungSinh402z(num)
       
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Ên H¹ §· Dung LuyÖn", tbProp = {0,{4993,4997}}, nQuality = 1 },
               {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0},nCount = 1000},
             {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1000},
               {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 1000},
             	{szName = "KNB", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
function DoiNguyenLieu50782cz()
	local tbSay = 
{
"Ta Muèn §æi Sang Ên trung HÖ Kim/#TienHanhDoiSkillTrungSinh402cz(4998)",
"Ta Muèn §æi Sang  Ên trung HÖ Méc/#TienHanhDoiSkillTrungSinh402cz(4999)",
"Ta Muèn §æi Sang   Ên trung HÖ Thñy/#TienHanhDoiSkillTrungSinh402cz(5000)",
"Ta Muèn §æi Sang   Ên trung HÖ Háa/#TienHanhDoiSkillTrungSinh402cz(5001)",
"Ta Muèn §æi Sang   Ên trung HÖ Thæ/#TienHanhDoiSkillTrungSinh402cz(5002)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------

function TienHanhDoiSkillTrungSinh402cz(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Ên Trung §· Dung LuyÖn", tbProp = {0,{4998,5002}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0},nCount = 2000},
             {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 2000},
               {szName = "Thiªn Tinh Ngäc", tbProp = {6,1,4806,1,0,0},nCount = 2000},
             	{szName = "KNB", tbProp = {4,1496,1,1,0},nCount = 1000},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

---------------------------------------------------------
function DoiNguyenLieu507821cz()
	local tbSay = 
{
"Ta Muèn §æi Sang Ên th­îng HÖ Kim/#TienHanhDoiSkillTrungSinh1402cz(5003)",
"Ta Muèn §æi Sang  Ên th­îng HÖ Méc/#TienHanhDoiSkillTrungSinh1402cz(5004)",
"Ta Muèn §æi Sang   Ên th­îng HÖ Thñy/#TienHanhDoiSkillTrungSinh1402cz(5005)",
"Ta Muèn §æi Sang   Ên th­îng HÖ Háa/#TienHanhDoiSkillTrungSinh1402cz(5006)",
"Ta Muèn §æi Sang   Ên th­îng HÖ Thæ/#TienHanhDoiSkillTrungSinh1402cz(5007)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------

function TienHanhDoiSkillTrungSinh1402cz(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Ên Trung Th­îng Dung LuyÖn", tbProp = {0,{5003,5007}}, nQuality = 1 },
              {szName = "Tói B¸ch LuyÖn Thµnh C­¬ng", tbProp = {6,1,30162,1,0,0},nCount = 100},
                {szName = " TruyÒn Nh©n-TÝn VËt", tbProp = {6,1,30187,1,0,0},nCount = 100},
                {szName = "B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh", tbProp = {6,1,30189,1,0,0},nCount = 500},
                {szName="Trïng LuyÖn Ngäc",tbProp={6,1,5414,1,0,0},nCount=300},
		{szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=1000},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
--------------------------------------
function DoiNguyenLieuzxc1z()
	local tbSay = 
{
"Ta Muèn §æi Sang  Bao Tay (Phong Ma QuyÕt)/#TienHanhDoiSkillTrungSinhxz(5990)",
"Ta Muèn §æi Sang  Bao Tay (§Êu UyÓn)/#TienHanhDoiSkillTrungSinhxz(5991)",
"Ta Muèn §æi Sang  Bao Tay (Tµn Phong V©n QuyÒn)/#TienHanhDoiSkillTrungSinhxz(5992)",
"Ta Muèn §æi Sang  Bao Tay (§o¹n NguyÖt)/#TienHanhDoiSkillTrungSinhxz(5993)",
"Ta Muèn §æi Sang  Bao Tay (T©m Tinh Thøc)/#TienHanhDoiSkillTrungSinhxz(5994)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

function TienHanhDoiSkillTrungSinhxz(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Cè S¬n truyen nhan", tbProp = {0,{5990,5994}}, nQuality = 1 },
               {szName = " manh hiem", tbProp = {4,1508,1,1,0,0},nCount = 1000},
                {szName = " thien tinh ngoc", tbProp = {6,1,4806,1,0,0},nCount = 3000},
          	{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=2000},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end


function DoiNguyenLieudssd()
	local tbSay = 
{
"Ta Muèn §æi Sang D©y ChuyÒn (Triªt Vò Phong ThÓ)/#TienHanhDoiSkillTrungSinhx1z(5996)",
"Ta Muèn §æi Sang  D©y ChuyÒn (Hæ KÝch)/#TienHanhDoiSkillTrungSinhx1z(5997)",
"Ta Muèn §æi Sang  D©y ChuyÒn(Ngäc Th¹ch PhiÕm)/#TienHanhDoiSkillTrungSinhx1z(5998)",
"Ta Muèn §æi Sang  D©y ChuyÒn (L¨ng Phong)/#TienHanhDoiSkillTrungSinhx1z(5999)",
"Ta Muèn §æi Sang D©y ChuyÒn (NhËt Nh­ S¬n)/#TienHanhDoiSkillTrungSinhx1z(6000)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinhx1z(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Cè S¬n truyen nhan", tbProp = {0,{5996,6000}}, nQuality = 1 },
                {szName = " manh hiem", tbProp = {4,1508,1,1,0,0},nCount = 1000},
                {szName = " thien tinh ngoc", tbProp = {6,1,4806,1,0,0},nCount = 3000},
          	{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=2000},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
---------======================================================================================================








---------------------------------------------------------------------------
function ngocboihuynhde()
	local tbSay = 
{
"Ta ChÕ TÑo Ngäc Béi Huynh §Ö Phßng Thñ/#TienHanhDoiSkillTrungSinh1a1(5054)",
"Ta ChÕ TÑo Ngäc Béi Huynh §Ö kh¸ng L«i/#TienHanhDoiSkillTrungSinh1a1(5053)",
"Ta ChÕ TÑo D©y ChuyÒn Huynh §Ö Kh¸ng §éc/#TienHanhDoiSkillTrungSinh1a1(5019)",
"Ta ChÕ TÑo D©y ChuyÒn Huynh §Ö Kh¸ng B¨ng/#TienHanhDoiSkillTrungSinh1a1(5020)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------

function TienHanhDoiSkillTrungSinh1a1(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
         
             {szName="QuyÒn N¨ng LÖnh( ThiÖp)",tbProp={6,1,30164,1,0,0},nCount=300},
             {szName="TÝn VËt Huynh §Ö",tbProp={6,1,30188,1,0,0},nCount=50},
            {szName="B¸chKhoa-B¶nHoµnChØnh",tbProp={6,1,30189,1,0,0},nCount=1000},
            {szName="Tói Thiªn Tinh Ngäc",tbProp={6,1,5336,1,0,0},nCount=30},
            {szName = "§¹i Kim Bµi", tbProp = {4,1506,1,1,0},nCount = 1000},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

---------------================================================================================================

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
