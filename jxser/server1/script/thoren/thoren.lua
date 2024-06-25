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
	
	
	tbDailog.szTitleMsg = "<#><npc>N�i n�y t�t c� ��u l� k� tr�n d� b�o, ng�i m�c d� t�y � l�a ch�n!"
	--tbDailog:AddOptEntry("��i Thu�c T�nh Phi Phong", doithuoctinh_phiphong)
       -- tbDailog:AddOptEntry("Ta mu�n Ch� T�o  Huynh ��",ngocboihuynhde)
	--tbDailog:AddOptEntry("Ta mu�n n�ng C�p Phi Phong", nangcapphiphong)
       -- tbDailog:AddOptEntry("��i Thu�c T�nh �n �� Dung Luy�n",nangcapan)
	tbDailog:AddOptEntry("n�ng c�p Trang S�c V� �n ",DoiNgayChoi)
       --tbDailog:AddOptEntry("Tr�ng luy�n xuy�n y ph� gi�p ",nangcapxuyeny)
     --tbDailog:AddOptEntry("��i Thu�c T�nh Skill C� S�n",nangcapbaotay)
      --tbDailog:AddOptEntry("Ta Mu�n Ph�n v� Dieu duong ", DoiNguyenLieuNhan)
        --tbDailog:AddOptEntry("Ta Mu�n Doi Ngua 3 Skill", DoiNguyenLieu5678)

--"N�ng C�p Phi Phong Ph� Quang(7)-->Phi Phong V� C�c(8)/#hoidapphiphong7len8()",


	tbDailog:Show()
end;
function nangcapxuyeny()

local tbSay = 
{

"��i Thu�c T�nh Xuy�n Y 5 �� Tr�ng Luy�n/#DoiNguyenLieu5678tl()",
--"��i Thu�c T�nh Xuy�n Y 6 �� Tr�ng Luy�n/#DoiNguyenLieu5678tc()",
--"��i Thu�c T�nh Xuy�n Y 7 �� Tr�ng Luy�n/#DoiNguyenLieu5678t()",
--"��i Thu�c T�nh Xuy�n Y 8 �� Tr�ng Luy�n/#DoiNguyenLieu5678z()",
--"��i Thu�c T�nh Xuy�n Y 9 �� Tr�ng Luy�n/#DoiNguyenLieu56789z()",
--"��i Thu�c T�nh Xuy�n Y 10 �� Tr�ng Luy�n/#DoiNguyenLieux56789z()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ",getn(tbSay),tbSay)
	
end 
function nangcapbaotay()

local tbSay = 
{

"��i Thu�c T�nh Bao Tay C� S�n /#DoiNguyenLieu56781z()",
"��i Thu�c T�nh Bao Tay C� S�n Ph� Thi�n/#DoiNguyenLieu56781xz()",
"��i Thu�c T�nh D�y Chuy�n C� S�n Ph� Thi�n/#DoiNguyenLieu56782z()",
"��i Thu�c T�nh Bao Tay C� S�n truy�n nh�n/#DoiNguyenLieuzxc1z()",
"��i Thu�c T�nh D�y Chuy�n C� S�n Truy�n Nh�n/#DoiNguyenLieudssd()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ",getn(tbSay),tbSay)
	
end 
------------============================================================
function doiphiphong_lebao12()

