Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
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
--Include("\\script\\thoren\\danglong_config.lua")
--Include("\\script\\thoren\\tinhsuong_config.lua")
--Include("\\script\\thoren\\hoason_config.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\global\\g7vn\\thorenthanbi.lua")
--Include("\\script\\global\\g7vn\\trungluyentrangbi\\trangbihkmp\\refine_equip_hs.lua")
IncludeLib("ITEM")

function main()
	dofile("script/global/g7vn/thomaymac.lua")
	--dofile("script/global/g7vn/trungluyentrangbi/trangbihkmp/refine_equip_hanche.lua")
--dofile("script/global/g7vn/trungluyentrangbi/trangbihkmp/refine_equip.lua")
	--do Say("Vßng s¸ng huyÕt chiÕn vÉn ch­a më. Xin quay l¹i sau 3 ngµy n÷a") return end
local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
--	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	tbDailog.szTitleMsg = "<#><npc> N¬i nµy ®Òu lµ kú tr©n dÞ b¶o! §¹i hiÖp cÇn g×!?"
	if  GetAccount()=="testgame4" or GetAccount()=="thaipham1" then
	tbDailog:AddOptEntry("NhËn Thñy Tinh. (MiÔn phÝ)", NhanThuyTinhFree)
	--tbDailog:AddOptEntry("§æi ngo¹i trang. (200xu)", DoiNgoaiTrang)
	--tbDailog:AddOptEntry("Thay §ái Ngo¹i H×nh Vò KhÝ. (200xu)", MenuDoiNgoaiHinh0)
	end
--	tbDailog:AddOptEntry("N©ng CÊp Hoµng Kim Ên (50 Tói TK)", nangcaphoangkiman)
--	tbDailog:AddOptEntry("Trïng LuyÖn [TrÊn Server] Hoµng Kim Ên.", trungluyenhoangkiman)
--tbDailog:AddOptEntry("§æi Trang Søc Vip (3 Bé TT + 1 Tr©n Ch©u + 30 Tói TK)", doitrangsuc)
--	tbDailog:AddOptEntry("TÈy LuyÖn Trang Søc (1 Bé TT)", tayluyentrangsuc)	
--    tbDailog:AddOptEntry("N©ng CÊp Long §¶m", nangcaplongdam)
	tbDailog:AddOptEntry("§æi ngo¹i trang. (20xu)", DoiNgoaiTrang)
--tbDailog:AddOptEntry("Thay §æi ¸o Gi¸p §Ñp Troai. (200xu)", MenuDoiNgoaiHinhGiap_d)
	tbDailog:AddOptEntry("Thay §ái Ngo¹i H×nh Vò KhÝ. (20xu)", MenuDoiNgoaiHinh0)
--	tbDailog:AddOptEntry("ChÕ T¹o Vò KhÝ HKMP Ph¸t S¸ng. (100xu)", Make_Weapons)
	tbDailog:AddOptEntry("ChÕ T¹o Vò KhÝ HKMP Ph¸t S¸ng(VIP)(20xu)", PhatSangVip)
	--tbDailog:AddOptEntry("ChÕ T¹o Vò KhÝ HKMP Ph¸t S¸ng(VIP)(200xu)", PhatSangVip)
	--tbDailog:AddOptEntry("NhËn Thñy Tinh. (MiÔn phÝ)", NhanThuyTinhFree)
	
	tbDailog:Show()
