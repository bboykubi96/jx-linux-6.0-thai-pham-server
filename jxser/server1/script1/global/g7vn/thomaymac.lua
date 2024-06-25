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
--��ȡ��������� - modified by DinhHQ - 20110921
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
	--do Say("V�ng s�ng huy�t chi�n v�n ch�a m�. Xin quay l�i sau 3 ng�y n�a") return end
local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
--	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	tbDailog.szTitleMsg = "<#><npc> N�i n�y ��u l� k� tr�n d� b�o! ��i hi�p c�n g�!?"
	if  GetAccount()=="testgame4" or GetAccount()=="thaipham1" then
	tbDailog:AddOptEntry("Nh�n Th�y Tinh. (Mi�n ph�)", NhanThuyTinhFree)
	--tbDailog:AddOptEntry("��i ngo�i trang. (200xu)", DoiNgoaiTrang)
	--tbDailog:AddOptEntry("Thay ��i Ngo�i H�nh V� Kh�. (200xu)", MenuDoiNgoaiHinh0)
	end
--	tbDailog:AddOptEntry("N�ng C�p Ho�ng Kim �n (50 T�i TK)", nangcaphoangkiman)
--	tbDailog:AddOptEntry("Tr�ng Luy�n [Tr�n Server] Ho�ng Kim �n.", trungluyenhoangkiman)
--tbDailog:AddOptEntry("��i Trang S�c Vip (3 B� TT + 1 Tr�n Ch�u + 30 T�i TK)", doitrangsuc)
--	tbDailog:AddOptEntry("T�y Luy�n Trang S�c (1 B� TT)", tayluyentrangsuc)	
--    tbDailog:AddOptEntry("N�ng C�p Long ��m", nangcaplongdam)
	tbDailog:AddOptEntry("��i ngo�i trang. (20xu)", DoiNgoaiTrang)
--tbDailog:AddOptEntry("Thay ��i �o Gi�p ��p Troai. (200xu)", MenuDoiNgoaiHinhGiap_d)
	tbDailog:AddOptEntry("Thay ��i Ngo�i H�nh V� Kh�. (20xu)", MenuDoiNgoaiHinh0)
--	tbDailog:AddOptEntry("Ch� T�o V� Kh� HKMP Ph�t S�ng. (100xu)", Make_Weapons)
	tbDailog:AddOptEntry("Ch� T�o V� Kh� HKMP Ph�t S�ng(VIP)(20xu)", PhatSangVip)
	--tbDailog:AddOptEntry("Ch� T�o V� Kh� HKMP Ph�t S�ng(VIP)(200xu)", PhatSangVip)
	--tbDailog:AddOptEntry("Nh�n Th�y Tinh. (Mi�n ph�)", NhanThuyTinhFree)
	
	tbDailog:Show()