local tbSay = 
{

"B� qua kh�ng h�a/#chonboquakhang_lebao1(0)",
"B� qua kh�ng b�ng/#chonboquakhang_lebao1(1)",
"B� qua kh�ng l�i/#chonboquakhang_lebao1(2)",
"B� qua kh�ng ��c/#chonboquakhang_lebao1(3)",
"B� qua ph� ph�ng/#chonboquakhang_lebao1(4)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Xin H�y Ch�n ��ng Kh�ng C�a FF,Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)
end

function chonboquakhang_lebao1(num_lb)
numtrong12=num_lb
local tbSay = 
{

"Ch�n PLVL/#tangsaokhapthan_lebao1(0)",
"Ch�n Kh�ng B�ng/#tangsaokhapthan_lebao1(1)",
"Ch�n Kh�ng L�i/#tangsaokhapthan_lebao1(2)",
"Ch�n Kh�ng H�a/#tangsaokhapthan_lebao1(3)",
"Ch�n Kh�ng ��c/#tangsaokhapthan_lebao1(4)",
"Ch�n Kh�ng XSTK/#tangsaokhapthan_lebao1(5)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)

end


function tangsaokhapthan_lebao1(num_lb)
numtrong22=num_lb
	szDescription = format("Phi phong Ng� Phong 9 t��ng �ng \n.8000 B�ch Ngh� Tinh Th�ch\n.8000 B�ch Ngh� Tinh Ng�c\n Ch� B� FF9 v�o � nh� ")
	GiveItemUI("5000 v�n v�", szDescription, "Run_tangsaokhapthan_lebao1", "no", 1)
end


function Run_tangsaokhapthan_lebao1(nCount)
	if nCount ~= 1 then
		Say("Ch� b� Phi Phong v�o trong, nguy�n li�u kh�c b� � h�nh trang nh�", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/doiphiphong_lebao12", "Ta xin th�i")
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
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 5647 or nGoldEquipIdxFF >5976) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/doiphiphong_lebao12", "no")
		return 0
		end
		capcuaphiphong_lebao= (nGoldEquipIdxFF+1)-(5647+numtrong12*66+numtrong22*11) --6460-(6161+240+50
		 
		 if capcuaphiphong_lebao<=0 or capcuaphiphong_lebao>10 then
			Say("B�n �� ch�n sai h�, xin ch�n l�i")
		 return 0
		end

		local  idcualebao=capcuaphiphong_lebao+50003			

			if bachnghetinhngoc<8000 or bachnghethienthach<8000 then		
			Say("��i c�n 8000 vi�n B�ch Ngh� Tinh Ng�c + 8000 vi�n B�ch ngh� Thi�n Th�ch nh�")
			return 0
			end
			

			
				if ConsumeEquiproomItem(8000, 6,1, 30355,-1) >0 and ConsumeEquiproomItem(8000, 6,1, 49004,-1) >0 and 	RemoveItemByIndex(nItemIndex)>0 then

					local tbAward100k ={
					{szName="T�i L� Bao Phi Phong C�p 9",tbProp={6,1,idcualebao,1,0,0},nCount=1},
					}
					tbAwardTemplet:GiveAwardByList(tbAward100k,"T�i L� Bao Phi Phong C�p 9")
				WriteLogPro("dulieu/doilebaoff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da doi  Item la--"..nGoldEquipIdxFF.." sang tui le bao\n");	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c T�i L� Bao Phi Phong C�p 9 "..idcualebao.."")
				end

	
		end



function doiphiphong_lebao13()

local tbSay = 
{

"B� qua kh�ng h�a/#chonboquakhang_lebao12(0)",
"B� qua kh�ng b�ng/#chonboquakhang_lebao12(1)",
"B� qua kh�ng l�i/#chonboquakhang_lebao12(2)",
"B� qua kh�ng ��c/#chonboquakhang_lebao12(3)",
"B� qua ph� ph�ng/#chonboquakhang_lebao12(4)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Xin H�y Ch�n ��ng Kh�ng C�a FF,Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)
end

function chonboquakhang_lebao12(num_lb)
numtrong12=num_lb
local tbSay = 
{

"Ch�n PLVL/#tangsaokhapthan_lebao2(0)",
"Ch�n Kh�ng B�ng/#tangsaokhapthan_lebao2(1)",
"Ch�n Kh�ng L�i/#tangsaokhapthan_lebao2(2)",
"Ch�n Kh�ng H�a/#tangsaokhapthan_lebao2(3)",
"Ch�n Kh�ng ��c/#tangsaokhapthan_lebao2(4)",
"Ch�n Kh�ng XSTK/#tangsaokhapthan_lebao2(5)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)

end


function tangsaokhapthan_lebao2(num_lb)
numtrong22=num_lb
	szDescription = format("Phi phong Ng� Phong 9 t��ng �ng \n.10000 B�ch Ngh� Tinh Th�ch\n.10000 B�ch Ngh� Tinh Ng�c\n Ch� B� FF10 v�o � nh� ")
	GiveItemUI("5000 v�n v�", szDescription, "Run_tangsaokhapthan_lebao13", "no", 1)
end


function Run_tangsaokhapthan_lebao13(nCount)
	if nCount ~= 1 then
		Say("Ch� b� Phi Phong v�o trong, nguy�n li�u kh�c b� � h�nh trang nh�", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/doiphiphong_lebao13", "Ta xin th�i")
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
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 6005 or nGoldEquipIdxFF >6334) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/doiphiphong_lebao13", "no")
		return 0
		end
		capcuaphiphong_lebao= (nGoldEquipIdxFF+1)-(6005+numtrong12*66+numtrong22*11) --6460-(6161+240+50
		 
		 if capcuaphiphong_lebao<=0 or capcuaphiphong_lebao>10 then
			Say("B�n �� ch�n sai h�, xin ch�n l�i")
		 return 0
		end

		local  idcualebao=capcuaphiphong_lebao+30164			

			if bachnghetinhngoc<20000 or bachnghethienthach<20000 then		
			Say("��i c�n 20000 vi�n B�ch Ngh� Tinh Ng�c + 20000 vi�n B�ch ngh� Thi�n Th�ch nh�")
			return 0
			end
			

			
				if ConsumeEquiproomItem(20000, 6,1, 30355,-1) >0 and ConsumeEquiproomItem(20000, 6,1, 49004,-1) >0 and 	RemoveItemByIndex(nItemIndex)>0 then

					local tbAward100k ={
					{szName="T�i L� Bao Phi Phong C�p 10",tbProp={6,1,idcualebao,1,0,0},nCount=1},
					}
					tbAwardTemplet:GiveAwardByList(tbAward100k,"T�i L� Bao Phi Phong C�p 10")
				WriteLogPro("dulieu/doilebaoff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da doi  Item la--"..nGoldEquipIdxFF.." sang tui le bao\n");	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c T�i L� Bao Phi Phong C�p 10 "..idcualebao.."")
				end

	
		end
-----------------=======================================================================================================================================================
function doiphiphong_lebao()

local tbSay = 
{

"B� qua kh�ng h�a/#chonboquakhang_lebao(0)",
"B� qua kh�ng b�ng/#chonboquakhang_lebao(1)",
"B� qua kh�ng l�i/#chonboquakhang_lebao(2)",
"B� qua kh�ng ��c/#chonboquakhang_lebao(3)",
"B� qua ph� ph�ng/#chonboquakhang_lebao(4)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Xin H�y Ch�n ��ng Kh�ng C�a FF,Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)
end

function chonboquakhang_lebao(num_lb)
numtrong12=num_lb
local tbSay = 
{

"Ch�n PLVL/#tangsaokhapthan_lebao(0)",
"Ch�n Kh�ng B�ng/#tangsaokhapthan_lebao(1)",
"Ch�n Kh�ng L�i/#tangsaokhapthan_lebao(2)",
"Ch�n Kh�ng H�a/#tangsaokhapthan_lebao(3)",
"Ch�n Kh�ng ��c/#tangsaokhapthan_lebao(4)",
"Ch�n Kh�ng XSTK/#tangsaokhapthan_lebao(5)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)

end


function tangsaokhapthan_lebao(num_lb)
numtrong22=num_lb
	szDescription = format("Phi phong Lang Tuyet 8 t��ng �ng \n.5000 B�ch Ngh� Tinh Th�ch\n.5000 B�ch Ngh� Tinh Ng�c\n Ch� B� FF8 v�o � nh� ")
	GiveItemUI("5000 v�n v�", szDescription, "Run_tangsaokhapthan_lebao", "no", 1)
end


function Run_tangsaokhapthan_lebao(nCount)
	if nCount ~= 1 then
		Say("Ch� b� Phi Phong v�o trong, nguy�n li�u kh�c b� � h�nh trang nh�", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/tangsaokhapthan", "Ta xin th�i")
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
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	--if nItemTime ~= 0 then
	--	Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
	--	return
	--end
		if nQuality ~=1 or (nGoldEquipIdxFF < 5347 or nGoldEquipIdxFF >5646) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/tangsaokhapthan", "no")
		return 0
		end
		capcuaphiphong_lebao= (nGoldEquipIdxFF+1)-(5347+numtrong12*60+numtrong22*10) --6460-(6161+240+50
		 
		 if capcuaphiphong_lebao<=0 or capcuaphiphong_lebao>10 then
			Say("B�n �� ch�n sai h�, xin ch�n l�i")
		 return 0
		end

		local  idcualebao=capcuaphiphong_lebao+43044			

			if bachnghetinhngoc<5000 or bachnghethienthach<5000 then		
			Say("��i c�n 5000 vi�n B�ch Ngh� Tinh Ng�c + 5000 vi�n B�ch ngh� Thi�n Th�ch nh�")
			return 0
			end
			

			
				if ConsumeEquiproomItem(5000, 6,1, 30355,-1) >0 and ConsumeEquiproomItem(5000, 6,1, 49004,-1) >0 and 	RemoveItemByIndex(nItemIndex)>0 then

					local tbAward100k ={
					{szName="T�i L� Bao Phi Phong C�p 8",tbProp={6,1,idcualebao,1,0,0},nCount=1},
					}
					tbAwardTemplet:GiveAwardByList(tbAward100k,"T�i L� Bao Phi Phong C�p 8")
				WriteLogPro("dulieu/doilebaoff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da doi  Item la--"..nGoldEquipIdxFF.." sang tui le bao\n");	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c T�i L� Bao Phi Phong C�p 8 "..idcualebao.."")
				end

	
		end
-----------------tang tangsao khapthan khap than--
function chonphiphongcantangsao()

local tbSay = 
{

"B� qua kh�ng h�a/#chonboquakhang112(0)",
"B� qua kh�ng b�ng/#chonboquakhang112(1)",
"B� qua kh�ng l�i/#chonboquakhang112(2)",
"B� qua kh�ng ��c/#chonboquakhang112(3)",
"B� qua ph� ph�ng/#chonboquakhang112(4)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)
end

function chonboquakhang112(num)
numtrong1=num
local tbSay = 
{

"Ch�n PLVL/#tangsaokhapthan112(0)",
"Ch�n Kh�ng B�ng/#tangsaokhapthan112(1)",
"Ch�n Kh�ng L�i/#tangsaokhapthan112(2)",
"Ch�n Kh�ng H�a/#tangsaokhapthan112(3)",
"Ch�n Kh�ng ��c/#tangsaokhapthan112(4)",
"Ch�n Kh�ng XSTK/#tangsaokhapthan112(5)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)

end


function tangsaokhapthan112(num)
numtrong2=num
	szDescription = format("B� FF v�o, nguy�n li�u �� ngo�i \n.1-2=10000 DTN  \n.2-3=15000 DTN\n.3-4=30000 DTN\n.4-5=35000 DTN\n.5-6=40000 DTN\n.6-7=42000 DTN\n.7-8=48000 DTN\n.8-9=50000 DTN \n.9-10=55000 DTN\n")
	GiveItemUI("��i Tinh Ng�c", szDescription, "Run_tangsaokhapthan112", "no", 1)
end


function Run_tangsaokhapthan112(nCount)
	if nCount ~= 1 then
		Say("Ch� b� Phi Phong v�o trong, nguy�n li�u kh�c b� � h�nh trang nh�", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/tangsaokhapthan112", "Ta xin th�i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local daitinhngoc= CalcEquiproomItemCount(6,1,4873,-1) 
                local TASK_HUYETCHIEN = GetTask(3002);
          	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
              if nQuality ~=1 or (nGoldEquipIdxFF < 5647 or nGoldEquipIdxFF >5977) then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/tangsaokhapthan112", "no")
		return 0
		end
		capcuaphiphong= (nGoldEquipIdxFF+1)-(5647+numtrong1*66+numtrong2*11) --6460-(6161+364+56
		 if capcuaphiphong<=0 or capcuaphiphong> 7 then
			Say("Phi Phong �� ��t s� sao cao nh�t ho�c ch�n sai h� C�a Phi Phong �ang Mang")
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
			Say("Kh�ng �� "..soluongdaitinhngoccan.." ��i Tinh Ng�c, xem l�i h�nh trang nh�")
			return 0
                       
	end
			if TASK_HUYETCHIEN  < soluongdaikimbai then		
			Say("Kh�ng �� "..soluongdaikimbai.."  Huyet chien, xem l�i di  nh�")
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
local bachluyen= CalcEquiproomItemCount(6,1,49006,-1) --B�ch Luy�n Th�nh C��ng
--local tilethanhcong= 100-(80-bachluyen)
	local tilethanhcong =floor(bachluyen*10/20000) 

local tbSay = 
{
"Ta ch�c ch�n ti�p t�c, ta s� b� FF7 v�o � luy�n/#nangcapphiphong7len8()",
"Th�i ta kh�ng mu�n n�a/no"
}
hienthitile=tilethanhcong*10
if bachluyen>=20000 then


Say( "<color=green>Nh� ng��i �ang c� <color=yellow> >20000 vi�n<color> <color=white><B�ch Luy�n Th�nh C��ng><color> rong h�nh trang v� v�y t� l� th�nh c�ng l� 100%, Ti�p t�c ch� ?",getn(tbSay),tbSay)
else 
Say( "<color=green><color=green>Nh� ng��i �ang c� <color=yellow> "..bachluyen.." vi�n <color> <color=white><B�ch Luy�n Th�nh C��ng><color>\n trong h�nh trang v� v�y t� l� th�nh c�ng l�  th�p \n Ti�p t�c ch� ?",getn(tbSay),tbSay)
end
end


function nangcapphiphong7len8()
	szDescription = format("Phi phong Ng� Phong t��ng �ng \nKh�ng b� B�ch Luy�n Th�nh C��ng v�o trong n.\n ")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_nangcapphiphong7len8", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_nangcapphiphong7len8(nCount)
local henxui= random(1,10)
	if nCount ~= 1 then
		Say("Kh�ng b� B�ch Luy�n Th�nh C��ng v�o trong.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/nangcapphiphong7len8", "Ta xin th�i")
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
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
	--	Msg2Player(" Ch�c m�ng "..tilethanhcong.." *************** "..nGoldEquipIdxFF.."" )

		
		
		if nQuality ~=1 or (nGoldEquipIdxFF < 5322 and nGoldEquipIdxFF >5346) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
		 
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
													tbAwardTemplet:GiveAwardByList({{szName = "T�i L� Bao Phi Phong C�p 8 (1 Sao)",tbProp={6,1,43045,1,0},nCount=1},}, "test", 1);
												--	Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong Ph� Quang t��ng �ng")
													WriteLogPro("dulieu/epff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff8 voi 100 \n");		
		return
		end
											 if henxui<=tilethanhcong then
													RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(bachluyen, 6,1, 49006,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "T�i L� Bao Phi Phong C�p 8 (1 Sao)",tbProp={6,1,43045,1,0},nCount=1},}, "test", 1);
												--	Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong Ph� Quang t��ng �ng")
													WriteLogPro("dulieu/epff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi "..bachluyen.." --hen xui:"..henxui.."\n");	
									--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")													
												else 
															ConsumeEquiproomItem(bachluyen, 6,1, 49006,-1)
															Msg2Player(" Chia bu�n c�ng gia quy�n - Ch�c b�n may m�n l�n sau nh�")
															WriteLogPro("dulieu/epff8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep Xit FF voi "..bachluyen.."\n");	
															--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")		
											 end
		 else Say("Nguy�n Li�u Kh�ng �� R�i B�n �i"..nGoldEquipIdxFF.."")
		end
		
		end
		
		
		
function doithuoctinh_phiphong()

local tbSay = 
{
"��i Thu�c T�nh Cho Phi Phong  Phong Van/doithuoctinh7",
--"��i ff L�ng Tuy�t ===> T�i FF L�ng Tuy�t /doiphiphong_lebao",
--"��i ff T� V�n ===> T�i FF T� V�n  /doiphiphong_lebao12",
--"��i ff Vo Song ===> T�i FF Vo Song  /doiphiphong_lebao13",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ",getn(tbSay),tbSay)
	
end 

function doithuoctinh7()

local tbSay = 
{

"Ta Mu�n ��i Sang PTVL/#doithuoctinhff7(1)",
"Ta Mu�n ��i Sang Kh�ng B�ng/#doithuoctinhff7(2)",
"Ta Mu�n ��i Sang Kh�ng L�i/#doithuoctinhff7(3)",
"Ta Mu�n ��i Sang Kh�ng H�a/#doithuoctinhff7(4)",
"Ta Mu�n ��i Sang Kh�ng ��c/#doithuoctinhff7(5)",
"Ta Mu�n ��i Sang Kh�ng XSTK/#doithuoctinhff7(6)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ",getn(tbSay),tbSay)
	
end

function doithuoctinhff7(luachon)
suluachon=luachon
	szDescription = format("Phi phong Ng� Phong 7 t��ng �ng \n.1000 B�ch Ngh� Tinh Th�ch\n.1000 B�ch Ngh� Tinh Ng�c\n Ch� B� FF7 v�o � nh� ")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "run_doithuoctinhff7", "no", 1)

		
end


function run_doithuoctinhff7(nCount)
	if nCount ~= 1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/doithuoctinh7", "Ta xin th�i")
		return
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhthach= CalcEquiproomItemCount(6,1,49004,-1) 
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
				if nQuality ~=1 or (nGoldEquipIdxFF < 5317 or nGoldEquipIdxFF >5346) then
		 
					Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
					return
				end
						if bachnghetinhthach<1000 or bachnghetinhngoc <1000 then
					Say("Kh�ng �� 1000 B�ch Ngh� Tinh Ng�c Ho�c 1000 B�ch Ngh� Thi�n Th�ch", 1, "�� Ta Xem L�i")
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
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong 7 t��ng �ng")
end
function nangcapphiphong()

local tbSay = 
{

--"N�ng C�p FF Huy�n Kim-->FF V� C�c/#checknguyenlieunangcap()",
"N�ng C�p FF Phong Van-->FF Phong Van Tinh X�o (KTC)/#nangcapphequangtinhxao()",
"T�ng Sao Cho Phi Phong Phong Van Tinh X�o /#tangsaophequang()",
--"T�ng Sao Cho Phi Phong V� Lang Tuyet(8) /#tangsaolangtuyet()",
--"��i Thu�c T�nh Cho Phi Phong V� C�c/doithuoctinh7",
--"N�ng C�p FF V� C�c(7)-->FF L�ng Tuy�t(8)/#hoidapphiphong7len8()",
--"T�ng Sao Cho Phi Phong T� V�n(9)/#chonphiphongcantangsao()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ",getn(tbSay),tbSay)
	
end 
---------------
function tangsaolangtuyet()

local tbSay = 
{

"B� qua kh�ng h�a/#chonboquakhang1(0)",
"B� qua kh�ng b�ng/#chonboquakhang1(1)",
"B� qua kh�ng l�i/#chonboquakhang1(2)",
"B� qua kh�ng ��c/#chonboquakhang1(3)",
"B� qua ph� ph�ng/#chonboquakhang1(4)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)
end

function chonboquakhang1(num)
numtrong1=num
local tbSay = 
{

"Ch�n PLVL/#tangsaokhapthan1(0)",
"Ch�n Kh�ng B�ng/#tangsaokhapthan1(1)",
"Ch�n Kh�ng L�i/#tangsaokhapthan1(2)",
"Ch�n Kh�ng H�a/#tangsaokhapthan1(3)",
"Ch�n Kh�ng ��c/#tangsaokhapthan1(4)",
"Ch�n Kh�ng XSTK/#tangsaokhapthan1(5)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)

end


function tangsaokhapthan1(num)
numtrong2=num
	szDescription = format("B� FF v�o, nguy�n li�u �� ngo�i \n.1-2=1000 TN \n.2-3=5000 TN\n.3-4=10000 TN\n.4-5=15000 TN\n.5-6=20000 TN \n.6-7=22000 TN \n.7-8=30000 TN \n.8-9=35000 TN \n.9-10=40000 TN \n")
	GiveItemUI("tinh ngoc Tinh Ng�c", szDescription, "Run_tangsaokhapthan", "no", 1)
end


function Run_tangsaokhapthan(nCount)
	if nCount ~= 1 then
		Say("Ch� b� Phi Phong v�o trong, nguy�n li�u kh�c b� � h�nh trang nh�", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/tangsaokhapthan1", "Ta xin th�i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local daitinhngoc= CalcEquiproomItemCount(6,1,4807,-1) 
           	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 5347 or nGoldEquipIdxFF >5646) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/tangsaokhapthan", "no")
		return 0
		end
		capcuaphiphong= (nGoldEquipIdxFF+1)-(5347+numtrong1*60+numtrong2*10)
		 if capcuaphiphong<=0 or capcuaphiphong>9 then
			Say("Phi Phong �� ��t s� sao cao nh�t ho�c ch�n sai h� C�a Phi Phong �ang Mang")
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
			Say("Kh�ng �� "..soluongdaitinhngoccan.."  Tinh Ng�c, xem l�i h�nh trang nh�")
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

	szDescription = format("Phi phong Ng� Phong Tinh X�o t��ng �ng \n.5-6 T�n 8000 Tinh Ng�c\n.6-7 T�n 9000 Tinh Ng�c\n.7-8 T�n 12000 Tinh Ng�c\n.8-9 T�n 15000 Tinh Ng�c\n.9-10 T�n 19000 Tinh Ng�c\n   ")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_tangsaophequang", "no", 1)
		
end


function Run_tangsaophequang(nCount)
	if nCount ~= 1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "Ta xin th�i")
		return
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local tinhngoc= CalcEquiproomItemCount(6,1,4807,-1) 
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 5311 or nGoldEquipIdxFF >5346) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
		return
		end
		if nQuality ~=1 or (nGoldEquipIdxFF >= 5311 and nGoldEquipIdxFF <=5316) then
		 local soluongtinhngoc=8000
				if tinhngoc<soluongtinhngoc then
					Say("Kh�ng �� 8000 Tinh Ng�c.", 1, "�� Ta Xem L�i")
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
					Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong V� C�c 6* t��ng �ng")					
		end

			if nQuality ~=1 or (nGoldEquipIdxFF >= 5317 and nGoldEquipIdxFF <=5346) then
			if nGoldEquipIdxFF==5317 or nGoldEquipIdxFF==5322 or nGoldEquipIdxFF==5327 or nGoldEquipIdxFF==5332 or nGoldEquipIdxFF==5337 or nGoldEquipIdxFF==5342 then 
			local soluongtinhngoc=9000
				if tinhngoc< soluongtinhngoc then
					Say("Kh�ng �� "..soluongtinhngoc.." Tinh Ng�c.", 1, "�� Ta Xem L�i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4807,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong  Vo C�c 7* t��ng �ng")
			end	
			
			if nGoldEquipIdxFF==5318 or nGoldEquipIdxFF==5323 or nGoldEquipIdxFF==5328 or nGoldEquipIdxFF==5333 or nGoldEquipIdxFF==5338 or nGoldEquipIdxFF==5343 then 
			local soluongtinhngoc=12000
				if tinhngoc<soluongtinhngoc then
					Say("Kh�ng �� "..soluongtinhngoc.." Tinh Ng�c.", 1, "�� Ta Xem L�i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4807,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong v� C�c 8* t��ng �ng")
			end	
			if nGoldEquipIdxFF==5319 or nGoldEquipIdxFF==5324 or nGoldEquipIdxFF==5329 or nGoldEquipIdxFF==5334 or nGoldEquipIdxFF==5339 or nGoldEquipIdxFF==5344 then 
			local soluongtinhngoc=15000
				if tinhngoc<soluongtinhngoc then
					Say("Kh�ng �� "..soluongtinhngoc.." Tinh Ng�c.", 1, "�� Ta Xem L�i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4807,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong vo c�c 9* t��ng �ng")
			end

			if nGoldEquipIdxFF==5320 or nGoldEquipIdxFF==5325 or nGoldEquipIdxFF==5330 or nGoldEquipIdxFF==5335 or nGoldEquipIdxFF==5340 or nGoldEquipIdxFF==5345 then 
			local soluongtinhngoc=19000
				if tinhngoc<soluongtinhngoc then
					Say("Kh�ng �� "..soluongtinhngoc.." Tinh Ng�c.", 1, "�� Ta Xem L�i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4807,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong V� C�c 10* t��ng �ng")
			end	
end
		end
	
	

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function nangcapphequangtinhxao()
	szDescription = format("Phi phong V� C�c t��ng �ng \n5000 B�ch Ngh� Tinh Ng�c\n5000 B�ch Ngh� Thi�n Th�ch.\n ")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_nangcapphequangtinhxao", "no", 1)

end

function Run_nangcapphequangtinhxao(nCount)
	if nCount ~= 1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "Ta xin th�i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local bachnghethienthach= CalcEquiproomItemCount(6,1,49004,-1)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		--local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end

		if bachnghethienthach <5000 or bachnghetinhngoc<5000 then
		Say("Nguy�n Li�u Kh�ng �� R�i B�n �i")
		return 
		end
		if nQuality ~=1 or (nGoldEquipIdxFF <5305 or nGoldEquipIdxFF >5310) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
		 return
		end
		
		if nQuality ==1 and (nGoldEquipIdxFF >= 5305 and nGoldEquipIdxFF <= 5310) then

			RemoveItemByIndex(nItemIndex)
			ConsumeEquiproomItem(5000, 6,1, 30355,-1)
			ConsumeEquiproomItem(5000, 6,1, 49004,-1)
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+6},nQuality=1,nCount=1},}, "test", 1);
			Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong V� C�c Tinh Xao t��ng �ng")
		 else Say("Nguy�n Li�u Kh�ng �� R�i B�n �i")
		end
		
		end
	
	
	
	--------------------------------------------------------
function nangcapphiphong6len7()
	szDescription = format("Phi phong Ng� Phong t��ng �ng \nKh�ng b� B�ch Luy�n Th�nh C��ng \nv�o trong n.\n ")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_nangcapphiphong6len7", "no", 1)

end

function Run_nangcapphiphong6len7(nCount)
local henxui= random(1,10)
	if nCount ~= 1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "Ta xin th�i")
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
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
	--	Msg2Player(" Ch�c m�ng "..tilethanhcong.." *************** "..nGoldEquipIdxFF.."" )

		
		
		if nQuality ~=1 or (nGoldEquipIdxFF <4940 and nGoldEquipIdxFF >4945) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
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
													Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong V� C�c t��ng �ng")
													WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi 80 \n");		
		return
		end
											 if henxui<=tilethanhcong then
													RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(bachluyen, 6,1, 49006,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,random(5305,5310)},nQuality=1,nCount=1},}, "test", 1);
													Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong V� C�c t��ng �ng")
													WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi "..bachluyen.."\n");	
									--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")													
												else 
															ConsumeEquiproomItem(80, 6,1, 49006,-1)
															Msg2Player(" Chia bu�n c�ng gia quy�n - Ch�c b�n may m�n l�n sau nh�")
															WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep Xit FF voi "..bachluyen.."\n");	
															--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")		
											 end
		 else Say("Nguy�n Li�u Kh�ng �� R�i B�n �i")
		end
		
		end
	
function checknguyenlieunangcap()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
local bachluyen= CalcEquiproomItemCount(6,1,49006,-1) --B�ch Luy�n Th�nh C��ng
	local tilethanhcong =floor(bachluyen*10/10000) 

local tbSay = 
{
"Ta ch�c ch�n ti�p t�c, ta s� b� FF6 v�o � luy�n/#nangcapphiphong6len7()",
"Th�i ta kh�ng mu�n n�a/no"
}
hienthitile=tilethanhcong*10
if bachluyen>10000 then


Say( "<color=green>Nh� ng��i �ang c� <color=yellow> >10000 vi�n<color> <color=white><B�ch Luy�n Th�nh C��ng><color> rong h�nh trang v� v�y t� l� th�nh c�ng l� 100%, Ti�p t�c ch� ?",getn(tbSay),tbSay)
else 
Say( "<color=green><color=green>Nh� ng��i �ang c� <color=yellow> "..bachluyen.." vi�n <color> <color=white><B�ch Luy�n Th�nh C��ng><color>\n trong h�nh trang v� v�y t� l� th�nh c�ng l�  th�p \n Ti�p t�c ch� ?",getn(tbSay),tbSay)
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
	local szTitle = format("Ng��i ngh� ��i lo�i b�o th�ch n�o ��y",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
				
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Trang b�  Kim �", tbProp = {0, {2055,2284}}, nQuality = 1 },
                  {szName = "Ti�n ��ng", tbProp = {4,417,1,1},nCount = 5},
			},
			tbProduct = {szName="Kim � L�nh", tbProp={6, 1, 2349, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
              [2] = 
		{
			tbMaterial = 
			{
				{szName = "Trang b� B�ch H�", tbProp = {0, {2285,2514}}, nQuality = 1 },
                            {szName = "Ti�n ��ng", tbProp = {4,417,1,1},nCount = 10},
			},
			tbProduct = {szName="B�ch H� L�nh", tbProp={6, 1, 2357, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��i l�y %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end
-------------------che tao phi phong  ------------------------------ Qu�---------------

function chetaophiphong()
--	do Say("Ch�c n�ng t�m th�i ch�a m�, xin quay l�i sau...") return end
	local tab_Content = {
           "Khai Th�ng Phi Phong/khaithongphiphong",
           "Kh�m D�ng Cho Phi Phong �� Khai Th�ng /khamdongff6",
		"Th�i kh�ng c�n n�a./Quit"
	}
	Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ", getn(tab_Content), tab_Content);
end;
---------------------------------------
function doithuoctinh6()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
				
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
                {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 5000},
			--	{szName="Ng�n L��ng",nJxb=100000000,nCount=1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(PLVL)", tbProp={0, 6037}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				  {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng B�ng)", tbProp={0, 6038}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

		  [3] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				   {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng L�i)", tbProp={0, 6039}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[4] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				   {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng H�a)", tbProp={0, 6040}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
					[5] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				   {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng ��c)", tbProp={0, 6041}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
							[6] = 
		{
			tbMaterial = 
			{
			{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				   {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(XSTK)", tbProp={0, 6042}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��i l�y %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end
---------------------------------------
function khamdongff6()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{

		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				 {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(PLVL)", tbProp={0, 6037}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
				{szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng B�ng)", tbProp={0, 6038}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

		  [3] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
			 {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng L�i)", tbProp={0, 6039}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[4] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
			 {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng H�a)", tbProp={0, 6040}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
					[5] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
			 {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng ��c)", tbProp={0, 6041}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[6] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 5000},
			 {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 1000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(XSTK)", tbProp={0, 6042}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��i l�y %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end
---------------------------------------
function khaithongphiphong()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong", tbProp = {0,6036}, nQuality = 1 },
                 {szName = "Tinh Ng�c", tbProp = {6,1,4806},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(�� Khai Th�ng)", tbProp={0, 6044}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��i l�y %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end
-------------------che tao an------------------------------

function epan()
	do Say("Ch�c n�ng t�m th�i ch�a m�, xin quay l�i sau...") return end
	local tab_Content = {
           "N�ng c�p �n 4 -> 5/nangcapan5",
           "N�ng c�p �n 5 -> 6/nangcapan6",
	   "N�ng c�p �n 6 -> 7/nangcapan7",
	   "N�ng c�p �n 7 -> 8/nangcapan8",
	 --  "N�ng c�p �n 8 -> 9/nangcapan9",
	--   "N�ng c�p �n 9 -> 10/nangcapan10",
	  


	
		"Th�i kh�ng c�n n�a./Quit"
	}
	Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ", getn(tab_Content), tab_Content);
end;


---------nang cap an 5-----------------------

function nangcapan5()
	local title = "N�ng c�p �n 5"
	g_GiveItemUI(title, "�� n�ng c�p �n 4 -> �n 5 v�nh vi�n c�n ��t v�o 1 �n 4 v�nh vi�n. H�nh trang ph�i c�  200 tinh ng�c. n�u l��ng tinh ng�c �t h�n 200 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n �n 4 ", {giveokan5}, nil, nil)


end


function giveokan5(putCount)
	local tban = {
		[1]={	
			{"Ng� h�nh �n (c��ng h�a) c�p 4 ",3208},
			{"Ng� h�nh �n (nh��c h�a) c�p 4",3218},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o �n 4 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "�n c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng �n 4")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 10 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 10 Ho�ng Kim Th�nh Th�ch")
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
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


-----------------------nang cap an 6--------------------------


function nangcapan6()
	local title = "N�ng c�p �n 6"
	g_GiveItemUI(title, "�� n�ng c�p �n 5 -> �n 6 v�nh vi�n c�n ��t v�o 1 �n 5 v�nh vi�n. H�nh trang ph�i c� 20 Ho�ng Kim Th�ch v� 250 tinh ng�c. n�u l��ng tinh ng�c �t h�n 250 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n �n 5 ", {giveokan6}, nil, nil)


end


function giveokan6(putCount)
	local tban = {
		[1]={	
			{"Ng� h�nh �n (c��ng h�a) c�p 5 ",3209},
			{"Ng� h�nh �n (nh��c h�a) c�p 5",3219},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o �n 5 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "�n c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng �n 5")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 20 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 20 Ho�ng Kim Th�nh Th�ch")
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
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


----------------------nang cap an 7--------------------------------------

function nangcapan7()
	local title = "N�ng c�p �n 7"
	g_GiveItemUI(title, "�� n�ng c�p �n 6 -> �n 7 v�nh vi�n c�n ��t v�o 1 �n 6 v�nh vi�n. H�nh trang ph�i c� 50 Ho�ng Kim Th�ch v� 500 tinh ng�c. n�u l��ng tinh ng�c �t h�n 500 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n �n 6 ", {giveokan7}, nil, nil)


end


function giveokan7(putCount)
	local tban = {
		[1]={	
			{"Ng� h�nh �n (c��ng h�a) c�p 6 ",3210},
			{"Ng� h�nh �n (nh��c h�a) c�p 6",3220},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o �n 6 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "�n c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng �n 6")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 50 Ho�ng Kim Th�nh Th�ch")
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
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end





------------------------------nang cap an 8--------------------------------------------

function nangcapan8()
	local title = "N�ng c�p �n 8"
	g_GiveItemUI(title, "�� n�ng c�p �n 7 -> �n 8 v�nh vi�n c�n ��t v�o 1 �n 7 v�nh vi�n. H�nh trang ph�i c� 250 Ho�ng Kim Th�ch v� 2500 tinh ng�c. n�u l��ng tinh ng�c �t h�n 2500 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n �n 7 ", {giveokan8}, nil, nil)


end


function giveokan8(putCount)
	local tban = {
		[1]={	
			{"Ng� h�nh �n (c��ng h�a) c�p 7 ",3211},
			{"Ng� h�nh �n (nh��c h�a) c�p 7",3221},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o �n 6 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "�n c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng �n 7")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 250 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 250 Ho�ng Kim Th�nh Th�ch")
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
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


--------------------------------------------------------------------------------------


-------------------che tao phi phong ----------------------

function epphiphong()
	local tab_Content = {
           "N�ng c�p phi ph�ng 4 -> 5/nangcappp5",
           "N�ng c�p phi ph�ng 5 -> 6/nangcappp6",
	   "N�ng c�p phi ph�ng 6 -> 7/nangcappp7",
	   "N�ng c�p phi ph�ng 7 -> 8/nangcappp8",
	  -- "N�ng c�p phi ph�ng 8 -> 9/nangcappp9",
	 --  "N�ng c�p phi ph�ng 9 -> 10/nangcappp10",
	--   "N�ng c�p phi ph�ng 10 -> si�u c�p/nangcapppsc",


	
		"Th�i kh�ng c�n n�a./Quit"
	}
	Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ", getn(tab_Content), tab_Content);
end;

----------nang cap ff5------------------------------------------------


function nangcappp5()
	local title = "N�ng c�p Phi phong 5"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 4 -> phi phong 5 v�nh vi�n c�n ��t v�o 1 phi phong 4 v�nh vi�n. H�nh trang ph�i c� 250 tinh ng�c. n�u l��ng tinh ng�c �t h�n 250 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 4 ", {giveokff5}, nil, nil)


end



function giveokff5(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi Phong Ng�o Tuy�t (d�ch chuy�n t�c th�i)",3468},
			{"Phi Phong Ng�o Tuy�t (h�a gi�i s�t th��ng)",3469},
			

		},

		[2]={
			{"Phi phong K�nh L�i (d�ch chuy�n t�c th�i)",3470},
			{"Phi phong K�nh L�i (h�a gi�i s�t th��ng)",3471},
			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 4 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[2][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 4")
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
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


-----------phi phong 6 --------------

function nangcappp6()
	local title = "N�ng c�p Phi phong 6"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 5 -> phi phong 6 v�nh vi�n c�n ��t v�o 1 phi phong 5 v�nh vi�n. H�nh trang ph�i  500 tinh ng�c. n�u l��ng tinh ng�c �t h�n 500 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 5 ", {giveokff6}, nil, nil)


end


function giveokff6(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong K�nh L�i (d�ch chuy�n t�c th�i)",3470},
			{"Phi phong K�nh L�i (h�a gi�i s�t th��ng)",3471},
			{"Phi phong K�nh L�i (Tr�ng k�ch)",3472},

			

		},

		[2]={
			{"Phi phong Ng� phong (d�ch chuy�n t�c th�i)",3473},
			{"Phi phong Ng� phong (h�a gi�i s�t th��ng)",3474},
			{"Phi phong Ng� phong (Tr�ng k�ch)",3475},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 5 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 5")
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
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end

------------------------nang cap ff 7 --------------------------------

function nangcappp7()
	local title = "N�ng c�p Phi phong 7"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 6 -> phi phong 7 v�nh vi�n c�n ��t v�o 1 phi phong 6 v�nh vi�n. H�nh trang ph�i c� 50 Ho�ng Kim Th�ch v� 1000 tinh ng�c. n�u l��ng tinh ng�c �t h�n 1000 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 6 ", {giveokff7}, nil, nil)


end


function giveokff7(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong Ng� phong (d�ch chuy�n t�c th�i)",3473},
			{"Phi phong Ng� phong (h�a gi�i s�t th��ng)",3474},
			{"Phi phong Ng� phong (Tr�ng k�ch)",3475},
			

		},

		[2]={
			{"Phi phong Ph� Quang (d�ch chuy�n t�c th�i)",3476},
			{"Phi phong Ph� Quang (h�a gi�i s�t th��ng)",3477},
			{"Phi phong Ph� Quang (Tr�ng k�ch)",3478},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 6 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 6")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 50 Ho�ng Kim Th�nh Th�ch")
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
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end




--------------nang cap ff8------------------------------------------


function nangcappp8()
	local title = "N�ng c�p Phi phong 8"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 7 -> phi phong 8 v�nh vi�n c�n ��t v�o 1 phi phong 7 v�nh vi�n. H�nh trang ph�i c� 50 Ho�ng Kim Th�ch v� 2500 tinh ng�c. n�u l��ng tinh ng�c �t h�n 2500 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 7 ", {giveokff8}, nil, nil)


end


function giveokff8(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong Ph� Quang (d�ch chuy�n t�c th�i)",3476},
			{"Phi phong Ph� Quang (h�a gi�i s�t th��ng)",3477},
			{"Phi phong Ph� Quang (Tr�ng k�ch)",3478},			

		},

		[2]={
			{"Phi phong Kh�p Th�n (d�ch chuy�n t�c th�i)",3479},
			{"Phi phong Kh�p Th�n (h�a gi�i s�t th��ng)",3480},
			{"Phi phong Kh�p Th�n (Tr�ng k�ch)",3481},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 7 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 7")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 50 Ho�ng Kim Th�nh Th�ch")
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
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


---------------------------nang cap ff9-----------------------------------------
function nangcappp9()
	local title = "N�ng c�p Phi phong 9"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 8 -> phi phong 9 v�nh vi�n c�n ��t v�o 1 phi phong 8 v�nh vi�n. H�nh trang ph�i c� 500 Ho�ng Kim Th�ch v� 5000 tinh ng�c. n�u l��ng tinh ng�c �t h�n 5000 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 8 ", {giveokff9}, nil, nil)


end


function giveokff9(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong Kh�p Th�n (d�ch chuy�n t�c th�i)",3479},
			{"Phi phong Kh�p Th�n (h�a gi�i s�t th��ng)",3480},
			{"Phi phong Kh�p Th�n (Tr�ng k�ch)",3481},			

		},

		[2]={
			{"Phi phong K�nh Thi�n (d�ch chuy�n t�c th�i)",3482},
			{"Phi phong K�nh Thi�n (h�a gi�i s�t th��ng)",3483},
			{"Phi phong K�nh Thi�n (Tr�ng k�ch)",3484},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 8 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 8")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 500 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 500 Ho�ng Kim Th�nh Th�ch")
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
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end




------------------------------nag cap ff10------------------------------------------------



function nangcappp10()
	local title = "N�ng c�p Phi phong 10"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 9 -> phi phong 10 v�nh vi�n c�n ��t v�o 1 phi phong 9 v�nh vi�n. H�nh trang ph�i c� 1000 Ho�ng Kim Th�ch v� 10000 tinh ng�c. n�u l��ng tinh ng�c �t h�n 10000 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 8 ", {giveokff10}, nil, nil)


end


function giveokff10(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong K�nh Thi�n (d�ch chuy�n t�c th�i)",3482},
			{"Phi phong K�nh Thi�n (h�a gi�i s�t th��ng)",3483},
			{"Phi phong K�nh Thi�n (Tr�ng k�ch)",3484},			

		},

		[2]={
			{"Phi phong V� C�c (d�ch chuy�n t�c th�i)",3485},
			{"Phi phong V� C�c (h�a gi�i s�t th��ng)",3486},
			{"Phi phong V� C�c (Tr�ng k�ch)",3487},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 9 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 9")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 1000 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 1000 Ho�ng Kim Th�nh Th�ch")
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
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end



----------------------------------nang cap ff sieu cap-----------------------------------------------------

function nangcapppsc()

do Say("T�nh n�ng hi�n t�i ch�a m�, xin quay l�i sau...") return end


end


-----------------------------------------------------


function cachchetao()
	local tab_Content = {
        --   "Ta mu�n xem c�ch ch� t�o trang b� X�ch L�n/chetaoxichlan",
       --    "Xem c�ch ch� t�o trang b� Minh Ph��ng /chetaominhphuong",
	--"Xem c�ch ch� t�o trang b� ��ng Long/chetaodanglong",
	
		"Th�i kh�ng b�n n�a./Quit"
	}
	Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n t�m hi�u c�ch ch� t�o trang b� n�o?  ", getn(tab_Content), tab_Content);
end;

function chetaoxichlan()
Talk(1,"", "<color=yellow> Ch� t�o trang b� X�ch L�n c�n 1 m�n �� B�ch H� + 2 Th�n B� Kho�ng Th�ch + 20 �� ph� X�ch L�n c�ng lo�i. Ch� � ch� b� �� b�ch h� v�o � y�u c�u, Th�n b� Kho�ng th�ch v� �� ph� b� s�n trong h�nh trang kh�ng b�o v�o � y�u c�u")

end

function chetaominhphuong()
Talk(1,"", "<color=yellow> Ch� t�o trang b� Minh Ph��ng c�n 1 m�n �� X�ch L�n + 4 Th�n B� Kho�ng Th�ch + 50 �� ph� Minh Ph��ng c�ng lo�i. Ch� �: Ch� b� trang b� X�ch L�n v�o h�p tho�i, Th�n b� Kho�ng th�ch v� �� ph� b� s�n trong h�nh trang kh�ng b�o v�o � y�u c�u")

end

------------------------------------------------------------------------------------------

function chetaodanglong()
Talk(1,"", "<color=yellow> Ch� t�o trang b� ��ng Long c�n 1 m�n �� Minh Ph��ng + 6 Th�n B� Kho�ng Th�ch + 100 �� ph� ��ng Long c�ng lo�i. Ch� �: Ch� b� trang b� Minh Ph��ng v�o h�p tho�i, Th�n b� Kho�ng th�ch v� �� ph� b� s�n trong h�nh trang kh�ng b�o v�o � y�u c�u")

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
	local szTitle = format("Ng��i ngh� ��i lo�i b�o th�ch n�o ��y",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
			
              [1] = 
		{
			tbMaterial = 
			{
				{szName="L�nh b�i kim �", tbProp={6,1,2349,1,0,0}},
                            --{szName = "Ti�n ��ng(kh�ng kh�a)", tbProp = {4,417,1,1},nCount = 500},
                            {szName="Th�n b� kho�ng th�ch", tbProp={6,1,398, 1, 0, 0}},
                            {szName="Huy�n tinh kho�ng th�ch(c�p 10)", tbProp={6,1,147,10,0,0}},
			},
			tbProduct = {szName="L�nh b�i B�ch H�", tbProp={6, 1, 2357, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},

		 [2] = 
		{
			tbMaterial = 
			{
				{szName="L�nh b�i B�ch H�", tbProp={6,1,2357,1,0,0}},
                            --{szName = "Ti�n ��ng(kh�ng kh�a)", tbProp = {4,417,1,1},nCount = 500},
                            {szName="Th�n b� kho�ng th�ch", tbProp={6,1,398, 1, 0, 0},nCount=3},
                            {szName="Huy�n tinh kho�ng th�ch(c�p 10)", tbProp={6,1,147,10,0,0}},
			},
			tbProduct = {szName="L�nh b�i X�ch L�n", tbProp={6, 1, 2370, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
			

		},

		[3] = 
		{
			tbMaterial = 
			{
				{szName="L�nh b�i X�ch L�n", tbProp={6,1,2370,1,0,0}},
                            {szName="Th�n b� kho�ng th�ch", tbProp={6,1,398, 1, 0, 0},nCount=4},
                            {szName="Huy�n tinh (c�p 10)", tbProp={6,1,147,10,0,0},nCount=4},
				
			},
			tbProduct = {szName="L�nh b�i Minh Ph��ng", tbProp={6,1,2371,1,0,0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
			

		},

          }
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��i l�y %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
		-- Msg2SubWorld("<color=metal>B�n "..GetName().." �� n�ng c�p th�nh c�ng t� BHL l�n X�ch L�n l�nh t�i th� r�n b� ��a Ba L�ng huy�n !")
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end

function eptinhsuong()
	local title = "N�ng c�p �� Tinh S��ng"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n  -1 �o ho�c v� kh� ��ng long.\n  -1000 T� Tinh kho�ng.\n  -1 Tinh S��ng L�nh.\n  -10 kv cho �o, 20kv cho v� kh�.\n\n+ Nguy�n li�u t�ng may m�n:\n  -�� ph� Tinh S��ng(t�i �a 10 c�i).\n  - Tinh S��ng th�ch th��ng(t�i �a 50 c�i)", {nangcaptinhsuong}, nil, nil)
end

function epnguyetkhuyen()
	local title = "N�ng c�p �� Nguy�t Khuy�n"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n-1 Trang b� Tinh S��ng \n-2000 T� Tinh Kho�ng Th�ch.\n-1 NK L�nh.\n\n+ Nguy�n li�u t�ng may m�n:\n  -�� ph� Nguy�t Khuy�t(t�i �a 10 c�i).\n  - Nguy�t Khuy�n Tinh Th�ch(t�i �a 30 c�i)", {nangcapnguyetkhuyen}, nil, nil)
end
function quynguyentinhsuong()
	local title = "N�ng c�p �� Tinh S��ng"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n  -1 Trang b� tinh s��ng.\n  -1 ki�m ��nh ph�.\n  -1 quy nguy�n ph�.", {doiruongtinhsuong}, nil, nil)
end
function quynguyentinhsuongmax()
	local title = "N�ng c�p �� Tinh S��ng Max"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n  -1 Trang b� tinh s��ng.\n  -VK + �o : 50KNB.\n  -C�c M�n Kh�c 10KNB.", {doiruongtinhsuongmax}, nil, nil)
end

function quynguyennguyetkhuyen()
	local title = "N�ng c�p �� Nguy�t Khuy�t"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n  -1 Trang b� Nguy�t Khuy�t.\n  -1 ki�m ��nh ph�.\n  -1 quy nguy�n ph�.\n  -1 Tr�ng Luy�n Ng�c.", {doiruongnguyetkhuyet}, nil, nil)
end

function quynguyennguyetkhuyenmax()
	local title = "N�ng c�p �� Nguy�t Khuy�t Max"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n  -1 Trang b� Nguy�t Khuy�t Max.\n  V� Kh� -200 KNB.\n �o - 150 KNB.\n C�n L�i - 50KNB", {doiruongnguyetkhuyetmax}, nil, nil)
end




---------nang cap tinh suong

function nangcaptinhsuong(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi ��ng Long. To�n b� nguy�n li�u �� � h�nh trang. Ch� � �� ph� t�i �a 10 m�nh m�i m�nh 5% th�nh c�ng, Tinh s��ng th�ch 50 c�c m�i c�c 1% th�nh c�ng")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
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
		Talk(1,"", "Xin vui l�ng b� v�o trang b� ��ng long �o ho�c v� kh�")
		return

		
	end
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi ��ng Long. To�n b� nguy�n li�u �� � h�nh trang. Ch� � �� ph� t�i �a 10 m�nh m�i m�nh 5% th�nh c�ng, Tinh s��ng th�ch t�i �a 50 c�c m�i c�c 1% th�nh c�ng")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 4885, -1) < 1000) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1000 T� Tinh Kho�ng th�ch Kho�ng Th�ch")
		return
	end
	if (CalcEquiproomItemCount(6,1,4882,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 L�nh b�i Tinh S��ng")
		return
	end
      
      local nCash = GetCash()
	  
      if typeItem == 0 then
			if nCash < 100000000 then
				Talk(1,"", "Trong r��ng ph�i c� �t nh�t 10.000 v�n �� n�ng c�p l�n �o gi�p Tinh S��ng")
				return
			end
			
	  end
	  
	  if typeItem == 1 then
			if nCash < 200000000 then
				Talk(1,"", "Trong r��ng ph�i c� �t nh�t 20.000 v�n �� n�ng c�p l�n v� kh� Tinh S��ng")
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
									{szName="B�o R�ng Tinh S�ng Kh�i",tbProp={6,1,4509,1,0,0},nCount=1,tbParam={6,0,0,0,0,0}},
									
		
		}
			else
				addedId = 4510
				tbAward = {
		
										{szName="B�o R�ng Tinh S�ng V� Kh�",tbProp={6,1,4510,1,0,0},nCount=1,tbParam={7,0,0,0,0,0}},
		
								}
			end
			
			
			tbAwardTemplet:GiveAwardByList(tbAward,"�p tinh s��ng")
			
			logExchangeItem(addedId, rate1 , rate2)	
		else
			logExchangeItem(goldEquipIndex, rate1 , rate2)				
		end
	end
	
end
------------------------------nang cap nguyet khuyen------------------------------
function nangcapnguyetkhuyen(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi Nguy�t Khuy�t. To�n b� nguy�n li�u �� � h�nh trang. Ch� � �� ph� t�i �a 10 m�nh m�i m�nh 5% th�nh c�ng, Nguy�t khuy�t tinh th�ch 30 c�c m�i c�c 1% th�nh c�ng")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
		return
	end	
	     local nCash = GetCash()
				if nCash < 200000000 then
				Talk(1,"", "Trong r��ng ph�i c� �t nh�t 20.000 v�n �� n�ng c�p l�n Nguy�t Khuy�t")
				return
			end
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local nguyetkhuyettb = configNK[1]		
	local minId = nguyetkhuyettb[1][2]
	local maxId = nguyetkhuyettb[getn(nguyetkhuyettb)][2]
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < 3405) or (goldEquipIndex > 3654) then 	
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi Tinh S��ng. To�n b� nguy�n li�u �� � h�nh trang")
			return
		
	end
	
	if typeItem==0 or typeItem==1 then
	
			Talk(1,"", "Hi�n t�i �o v� V� kh� ta v�n ch�a nghi�n c�u ���c c�ch ch� t�o nh� huynh ��i")
		return
	end
	
	if (CalcEquiproomItemCount(6, 1, 4885, -1) < 2000) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 2000 T� Tinh Kho�ng Th�ch ")
		return
	end
	if (CalcEquiproomItemCount(6,1,4834,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Nguy�t Khuy�t L�nh")
		return
	end
	if typeItem >=5 then
			iddopho=4424+typeItem
			dophonguyetkhuyet= CalcEquiproomItemCount(6, 1,iddopho, -1)
				else 
				iddopho=4434+typeItem
				dophonguyetkhuyet= CalcEquiproomItemCount(6, 1, iddopho, -1)	
				end
				
		nguyetkhuyentinhthach=CalcEquiproomItemCount(6, 1, 4817,-1) --Nguy�t Khuy�t Tinh Th�ch
		tilethanhcong = dophonguyetkhuyet*5 + nguyetkhuyentinhthach*1.5
		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 �� Ph� Nguy�t Khuy�t c�ng lo�i")
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
											{szName="B�o R�ng Nguy�t Khuy�t",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
										}
														
											
											tbAwardTemplet:GiveAwardByList(tbAward,"Bao r��ng Nguy�t Khuy�t")
											--	Msg2Player(" Th�nh C�ng,Tinh Th�ch:"..nguyetkhuyentinhthach.."----. �� Ph�:"..dophonguyetkhuyet.."-.-ID �� Ph�: "..iddopho.."--.-T� L� Th�nh C�ng--"..tilethanhcong.."%------Con S� may m�n-"..mayman.."------")
												Msg2Player(" Th�nh C�ng - Ch�c M�ng B�n")
											Pay(200000000)
											WriteLogPro("dulieu/epdonguyetkhuyen.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong nguyet khuyen  Tinh Th�ch:"..nguyetkhuyentinhthach.."----. �� Ph�:"..dophonguyetkhuyet.."-.-ID �� Ph�: "..iddopho.."--.-T� L� Th�nh C�ng--"..tilethanhcong.."%------Con S� may m�n-"..mayman.."------\n");		
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
	--	Msg2Player(" Th�t b�i,Tinh Th�ch:"..nguyetkhuyentinhthach.."----. �� Ph�:"..dophonguyetkhuyet.."-.-ID �� Ph�: "..iddopho.."--.-T� L� Th�nh C�ng--"..tilethanhcong.."%------Con S� may m�n-"..mayman.."------")
		Msg2Player(" Th�t b�i - Chia Bu�n C�ng B�n")
		WriteLogPro("dulieu/epdonguyetkhuyen.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep that bai nguyet khuyen,,  Tinh Th�ch:"..nguyetkhuyentinhthach.."----. �� Ph�:"..dophonguyetkhuyet.."-.-ID �� Ph�: "..iddopho.."--.-T� L� Th�nh C�ng--"..tilethanhcong.."%------Con S� may m�n-"..mayman.."------\n");		

		end
end

---------doi vu khi hoac ao tinh suong lay ruong -------

function doiruongtinhsuong(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang b� tinh s��ng. Quy nguy�n ph� v� ki�m ��nh ph� b� � h�nh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
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
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi Tinh s��ng. To�n b� nguy�n li�u �� � h�nh trang")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 3007, -1) < 1) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Ng� linh ki�m ��nh ph�")
		return
	end
	if (CalcEquiproomItemCount(6,1,3008,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Ng� linh quy nguy�n ph�")
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
			{szName="B�o R�ng Tinh S�ng",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
									
		
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r��ng tinh s��ng")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
	
---------doi tinh suong max -------

function doiruongtinhsuongmax(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang b� Tinh S��ng Max. KNB b� � h�nh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
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
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang b� Tinh S��ng. KNB �� � h�nh trang")
			return
		
	end
if typeItem ==6 or typeItem ==5  then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 200) then
		Talk(1,"", "V� Kh� +�o Th� Trong r��ng ph�i c� �t nh�t 50 KNB nh� b�n ")
		return
	end
end    
 
   

	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 10) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 10 KNB nh� b�n ")
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
			{szName="B�o R��ng Tinh S��ng Max",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r��ng Tinh S��ng Max")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end

---------doi nguyet khuyet lay ruong -------

function doiruongnguyetkhuyet(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang b� Nguy�t khuy�t. Quy nguy�n ph�+ki�m ��nh ph�+Ng�c Tr�ng Luy�n b� � h�nh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
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
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi Nguy�t Khuy�t. To�n b� nguy�n li�u �� � h�nh trang")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 3007, -1) < 1) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Ng� linh ki�m ��nh ph�")
		return
	end
	if (CalcEquiproomItemCount(6,1,3008,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Ng� linh quy nguy�n ph�")
		return
	end
      
	  	if (CalcEquiproomItemCount(6,1,4830,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Ng� linh quy nguy�n ph�")
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
			{szName="B�o R�ng Nguy�t Khuy�t",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r��ng Nguy�t Khuy�t")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
	
---------doi nguyet khuyet lay ruong max -------

function doiruongnguyetkhuyetmax(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang b� Nguy�t khuy�t Max. KNB b� � h�nh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
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
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi Nguy�t Khuy�t. To�n b� nguy�n li�u �� � h�nh trang")
			return
		
	end
if typeItem ==6 then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 200) then
		Talk(1,"", "V� Kh� Th� Trong r��ng ph�i c� �t nh�t 200 KNB nh� b�n ")
		return
	end
end    
 
if typeItem ==5 then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 150) then
		Talk(1,"", "�o Gi�p Th� Trong r��ng ph�i c� �t nh�t 150 KNB nh� b�n ")
		return
	end
end     

	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 50) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 50 KNB nh� b�n ")
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
			{szName="B�o R��ng Nguy�t Khuy�t Max",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r��ng Nguy�t Khuy�t Max")
			
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
"��i trang b� l�y l�nh b�i<Kim �, B�ch H�> /WantBuyBaoshi",
"Ph�n r� trang b�<X�ch L�n,Minh Ph��ng,��ng Long> /phanraxichlan",
" ��ng./no"
}
Say("B�n mu�n ph�n r� lo�i trang b� n�o?", getn(tab_Content), tab_Content);
end;

function phanraxichlan()
	local title = "Ph�n r� �� X�ch L�n"
	g_GiveItemUI(title, "C�n 1 m�n XL ��t v�o � v� 10 ti�n ��ng trong h�nh trang", {phanraxl}, nil, nil)
end

function phanraxl(putCount) --
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o 1 m�n trang b� X�ch L�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
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
			Talk(1,"", "Xin vui l�ng ��t v�o 1 m�n X�ch L�n")
			return
		end
	end
	
	if (CalcEquiproomItemCount(4,417,1,1) < 10) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 10 xu trong h�nh trang m�i c� th� th�c hi�n")
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
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Long Chi�n Vu D� - Ki�m Di�u 7", tbProp = {0,9358}, nQuality = 1 },
                                {szName = "Tinh Ng�c", tbProp = {6,1,4807,1,0,0},nCount = 2000},
                                {szName="Xu",tbProp={4,417,1,1,0,0},nCount=2000},
			},
			tbProduct = {szName="Long Chi�n Vu D� - Ki�m Di�u 7==> Long Chi�n Vu D� - Ki�m Di�u 8", tbProp={0, 9359}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Ng� H�nh �n 7", tbProp = {0,9345}, nQuality = 1 },
                                {szName = "Tinh Ng�c", tbProp = {6,1,4807,1,0,0},nCount = 2000},
                                {szName="Xu",tbProp={4,417,1,1,0,0},nCount=2000},
			},
			tbProduct = {szName="Ng� H�nh �n 7 ==> Ng� H�nh �n 8", tbProp={0, 9346}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},  
           
              --  [3] = 
		--{
		--	tbMaterial = 
		--	{
		--		{szName = "Xuy�n Y Ph� Gi�p 8", tbProp = {0,4923}, nQuality = 1 },
                --                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0,0},nCount = 2000},
               --                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 5000},
                --                {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 5000},
		--                {szName="��i Kim B�i",tbProp={4,1506,1,1,0,0},nCount=300},
		--	},
		--	tbProduct = {szName="Xuy�n Y Ph� Gi�p 8 ==> Xuy�n Y Ph� Gi�p 8 ( �� tr�ng luy�n) ", tbProp={0, idxuyengiap2}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	
end 
----------------------------------------------------------------

function DoiNguyenLieu567()
	szDescription = format("Ng�a Phong Th�n D�i Ra 7 M�nh Ng�a R�i Mang L�i �p Lai\n.")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "DoiNguyenLieu56_ok", "no", 1)
		
end
function DoiNguyenLieu56_ok()
local nItemIndex = GetGiveItemUnit(1)
local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)

if nGoldEquipIdxFF==4957 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end

if nGoldEquipIdxFF==4958 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end

if nGoldEquipIdxFF==4959 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end

if nGoldEquipIdxFF==4960 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4961 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4962 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4963 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4964 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4965 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4966 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4967 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
if nGoldEquipIdxFF==4968 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 1",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 2",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 3",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 4",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 5",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 6",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "m�nh ng�a 7",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);
end
end
function DoiNguyenLieu5678()
	local tbSay = 
{
"Ta Mu�n ��i Sang han huyet long cau/#TienHanhDoiSkillTrungSinh4(4956)",
"Ta Mu�n ��i Sang Thi�t Huy�t Chi�n Lang/#TienHanhDoiSkillTrungSinh4(4959)",
"Ta Mu�n ��i Sang Ng�n Gi�p Huy�n Tr�/#TienHanhDoiSkillTrungSinh4(4960)",
"Ta Mu�n ��i Sang T� B�t T��ng/#TienHanhDoiSkillTrungSinh4(4961)",
"Ta Mu�n ��i Sang M�c V�n Kim S�c/#TienHanhDoiSkillTrungSinh4(4962)",
"Ta Mu�n ��i Sang X�ch V� Kim S�c/#TienHanhDoiSkillTrungSinh4(4963)",
"Ta Mu�n ��i Sang Tuy�t V�c Ng�n H�n/#TienHanhDoiSkillTrungSinh4(4964)",
"Ta Mu�n ��i Sang Tuy�t V�c Kim Gi�c/#TienHanhDoiSkillTrungSinh4(4965)",
"Ta Mu�n ��i Sang Tuy�t V�c Chi�n H�n/#TienHanhDoiSkillTrungSinh4(4966)",
"Ta Mu�n ��i Sang Tuy�t V�c X�ch Gi�c/#TienHanhDoiSkillTrungSinh4(4967)",
"Ta Mu�n ��i Sang Tuy�t V� Ng�n S�c/#TienHanhDoiSkillTrungSinh4(4968)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n Mua G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
		{
                  {szName = "Kim Nguy�n B�o", tbProp = {4,1496,1,1,0},nCount = 200},
                   {szName = "Ngua 3 Skill", tbProp = {0,{4956,4968}}, nQuality = 1 },
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
-------------------------------------------
function DoiNguyenLieu5678tc()
	local tbSay = 
{
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p 6( b� qua kh�ng h�a)/#TienHanhDoiSkillTrungSinh4tc(4934)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p 6( b� qua kh�ng B�ng)/#TienHanhDoiSkillTrungSinh4tc(4935)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p 6( b� qua kh�ng L�i)/#TienHanhDoiSkillTrungSinh4tc(4936)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p 6( b� qua kh�ng ��c)/#TienHanhDoiSkillTrungSinh4tc(4937)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p 6( b� qua Ph� Ph�ng)/#TienHanhDoiSkillTrungSinh4tc(4938)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4tc(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuy�n Y Ph� Gi�p 6(DTL)", tbProp = {0,{4933,4938}}, nQuality = 1 },
               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0},nCount = 1000},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1000},
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0,0},nCount = 200},
             	{szName = "KNb", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

------------------------------------------------------------
function DoiNguyenLieu5678tl()
	local tbSay = 
{
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p 5( b� qua kh�ng h�a)/#TienHanhDoiSkillTrungSinh4tl(4929)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p 5( b� qua kh�ng B�ng)/#TienHanhDoiSkillTrungSinh4tl(4930)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p 5( b� qua kh�ng L�i)/#TienHanhDoiSkillTrungSinh4tl(4931)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p 5( b� qua kh�ng ��c)/#TienHanhDoiSkillTrungSinh4tl(4932)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p 5( b� qua Ph� Ph�ng)/#TienHanhDoiSkillTrungSinh4tl(4933)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4tl(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuy�n Y Ph� Gi�p 5(DTL)", tbProp = {0,{4929,4933}}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0},nCount = 500},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 500},
                {szName = "Kim Nguyen Bao", tbProp = {4,1496,1,1,0},nCount = 50},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

function DoiNguyenLieu5678t()
	local tbSay = 
{
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng h�a)/#TienHanhDoiSkillTrungSinh4t(4969)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng B�ng)/#TienHanhDoiSkillTrungSinh4t(4970)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng L�i)/#TienHanhDoiSkillTrungSinh4t(4971)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng ��c)/#TienHanhDoiSkillTrungSinh4t(4972)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua Ph� Ph�ng)/#TienHanhDoiSkillTrungSinh4t(4973)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4t(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuy�n Y Ph� Gi�p 7(DTL)", tbProp = {0,{4969,4973}}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0},nCount = 2000},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 2000},
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0,0},nCount = 2000},
             	{szName = "KNB ", tbProp = {4,1496,1,1,0},nCount = 300},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

function DoiNguyenLieu5678z()
	local tbSay = 
{
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng h�a)/#TienHanhDoiSkillTrungSinh4z(4974)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng B�ng)/#TienHanhDoiSkillTrungSinh4z(4975)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng L�i)/#TienHanhDoiSkillTrungSinh4z(4976)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng ��c)/#TienHanhDoiSkillTrungSinh4z(4977)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua Ph� Ph�ng)/#TienHanhDoiSkillTrungSinh4z(4978)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4z(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuy�n Y Ph� Gi�p 8(DTL)", tbProp = {0,{4974,4978}}, nQuality = 1 },
               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0},nCount = 1000},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1000},
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0,0},nCount = 1000},
             	{szName = "KNB", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

-----------------------------------------------------------
function DoiNguyenLieu56789z()
	local tbSay = 
{
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng h�a)/#TienHanhDoiSkillTrungSinh49z(4979)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng B�ng)/#TienHanhDoiSkillTrungSinh49z(4980)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng L�i)/#TienHanhDoiSkillTrungSinh49z(4981)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng ��c)/#TienHanhDoiSkillTrungSinh49z(4982)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua Ph� Ph�ng)/#TienHanhDoiSkillTrungSinh49z(4983)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh49z(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuy�n Y Ph� Gi�p 9(DTL)", tbProp = {0,{4979,4983}}, nQuality = 1 },
               {szName = " Thien Tinh Ng�c", tbProp = {6,1,4806,1,0,0},nCount = 2000},
                {szName = " B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 2000},
                {szName = " B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 2000},
                {szName = "KNB", tbProp = {4,1496,1,1,0},nCount = 5000},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
--======================================================================================================
function DoiNguyenLieux56789z()
	local tbSay = 
{
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng h�a)/#TienHanhDoiSkillTrungSinhm49z(4984)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng B�ng)/#TienHanhDoiSkillTrungSinhm49z(4985)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng L�i)/#TienHanhDoiSkillTrungSinhm49z(4986)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua kh�ng ��c)/#TienHanhDoiSkillTrungSinhm49z(4987)",
"Ta Mu�n ��i Sang Xuy�n Y Ph� Gi�p( b� qua Ph� Ph�ng)/#TienHanhDoiSkillTrungSinhm49z(4988)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinhm49z(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Xuy�n Y Ph� Gi�p 10(DTL)", tbProp = {0,{4984,4988}}, nQuality = 1 },
               {szName = "T�i ��i Tinh Ng�c", tbProp = {6,1,5331,1,0,0},nCount = 50},
                {szName = " T�i B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,30160,1,0,0},nCount = 50},
                {szName = "T�i B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30161,1,0,0},nCount = 50},
                {szName = " Truy�n Nh�n-T�n V�t", tbProp = {6,1,30187,1,0,0},nCount = 100},
                {szName = "B�ch Khoa To�n Th� - B�n Ho�n Ch�nh", tbProp = {6,1,30189,1,0,0},nCount = 2000},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

function DoiNguyenLieu56781z()
	local tbSay = 
{
"Ta Mu�n ��i Sang  Bao Tay (Phong Ma Quy�t)/#TienHanhDoiSkillTrungSinh41z(5262)",
"Ta Mu�n ��i Sang  Bao Tay (��u Uy�n)/#TienHanhDoiSkillTrungSinh41z(5263)",
"Ta Mu�n ��i Sang  Bao Tay (T�n Phong V�n Quy�n)/#TienHanhDoiSkillTrungSinh41z(5264)",
"Ta Mu�n ��i Sang  Bao Tay (�o�n Nguy�t)/#TienHanhDoiSkillTrungSinh41z(5265)",
"Ta Mu�n ��i Sang  Bao Tay (T�m Tinh Th�c)/#TienHanhDoiSkillTrungSinh41z(5266)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh41z(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "C� S�n ", tbProp = {0,{5262,5266}}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0},nCount = 1000},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1000},
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0,0},nCount = 400},
             	{szName = "KNB ", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

function DoiNguyenLieu56781xz()
	local tbSay = 
{
"Ta Mu�n ��i Sang  Bao Tay (Phong Ma Quy�t)/#TienHanhDoiSkillTrungSinh4z1z(5978)",
"Ta Mu�n ��i Sang  Bao Tay (��u Uy�n)/#TienHanhDoiSkillTrungSinh4z1z(5979)",
"Ta Mu�n ��i Sang  Bao Tay (T�n Phong V�n Quy�n)/#TienHanhDoiSkillTrungSinh4z1z(5980)",
"Ta Mu�n ��i Sang  Bao Tay (�o�n Nguy�t)/#TienHanhDoiSkillTrungSinh4z1z(5981)",
"Ta Mu�n ��i Sang  Bao Tay (T�m Tinh Th�c)/#TienHanhDoiSkillTrungSinh4z1z(5982)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4z1z(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "C� S�n ", tbProp = {0,{5978,5982}}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0},nCount = 2000},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 2000},
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0,0},nCount = 600},
             	{szName = "KNB ", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

function DoiNguyenLieu56782z()
	local tbSay = 
{
"Ta Mu�n ��i Sang D�y Chuy�n (Tri�t V� Phong Th�)/#TienHanhDoiSkillTrungSinh42z(5984)",
"Ta Mu�n ��i Sang  D�y Chuy�n (H� K�ch)/#TienHanhDoiSkillTrungSinh42z(5985)",
"Ta Mu�n ��i Sang  D�y Chuy�n(Ng�c Th�ch Phi�m)/#TienHanhDoiSkillTrungSinh42z(5986)",
"Ta Mu�n ��i Sang  D�y Chuy�n (L�ng Phong)/#TienHanhDoiSkillTrungSinh42z(5987)",
"Ta Mu�n ��i Sang D�y Chuy�n (Nh�t Nh� S�n)/#TienHanhDoiSkillTrungSinh42z(5988)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh42z(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "C� S�n Ph� Thi�n", tbProp = {0,{5984,5988}}, nQuality = 1 },
                  {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0},nCount = 2000},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 2000},
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0,0},nCount = 600},
             	{szName = "KNB ", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
---------======================================================================================================
function DoiNguyenLieuNhan()
local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
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
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={6,1,random(5570,5579),1,0,0}},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

-----------==========================================================================================================
function nangcapan()

local tbSay = 
{

"��i Thu�c T�nh �n H� �� Dung Luy�n/#DoiNguyenLieu50782z()",
"��i Thu�c T�nh �n Trung �� Dung Luy�n/#DoiNguyenLieu50782cz()",
--"��i Thu�c T�nh �n Th��ng �� Dung Luy�n/#DoiNguyenLieu507821cz()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ",getn(tbSay),tbSay)
	
end 
function DoiNguyenLieu50782z()
	local tbSay = 
{
"Ta Mu�n ��i Sang �n H� H� Kim/#TienHanhDoiSkillTrungSinh402z(4993)",
"Ta Mu�n ��i Sang  �n H� H� M�c/#TienHanhDoiSkillTrungSinh402z(4994)",
"Ta Mu�n ��i Sang   �n H� H� Th�y/#TienHanhDoiSkillTrungSinh402z(4995)",
"Ta Mu�n ��i Sang   �n H� H� H�a/#TienHanhDoiSkillTrungSinh402z(4996)",
"Ta Mu�n ��i Sang   �n H� H� Th�/#TienHanhDoiSkillTrungSinh402z(4997)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------

function TienHanhDoiSkillTrungSinh402z(num)
       
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "�n H� �� Dung Luy�n", tbProp = {0,{4993,4997}}, nQuality = 1 },
               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0},nCount = 1000},
             {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1000},
               {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0,0},nCount = 1000},
             	{szName = "KNB", tbProp = {4,1496,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
function DoiNguyenLieu50782cz()
	local tbSay = 
{
"Ta Mu�n ��i Sang �n trung H� Kim/#TienHanhDoiSkillTrungSinh402cz(4998)",
"Ta Mu�n ��i Sang  �n trung H� M�c/#TienHanhDoiSkillTrungSinh402cz(4999)",
"Ta Mu�n ��i Sang   �n trung H� Th�y/#TienHanhDoiSkillTrungSinh402cz(5000)",
"Ta Mu�n ��i Sang   �n trung H� H�a/#TienHanhDoiSkillTrungSinh402cz(5001)",
"Ta Mu�n ��i Sang   �n trung H� Th�/#TienHanhDoiSkillTrungSinh402cz(5002)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------

function TienHanhDoiSkillTrungSinh402cz(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "�n Trung �� Dung Luy�n", tbProp = {0,{4998,5002}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0},nCount = 2000},
             {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 2000},
               {szName = "Thi�n Tinh Ng�c", tbProp = {6,1,4806,1,0,0},nCount = 2000},
             	{szName = "KNB", tbProp = {4,1496,1,1,0},nCount = 1000},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

---------------------------------------------------------
function DoiNguyenLieu507821cz()
	local tbSay = 
{
"Ta Mu�n ��i Sang �n th��ng H� Kim/#TienHanhDoiSkillTrungSinh1402cz(5003)",
"Ta Mu�n ��i Sang  �n th��ng H� M�c/#TienHanhDoiSkillTrungSinh1402cz(5004)",
"Ta Mu�n ��i Sang   �n th��ng H� Th�y/#TienHanhDoiSkillTrungSinh1402cz(5005)",
"Ta Mu�n ��i Sang   �n th��ng H� H�a/#TienHanhDoiSkillTrungSinh1402cz(5006)",
"Ta Mu�n ��i Sang   �n th��ng H� Th�/#TienHanhDoiSkillTrungSinh1402cz(5007)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------

function TienHanhDoiSkillTrungSinh1402cz(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "�n Trung Th��ng Dung Luy�n", tbProp = {0,{5003,5007}}, nQuality = 1 },
              {szName = "T�i B�ch Luy�n Th�nh C��ng", tbProp = {6,1,30162,1,0,0},nCount = 100},
                {szName = " Truy�n Nh�n-T�n V�t", tbProp = {6,1,30187,1,0,0},nCount = 100},
                {szName = "B�ch Khoa To�n Th� - B�n Ho�n Ch�nh", tbProp = {6,1,30189,1,0,0},nCount = 500},
                {szName="Tr�ng Luy�n Ng�c",tbProp={6,1,5414,1,0,0},nCount=300},
		{szName="��i Kim B�i",tbProp={4,1506,1,1,0,0},nCount=1000},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
--------------------------------------
function DoiNguyenLieuzxc1z()
	local tbSay = 
{
"Ta Mu�n ��i Sang  Bao Tay (Phong Ma Quy�t)/#TienHanhDoiSkillTrungSinhxz(5990)",
"Ta Mu�n ��i Sang  Bao Tay (��u Uy�n)/#TienHanhDoiSkillTrungSinhxz(5991)",
"Ta Mu�n ��i Sang  Bao Tay (T�n Phong V�n Quy�n)/#TienHanhDoiSkillTrungSinhxz(5992)",
"Ta Mu�n ��i Sang  Bao Tay (�o�n Nguy�t)/#TienHanhDoiSkillTrungSinhxz(5993)",
"Ta Mu�n ��i Sang  Bao Tay (T�m Tinh Th�c)/#TienHanhDoiSkillTrungSinhxz(5994)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

function TienHanhDoiSkillTrungSinhxz(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "C� S�n truyen nhan", tbProp = {0,{5990,5994}}, nQuality = 1 },
               {szName = " manh hiem", tbProp = {4,1508,1,1,0,0},nCount = 1000},
                {szName = " thien tinh ngoc", tbProp = {6,1,4806,1,0,0},nCount = 3000},
          	{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=2000},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end


function DoiNguyenLieudssd()
	local tbSay = 
{
"Ta Mu�n ��i Sang D�y Chuy�n (Tri�t V� Phong Th�)/#TienHanhDoiSkillTrungSinhx1z(5996)",
"Ta Mu�n ��i Sang  D�y Chuy�n (H� K�ch)/#TienHanhDoiSkillTrungSinhx1z(5997)",
"Ta Mu�n ��i Sang  D�y Chuy�n(Ng�c Th�ch Phi�m)/#TienHanhDoiSkillTrungSinhx1z(5998)",
"Ta Mu�n ��i Sang  D�y Chuy�n (L�ng Phong)/#TienHanhDoiSkillTrungSinhx1z(5999)",
"Ta Mu�n ��i Sang D�y Chuy�n (Nh�t Nh� S�n)/#TienHanhDoiSkillTrungSinhx1z(6000)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinhx1z(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "C� S�n truyen nhan", tbProp = {0,{5996,6000}}, nQuality = 1 },
                {szName = " manh hiem", tbProp = {4,1508,1,1,0,0},nCount = 1000},
                {szName = " thien tinh ngoc", tbProp = {6,1,4806,1,0,0},nCount = 3000},
          	{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=2000},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
---------======================================================================================================








---------------------------------------------------------------------------
function ngocboihuynhde()
	local tbSay = 
{
"Ta Ch� T�o Ng�c B�i Huynh �� Ph�ng Th�/#TienHanhDoiSkillTrungSinh1a1(5054)",
"Ta Ch� T�o Ng�c B�i Huynh �� kh�ng L�i/#TienHanhDoiSkillTrungSinh1a1(5053)",
"Ta Ch� T�o D�y Chuy�n Huynh �� Kh�ng ��c/#TienHanhDoiSkillTrungSinh1a1(5019)",
"Ta Ch� T�o D�y Chuy�n Huynh �� Kh�ng B�ng/#TienHanhDoiSkillTrungSinh1a1(5020)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------

function TienHanhDoiSkillTrungSinh1a1(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
         
             {szName="Quy�n N�ng L�nh( Thi�p)",tbProp={6,1,30164,1,0,0},nCount=300},
             {szName="T�n V�t Huynh ��",tbProp={6,1,30188,1,0,0},nCount=50},
            {szName="B�chKhoa-B�nHo�nCh�nh",tbProp={6,1,30189,1,0,0},nCount=1000},
            {szName="T�i Thi�n Tinh Ng�c",tbProp={6,1,5336,1,0,0},nCount=30},
            {szName = "��i Kim B�i", tbProp = {4,1506,1,1,0},nCount = 1000},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

---------------================================================================================================

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
