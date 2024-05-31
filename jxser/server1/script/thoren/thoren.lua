Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
--»»È¡ÐÐÏÀÁî³ö´í - modified by DinhHQ - 20110921
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
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
	 tbDailog:AddOptEntry("§æi trang bÞ NguyÖt KhuyÕt lÊy r­¬ng NguyÖt KhuyÕt", quynguyennguyetkhuyen)

	--tbDailog:AddOptEntry("§æi trang bÞ XÝch L©n ra lÖnh bµi", phanratrangbi)
    tbDailog:AddOptEntry("§æi trang bÞ tinh s­¬ng lÊy r­¬ng tinh s­¬ng", quynguyentinhsuong)
	tbDailog:AddOptEntry("Ta muèn chÕ t¹o ®å Tinh S­¬ng", eptinhsuong)
	tbDailog:AddOptEntry("Ta muèn chÕ t¹o ®å NguyÖt KhuyÕn", epnguyetkhuyen)

    	--tbDailog:AddOptEntry("Ta muèn chÕ t¹o ®å §»ng Long", epdanglong)
	--tbDailog:AddOptEntry("Ta muèn chÕ t¹o ®å Minh Ph­îng", epminhphuong)
	--tbDailog:AddOptEntry("Ta muèn n©ng cÊp Phi phong vÜnh viªn", epphiphong)
	--tbDailog:AddOptEntry("Ta muèn n©ng cÊp Ên vÜnh viÔn", epan)
	--tbDailog:AddOptEntry("Ta muèn chÕ t¹o ®å XÝch L©n", epxichlan)
	--tbDailog:AddOptEntry("Ta muèn chÕ t¹o Phi phong 9", epphiphong9)
	tbDailog:AddOptEntry("Ta ®æi Tinh Ngäc(khãa)=Tinh Ngäc Th­êng (80%)", doitinhngocthuong)
	tbDailog:AddOptEntry("Ta muèn chÕ t¹o Phi Phong", chetaophiphong)
	tbDailog:AddOptEntry("Ta muèn n©ng cÊp Phi Phong", nangcapphiphong)
	tbDailog:AddOptEntry("Ta muèn ®æi thuéc tÝnh Phi Phong", doithuoctinh_phiphong)
if GetAccount()=="boquyx123" or GetAccount()=="luuhuanvlv201901" then
	--	 tbDailog:AddOptEntry("§æi trang bÞ NguyÖt KhuyÕt Max lÊy r­¬ng NguyÖt KhuyÕt Max ", quynguyennguyetkhuyenmax)
	--	 tbDailog:AddOptEntry("§æi trang bÞ NguyÖt KhuyÕt Max lÊy r­¬ng Tinh S­¬ng Max ", quynguyentinhsuongmax)


	
end

	tbDailog:Show()
end;
function doithuoctinh_phiphong()