end
function nangcaplongdam()
		local tbSay = {
"��i Long ��m c�p 1 (10 b� Thu� Tinh)./#doilongdam()",
"N�ng Long ��m c�p 1 --> Long ��m c�p 2./#nangcaplongdam1()",
"N�ng Long ��m c�p 2 --> Long ��m c�p 3./#nangcaplongdam2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function nangcaplongdam2()
		if CalcFreeItemCellCount() < 5 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng C�p Long ��m.", "B� Long ��m c�p 2 v�o.\nKh�ng b� nguy�n li�u v�o.\nNguy�n Li�u: 3 b� Thu� Tinh\nT� l� th�nh c�ng: 20% \nX�t m�t h�t nguy�n li�u", "nangcaplongdam2_ok", "no", 1)
end
function nangcaplongdam2_ok(nCount)
	if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/nangcaplongdam2", "Ta xin th�i")
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
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
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
				tbAwardTemplet:GiveAwardByList({{szName = "Long ��m c�p 3",tbProp={0,5943},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� n�ng c�p th�nh c�ng <color=yellow>Long ��m C�p 3.<color> t�i <color=blue>NPC Th� May M�c")
			else
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(3,4,238,1,1)
				ConsumeEquiproomItem(3,4,239,1,1)
				ConsumeEquiproomItem(3,4,240,1,1)
				Msg2SubWorld("<color=green>Xin chia bu�n c�ng ��i hi�p <color=red>"..GetName().."<color> �� n�ng c�p x�t <color=yellow>Long ��m C�p 3.<color>  t�i <color=blue>NPC Th� May M�c")
			end
		else
			Say("H�nh trang kh�ng �� 3 b� Thu� Tinh")
			return
		end
	else
		Say("Th� ng��i b� kh�ng ph�i Long ��m c�p 2")
		return
	end
end
function nangcaplongdam1()
		if CalcFreeItemCellCount() < 5 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng C�p Long ��m.", "B� Long ��m c�p 1 v�o.\nKh�ng b� nguy�n li�u v�o.\nNguy�n Li�u: 3 b� Thu� Tinh\nT� l� th�nh c�ng: 20% \nX�t m�t h�t nguy�n li�u", "nangcaplongdam1_ok", "no", 1)
end
function nangcaplongdam1_ok(nCount)
	if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/nangcaplongdam1", "Ta xin th�i")
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
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
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
				tbAwardTemplet:GiveAwardByList({{szName = "Long ��m c�p 2",tbProp={0,5942},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� n�ng c�p th�nh c�ng <color=yellow>Long ��m C�p 2.<color> t�i <color=blue>NPC Th� May M�c")
			else
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(3,4,238,1,1)
				ConsumeEquiproomItem(3,4,239,1,1)
				ConsumeEquiproomItem(3,4,240,1,1)
				Msg2SubWorld("<color=green>Xin chia bu�n c�ng ��i hi�p <color=red>"..GetName().."<color> �� n�ng c�p x�t <color=yellow>Long ��m C�p 2.<color>  t�i <color=blue>NPC Th� May M�c")
			end
		else
			Say("H�nh trang kh�ng �� 3 b� Thu� Tinh")
			return
		end
	else
		Say("Th� ng��i b� kh�ng ph�i Long ��m c�p 1")
		return
	end
end
function doilongdam()
if CalcFreeItemCellCount()<10 then
	Say("H�nh trang kh�ng �� 10 � tr�ng.")
	return
end
		local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
		local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
		local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
		if lamthuytinh>=10 and lucthuytinh>=10 and tuthuytinh>=10 then
				ConsumeEquiproomItem(10,4,238,1,1)
				ConsumeEquiproomItem(10,4,239,1,1)
				ConsumeEquiproomItem(10,4,240,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "Long ��m c�p 1",tbProp={0,5941},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Long ��m C�p 1.<color> t�i <color=blue>NPC Th� May M�c")
		else
			Say("H�nh trang kh�ng �� 10 b� Thu� Tinh")
			return
		end
end

function trungluyenhoangkiman()
	if CalcFreeItemCellCount() < 5 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("Tr�ng Luy�n Ho�ng Kim �n.", "B� Ho�ng Kim �n v�o.\nKh�ng b� nguy�n li�u v�o.\nNguy�n Li�u: 10 T�i T�ng Kim", "trungluyenhoangkiman_ok", "no", 1)
end
function trungluyenhoangkiman_ok(nCount)
if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/trungluyenhoangkiman", "Ta xin th�i")
		return 0
	end
	local tuitichluy = CalcEquiproomItemCount(6,1,4361,-1)
	local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nGoldEquipIdxFF==6212 or nGoldEquipIdxFF==6213 or nGoldEquipIdxFF==6214 or nGoldEquipIdxFF==6215 or nGoldEquipIdxFF==6216 then
		if tuitichluy>=10 then
		RemoveItemByIndex(nItemIndex)
		ConsumeEquiproomItem(10,6,1,4361,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ho�ng Kim �n",tbProp={0,nGoldEquipIdxFF},nQuality=1,nCount=1},}, "test", 1);
		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> t�y luy�n th�nh c�ng <color=yellow>[Tr�n Server] Ho�ng Kim �n.<color>")
		else
			Say("Tr�ng luy�n [Tr�n Server] Ho�ng Kim �n c�n <color=yellow>10 T�i T�ng Kim")
			return
		end
	else
	Say("Th� ng��i b� cho ta kh�ng ph�i l� <color=yellow>[Tr�n Server] Ho�ng Kim �n.")
	return
	end
end
function nangcaphoangkiman()
	if CalcFreeItemCellCount() < 5 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng C�p Ho�ng Kim �n.", "B� Ho�ng Kim �n v�o.\nKh�ng b� nguy�n li�u v�o.\nNguy�n Li�u: 50 T�i T�ng Kim", "nangcaphoangkiman_ok", "no", 1)
end
function nangcaphoangkiman_ok(nCount)
if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/nangcaphoangkiman", "Ta xin th�i")
		return 0
	end
	local tuitichluy = CalcEquiproomItemCount(6,1,4361,-1)
	local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nGoldEquipIdxFF==6207 or nGoldEquipIdxFF==6208 or nGoldEquipIdxFF==6209 or nGoldEquipIdxFF==6210 or nGoldEquipIdxFF==6211 then
		if tuitichluy>=50 then
		RemoveItemByIndex(nItemIndex)
		ConsumeEquiproomItem(50,6,1,4361,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ho�ng Kim �n",tbProp={0,nGoldEquipIdxFF+5},nQuality=1,nCount=1},}, "test", 1);
		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>[Tr�n Server] Ho�ng Kim �n.<color>")
		else
			Say("H�nh trang kh�ng �� <color=yellow>50 t�i T�ng Kim.")
			return
		end
	else
	Say("Th� ng��i b� cho ta kh�ng ph�i l� <color=yellow>Ho�ng Kim �n.")
	return
	end
end
function tayluyentrangsuc()
if CalcFreeItemCellCount() < 5 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("T�y Luy�n Trang S�c.", "B� Trang S�c v�o.\nKh�ng b� nguy�n li�u v�o.\nNguy�n Li�u: 1 b� Thu� Tinh", "tayluyentrangsuc_ok", "no", 1)
end
function tayluyentrangsuc_ok(nCount)
if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/tayluyentrangsuc", "Ta xin th�i")
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
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nGoldEquipIdxFF==3502 or nGoldEquipIdxFF==3504 or nGoldEquipIdxFF==3505 or nGoldEquipIdxFF==3506 then
		if lamthuytinh>=1 and tuthuytinh>=1 and lucthuytinh>=1 then
		RemoveItemByIndex(nItemIndex)
		ConsumeEquiproomItem(1,4,238,1,1)
		ConsumeEquiproomItem(1,4,239,1,1)
		ConsumeEquiproomItem(1,4,240,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang S�c",tbProp={0,nGoldEquipIdxFF},nQuality=1,nCount=1},}, "test", 1);
		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> t�y luy�n th�nh c�ng <color=yellow>Trang S�c VIP.<color>")
		else
			Say("T�y luy�n c�n <color=yellow>1 B� Thu� Tinh")
			return
		end
	else
	Say("Th� ng��i b� cho ta kh�ng ph�i l� <color=yellow>Trang S�c.")
	return
	end
end
function doitrangsuc()
	local tbSay = {
"S�c M�nh./#doitrangsuc_ok(3502)",
"Th�n Ph�p./#doitrangsuc_ok(3504)",
"Sinh Kh�./#doitrangsuc_ok(3505)",
"N�i C�ng./#doitrangsuc_ok(3506)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doitrangsuc_ok(idchon)
local tranchau=CalcEquiproomItemCount(6,1,30523,-1)
local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
local tuitichluy = CalcEquiproomItemCount(6,1,4361,-1)
	if CalcFreeItemCellCount()<5 then
	Say("H�nh trang kh�ng �� 5 � tr�ng.")
	return
	end
	if  lamthuytinh>=3 and tuthuytinh>=3 and lucthuytinh>=3 and tranchau>=1 and tuitichluy>=30  then
		ConsumeEquiproomItem(1,6,1,30523,-1)
		ConsumeEquiproomItem(30,6,1,4361,-1)
		ConsumeEquiproomItem(3,4,238,1,1)
		ConsumeEquiproomItem(3,4,239,1,1)
		ConsumeEquiproomItem(3,4,240,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang S�c",tbProp={0,idchon},nQuality=1,nCount=1},}, "test", 1);
		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> ��i th�nh c�ng <color=yellow>1 Trang S�c VIP.<color>")
	else
		Say("Nguy�n li�u c�n c� <color=cyan>3 b� Thu� Tinh<color> + <color=yellow>1 Tr�n Ch�u<color> + 30 t�i t�ch lu� TK.")
		return
	end
end
function DoiNgoaiTrang()
tbFeatureNpc:Dialog()
end
function MenuDoiNgoaiHinhGiap_d()

GiveItemUI("Thay ��i ngo�i h�nh trang b�", "Xin h�y b� v�o �o Gi�p c�n thay ��i ngo�i h�nh.", "luachondo", "no", 1)

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
			Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> thay ��i <color=red>Ngo�i Trang �o Gi�p<color=yellow> th�nh c�ng.")
	else
		Say("Kh�ng �� 200 Xu")
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
		"<dec><npc>Xin h�y ch�n ngo�i h�nh m� b�n mu�n thay ��i.",
		"��i sang �ao/dao",
		"��i sang Ki�m/kiem",
		"��i sang Ch�y/chuy",
		"��i sang B�ng/bong",
		"��i sang Th��ng/thuong",
		"��i sang Song �ao/song",
		"K�t th�c ��i tho�i./no",
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
Say("B�n c� ch�c mu�n ��i ngo�i h�nh v� kh� th�nh �ao hay kh�ng?",2,"Ch�c!!! b�t ��u �p �i./MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function kiem()
SetTask(5858,1)
SetTask(5859,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("B�n c� ch�c mu�n ��i ngo�i h�nh v� kh� th�nh Ki�m hay kh�ng?",2,"Ch�c!!! b�t ��u �p �i./MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function chuy()
SetTask(5857,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("B�n c� ch�c mu�n ��i ngo�i h�nh v� kh� th�nh Ch�y hay kh�ng?",2,"Ch�c!!! b�t ��u �p �i./MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function bong()
SetTask(5856,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5855,0)
SetTask(5854,0)
Say("B�n c� ch�c mu�n ��i ngo�i h�nh v� kh� th�nh B�ng hay kh�ng?",2,"Ch�c!!! b�t ��u �p �i./MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function song()
SetTask(5855,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5854,0)
Say("B�n c� ch�c mu�n ��i ngo�i h�nh v� kh� th�nh Song �ao hay kh�ng?",2,"Ch�c!!! b�t ��u �p �i./MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function thuong()
SetTask(5854,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
Say("B�n c� ch�c mu�n ��i ngo�i h�nh v� kh� th�nh Th��ng hay kh�ng?",2,"Ch�c!!! b�t ��u �p �i./MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end


function MenuDoiNgoaiHinh()
	szDescription = format("+ 200 Xu \n=> Trang b� ��p nh�t.")

	GiveItemUI("B� V� Kh� V�o", szDescription, "BatDauDoiVK", "no", 1)

end

function BatDauDoiVK(nCount,nItemIndex, nIndexRes)
	if nCount == 0 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/MenuDoiNgoaiHinh", "no")
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
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 else
				Talk(1, "no", "Th�t th� l�i! Kh� n�ng c�a ta ca gi�i h�n, kh�ng th� n�ng c�p <color=red>trang b�<color> n�y ���c.")
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
		Talk(1, "no", "C�n c� 20 <color=red>Ti�n ��ng<color> m�i c� th� n�ng c�p.\n-T� l� n�p th� 100k ���c 130xu.")
		return
	end
	--if nItemTime ~= 0 then
	--	Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
	--	return
--	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng��i ch�a ��t v� kh� c�n n�ng c�p v�o � tr�ng.")
		return
	end
if GetTask(5859) < 1 and GetTask(5858) < 1 and GetTask(5857) < 1 and GetTask(5856) < 1 and GetTask(5855) < 1 and GetTask(5854) < 1 then
Say("��i hi�p ch�a ch�n v� kh� n�o c�.",2,"Cho ta ch�n l�i/MenuDoiNgoaiHinh0","Kh�ng c�n ��u! C�m �n!/cancel")
		return
	end   	
if GetTask(5859) == 1 then --dao
		SetItemNewFeature(nItemIndex, random(53,56)) --53 54 55 56
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh �ao")
end
if GetTask(5858) == 1 then --kiem
		SetItemNewFeature(nItemIndex, random(57,59))  --  57 58 59
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Ki�m")
end
if GetTask(5857) == 1 then --chuy
		SetItemNewFeature(nItemIndex, 60)  -- 
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Ch�y")
end
if GetTask(5856) == 1 then --bong
		SetItemNewFeature(nItemIndex, 41)  -- 40 41
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh B�ng")
end
if GetTask(5855) == 1 then --song
		SetItemNewFeature(nItemIndex, 61) --
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Song �ao")
end
if GetTask(5854) == 1 then --thuong
		SetItemNewFeature(nItemIndex, random(50,51)) -- 50 51
		ConsumeEquiproomItem(20,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Th��ng")
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
	szDescription = format("+ 1 T� Th�y Tinh\n+ 1 L�c Th�y Tinh\n+ 1 Lam Th�y Tinh\n+ 100 Ti�n ��ng\n=> V� kh� ph�t s�ng!!!.")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_MakeWeapons", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_MakeWeapons(nCount)
	if nCount == 0 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
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
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 else
				Talk(1, "no", "Th�t th� l�i! Kh� n�ng c�a ta ca gi�i h�n, kh�ng th� n�ng c�p <color=red>trang b�<color> n�y ���c.")
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
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng��i ch�a ��t v� kh� c�n n�ng c�p v�o � tr�ng")
		return
	end
	
	local nCountStone1 = getn(tbDatabase.tbStone1)
	if nCountStone1 ~= 1 then
		Talk(1, "no", "C�n c� 1 vi�n <color=red>Lam Th�y Tinh<color> m�i c� th� n�ng c�p.")
		return
	end
	
	local nCountStone2 = getn(tbDatabase.tbStone2)
	if nCountStone2 ~= 1 then
		Talk(1, "no", "C�n c� 1 vi�n <color=red>T� Th�y Tinh<color> m�i c� th� n�ng c�p.")
		return
	end
	
	local nCountStone3 = getn(tbDatabase.tbStone3)
	if nCountStone3 ~= 1 then
		Talk(1, "no", "C�n c� 1 vi�n <color=red>L�c Th�y Tinh<color> m�i c� th� n�ng c�p.")
		return
	end

	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then
		Talk(1, "no", "C�n c� 100 <color=red>Ti�n ��ng<color> m�i c� th� n�ng c�p t� l� n�p th� 100k ���c 100xu.")
		return
	end
	--local nIDX = GetGiveItemUnit(n)
	--local nQuality = GetItemQuality(nIDX)
	--if nQuality ~= 1 then
		--Talk(1, "", "Trang b� ng��i ��t v�o kh�ng ph�i l� trang b� ho�ng kim")
		--return
	--end

	
	RemoveItemByIndex(tbDatabase.tbStone1[1])
	RemoveItemByIndex(tbDatabase.tbStone2[1])
	RemoveItemByIndex(tbDatabase.tbStone3[1])
	RemoveItemByIndex(tbDatabase.tbItem[1])
                                                                                  ConsumeEquiproomItem(100,4,417,1,1)

	if nSucces == 0 then
		Msg2Player("R�t ti�c! Th�t b�i l� chuy�n b�nh th��ng c�a binh gia,huynh ��i ��ng n�n ch� h�y c� g�ng l�n n�a s� ���c nh� �.")
	elseif nSucces == 1 then
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n �� n�ng c�p th�nh c�ng v� kh� ph�t quang.")
                                                                                                                                                                     Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> �� n�ng c�p th�nh c�ng v� kh�<color=green> Ph�t S�ng!")
                                                                                                                                                                     SaveNow();
                                                                                   local epphatsang = "script/global/bil4i3n/bil4i3n_log/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] N�ng c�p th�nh c�ng v� kh� ph�t s�ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	-- write(moepphatsang, format("%d:%d\tAccount: %s\t Name: %s\t Level: %s\t IP Address: %s  N�ng c�p th�nh c�ng v� kh� ph�t s�ng\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel(), GetIP()))
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
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={4,417,1,0,0,0},nCount=50,},}, "test", 1); 

end
function PhatSangVip()
	tbOpt =
	{
		"<dec><npc>��y l� danh s�ch �p v� kh� ph�t s�ng r�t vip ch�ng hay ��i hi�p mu�n �p lo�i n�o xin h�y l�a ch�n h�nh .",
		"Ch�n Ngo�i H�nh V� Kh�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end


function ChonNgoaiHinhPS()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"Ngo�i h�nh �ao/daops",
		"Ngo�i h�nh ki�m/kiemps",
		"Ngo�i h�nh ch�y/chuyps",
		"Ngo�i h�nh b�ng/bongps",
		"Ngo�i h�nh th��ng/thuongps",
		"Ngo�i h�nh �m kh�/amkhips",
		"Ngo�i h�nh song �ao/songdaops",
		"K�t th�c ��i tho�i./no",
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
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"�ao 1/daops1",
		"�ao 2/daops2",
		"�ao 3/daops3",
		"�ao 4/daops4",
		"�ao 5/daops5",
		"�ao 6/daops6",
		"�ao 7/daops7",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function daops1() --112
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_078_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,112)
end

function daops2() --55
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_042_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
		SetTask(3010,55)
end

function daops3()  --128
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_092_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,128)
end

function daops4() --131
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_095_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,131)
end

function daops5() -- 146
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_106_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,146)
end

function daops6() --115
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_081_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,115)
end

function daops7() --56
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_040_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3010,56)
end
--------------------------KIEM

function kiemps()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"ki�m 1/kiemps1",
		"ki�m 2/kiemps2",
		"ki�m 3/kiemps3",
		"ki�m 4/kiemps4",
		"ki�m 5/kiemps5",
		"ki�m 6/kiemps6",
		"ki�m 7/kiemps7",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function kiemps1() --134
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_097_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,134)
end

function kiemps2() --130
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_094_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,130)
end

function kiemps3() --132
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_096_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,132)
end

function kiemps4() --129
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_093_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,129)
end


function kiemps5() --57
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_041_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,57)
end

function kiemps6() --58
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_041_RD01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,58)
end

function kiemps7() --59
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_043_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3011,59)
end

--------------------------CHUY

function chuyps()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"ch�y 1/chuyps1",
		"ch�y 2/chuyps2",
		"ch�y 3/chuyps3",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function chuyps1() --60
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_046_ST06.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3012,60)
end

function chuyps2() --113
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_079_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3012,113)
end


function chuyps3() --79
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_100_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3012,79)
end


--------------------------BONG

function bongps()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"b�ng 1/bongps1",
		"b�ng 2/bongps2",
		"b�ng 3/bongps3",

		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function bongps1() --61
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_037_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3013,61)
end

function bongps2() --41
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_038_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3013,41)
end

function bongps3() --136
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_098_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3013,136)
end