end
function nangcaplongdam()
		local tbSay = {
"§æi Long §¶m cÊp 1 (10 bé Thuû Tinh)./#doilongdam()",
"N©ng Long §¶m cÊp 1 --> Long §¶m cÊp 2./#nangcaplongdam1()",
"N©ng Long §¶m cÊp 2 --> Long §¶m cÊp 3./#nangcaplongdam2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function nangcaplongdam2()
		if CalcFreeItemCellCount() < 5 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 5 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng CÊp Long §¶m.", "Bá Long §¶m cÊp 2 vµo.\nKh«ng bá nguyªn liÖu vµo.\nNguyªn LiÖu: 3 bé Thuû Tinh\nTû lÖ thµnh c«ng: 20% \nXÞt mÊt hÕt nguyªn liÖu", "nangcaplongdam2_ok", "no", 1)
end
function nangcaplongdam2_ok(nCount)
	if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/nangcaplongdam2", "Ta xin th«i")
		return 0
	end
	local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
		local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
		local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality==1 and nGoldEquipIdxFF==5942 then
		if lamthuytinh>=3 and lucthuytinh>=3 and tuthuytinh>=3 then
			local rrrr = random(1,5)
			if rrrr==1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(3,4,238,1,1)
				ConsumeEquiproomItem(3,4,239,1,1)
				ConsumeEquiproomItem(3,4,240,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "Long §¶m cÊp 3",tbProp={0,5943},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ n©ng cÊp thµnh c«ng <color=yellow>Long §¶m CÊp 3.<color> t¹i <color=blue>NPC Thî May MÆc")
			else
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(3,4,238,1,1)
				ConsumeEquiproomItem(3,4,239,1,1)
				ConsumeEquiproomItem(3,4,240,1,1)
				Msg2SubWorld("<color=green>Xin chia buån cïng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ n©ng cÊp xÞt <color=yellow>Long §¶m CÊp 3.<color>  t¹i <color=blue>NPC Thî May MÆc")
			end
		else
			Say("Hµnh trang kh«ng ®ñ 3 bé Thuû Tinh")
			return
		end
	else
		Say("Thø ng­¬i bá kh«ng ph¶i Long §¶m cÊp 2")
		return
	end
end
function nangcaplongdam1()
		if CalcFreeItemCellCount() < 5 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 5 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng CÊp Long §¶m.", "Bá Long §¶m cÊp 1 vµo.\nKh«ng bá nguyªn liÖu vµo.\nNguyªn LiÖu: 3 bé Thuû Tinh\nTû lÖ thµnh c«ng: 20% \nXÞt mÊt hÕt nguyªn liÖu", "nangcaplongdam1_ok", "no", 1)
end
function nangcaplongdam1_ok(nCount)
	if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/nangcaplongdam1", "Ta xin th«i")
		return 0
	end
	local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
		local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
		local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality==1 and nGoldEquipIdxFF==5941 then
		if lamthuytinh>=3 and lucthuytinh>=3 and tuthuytinh>=3 then
			local rrrr = random(1,5)
			if rrrr==1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(3,4,238,1,1)
				ConsumeEquiproomItem(3,4,239,1,1)
				ConsumeEquiproomItem(3,4,240,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "Long §¶m cÊp 2",tbProp={0,5942},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ n©ng cÊp thµnh c«ng <color=yellow>Long §¶m CÊp 2.<color> t¹i <color=blue>NPC Thî May MÆc")
			else
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(3,4,238,1,1)
				ConsumeEquiproomItem(3,4,239,1,1)
				ConsumeEquiproomItem(3,4,240,1,1)
				Msg2SubWorld("<color=green>Xin chia buån cïng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ n©ng cÊp xÞt <color=yellow>Long §¶m CÊp 2.<color>  t¹i <color=blue>NPC Thî May MÆc")
			end
		else
			Say("Hµnh trang kh«ng ®ñ 3 bé Thuû Tinh")
			return
		end
	else
		Say("Thø ng­¬i bá kh«ng ph¶i Long §¶m cÊp 1")
		return
	end
end
function doilongdam()
if CalcFreeItemCellCount()<10 then
	Say("Hµnh trang kh«ng ®ñ 10 « trèng.")
	return
end
		local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
		local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
		local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
		if lamthuytinh>=10 and lucthuytinh>=10 and tuthuytinh>=10 then
				ConsumeEquiproomItem(10,4,238,1,1)
				ConsumeEquiproomItem(10,4,239,1,1)
				ConsumeEquiproomItem(10,4,240,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "Long §¶m cÊp 1",tbProp={0,5941},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>Long §¶m CÊp 1.<color> t¹i <color=blue>NPC Thî May MÆc")
		else
			Say("Hµnh trang kh«ng ®ñ 10 bé Thuû Tinh")
			return
		end
end

function trungluyenhoangkiman()
	if CalcFreeItemCellCount() < 5 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 5 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("Trïng LuyÖn Hoµng Kim Ên.", "Bá Hoµng Kim Ên vµo.\nKh«ng bá nguyªn liÖu vµo.\nNguyªn LiÖu: 10 Tói Tèng Kim", "trungluyenhoangkiman_ok", "no", 1)
end
function trungluyenhoangkiman_ok(nCount)
if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/trungluyenhoangkiman", "Ta xin th«i")
		return 0
	end
	local tuitichluy = CalcEquiproomItemCount(6,1,4361,-1)
	local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nGoldEquipIdxFF==6212 or nGoldEquipIdxFF==6213 or nGoldEquipIdxFF==6214 or nGoldEquipIdxFF==6215 or nGoldEquipIdxFF==6216 then
		if tuitichluy>=10 then
		RemoveItemByIndex(nItemIndex)
		ConsumeEquiproomItem(10,6,1,4361,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Hoµng Kim Ên",tbProp={0,nGoldEquipIdxFF},nQuality=1,nCount=1},}, "test", 1);
		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> tÈy luyÖn thµnh c«ng <color=yellow>[TrÊn Server] Hoµng Kim Ên.<color>")
		else
			Say("Trïng luyÖn [TrÊn Server] Hoµng Kim Ên cÇn <color=yellow>10 Tói Tèng Kim")
			return
		end
	else
	Say("Thø ng­¬i bá cho ta kh«ng ph¶i lµ <color=yellow>[TrÊn Server] Hoµng Kim Ên.")
	return
	end
end
function nangcaphoangkiman()
	if CalcFreeItemCellCount() < 5 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 5 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng CÊp Hoµng Kim Ên.", "Bá Hoµng Kim Ên vµo.\nKh«ng bá nguyªn liÖu vµo.\nNguyªn LiÖu: 50 Tói Tèng Kim", "nangcaphoangkiman_ok", "no", 1)
end
function nangcaphoangkiman_ok(nCount)
if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/nangcaphoangkiman", "Ta xin th«i")
		return 0
	end
	local tuitichluy = CalcEquiproomItemCount(6,1,4361,-1)
	local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nGoldEquipIdxFF==6207 or nGoldEquipIdxFF==6208 or nGoldEquipIdxFF==6209 or nGoldEquipIdxFF==6210 or nGoldEquipIdxFF==6211 then
		if tuitichluy>=50 then
		RemoveItemByIndex(nItemIndex)
		ConsumeEquiproomItem(50,6,1,4361,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Hoµng Kim Ên",tbProp={0,nGoldEquipIdxFF+5},nQuality=1,nCount=1},}, "test", 1);
		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>[TrÊn Server] Hoµng Kim Ên.<color>")
		else
			Say("Hµnh trang kh«ng ®ñ <color=yellow>50 tói Tèng Kim.")
			return
		end
	else
	Say("Thø ng­¬i bá cho ta kh«ng ph¶i lµ <color=yellow>Hoµng Kim Ên.")
	return
	end
end
function tayluyentrangsuc()
if CalcFreeItemCellCount() < 5 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 5 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("TÈy LuyÖn Trang Søc.", "Bá Trang Søc vµo.\nKh«ng bá nguyªn liÖu vµo.\nNguyªn LiÖu: 1 bé Thuû Tinh", "tayluyentrangsuc_ok", "no", 1)
end
function tayluyentrangsuc_ok(nCount)
if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/tayluyentrangsuc", "Ta xin th«i")
		return 0
	end
	local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
	local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nGoldEquipIdxFF==3502 or nGoldEquipIdxFF==3504 or nGoldEquipIdxFF==3505 or nGoldEquipIdxFF==3506 then
		if lamthuytinh>=1 and tuthuytinh>=1 and lucthuytinh>=1 then
		RemoveItemByIndex(nItemIndex)
		ConsumeEquiproomItem(1,4,238,1,1)
		ConsumeEquiproomItem(1,4,239,1,1)
		ConsumeEquiproomItem(1,4,240,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang Søc",tbProp={0,nGoldEquipIdxFF},nQuality=1,nCount=1},}, "test", 1);
		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> tÈy luyÖn thµnh c«ng <color=yellow>Trang Søc VIP.<color>")
		else
			Say("TÈy luyÖn cÇn <color=yellow>1 Bé Thuû Tinh")
			return
		end
	else
	Say("Thø ng­¬i bá cho ta kh«ng ph¶i lµ <color=yellow>Trang Søc.")
	return
	end
end
function doitrangsuc()
	local tbSay = {
"Søc M¹nh./#doitrangsuc_ok(3502)",
"Th©n Ph¸p./#doitrangsuc_ok(3504)",
"Sinh KhÝ./#doitrangsuc_ok(3505)",
"Néi C«ng./#doitrangsuc_ok(3506)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doitrangsuc_ok(idchon)
local tranchau=CalcEquiproomItemCount(6,1,30523,-1)
local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
local tuitichluy = CalcEquiproomItemCount(6,1,4361,-1)
	if CalcFreeItemCellCount()<5 then
	Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
	return
	end
	if  lamthuytinh>=3 and tuthuytinh>=3 and lucthuytinh>=3 and tranchau>=1 and tuitichluy>=30  then
		ConsumeEquiproomItem(1,6,1,30523,-1)
		ConsumeEquiproomItem(30,6,1,4361,-1)
		ConsumeEquiproomItem(3,4,238,1,1)
		ConsumeEquiproomItem(3,4,239,1,1)
		ConsumeEquiproomItem(3,4,240,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang Søc",tbProp={0,idchon},nQuality=1,nCount=1},}, "test", 1);
		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®æi thµnh c«ng <color=yellow>1 Trang Søc VIP.<color>")
	else
		Say("Nguyªn liÖu cÇn cã <color=cyan>3 bé Thuû Tinh<color> + <color=yellow>1 Tr©n Ch©u<color> + 30 tói tÝch luü TK.")
		return
	end
end
function DoiNgoaiTrang()
tbFeatureNpc:Dialog()
end
function MenuDoiNgoaiHinhGiap_d()

GiveItemUI("Thay ®æi ngo¹i h×nh trang bÞ", "Xin h·y bá vµo ¸o Gi¸p cÇn thay ®æi ngo¹i h×nh.", "luachondo", "no", 1)

end

function luachondo(nCount)
local xu = CalcEquiproomItemCount(4,417,1,-1)
local nItemIndex = GetGiveItemUnit(1)
--Msg2Player("-"..nItemIndex.."-")
	if xu>=200 then
		if GetSex() == 1 then
			SetItemNewFeature(nItemIndex, random(47,53))
			else 
			SetItemNewFeature(nItemIndex, random(47,54))
			end
			ConsumeEquiproomItem(200, 4,417, 1,-1) 
			Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> thay ®æi <color=red>Ngo¹i Trang ¸o Gi¸p<color=yellow> thµnh c«ng.")
	else
		Say("Kh«ng §ñ 200 Xu")
	end
end
function NhanThuyTinhFree()
for i=1,20 do
AddEventItem(238) 
AddEventItem(239)
AddEventItem(240)
end
end
function MenuDoiNgoaiHinh0()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän ngo¹i h×nh mµ b¹n muèn thay ®æi.",
		"§æi sang §ao/dao",
		"§æi sang KiÕm/kiem",
		"§æi sang Chïy/chuy",
		"§æi sang Bæng/bong",
		"§æi sang Th­¬ng/thuong",
		"§æi sang Song §ao/song",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function dao()
SetTask(5859,1)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("B¹n cã ch¾c muèn ®æi ngo¹i h×nh vò khÝ thµnh §ao hay kh«ng?",2,"Ch¾c!!! b¾t ®Çu Ðp ®i./MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function kiem()
SetTask(5858,1)
SetTask(5859,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("B¹n cã ch¾c muèn ®æi ngo¹i h×nh vò khÝ thµnh KiÕm hay kh«ng?",2,"Ch¾c!!! b¾t ®Çu Ðp ®i./MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function chuy()
SetTask(5857,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("B¹n cã ch¾c muèn ®æi ngo¹i h×nh vò khÝ thµnh Chïy hay kh«ng?",2,"Ch¾c!!! b¾t ®Çu Ðp ®i./MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function bong()
SetTask(5856,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5855,0)
SetTask(5854,0)
Say("B¹n cã ch¾c muèn ®æi ngo¹i h×nh vò khÝ thµnh Bæng hay kh«ng?",2,"Ch¾c!!! b¾t ®Çu Ðp ®i./MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function song()
SetTask(5855,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5854,0)
Say("B¹n cã ch¾c muèn ®æi ngo¹i h×nh vò khÝ thµnh Song §ao hay kh«ng?",2,"Ch¾c!!! b¾t ®Çu Ðp ®i./MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function thuong()
SetTask(5854,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
Say("B¹n cã ch¾c muèn ®æi ngo¹i h×nh vò khÝ thµnh Th­¬ng hay kh«ng?",2,"Ch¾c!!! b¾t ®Çu Ðp ®i./MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end


function MenuDoiNgoaiHinh()
	szDescription = format("+ 200 Xu \n=> Trang bÞ ®Ñp nhÊt.")

	GiveItemUI("Bá Vò KhÝ Vµo", szDescription, "BatDauDoiVK", "no", 1)

end

function BatDauDoiVK(nCount,nItemIndex, nIndexRes)
	if nCount == 0 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/MenuDoiNgoaiHinh", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)

		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 else
				Talk(1, "no", "ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 20) then
		Talk(1, "no", "CÇn cã 20 <color=red>TiÒn §ång<color> míi cã thÓ n©ng cÊp.\n-TØ lÖ n¹p thÎ 100k ®­îc 130xu.")
		return
	end
	--if nItemTime ~= 0 then
	--	Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
	--	return
--	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng.")
		return
	end
if GetTask(5859) < 1 and GetTask(5858) < 1 and GetTask(5857) < 1 and GetTask(5856) < 1 and GetTask(5855) < 1 and GetTask(5854) < 1 then
Say("®¹i hiÖp ch­a chän vò khÝ nµo c¶.",2,"Cho ta chän l¹i/MenuDoiNgoaiHinh0","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
		return
	end   	
if GetTask(5859) == 1 then --dao
		SetItemNewFeature(nItemIndex, random(53,56)) --53 54 55 56
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh §ao")
end
if GetTask(5858) == 1 then --kiem
		SetItemNewFeature(nItemIndex, random(57,59))  --  57 58 59
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh KiÕm")
end
if GetTask(5857) == 1 then --chuy
		SetItemNewFeature(nItemIndex, 60)  -- 
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Chïy")
end
if GetTask(5856) == 1 then --bong
		SetItemNewFeature(nItemIndex, 41)  -- 40 41
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Bæng")
end
if GetTask(5855) == 1 then --song
		SetItemNewFeature(nItemIndex, 61) --
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Song §ao")
end
if GetTask(5854) == 1 then --thuong
		SetItemNewFeature(nItemIndex, random(50,51)) -- 50 51
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Th­¬ng")
end
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
SaveNow()
end
end

function Make_Weapons()
	szDescription = format("+ 1 Tö Thñy Tinh\n+ 1 Lôc Thñy Tinh\n+ 1 Lam Thñy Tinh\n+ 100 TiÒn §ång\n=> Vò khÝ ph¸t s¸ng!!!.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_MakeWeapons", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_MakeWeapons(nCount)
	if nCount == 0 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
		tbStone1 = {},
		tbStone2 = {},
		tbStone3 = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)
		local tbMagicItem =
		{
			[4] =
			{
				[238] = 1,
				[239] = 1,
				[240] = 1,
                                                                                                                                                                                                                                                                                                                                          [417] = 1,
			},

		}
		
		local nIndex = 0
		if nG == 4 then
			nIndex = nD
		end

		if nG == 4 then
			if nIndex == 238 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone1, nItemIndex)
				end
			elseif nIndex == 239 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone2, nItemIndex)
				end
			elseif nIndex == 240 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone3, nItemIndex)
				end
			end
		end

		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 else
				Talk(1, "no", "ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
		local nFaction = GetLastFactionNumber()
		nRandomAccess = random(1,100)
		nRandomRes = random(1, 100)
		nSucces = 1
		if nG == 0 and nD == 0 and nP == 0 then
			if nFaction == 8 then  ----------------------------------------------------------Kiem Vo Dang
				if nRandomAccess > 1 then
					nIndexRes = 59
				 else
					nSucces = 0
				end
			 elseif nFaction == 4 then ----------------------------------------------------------Kiem Nga Mi
				if nRandomAccess > 1 then
					nIndexRes = 57
				 else
					nSucces = 0
				end
			 elseif nFaction == 9 then ----------------------------------------------------------Kiem Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 58
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 0 and nRandomRes < 33 then
					if nRandomAccess > 1 then
						nIndexRes = 57
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 33 and nRandomRes < 66 then
					if nRandomAccess > 1 then
						nIndexRes = 58
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 66 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 59
					 else
						nSucces = 0
					end
				end
			 end
		                                                                                   elseif nG == 0 and nD == 0 and nP == 1 then
			if nFaction == 0 or nFaction == 1 then
				if nRandomAccess > 1 then
					nIndexRes = 52
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 3 then ----------------------------------------------------------Dao Ngu Doc
				if nRandomAccess > 1 then
					nIndexRes = 53
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 5 then   ----------------------------------------------------------Dao Thuy Yen
				if nRandomAccess > 1 then
					nIndexRes = 54
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 9 then   ----------------------------------------------------------Dao Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 56
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 25 then
					if nRandomAccess > 1 then
						nIndexRes = 52
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 25 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 53
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes < 75 then
					if nRandomAccess > 1 then
						nIndexRes = 54
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 75 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 56
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 2 then
			if nFaction == 0 then -------------------------------------------------Bong Thieu Lam
				if nRandomAccess > 1 then
					nIndexRes = 40
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 6 then -------------------------------------------------Bong Cai Bang
				if nRandomAccess > 1 then
					nIndexRes = 41
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 40
						nSucces = 1
					 else
						nSucces = 0
						end
				 elseif nRandomRes >= 50 and nRandomRes < 100 then
					if nRandomAccess > 1 then
						nIndexRes = 41
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 3 then
			if nFaction == 7 then
				if nRandomAccess > 1 then
					nIndexRes = 51
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 1 then
				if nRandomAccess > 1 then
					nIndexRes = 50
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 51
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 50
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		 elseif nG == 0 and nD == 0 and nP == 4 then
			if nRandomAccess > 1 then
			nIndexRes = 60
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 0 and nP == 5 then
			if nRandomAccess > 1 then
				nIndexRes = 61
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 0 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 1 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 2 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		end
	end
	

	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng")
		return
	end
	
	local nCountStone1 = getn(tbDatabase.tbStone1)
	if nCountStone1 ~= 1 then
		Talk(1, "no", "CÇn cã 1 viªn <color=red>Lam Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		return
	end
	
	local nCountStone2 = getn(tbDatabase.tbStone2)
	if nCountStone2 ~= 1 then
		Talk(1, "no", "CÇn cã 1 viªn <color=red>Tö Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		return
	end
	
	local nCountStone3 = getn(tbDatabase.tbStone3)
	if nCountStone3 ~= 1 then
		Talk(1, "no", "CÇn cã 1 viªn <color=red>Lôc Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		return
	end

	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then
		Talk(1, "no", "CÇn cã 100 <color=red>TiÒn §ång<color> míi cã thÓ n©ng cÊp tØ lÖ n¹p thÎ 100k ®­îc 100xu.")
		return
	end
	--local nIDX = GetGiveItemUnit(n)
	--local nQuality = GetItemQuality(nIDX)
	--if nQuality ~= 1 then
		--Talk(1, "", "Trang bÞ ng­¬i ®Æt vµo kh«ng ph¶i lµ trang bÞ hoµng kim")
		--return
	--end

	
	RemoveItemByIndex(tbDatabase.tbStone1[1])
	RemoveItemByIndex(tbDatabase.tbStone2[1])
	RemoveItemByIndex(tbDatabase.tbStone3[1])
	RemoveItemByIndex(tbDatabase.tbItem[1])
                                                                                  ConsumeEquiproomItem(100,4,417,1,1)

	if nSucces == 0 then
		Msg2Player("RÊt tiÕc! ThÊt b¹i lµ chuyÖn b×nh th­êng cña binh gia,huynh ®µi ®õng n¶n chÝ h·y cè g¾ng lÇn n÷a sÏ ®­îc nh­ ý.")
	elseif nSucces == 1 then
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· n©ng cÊp thµnh c«ng vò khÝ ph¸t quang.")
                                                                                                                                                                     Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> §· n©ng cÊp thµnh c«ng vò khÝ<color=green> Ph¸t S¸ng!")
                                                                                                                                                                     SaveNow();
                                                                                   local epphatsang = "script/global/bil4i3n/bil4i3n_log/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	-- write(moepphatsang, format("%d:%d\tAccount: %s\t Name: %s\t Level: %s\t IP Address: %s  N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel(), GetIP()))
	--closefile(moepphatsang)
	else
		print("Bug tinh nang nang cap Vu Khi phat quang")
	end
end

function _Weapons(nItemIndex, nIndexRes)
	SetItemNewFeature(nItemIndex, nIndexRes)
	print(nIndexRes)
end

function no()
end

function VuKhiPhatQuang_Test()
	AddItem(4,240,1,0,0,0)
	AddItem(4,238,1,0,0,0)
	AddItem(4,239,1,0,0,0)
	--AddItem(4,417,1,0,0,0)
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={4,417,1,0,0,0},nCount=50,},}, "test", 1); 

end
function PhatSangVip()
	tbOpt =
	{
		"<dec><npc>§©y lµ danh s¸ch Ðp vò khÝ ph¸t s¸ng rÊt vip ch¼ng hay ®¹i hiÖp muèn Ðp lo¹i nµo xin h·y lùa chän h×nh .",
		"Chän Ngo¹i H×nh Vò KhÝ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end


function ChonNgoaiHinhPS()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"Ngo¹i h×nh ®ao/daops",
		"Ngo¹i h×nh kiÕm/kiemps",
		"Ngo¹i h×nh chïy/chuyps",
		"Ngo¹i h×nh bæng/bongps",
		"Ngo¹i h×nh th­¬ng/thuongps",
		"Ngo¹i h×nh ¸m khÝ/amkhips",
		"Ngo¹i h×nh song ®ao/songdaops",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
	SetTask(3010,0)
	SetTask(3011,0)
	SetTask(3012,0)
	SetTask(3013,0)
	SetTask(3014,0)
	SetTask(3015,0)
	SetTask(3016,0)
end

function daops()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"®ao 1/daops1",
		"®ao 2/daops2",
		"®ao 3/daops3",
		"®ao 4/daops4",
		"®ao 5/daops5",
		"®ao 6/daops6",
		"®ao 7/daops7",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function daops1() --112
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_078_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,112)
end

function daops2() --55
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_042_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
		SetTask(3010,55)
end

function daops3()  --128
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_092_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,128)
end

function daops4() --131
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_095_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,131)
end

function daops5() -- 146
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_106_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,146)
end

function daops6() --115
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_081_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,115)
end

function daops7() --56
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_040_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,56)
end
--------------------------KIEM

function kiemps()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"kiÕm 1/kiemps1",
		"kiÕm 2/kiemps2",
		"kiÕm 3/kiemps3",
		"kiÕm 4/kiemps4",
		"kiÕm 5/kiemps5",
		"kiÕm 6/kiemps6",
		"kiÕm 7/kiemps7",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function kiemps1() --134
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_097_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,134)
end

function kiemps2() --130
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_094_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,130)
end

function kiemps3() --132
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_096_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,132)
end

function kiemps4() --129
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_093_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,129)
end


function kiemps5() --57
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_041_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,57)
end

function kiemps6() --58
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_041_RD01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,58)
end

function kiemps7() --59
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_043_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,59)
end

--------------------------CHUY

function chuyps()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"chïy 1/chuyps1",
		"chïy 2/chuyps2",
		"chïy 3/chuyps3",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function chuyps1() --60
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_046_ST06.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3012,60)
end

function chuyps2() --113
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_079_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3012,113)
end


function chuyps3() --79
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_100_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3012,79)
end


--------------------------BONG

function bongps()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"bæng 1/bongps1",
		"bæng 2/bongps2",
		"bæng 3/bongps3",

		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function bongps1() --61
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_037_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3013,61)
end