local tbSay = 
{

"§æi Thuéc TÝnh Cho Phi Phong 6 /doithuoctinh6",
"§æi Thuéc TÝnh Cho Phi Phong 7/doithuoctinh7",
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
	szDescription = format("Phi phong Ngù Phong 7 t­¬ng øng \n.1 B¸ch NghÖ Tinh Th¹ch\n.1 B¸ch NghÖ Tinh Ngäc\n ChØ Bá FF7 vµo « nhÐ ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "run_doithuoctinhff7", "no", 1)

		
end


function run_doithuoctinhff7(nCount)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/doithuoctinh7", "Ta xin th«i")
		return
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhthach= CalcEquiproomItemCount(6,1,4904,-1) 
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
				if nQuality ~=1 or (nGoldEquipIdxFF < 6084 or nGoldEquipIdxFF >6113) then
		 
					Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
					return
				end
						if bachnghetinhthach<1 or bachnghetinhngoc <1 then
					Say("Kh«ng §ñ 1 B¸ch NghÖ Tinh Ngäc HoÆc 1 B¸ch NghÖ Thiªn Th¹ch", 1, "§Ó Ta Xem L¹i")
					return
				end	
					

				if nGoldEquipIdxFF>=6084 and nGoldEquipIdxFF<=6088 then
					thutu_nguyenlieu=1
					else if nGoldEquipIdxFF>=6089 and nGoldEquipIdxFF<=6093 then
					thutu_nguyenlieu=2
					else if nGoldEquipIdxFF>=6094 and nGoldEquipIdxFF<=6098 then
					thutu_nguyenlieu=3
					else if nGoldEquipIdxFF>=6099 and nGoldEquipIdxFF<=6103 then
					thutu_nguyenlieu=4
					else if nGoldEquipIdxFF>=6104 and nGoldEquipIdxFF<=6108 then
					thutu_nguyenlieu=5
					else if nGoldEquipIdxFF>=6109 and nGoldEquipIdxFF<=6113 then
					thutu_nguyenlieu=6
					end
					end
					end
					end
					end
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1, 6,1, 4904,-1)
				ConsumeEquiproomItem(1, 6,1, 30355,-1)
				idcanadd=nGoldEquipIdxFF+(suluachon-thutu_nguyenlieu)*5
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
					WriteLogPro("dulieu/doithuoctinhff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep FF tu "..thutu_nguyenlieu.." den "..suluachon.."--"..nGoldEquipIdxFF.."\n");	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong 7 t­¬ng øng")
end
function nangcapphiphong()

local tbSay = 
{

"N©ng CÊp Phi phong Ngù Phong-->Phi Phong PhÖ Quang/#checknguyenlieunangcap()",
"N©ng CÊp Phi Phong PhÖ Quang-->Phi Phong PhÖ Quang Tinh X¶o (KTC)/#nangcapphequangtinhxao()",
"T¨ng Sao Cho Phi Phong PhÖ Quang/#tangsaophequang()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ",getn(tbSay),tbSay)
	
end 
function tangsaophequang()

	szDescription = format("Phi phong Ngù Phong Tinh X¶o t­¬ng øng \n.5-6 Tèn 2000 Tinh Ngäc\n.6-7 Tèn 4000 Tinh Ngäc\n.7-8 Tèn 6000 Tinh Ngäc\n.8-9 Tèn 8000 Tinh Ngäc\n.9-10 Tèn 10000 Tinh Ngäc\n   ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_tangsaophequang", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
end


function Run_tangsaophequang(nCount)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "Ta xin th«i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local tinhngoc= CalcEquiproomItemCount(6,1,4806,-1) 
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	--	Msg2Player(" Chóc mõng "..nQuality.." *************** "..nGoldEquipIdxFF.."" )
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 6078 or nGoldEquipIdxFF >6113) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
		end
		if nQuality ~=1 or (nGoldEquipIdxFF >= 6078 and nGoldEquipIdxFF <=6083) then
		 local soluongtinhngoc=2000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ 2000 Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				if nGoldEquipIdxFF==6078 then
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6084},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6079 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6089},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6080 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6094},nQuality=1,nCount=1},}, "test", 1);	
					elseif nGoldEquipIdxFF==6081 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6099},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6082 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6104},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6083 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6109},nQuality=1,nCount=1},}, "test", 1);									
					end
					Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang 6* t­¬ng øng")					
		end

		if nQuality ~=1 or (nGoldEquipIdxFF >= 6084 and nGoldEquipIdxFF <=6113) then
			if nGoldEquipIdxFF==6084 or nGoldEquipIdxFF==6089 or nGoldEquipIdxFF==6094 or nGoldEquipIdxFF==6099 or nGoldEquipIdxFF==6104 or nGoldEquipIdxFF==6109 then 
			local soluongtinhngoc=4000
				if tinhngoc< soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang 7* t­¬ng øng")
			end	
			
			if nGoldEquipIdxFF==6085 or nGoldEquipIdxFF==6090or nGoldEquipIdxFF==6095 or nGoldEquipIdxFF==6100 or nGoldEquipIdxFF==6105 or nGoldEquipIdxFF==6110 then 
			local soluongtinhngoc=6000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang 8* t­¬ng øng")
			end	
			if nGoldEquipIdxFF==6086 or nGoldEquipIdxFF==6091or nGoldEquipIdxFF==6096 or nGoldEquipIdxFF==6101 or nGoldEquipIdxFF==6106 or nGoldEquipIdxFF==6111 then 
			local soluongtinhngoc=8000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang 9* t­¬ng øng")
			end

			if nGoldEquipIdxFF==6087 or nGoldEquipIdxFF==6092 or nGoldEquipIdxFF==6097 or nGoldEquipIdxFF==6102 or nGoldEquipIdxFF==6107 or nGoldEquipIdxFF==6112 then 
			local soluongtinhngoc=10000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang 10* t­¬ng øng")
			end	
end
		end
	
	

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function nangcapphequangtinhxao()
	szDescription = format("Phi phong PhÖ Quang t­¬ng øng \nB¸ch NghÖ Tinh Ngäc + B¸ch NghÖ Thiªn Th¹ch.\n ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_nangcapphequangtinhxao", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_nangcapphequangtinhxao(nCount)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "Ta xin th«i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local bachnghethienthach= CalcEquiproomItemCount(6,1,4904,-1)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		--local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	--	Msg2Player(" Chóc mõng "..tilethanhcong.." *************** "..nGoldEquipIdxFF.."" )

		if bachnghethienthach <1 or bachnghetinhngoc<1 then
		Say("Nguyªn LiÖu Kh«ng §ñ Råi B¹n ¥i")
		return 
		end
		if nQuality ~=1 or (nGoldEquipIdxFF < 6072 or nGoldEquipIdxFF >6077) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
		 
		end
		
		if nQuality ==1 and (nGoldEquipIdxFF >= 6072 and nGoldEquipIdxFF <= 6077) then

			RemoveItemByIndex(nItemIndex)
			ConsumeEquiproomItem(1, 6,1, 30355,-1)
			ConsumeEquiproomItem(1, 6,1, 4904,-1)
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+6},nQuality=1,nCount=1},}, "test", 1);
			Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang Tinh Xao t­¬ng øng")
		 else Say("Nguyªn LiÖu Kh«ng §ñ Råi B¹n ¥i")
		end
		
		end
	
	
	
	--------------------------------------------------------