--------------------------THUONG

function thuongps()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"th��ng 1/thuongps1",
		"th��ng 2/thuongps2",
		"th��ng 3/thuongps3",
		"th��ng 4/thuongps4",
		"th��ng 5/thuongps5",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function thuongps1() --50
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_045_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3014,50)
end

function thuongps2() --51
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_045_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3014,51)
end

function thuongps3() --127
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_091_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3014,127)
end

function thuongps4() --101
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_059_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3014,101)
end

function thuongps5() --114
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_080_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3014,114)
end

--------------------------SONG DAO

function songdaops()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"song �ao 1/songdaops1",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function songdaops1() --61
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_047_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3015,61)
end

--------------------------Am KhI

function amkhips()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"�m kh� 1/amkhips1",
		"�m kh� 2/amkhips2",
		"�m kh� 3/amkhips3",
		"�m kh� 4/amkhips4",
		"�m kh� 5/amkhips5",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function amkhips1() --70
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_048_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3016,70)
end

function amkhips2() --110
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_076_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3016,110)
end

function amkhips3() --120
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_086_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3016,120)
end

function amkhips4() --123
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_088_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3016,123)
end

function amkhips5() --125
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_089_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	SetTask(3016,125)
end

function TienHanhEpPS()
	--szDescription = format("+ C�n 1000 V�n l��ng + 50 V�ng + 100 b�c + 50xu\n+ 1 M�n HKMP maxop.")
	szDescription = format("+ C�n 200xu\n.")

	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "BatDauEpPhatSang", "no", 1)