function bongps2() --41
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_038_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3013,41)
end

function bongps3() --136
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_098_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3013,136)
end

--------------------------THUONG

function thuongps()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"th­¬ng 1/thuongps1",
		"th­¬ng 2/thuongps2",
		"th­¬ng 3/thuongps3",
		"th­¬ng 4/thuongps4",
		"th­¬ng 5/thuongps5",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function thuongps1() --50
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_045_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3014,50)
end

function thuongps2() --51
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_045_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3014,51)
end

function thuongps3() --127
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_091_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3014,127)
end

function thuongps4() --101
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_059_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3014,101)
end

function thuongps5() --114
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_080_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3014,114)
end

--------------------------SONG DAO

function songdaops()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"song ®ao 1/songdaops1",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function songdaops1() --61
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_047_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3015,61)
end

--------------------------Am KhI

function amkhips()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"¸m khÝ 1/amkhips1",
		"¸m khÝ 2/amkhips2",
		"¸m khÝ 3/amkhips3",
		"¸m khÝ 4/amkhips4",
		"¸m khÝ 5/amkhips5",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function amkhips1() --70
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_048_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3016,70)
end

function amkhips2() --110
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_076_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3016,110)
end

function amkhips3() --120
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_086_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3016,120)
end

function amkhips4() --123
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_088_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3016,123)
end