function nangcapphiphong6len7()
	szDescription = format("Phi phong Ngù Phong t­¬ng øng \nKh«ng bá B¸ch LuyÖn Thµnh C­¬ng vµo trong n.\n ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_nangcapphiphong6len7", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_nangcapphiphong6len7(nCount)
local henxui= random(1,10)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "Ta xin th«i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachluyen= CalcEquiproomItemCount(6,1,4906,-1)
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

		
		
		if nQuality ~=1 or (nGoldEquipIdxFF < 6037 and nGoldEquipIdxFF >6042) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
		 
		end

			if nQuality ==1 and (nGoldEquipIdxFF >= 6037 and nGoldEquipIdxFF <= 6042) then
								if bachluyen>=80 then
									tilethanhcong=10
								else if bachluyen <=79 and bachluyen >76 then
								tilethanhcong=5
								else if bachluyen <=76 and bachluyen>70 then
								tilethanhcong = 2 
								else if bachluyen <=70 and bachluyen >65 then
								tilethanhcong = random(1,2)
								else if bachluyen<=65 and bachluyen>60 then
								tilethanhcong =1
								else if bachluyen<=60 and bachluyen>50 then
								tilethanhcong=random(0,1)
								else if bachluyen<=50 then
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
														ConsumeEquiproomItem(80, 6,1, 4906,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+35},nQuality=1,nCount=1},}, "test", 1);
													Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang t­¬ng øng")
													WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi 80 \n");		
		return
		end
											 if henxui<=tilethanhcong then
													RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(bachluyen, 6,1, 4906,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+35},nQuality=1,nCount=1},}, "test", 1);
													Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang t­¬ng øng")
													WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi "..bachluyen.."\n");	
									--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")													
												else 
															ConsumeEquiproomItem(80, 6,1, 4906,-1)
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
local bachluyen= CalcEquiproomItemCount(6,1,4906,-1) --B¸ch LuyÖn Thµnh C­¬ng
--local tilethanhcong= 100-(80-bachluyen)
	local tilethanhcong =floor(bachluyen*10/80) 

local tbSay = 
{
"Ta ch¾c ch¾n tiÕp tôc, ta sÏ bá FF6 vµo « luyÖn/#nangcapphiphong6len7()",
"Th«i ta kh«ng muèn n÷a/no"
}
hienthitile=tilethanhcong*10
if bachluyen>80 then


Say( "<color=green>Nhµ ng­¬i ®ang cã <color=yellow> >80 viªn<color> <color=white><B¸ch LuyÖn Thµnh C­¬ng><color> rong hµnh trang v× vËy tØ lÖ thµnh c«ng lµ 100%, TiÕp tôc chø ?",getn(tbSay),tbSay)
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
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
                {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
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
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
				  {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1},
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
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1},
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
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1},
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
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1},
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
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1},
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
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
				 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1},
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
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
				{szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1},
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
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
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
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
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
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1},
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
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1},
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

--------------------------------------------------------
---------------------------------------
function doitinhngocthuong ()
local hoamai= CalcEquiproomItemCount(6,1,4806,-1)
local szTitle = "B¹n §ang Cã :  <color=green>"..hoamai.." <color> Tinh Ngäc\n\n\n<color=green>Kh«ng Bá Tinh Ngäc Kh«ng Khãa Trong Hµnh Trang ( sÏ bÞ trõ gièng Tinh Ngäc khãa) <color>"
	local Opt = 
	{	
		{"§æi 100 Tinh Ngäc (khãa) = 80 Tinh Ngäc.", BatDauDoiTinhNgoc100},
		{"§æi 1000 Tinh Ngäc (khãa) = 800 Tinh Ngäc. ", BatDauDoiTinhNgoc1000},
		{"Th«i. ", End},
	}
	CreateNewSayEx(szTitle,Opt)
end


function BatDauDoiTinhNgoc100()
	local tbItem = 
	{	
		{szName = "Tinh Ngäc", tbProp = {6, 1,4806,1,1}, nCount = 80},	
	}

local tinhngoc= CalcEquiproomItemCount(6,1,4806,-1)

	
if tinhngoc>=100 then

ConsumeEquiproomItem(100, 6,1, 4806,-1)
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");

else 
	Say("Kh«ng §ñ Nguyªn LiÖu ");

end

end


function BatDauDoiTinhNgoc1000()
	local tbItem = 
	{	
		{szName = "Tinh Ngäc", tbProp = {6, 1,4806,1,1}, nCount = 800},	
	}

local tinhngoc= CalcEquiproomItemCount(6,1,4806,-1)

	
if tinhngoc>=1000 then

ConsumeEquiproomItem(1000, 6,1, 4806,-1)
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");

else 
	Say("Kh«ng §ñ Nguyªn LiÖu ");

end

end


function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