end

function BatDauEpPhatSang(nCount)
	if nCount == 0 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/TienHanhEpPS", "no")
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
	--Talk(1, "", "Trang b� ng��i ��t v�o kh�ng ph�i l� trang b� ho�ng kim")
	--return
   --end
	   local goldEquipIndex = GetGlodEqIndex(nItemIndex)
  -- if (goldEquipIndex ~= 6 and goldEquipIndex ~= 11 and goldEquipIndex ~=16 and goldEquipIndex ~=21 and goldEquipIndex ~=26 and goldEquipIndex ~=31 and goldEquipIndex ~=46 and goldEquipIndex ~=61 and goldEquipIndex ~=61 and goldEquipIndex ~=71 and goldEquipIndex ~=76 and goldEquipIndex ~=81 and goldEquipIndex ~=96 and goldEquipIndex ~=101 and goldEquipIndex ~=329 and goldEquipIndex ~=116 and goldEquipIndex ~=126 and goldEquipIndex ~=258 and goldEquipIndex ~=250 and goldEquipIndex ~=265 and goldEquipIndex ~=270 and goldEquipIndex ~=295 and goldEquipIndex ~=300 and goldEquipIndex ~=290 and goldEquipIndex ~=280  and goldEquipIndex ~=240  and goldEquipIndex ~=235  and goldEquipIndex ~=245  and goldEquipIndex ~=230  and goldEquipIndex ~=225  and goldEquipIndex ~=335  and goldEquipIndex ~=340  and goldEquipIndex ~=121 and goldEquipIndex ~=764  and goldEquipIndex ~=345  and goldEquipIndex ~=320  and goldEquipIndex ~=540  and goldEquipIndex ~=315 )then
	--	Talk(1,"", "<color=white>Ch� c� trang b� v� kh� HKMP MaxOp m�i c� th� �p l�n ph�t s�ng xin h�y n�ng c�p trang b� c�a m�nh l�n maxop r�i h� �p")
		--return
	--end
		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 else
				Talk(1, "no", "Th�t th� l�i! Kh� n�ng c�a ta ca gi�i h�n, kh�ng th� n�ng c�p <color=red>trang b�<color> n�y ���c.")
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
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng��i ch�a ��t v� kh� c�n n�ng c�p v�o � tr�ng")
		return
	end
	
	--local nCountStone1 = getn(tbDatabase.tbStone1)
	--if nCountStone1 ~= 1 then
		--Talk(1, "no", "C�n c� 1 vi�n <color=red>Lam Th�y Tinh<color> m�i c� th� n�ng c�p.")
		--return
	--end
	
	--local nCountStone2 = getn(tbDatabase.tbStone2)
	--if nCountStone2 ~= 1 then
		--Talk(1, "no", "C�n c� 1 vi�n <color=red>T� Th�y Tinh<color> m�i c� th� n�ng c�p.")
		--return
	--end
	
	--local nCountStone3 = getn(tbDatabase.tbStone3)
	--if nCountStone3 ~= 1 then
		--Talk(1, "no", "C�n c� 1 vi�n <color=red>L�c Th�y Tinh<color> m�i c� th� n�ng c�p.")
		--return
	--end

	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 20) then
		Talk(1, "no", "C�n c� 20 <color=red>Ti�n ��ng<color> m�i c� th� n�ng c�p.")
		return