function amkhips5() --125
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_089_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3016,125)
end

function TienHanhEpPS()
	--szDescription = format("+ CÇn 1000 V¹n l­îng + 50 Vµng + 100 b¹c + 50xu\n+ 1 Mãn HKMP maxop.")
	szDescription = format("+ CÇn 200xu\n.")

	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "BatDauEpPhatSang", "no", 1)

end

function BatDauEpPhatSang(nCount)
	if nCount == 0 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/TienHanhEpPS", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
		tbStone1 = {},
		tbStone2 = {},
		tbStone3 = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)
	--if nQuality ~= 1 then
	--Talk(1, "", "Trang bÞ ng­¬i ®Æt vµo kh«ng ph¶i lµ trang bÞ hoµng kim")
	--return
   --end
	   local goldEquipIndex = GetGlodEqIndex(nItemIndex)
  -- if (goldEquipIndex ~= 6 and goldEquipIndex ~= 11 and goldEquipIndex ~=16 and goldEquipIndex ~=21 and goldEquipIndex ~=26 and goldEquipIndex ~=31 and goldEquipIndex ~=46 and goldEquipIndex ~=61 and goldEquipIndex ~=61 and goldEquipIndex ~=71 and goldEquipIndex ~=76 and goldEquipIndex ~=81 and goldEquipIndex ~=96 and goldEquipIndex ~=101 and goldEquipIndex ~=329 and goldEquipIndex ~=116 and goldEquipIndex ~=126 and goldEquipIndex ~=258 and goldEquipIndex ~=250 and goldEquipIndex ~=265 and goldEquipIndex ~=270 and goldEquipIndex ~=295 and goldEquipIndex ~=300 and goldEquipIndex ~=290 and goldEquipIndex ~=280  and goldEquipIndex ~=240  and goldEquipIndex ~=235  and goldEquipIndex ~=245  and goldEquipIndex ~=230  and goldEquipIndex ~=225  and goldEquipIndex ~=335  and goldEquipIndex ~=340  and goldEquipIndex ~=121 and goldEquipIndex ~=764  and goldEquipIndex ~=345  and goldEquipIndex ~=320  and goldEquipIndex ~=540  and goldEquipIndex ~=315 )then
	--	Talk(1,"", "<color=white>ChØ cã trang bÞ vò khÝ HKMP MaxOp míi cã thÓ Ðp lªn ph¸t s¸ng xin h·y n©ng cÊp trang bÞ cña m×nh lªn maxop råi h· Ðp")
		--return
	--end
		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 else
				Talk(1, "no", "ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
		local nFaction = GetLastFactionNumber()
		nRandomAccess = random(1,100)
		nRandomRes = random(1, 100)
		nSucces = 1
		if nG == 0 and nD == 0 and nP == 0 then --kiem
				if nRandomAccess >=1 then
					nIndexRes = GetTask(3011)
				 else
					nSucces = 0
				end
		                                                                                   elseif nG == 0 and nD == 0 and nP == 1 then  --dao
				if nRandomAccess >=1 then
					nIndexRes = GetTask(3010)
					nSucces = 1
				 else
					nSucces = 0
				end
			
			
		                                                                                  elseif nG == 0 and nD == 0 and nP == 2 then --bong
				if nRandomAccess >=1 then
					nIndexRes = GetTask(3013)
					nSucces = 1
				 else
					nSucces = 0
				end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 3 then  --kich
					if nRandomAccess >=1 then
						nIndexRes = GetTask(3014)
						nSucces = 1
					 else
						nSucces = 0
					end
		 elseif nG == 0 and nD == 0 and nP == 4 then  --chuy
			if nRandomAccess >=1 then
			nIndexRes = GetTask(3012)
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 0 and nP == 5 then  --songdao
			if nRandomAccess >=1 then
				nIndexRes = GetTask(3015)
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 0 then  --tieu
			if nRandomAccess >=1 then
				nIndexRes = GetTask(3016)
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 1 then --tieu
			if nRandomAccess >=1 then
				nIndexRes = GetTask(3016)
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 2 then --tieu
			if nRandomAccess >=1 then
				nIndexRes = GetTask(3016)
				nSucces = 1
			 else
				nSucces = 0
			end
end
end	

	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng")
		return
	end
	
	--local nCountStone1 = getn(tbDatabase.tbStone1)
	--if nCountStone1 ~= 1 then
		--Talk(1, "no", "CÇn cã 1 viªn <color=red>Lam Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		--return
	--end
	
	--local nCountStone2 = getn(tbDatabase.tbStone2)
	--if nCountStone2 ~= 1 then
		--Talk(1, "no", "CÇn cã 1 viªn <color=red>Tö Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		--return
	--end
	
	--local nCountStone3 = getn(tbDatabase.tbStone3)
	--if nCountStone3 ~= 1 then
		--Talk(1, "no", "CÇn cã 1 viªn <color=red>Lôc Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		--return
	--end

	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 20) then
		Talk(1, "no", "CÇn cã 20 <color=red>TiÒn §ång<color> míi cã thÓ n©ng cÊp.")
		return
end
	--if (GetCash() < 10000000) then
    --   Talk(1,"","<color=white>Cã vô rÌn miÔn phÝ n÷a sao haha ®¹i hiÖp cÇn cã 1000 v¹n l­îng råi h·y nãi chuyÖn víi ta..") -- go
	--return
--end
--local nSilverCount = CalcEquiproomItemCount(4,1674,1,1) ;
	--if(nSilverCount < 50) then
	--Talk(1, "no", "CÇn cã 50 <color=red>Vµng Thái<color> míi cã thÓ n©ng cÊp.")
	--return
	--end
	--local nSilverCount = CalcEquiproomItemCount(4,1673,1,1) ;
	--if(nSilverCount < 100) then
	--Talk(1, "no", "CÇn cã 100 <color=red>B¹c Thái<color> míi cã thÓ n©ng cÊp.")
	--return
--end
if nSucces == 0 or nIndexRes <10 then
Say("Vò khÝ bá vµo kh«ng phï hîp  víi h×nh ¶nh ®­îc chän hoÆc ®¹i hiÖp ch­a chän vò khÝ nµo ®Ó ®æi ngo¹i h×nh c¶ xin h·y chän l¹i.",2,"Cho ta chän l¹i/ChonNgoaiHinhPS","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")

--Msg2Player("RÊt tiÕc! ThÊt b¹i lµ chuyÖn b×nh th­êng cña binh gia,huynh ®µi ®õng n¶n chÝ h·y cè g¾ng lÇn n÷a sÏ ®­îc nh­ ý.")
	elseif nSucces == 1 then
		RemoveItemByIndex(tbDatabase.tbItem[1])
   ConsumeEquiproomItem(20,4,417,1,1)
  -- ConsumeEquiproomItem(50,4,1674,1,1)
  -- ConsumeEquiproomItem(100,4,1673,1,1)
   --Pay(10000000)
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· n©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng nh­ vµng rång.")
Msg2SubWorld("<pic=7>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> §· n©ng cÊp thµnh c«ng vò khÝ<color=green> Ph¸t S¸ng VIP!")
                                                                                                                                                                     --SaveNow();
                                                                                   local epphatsang = "dulieu/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	 write(moepphatsang, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Ep Thanh Cong Vu Khi Phat Sang\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(moepphatsang)
	else
	print("Bug tinh nang nang cap Vu Khi phat quang")
	end
end
function _Weapons(nItemIndex, nIndexRes)
	SetItemNewFeature(nItemIndex, nIndexRes)
	print(nIndexRes)
end
function nhanvukhi()
--tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,11},nCount=1,nQuality = 1,nExpiredTime=1440},}, "test", 1); 
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,16},nCount=1,nQuality = 1,},}, "test", 1); 

end