end
	--if (GetCash() < 10000000) then
    --   Talk(1,"","<color=white>C� v� r�n mi�n ph� n�a sao haha ��i hi�p c�n c� 1000 v�n l��ng r�i h�y n�i chuy�n v�i ta..") -- go
	--return
--end
--local nSilverCount = CalcEquiproomItemCount(4,1674,1,1) ;
	--if(nSilverCount < 50) then
	--Talk(1, "no", "C�n c� 50 <color=red>V�ng Th�i<color> m�i c� th� n�ng c�p.")
	--return
	--end
	--local nSilverCount = CalcEquiproomItemCount(4,1673,1,1) ;
	--if(nSilverCount < 100) then
	--Talk(1, "no", "C�n c� 100 <color=red>B�c Th�i<color> m�i c� th� n�ng c�p.")
	--return
--end
if nSucces == 0 or nIndexRes <10 then
Say("V� kh� b� v�o kh�ng ph� h�p  v�i h�nh �nh ���c ch�n ho�c ��i hi�p ch�a ch�n v� kh� n�o �� ��i ngo�i h�nh c� xin h�y ch�n l�i.",2,"Cho ta ch�n l�i/ChonNgoaiHinhPS","Kh�ng c�n ��u! C�m �n!/cancel")

--Msg2Player("R�t ti�c! Th�t b�i l� chuy�n b�nh th��ng c�a binh gia,huynh ��i ��ng n�n ch� h�y c� g�ng l�n n�a s� ���c nh� �.")
	elseif nSucces == 1 then
		RemoveItemByIndex(tbDatabase.tbItem[1])
   ConsumeEquiproomItem(20,4,417,1,1)
  -- ConsumeEquiproomItem(50,4,1674,1,1)
  -- ConsumeEquiproomItem(100,4,1673,1,1)
   --Pay(10000000)
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n �� n�ng c�p th�nh c�ng v� kh� ph�t s�ng nh� v�ng r�ng.")
Msg2SubWorld("<pic=7>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> �� n�ng c�p th�nh c�ng v� kh�<color=green> Ph�t S�ng VIP!")
                                                                                                                                                                     --SaveNow();
                                                                                   local epphatsang = "dulieu/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] N�ng c�p th�nh c�ng v� kh� ph�t s�ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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
--tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,11},nCount=1,nQuality = 1,nExpiredTime=1440},}, "test", 1); 
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,16},nCount=1,nQuality = 1,},}, "test", 1); 

end
