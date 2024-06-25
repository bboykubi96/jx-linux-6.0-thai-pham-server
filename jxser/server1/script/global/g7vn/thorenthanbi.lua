
--------------------------------------------------------------------------------------------------------
-- File Name		:	thorenhoangkim.lua
--	Author			:	Alone_ (Nguyen Khai)
--	Create Time	:	27/10/2017 - 20:20
--	Description		:	
--------------------------------------------------------------------------------------------------------
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
IncludeLib("ITEM")

function main()
dofile("script/global/g7vn/thorenthanbi.lua")
dofile("script/global/g7vn/trungluyentrangbi/trangbihkmp/refine_equip_hanche.lua")
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	
	
	tbDailog.szTitleMsg = "<#><npc> N�i n�y ��u l� k� tr�n d� b�o! ��i hi�p c�n g�!?"
--	tbDailog:AddOptEntry("Gh�p M�nh HKMP", GhepManhHKMP)
--	tbDailog:AddOptEntry("Thay ��i Ngo�i H�nh V� Kh�", MenuDoiNgoaiHinh0)
--	tbDailog:AddOptEntry("Ch� T�o V� Kh� HKMP Ph�t S�ng", Make_Weapons)
--	tbDailog:AddOptEntry("Nh�n Th�y Tinh", NhanThuyTinhFree)
--	tbDailog:AddOptEntry("Tr�ng Luy�n Trang B� H�n Ch�", refine_HanChe)
--	tbDailog:AddOptEntry("Xoay M�nh HKMP", XoayManhHKMP)
	--tbDailog:AddOptEntry("L�c L�i Option Trang B� HKMP", LocOptionHKOK)

	tbDailog:Show()
end;
function NhanThuyTinhFree()
AddEventItem(238) 
AddEventItem(239)
AddEventItem(240)

end
function XoayManhHKMP()
	szDescription = format("Ch� C�n B� M�nh HKMP V�o Trong L� ���c\n=> H�n Xui N�o!!.")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_XoayManhHKMP", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_XoayManhHKMP(nCount)
if nCount == 0 or nCount >1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.")
		return 1;
	end
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS ,kk = GetItemProp(nItemIndex)
		local xu = CalcEquiproomItemCount(4,417,1,-1)
		
		if nG==6 and nP >= 239 and nP <= 378 and xu >=1 then
			ConsumeEquiproomItem(1, 6,1, nP,-1)
			ConsumeEquiproomItem(1, 4,417, 1,-1)
			local Index	= AddItem(6,1,random(239,378),0,0,0,0) 
			Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> Xoay Th�nh C�ng <color=green>M�nh HKMP!")
			else Say("Kh�ng c� m�nh HKMP ho�c kh�ng �� 1 Xu")
		end
	end
end
function GhepManhHKMP()
Say("�� H�p Th�nh �� HKMP C�n C� �� 100 M�nh HKMP",7,"Nga Mi/hkmpnm1","Th�y Y�n/hkmpty1","���ng M�n/hkmpdm1","Ng� ��c/hkmpnd1","Thi�n V��ng/hkmptv1","Trang Sau/GhepManhHKMP2","K�t th�c ��i tho�i/no") 
end
function GhepManhHKMP2() 
Say("Xin m�i ch�n trang b�",7,"Thi�u L�m/hkmptl1","V� �ang/hkmpvd1","C�n L�n/hkmpcl1","Thi�n Nh�n/hkmptn1","C�i Bang/hkmpcb1","Trang Tr��c/GhepManhHKMP","K�t th�c ��i tho�i/no") 
end
function addhkmp(idgold,idmagic)
local nCount_manhhkmp = CalcEquiproomItemCount(6,1,idmagic,1)
	if nCount_manhhkmp >=100 then
		ConsumeEquiproomItem(100, 6,1, idmagic,-1) 
		Msg2SubWorld("<color=green> Xin Ch�c M�ng <color=red>"..GetName().."<color=green> �� �p Th�nh C�ng 100 M�nh Th�nh �� HKMP")
		local Index = AddGoldItem(0,idgold) ITEM_SetExpiredTime(Index,30*24*60) SyncItem(Index)
	else
		Say("Ng��i Kh�ng �� Nguy�n Li�u T�m Ta L�m G�") return 1;
		end
end
----------------------------- Thieu lam-----------------------------
function hkmptl1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbSay = {
"Thi�u L�m Quy�n/#hkmptld2()",
"Thi�u L�m B�ng/#hkmptlb()",
"Thi�u L�m �ao/#hkmptlq()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end

function hkmptld2() 
local tbSay1 = {
"M�ng Long Ch�nh H�ng T�ng M�o/#addhkmp(1,239)",
"M�ng Long Kim Ti Ch�nh H�ng C� Sa/#addhkmp(2,240)",
"M�ng Long Huy�n Ti Ph�t ��i/#addhkmp(3,241)",
"M�ng Long Ph�t Ph�p Huy�n B�i/#addhkmp(4,242)",
"M�ng Long ��t Ma T�ng h�i/#addhkmp(5,243)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end

function hkmptlb() 
local tbSay1 = {
"Ph�c Ma T� Kim C�n/#addhkmp(6,244)",
"Ph�c Ma Huy�n Ho�ng C� Sa/#addhkmp(7,245)",
"Ph�c Ma � Kim Nhuy�n �i�u/#addhkmp(8,246)",
"Ph�c Ma Ph�t T�m Nhuy�n Kh�u/#addhkmp(9,247)",
"Ph�c Ma Ph� �� T�ng h�i/#addhkmp(10,248)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end
function hkmptlq()
local tbSay1 = {
"T� Kh�ng Gi�ng Ma Gi�i �ao/#addhkmp(11,249)",
"T� Kh�ng T� Kim C� Sa/#addhkmp(12,250)",
"T� Kh�ng H� ph�p Y�u ��i/#addhkmp(13,251)",
"T� Kh�ng Nhuy�n B� H� Uy�n/#addhkmp(14,252)",
"T� Kh�ng Gi�i Lu�t Ph�p gi�i/#addhkmp(15,253)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)

end

----------------------------------------------------------thien vuong ----------------------------------------------
function hkmptv1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"Thi�n V��ng Ch�y", hkviptvt1}, 
                {"Thi�n V��ng Th��ng", hkviptvc1}, 
                {"Thi�n V��ng �ao", hkviptvd1}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptvt1() 
local tbSay1 = {
"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y/#addhkmp(16,254)",
"H�m Thi�n V� Th�n T��ng Kim Gi�p/#addhkmp(17,255)",
"H�m Thi�n Uy V� Th�c y�u ��i/#addhkmp(18,256)",
"H�m Thi�n H� ��u Kh�n Th�c Uy�n/#addhkmp(19,257)",
"H�m Thi�n Th�a Long Chi�n Ngoa/#addhkmp(20,258)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkviptvc1() 
local tbSay1 = {
"K� Nghi�p B�n L�i To�n Long th��ng/#addhkmp(21,259)",
"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i/#addhkmp(22,260)",
"K� Nghi�p B�ch H� V� Song kh�u/#addhkmp(23,261)",
"K� Nghi�p H�aV�n K� L�n Th� /#addhkmp(24,262)",
"K� Nghi�p Chu T��c L�ng V�n Ngoa/#addhkmp(25,263)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end;

function hkviptvd1() 
local tbSay1 = {
"Ng� Long L��ng Ng�n B�o �ao/#addhkmp(26,264)",
"Ng� Long Chi�n Th�n Phi Qu�i gi�p/#addhkmp(27,265)",
"Ng� Long Thi�n M�n Th�c Y�u ho�n/#addhkmp(28,266)",
"Ng� Long T�n Phong H� y�n/#addhkmp(29,267)",
"Ng� Long Tuy�t M�nh Ch� ho�n/#addhkmp(30,268)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

---------------------------------------------nga my---------------------------------------

function hkmpnm1() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ki�m", hkvipnmc1}, 
                {"Nga My Ch��ng", hkvipnmk1}, 
                {"Nga My Buff", hkvipnmbuff1}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
        return 1 
end 

function hkvipnmc1()
local tbSay1 = {
"V� Gian � Thi�n Ki�m/#addhkmp(31,269)",
"V� Gian Thanh Phong Truy Y/#addhkmp(32,270)",
"V� Gian Ph�t V�n Ti ��i/#addhkmp(33,271)",
"V� Gian C�m V�n H� Uy�n/#addhkmp(34,272)",
"V� Gian B�ch Ng�c B�n Ch� /#addhkmp(35,273)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end;

function hkvipnmk1() 
local tbSay1 = {
"V� Ma Ma Ni qu�n/#addhkmp(36,274)",
"V� Ma T� Kh�m C� Sa/#addhkmp(37,275)",
"V� Ma B�ng Tinh Ch� Ho�n/#addhkmp(38,276)",
"V� Ma T�y T��ng Ng�c Kh�u /#addhkmp(39,277)",
"V� Ma H�ng Truy Nhuy�n Th�p h�i/#addhkmp(40,278)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end;

function hkvipnmbuff1() 
local tbSay1 = {
"V� Tr�n Ng�c N� T� T�m qu�n/#addhkmp(41,279)",
"V� Tr�n Thanh T�m H��ng Thi�n Ch�u/#addhkmp(42,280)",
"V� Tr�n T� Bi Ng�c Ban Ch� /#addhkmp(43,281)",
"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i/#addhkmp(44,282)",
"V� Tr�n Ph�t Quang Ch� Ho�n/#addhkmp(45,283)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end;
--------------------------------------------------thuy yen------------------------------------
function hkmpty1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Th�y Y�n �ao", hkviptyd1}, 
                {"Th�y Y�n Ch��ng", hkviptyc1}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptyd1() 
local tbSay1 = {
"T� Ho�ng Ph�ng Nghi �ao/#addhkmp(46,284)",
"T� Ho�ng Tu� T�m Khinh Sa Y/#addhkmp(47,285)",
"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i/#addhkmp(48,286)",
"T� Ho�ng B�ng Tung C�m uy�n/#addhkmp(49,287)",
"T� Ho�ng Th�y Ng�c Ch� Ho�n/#addhkmp(50,288)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkviptyc1() 
local tbSay1 = {
"B�ch H�i Uy�n ��ng Li�n Ho�n �ao/#addhkmp(51,289)",
"B�ch H�i Ho�n Ch�u V� Li�n/#addhkmp(52,290)",
"B�ch H�i H�ng Linh Kim Ti ��i/#addhkmp(53,291)",
"B�ch H�i H�ng L�ng Ba/#addhkmp(54,292)",
"B�ch H�i Khi�n T� Ch� ho�n/#addhkmp(55,293)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

-----------------------------------------------------------ngu doc --------------
function hkmpnd1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Ng� ��c Ch��ng", hkvipndc1}, 
                 {"Ng� ��c �ao", hkvipndd1}, 
                {"Ng� ��c B�a", hkvipndb1}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipndc1() 
local tbSay1 = {
"U Lung Kim X� Ph�t ��i/#addhkmp(56,294)",
"U Lung X�ch Y�t M�t trang/#addhkmp(57,295)",
"U Lung Thanh Ng� Tri�n y�u/#addhkmp(58,296)",
"U Lung Ng�n Th�m H� Uy�n/#addhkmp(59,297)",
"U Lung M�c Th� Nhuy�n L� /#addhkmp(60,298)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end;

function hkvipndd1() 
local tbSay1 = {
"Minh �o T� S�t ��c Nh�n/#addhkmp(61,299)",
"Minh �o U ��c �m Y/#addhkmp(62,300)",
"Minh �o ��c Y�t Ch� Ho�n/#addhkmp(63,301)",
"Minh �o H� C�t H� uy�n/#addhkmp(64,302)",
"Minh �o Song Ho�n X� H�i/#addhkmp(65,303)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkvipndb1() 
local tbSay1 = {
"Ch� Ph��c Ph� gi�p ��u ho�n/#addhkmp(66,304)",
"Ch� Ph��c Di�t L�i C�nh Ph� /#addhkmp(67,305)",
"Ch� Ph��c U �o Ch� Ho�n/#addhkmp(68,306)",
"Ch� Ph��c Xuy�n T�m ��c Uy�n/#addhkmp(69,307)",
"Ch� Ph��c B�ng H�a Th�c C�t Ngoa/#addhkmp(70,308)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 
function hkmpdm1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
        local tbOpt= 
               { 
                {"���ng M�n Phi Ti�u", hkvipbv1}, 
                {"���ng M�n N�", hkvippt1}, 
                {"���ng M�n B�ng H�n", hkvippd1}, 
                {"���ng M�n B�y", hkvipbay1}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipbv1() 
local tbSay1 = {
"B�ng H�n ��n Ch� Phi �ao/#addhkmp(71,309)",
"B�ng H�n Huy�n Y Th�c Gi�p/#addhkmp(72,310)",
"B�ng H�n T�m Ti�n Y�u Kh�u/#addhkmp(73,311)",
"B�ng H�n Huy�n Thi�n B�ng H�a B�i/#addhkmp(74,312)",
"B�ng H�n Nguy�t �nh Ngoa/#addhkmp(75,313)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkvippt1() 
local tbSay1 = {
"Thi�n Quang Hoa V� M�n Thi�n/#addhkmp(76,314)",
"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� /#addhkmp(77,315)",
"Thi�n Quang S�m La Th�c ��i/#addhkmp(78,316)",
"Thi�n Quang Song B�o H�n Thi�t Tr�c/#addhkmp(79,317)",
"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n/#addhkmp(80,318)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkvippd1() 
local tbSay1 = {
"S�m Hoang Phi Tinh �o�t H�n/#addhkmp(81,319)",
"S�m Hoang KimTi�n Li�n Ho�n Gi�p/#addhkmp(82,320)",
"S�m Hoang H�n Gi�o Y�u Th�c/#addhkmp(83,321)",
"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i/#addhkmp(84,322)",
"S�m Hoang Tinh V�n Phi L� /#addhkmp(85,323)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkvipbay1() 
local tbSay1 = {
"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n/#addhkmp(86,324)",
"��a Ph�ch H�c Di�m Xung Thi�n Li�n/#addhkmp(87,325)",
"��a Ph�ch T�ch L�ch L�i H�a Gi�i/#addhkmp(88,326)",
"��a Ph�ch Kh�u T�m tr�c/#addhkmp(89,327)",
"��a Ph�ch ��a H�nh Thi�n L� Ngoa/#addhkmp(90,328)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end;

----------------------------cai bang----------------------------
function hkmpcb1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"C�i Bang Ch��ng", hkvipcbc1}, 
                            {"C�i Bang B�ng", hkvipcbb1}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcbc1() 
local tbSay1 = {
"��ng C�u Phi Long ��u ho�n/#addhkmp(91,329)",
"��ng C�u Gi�ng Long C�i Y/#addhkmp(92,330)",
"��ng C�u Ti�m Long Y�u ��i/#addhkmp(93,331)",
"��ng C�u Kh�ng Long H� Uy�n/#addhkmp(94,332)",
"��ng C�u Ki�n Long Ban Ch� /#addhkmp(95,333)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkvipcbb1() 
local tbSay1 = {
"��ch Kh�i L�c Ng�c Tr��ng/#addhkmp(96,334)",
"��ch Kh�i C�u ��i C�i Y/#addhkmp(97,335)",
"��ch Kh�i Tri�n M�ng y�u ��i/#addhkmp(98,336)",
"��ch Kh�i C�u T�ch B� H� uy�n/#addhkmp(99,337)",
"��ch Kh�i Th�o Gian Th�ch gi�i/#addhkmp(100,338)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end;

--------------------------thien nhan------------------------------------------
function hkmptn1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�n Nh�n Th��ng", hkviptnt1}, 
                            {"Thi�n Nh�n Ch��ng", hkviptnd1}, 
                {"Thi�n Nh�n B�a", hkviptnb1}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptnt1() 
local tbSay1 = {
"Ma S�t Qu� C�c U Minh Th��ng/#addhkmp(101,339)",
"Ma S�t T�n D��ng �nh Huy�t Gi�p/#addhkmp(102,340)",
"Ma S�t X�ch K� T�a Y�u Kh�u/#addhkmp(103,341)",
"Ma S�t C� H�a Li�u Thi�n uy�n/#addhkmp(104,342)",
"Ma S�t V�n Long Th� Ch�u gi�i/#addhkmp(105,343)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkviptnd1() 
local tbSay1 = {
"Ma Ho�ng Kim Gi�p Kh�i/#addhkmp(106,344)",
"Ma Ho�ng �n Xu�t H� H�ng Khuy�n/#addhkmp(107,345)",
"Ma Ho�ng Kh� C�c Th�c y�u ��i/#addhkmp(108,346)",
"Ma Ho�ng Huy�t Y Th� Tr�c/#addhkmp(109,347)",
"Ma Ho�ng ��ng ��p Ngoa/#addhkmp(110,348)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkviptnb1() 
local tbSay1 = {
"Ma Th� Li�t Di�m Qu�n Mi�n/#addhkmp(111,349)",
"Ma Th� L� Ma Ph� T�m Li�n/#addhkmp(112,350)",
"Ma Th� Nghi�p H�a U Minh Gi�i/#addhkmp(113,351)",
"Ma Th� Huy�t Ng�c Th�t S�t B�i/#addhkmp(114,352)",
"Ma Th� s�n  H�i Phi H�ng L� /#addhkmp(115,353)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end;




function hkmpvd1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"V� �ang Ch��ng", hkvipvdc1}, 
                            {"V� �ang Ki�m", hkvipvdk1}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipvdc1() 
local tbSay1 = {
"L�ng Nh�c Th�i C�c Ki�m/#addhkmp(116,354)",
"L�ng Nh�c V� Ng� ��o b�o/#addhkmp(117,355)",
"L�ng Nh�c N� L�i Gi�i/#addhkmp(118,356)",
"L�ng Nh�c V� C�c Huy�n Ng�c B�i/#addhkmp(119,357)",
"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i/#addhkmp(120,358)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkvipvdk1() 
local tbSay1 = {
"C�p Phong Ch�n V� Ki�m/#addhkmp(121,359)",
"C�p Phong Tam Thanh Ph� /#addhkmp(122,360)",
"C�p Phong Huy�n Ti Tam �o�n c�m/#addhkmp(123,361)",
"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i/#addhkmp(124,362)",
"C�p Phong Thanh T�ng Ph�p gi�i/#addhkmp(125,363)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end;

function hkmpcl1()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"C�n L�n �ao", hkvipcld1}, 
                            {"C�n L�n Ch��ng", hkvipclc1}, 
                {"C�n L�n B�a", hkvipclb1}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcld1() 
local tbSay1 = {
"S��ng Tinh Thi�n Ni�n H�n Thi�t/#addhkmp(126,364)",
"S��ng Tinh Ng�o S��ng ��o b�o/#addhkmp(127,365)",
"S��ng Tinh Thanh Phong L� ��i/#addhkmp(128,366)",
"S��ng Tinh Thi�n Tinh B�ng Tinh th� /#addhkmp(129,367)",
"S��ng Tinh Phong B�o ch� ho�n/#addhkmp(130,368)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end;

function hkvipclc1() 
local tbSay1 = {
"L�i Khung H�n Tung B�ng B�ch quan/#addhkmp(131,369)",
"L�i Khung Thi�n ��a H� ph� /#addhkmp(132,370)",
"L�i Khung Phong L�i Thanh C�m ��i/#addhkmp(133,371)",
"L�i Khung Linh Ng�c U�n L�i/#addhkmp(134,372)",
"L�i Khung C�u Thi�n D�n L�i gi�i/#addhkmp(135,373)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 

function hkvipclb1() 
local tbSay1 = {
"V� �o B�c Minh ��o qu�n/#addhkmp(136,374)",
"V� �o Ki B�n ph� ch�/#addhkmp(137,375)",
"V� �o Th�c T�m ch� ho�n/#addhkmp(138,376)",
"V� �o Thanh �nh Huy�n Ng�c B�i/#addhkmp(139,377)",
"V� �o Tung Phong Tuy�t �nh ngoa/#addhkmp(140,378)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay1),tbSay1)
end; 



function LocHKMPNo1()
	tbOpt =
	{
		"<dec><npc>L�c trang b� t�c l� l�c l�i thu�c t�nh trang b� ng��i mu�n ta l�c cho kh�ng..",
                                                                                                                                                                     "L�c V� Kh� Trang B� HKMP/lochkmpmain",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end


function no()
end



function Make_Weapons()
	szDescription = format("+ 1 T� Th�y Tinh\n+ 1 L�c Th�y Tinh\n+ 1 Lam Th�y Tinh\n+ 100 Ti�n ��ng\n=> ��p V�i C�i L�n!!.")
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

function nhanvukhi()
--tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,11},nCount=1,nQuality = 1,nExpiredTime=1440},}, "test", 1); 
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,16},nCount=1,nQuality = 1,},}, "test", 1); 

end



--------------------------------------------------------------------------------



--------------------------------------------------TRANGKHAC---------------------------------

function lochkmpmain() 
Say("Xin m�i ch�n trang b�",7,"Nga Mi/locoknm","Th�y Y�n/locokty","���ng M�n/locokdm","Ng� ��c/locoknd","Thi�n V��ng/locoktv","Trang Sau/lochkmpmain1","K�t th�c ��i tho�i/no") 
end

function lochkmpmain1() 
Say("Xin m�i ch�n trang b�",7,"Thi�u L�m/locoktl","V� �ang/locokvd","C�n L�n/locokcl","Thi�n Nh�n/locoktn","C�i Bang/locokcb","Trang Tr��c/lochkmpmain","K�t th�c ��i tho�i/no") 
end

function locoknm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"V� Ma T�y N�g�c Kh�u", hknmc}, 
                {"V� Giang � Thi�n Ki�m", hknmk}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?", tbOpt)
        return 1 
end 

function hknmc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,39},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,39},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 2,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hknmk() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,31},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,31},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function locokty()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"T� Ho�ng Ph�ng Nghi �ao", tehoangdao}, 
                {"B�ch H�i Uy�n ��ng Ho�ng �ao", yenuongdao}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?", tbOpt)
        return 1 
end 

function tehoangdao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,46},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,46},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function yenuongdao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,51},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,51},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 



function locokdm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
        local tbOpt= 
               { 
                {"Thi�n Quang M�n V� M�n Thi�n", thienquangmanthien},
                {"S�m Ho�ng Phi Tinh �o�t H�n", samhoangdao},  
                {"B�ng H�n ��n Ch� Phi �ao", banghandao}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?", tbOpt)
        return 1 
end 

function thienquangmanthien()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,76},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,76},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function samhoangdao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,81},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,81},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function banghandao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,71},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,71},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function locoknd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"U Lung Kim X� Ph�t ��i", unlungkimxa}, 
                {"Minh �o T� S�t ��c Nh�n", minhaodoc}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?", tbOpt)
        return 1 
end 


function unlungkimxa()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,56},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,56},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function minhaodoc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,61},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,61},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function locoktv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"K� Nghi�p B�n L�i To�n Long th��ng", kenghiepthuong}, 
                {"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y", hamthienchuy}, 
                {"Ng� Long L��ng Ng�n B�o �ao", ngulongdao}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?", tbOpt)
        return 1 
end 


function kenghiepthuong()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,21},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,21},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function hamthienchuy()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,16},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,16},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function ngulongdao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,26},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,26},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function locoktl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               {
                {"T� Kh�ng Gi�ng Ma Gi�i �ao", tukhonggiangdao}, 
                {"Ph�c Ma T� Kim C�n", phucmakimcon}, 
                {"M�ng Long Kim Ti Ch�nh H�ng C� Sa", monglongcasa}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?", tbOpt)
        return 1 
end 


function tukhonggiangdao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,11},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,11},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function phucmakimcon()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,6},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,6},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function monglongcasa()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,2},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,2},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function locokvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               {
                {"L�ng Nh�c Th�i C�c Ki�m", langnhackiem}, 
                {"C�p Phong Ch�n V� Ki�m", capphongkiem}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?", tbOpt)
        return 1 
end 

function langnhackiem()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,116},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,116},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function capphongkiem()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,121},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,121},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function locokcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               {
                {"S��ng Tinh Thi�n Ni�n H�n Thi�t", suongtinhhanthiet}, 
                {"L�i Khung H�n Tung B�ng B�ch quan", loikhungbachquan}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?", tbOpt)
        return 1 
end 

function suongtinhhanthiet()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,126},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,126},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function loikhungbachquan()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,131},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,131},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function locoktn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               {
                {"Ma S�t Qu� C�c U Minh Th��ng", masatuminh},
                {"Ma Th� To�i Tinh �ao", mathidao},  
                {"Ma Th� s�n H�i Phi H�ng L�", mathihongly}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?", tbOpt)
        return 1 
end 


function masatuminh()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,101},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,101},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function mathidao()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,540},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,540},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function mathihongly()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,115},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,115},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function locokcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"��ng C�u Kh�ng Long H� Uy�n", dongcuuhouyen}, 
                {"��ch Kh�i L�c Ng�c Tr��ng", dinhkhaitruong}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?", tbOpt)
        return 1 
end 

function dongcuuhouyen()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,94},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,94},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function dinhkhaitruong()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="HK C�n L�c",tbProp={0,96},nQuality = 1,nCount = 1},
				{szName="TK T�ch L�y Bao",tbProp={6,1,4415,1},nCount=1},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
	
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,96},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


-----------------------------------------------------


function LocOptionHKOK()
	local title = "L�c Trang b� HKMP"
	g_GiveItemUI(title, "C�n 100 ti�n ��ng l�u � 100 ti�n ��ng ph�i �� ngo�i h�nh trang  ", {GiveUIOK4}, nil, nil)   --- 100 ti�n ��ng l�u � 100 ti�n ��ng ph�i �� ngo�i h�nh trang
end


--------------��nh ngh�a b�ng trang b� HKMP tbHKMP : th�m v�o nhi�u d�ng t� id th�p t�i cao

tbHKMP = {

		[1]={	
			{"M�ng Long Ch�nh H�ng T�ng M�o",1}, 
			{"M�ng Long Kim Ti Ch�nh H�ng C� Sa",2},
			{"M�ng Long Huy�n Ti Ph�t ��i",3},
			{"M�ng Long Ph�t Ph�p Huy�n B�i",4},
			{"M�ng Long ��t Ma T�ng h�i",5},
			{"Ph�c Ma T� Kim C�n",6},
			{"Ph�c Ma Huy�n Ho�ng C� Sa",7},
			{"Ph�c Ma � Kim Nhuy�n �i�u",8},
			{"Ph�c Ma Ph�t T�m Nhuy�n Kh�u",9},
			{"Ph�c Ma Ph� �� T�ng h�i",10},
{"T� Kh�ng Gi�ng Ma Gi�i �ao",11},
{"T� Kh�ng T� Kim C� Sa",12},
{"T� Kh�ng H� ph�p Y�u ��i",13},
{"T� Kh�ng Nhuy�n B� H� Uy�n",14},
{"T� Kh�ng Gi�i Lu�t Ph�p gi�i",15},
{"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",16},
{"H�m Thi�n V� Th�n T��ng Kim Gi�p",17},
{"H�m Thi�n Uy V� Th�c y�u ��i",18},
{"H�m Thi�n H� ��u Kh�n Th�c Uy�n",19},
{"H�m Thi�n Th�a Long Chi�n Ngoa",20},
{"K� Nghi�p B�n L�i To�n Long th��ng",21},
{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",22},
{"K� Nghi�p B�ch H� V� Song kh�u",23},
{"K� Nghi�p H�aV�n K� L�n Th� ",24},
{"K� Nghi�p Chu T��c L�ng V�n Ngoa",25},
{"Ng� Long L��ng Ng�n B�o �ao",26},
{"Ng� Long Chi�n Th�n Phi Qu�i gi�p",27},
{"Ng� Long Thi�n M�n Th�c Y�u ho�n",28},
{"Ng� Long T�n Phong H� y�n",29},
{"Ng� Long Tuy�t M�nh Ch� ho�n",30},
{"V� Gian � Thi�n Ki�m",31},
{"V� Gian Thanh Phong Truy Y",32},
{"V� Gian Ph�t V�n Ti ��i",33},
{"V� Gian C�m V�n H� Uy�n",34},
{"V� Gian B�ch Ng�c B�n Ch� ",35},
{"V� Ma Ma Ni qu�n",36},
{"V� Ma T� Kh�m C� Sa",37},
{"V� Ma B�ng Tinh Ch� Ho�n",38},
{"V� Ma T�y T��ng Ng�c Kh�u ",39},
{"V� Ma H�ng Truy Nhuy�n Th�p h�i",40},
{"V� Tr�n Ng�c N� T� T�m qu�n",41},
{"V� Tr�n Thanh T�m H��ng Thi�n Ch�u",42},
{"V� Tr�n T� Bi Ng�c Ban Ch� ",43},
{"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",44},
{"V� Tr�n Ph�t Quang Ch� Ho�n",45},
{"T� Ho�ng Ph�ng Nghi �ao",46},
{"T� Ho�ng Tu� T�m Khinh Sa Y",47},
{"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",48},
{"T� Ho�ng B�ng Tung C�m uy�n",49},
{"T� Ho�ng Th�y Ng�c Ch� Ho�n",50},
{"B�ch H�i Uy�n ��ng Li�n Ho�n �ao",51},
{"B�ch H�i Ho�n Ch�u V� Li�n",52},
{"B�ch H�i H�ng Linh Kim Ti ��i",53},
{"B�ch H�i H�ng L�ng Ba",54},
{"B�ch H�i Khi�n T� Ch� ho�n",55},
{"U Lung Kim X� Ph�t ��i",56},
{"U Lung X�ch Y�t M�t trang",57},
{"U Lung Thanh Ng� Tri�n y�u",58},
{"U Lung Ng�n Th�m H� Uy�n",59},
{"U Lung M�c Th� Nhuy�n L� ",60},
{"Minh �o T� S�t ��c Nh�n",61},
{"Minh �o U ��c �m Y",62},
{"Minh �o ��c Y�t Ch� Ho�n",63},
{"Minh �o H� C�t H� uy�n",64},
{"Minh �o Song Ho�n X� H�i",65},
{"Ch� Ph��c Ph� gi�p ��u ho�n",66},
{"Ch� Ph��c Di�t L�i C�nh Ph� ",67},
{"Ch� Ph��c U �o Ch� Ho�n",68},
{"Ch� Ph��c Xuy�n T�m ��c Uy�n",69},
{"Ch� Ph��c B�ng H�a Th�c C�t Ngoa",70},
{"B�ng H�n ��n Ch� Phi �ao",71},
{"B�ng H�n Huy�n Y Th�c Gi�p",72},
{"B�ng H�n T�m Ti�n Y�u Kh�u",73},
{"B�ng H�n Huy�n Thi�n B�ng H�a B�i",74},
{"B�ng H�n Nguy�t �nh Ngoa",75},
{"Thi�n Quang Hoa V� M�n Thi�n",76},
{"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ",77},
{"Thi�n Quang S�m La Th�c ��i",78},
{"Thi�n Quang Song B�o H�n Thi�t Tr�c",79},
{"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",80},
{"S�m Hoang Phi Tinh �o�t H�n",81},
{"S�m Hoang KimTi�n Li�n Ho�n Gi�p",82},
{"S�m Hoang H�n Gi�o Y�u Th�c",83},
{"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",84},
{"S�m Hoang Tinh V�n Phi L� ",85},
{"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",86},
{"��a Ph�ch H�c Di�m Xung Thi�n Li�n",87},
{"��a Ph�ch T�ch L�ch L�i H�a Gi�i",88},
{"��a Ph�ch Kh�u T�m tr�c",89},
{"��a Ph�ch ��a H�nh Thi�n L� Ngoa",90},
{"��ng C�u Phi Long ��u ho�n",91},
{"��ng C�u Gi�ng Long C�i Y",92},
{"��ng C�u Ti�m Long Y�u ��i",93},
{"��ng C�u Kh�ng Long H� Uy�n",94},
{"��ng C�u Ki�n Long Ban Ch� ",95},
{"��ch Kh�i L�c Ng�c Tr��ng",96},
{"��ch Kh�i C�u ��i C�i Y",97},
{"��ch Kh�i Tri�n M�ng y�u ��i",98},
{"��ch Kh�i C�u T�ch B� H� uy�n",99},
{"��ch Kh�i Th�o Gian Th�ch gi�i",100},
{"Ma S�t Qu� C�c U Minh Th��ng",101},
{"Ma S�t T�n D��ng �nh Huy�t Gi�p",102},
{"Ma S�t X�ch K� T�a Y�u Kh�u",103},
{"Ma S�t C� H�a Li�u Thi�n uy�n",104},
{"Ma S�t V�n Long Th� Ch�u gi�i",105},
{"Ma Ho�ng Kim Gi�p Kh�i",106},
{"Ma Ho�ng �n Xu�t H� H�ng Khuy�n",107},
{"Ma Ho�ng Kh� C�c Th�c y�u ��i",108},
{"Ma Ho�ng Huy�t Y Th� Tr�c",109},
{"Ma Ho�ng ��ng ��p Ngoa",110},
{"Ma Th� Li�t Di�m Qu�n Mi�n",111},
{"Ma Th� L� Ma Ph� T�m Li�n",112},
{"Ma Th� Nghi�p H�a U Minh Gi�i",113},
{"Ma Th� Huy�t Ng�c Th�t S�t B�i",114},
{"Ma Th� s�n  H�i Phi H�ng L� ",115},
{"L�ng Nh�c Th�i C�c Ki�m",116},
{"L�ng Nh�c V� Ng� ��o b�o",117},
{"L�ng Nh�c N� L�i Gi�i",118},
{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",119},
{"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",120},
{"C�p Phong Ch�n V� Ki�m",121},
{"C�p Phong Tam Thanh Ph� ",122},
{"C�p Phong Huy�n Ti Tam �o�n c�m",123},
{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",124},
{"C�p Phong Thanh T�ng Ph�p gi�i",125},
{"S��ng Tinh Thi�n Ni�n H�n Thi�t",126},
{"S��ng Tinh Ng�o S��ng ��o b�o",127},
{"S��ng Tinh Thanh Phong L� ��i",128},
{"S��ng Tinh Thi�n Tinh B�ng Tinh th� ",129},
{"S��ng Tinh Phong B�o ch� ho�n",130},
{"L�i Khung H�n Tung B�ng B�ch quan",131},
{"L�i Khung Thi�n ��a H� ph� ",132},
{"L�i Khung Phong L�i Thanh C�m ��i",133},
{"L�i Khung Linh Ng�c U�n L�i",134},
{"L�i Khung C�u Thi�n D�n L�i gi�i",135},
{"V� �o B�c Minh ��o qu�n",136},
{"V� �o Ki B�n ph� ch� ",137},
{"V� �o Th�c T�m ch� ho�n",138},
{"V� �o Thanh �nh Huy�n Ng�c B�i",139},
{"V� �o Tung Phong Tuy�t �nh ngoa",140},


},
}

function GiveUIOK4(putCount) --ep phi phong 9
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o trang b� HKMP")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end	
	local ts1 = ITEM_GetExpiredTime(itemIndex) -- timestamp: thoi gian tin = s tu 1/1/1970
	local ts2 = GetLocalTime()
	local t = ts1 - ts2
	  local ntime = t/60 
	--print(ts1,ntime)
	if (t >0) then
		
		
		local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local hkmpTable = tbHKMP[1]
		local minId = hkmpTable[1][2]
		local maxId = hkmpTable[3][2]   --- d�y cu�i c�ng c�a bant tbHKMP ��nh ngh�a � tr�n
				
		if (goldEquipIndex < 1) or (goldEquipIndex > 140) then 
			Talk(1,"", "Xin vui l�ng ��t v�o 1 trang b� HKMP")
			return
		end
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then
		Talk(1, "no", "C�n c� 100 <color=red>Ti�n ��ng<color> m�i c� th� l�c.")
		return
		end
	
	
		if (RemoveItemByIndex(itemIndex) == 1) then
                                                                                   tenhk = tbHKMP[1][goldEquipIndex][1] 
			local requireIngradent = CalcEquiproomItemCount(4, 417, 1, -1)
			local ndxit = AddGoldItem(0, goldEquipIndex )
			local rate = CalcEquiproomItemCount(4, 417, 1, -1); 
			if (rate >= 100) then
			ConsumeEquiproomItem(100, 4, 417, 1, -1)
				ITEM_SetExpiredTime(ndxit,ntime)
				SyncItem(ndxit);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> l�c l�i option trang b� <color=gold>"..tenhk.."<color> T�i NPC.")
				else
		Talk(1, "", "C�n c� 100 <color=red>Ti�n ��ng<color> m�i c� th� l�c trang b� xin h�y ki�m tra l�i.")
		return
		end
	else
		Talk(1,"", "Trang b� kh�ng c� trong danh s�ch ho�c �� h�t h�n s� d�ng ho�c nguy�n li�u kh�ng ��ng")
		return
	end
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

----------------------------------
function no()
end

function MenuDoiNgoaiHinh0()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"��i sang �ao/dao",
		"��i sang ki�m/kiem",
		"��i sang ch�y/chuy",
		"��i sang b�ng/bong",
		"��i sang th��ng/thuong",
		"��i sang song �ao/song",
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
Msg2SubWorld("<color=pink>b�n �� ch�n ��i v� kh� th�nh �ao th�nh c�ng.")
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh �ao.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function kiem()
SetTask(5858,1)
SetTask(5859,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Msg2SubWorld("<color=pink>b�n �� ch�n ��i v� kh� th�nh ki�m th�nh c�ng.")
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh ki�m.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function chuy()
SetTask(5857,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Msg2SubWorld("<color=pink>b�n �� ch�n ��i v� kh� th�nh ch�y th�nh c�ng.")
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh ch�y.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function bong()
SetTask(5856,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5855,0)
SetTask(5854,0)
Msg2SubWorld("<color=pink>b�n �� ch�n ��i v� kh� th�nh bong th�nh c�ng.")
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh b�ng.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function song()
SetTask(5855,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5854,0)
Msg2SubWorld("<color=pink>b�n �� ch�n ��i v� kh� th�nh song �ao th�nh c�ng.")
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh song �ao.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function thuong()
SetTask(5854,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
Msg2SubWorld("<color=pink>b�n �� ch�n ��i v� kh� th�nh th��ng th�nh c�ng.")
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh song �ao.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
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
	if(nSilverCount < 200) then
		Talk(1, "no", "C�n c� 200 <color=red>Ti�n ��ng<color> m�i c� th� n�ng c�p t� l� n�p th� 200k ���c 200xu.")
		return
	end
	--if nItemTime ~= 0 then
	--	Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
	--	return
--	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng��i ch�a ��t v� kh� c�n n�ng c�p v�o � tr�ng")
		return
	end
if GetTask(5859) < 1 and GetTask(5858) < 1 and GetTask(5857) < 1 and GetTask(5856) < 1 and GetTask(5855) < 1 and GetTask(5854) < 1 then
Say("��i hi�p ch�a ch�n v� kh� n�o c�.",2,"Cho ta ch�n l�i/MenuDoiNgoaiHinh0","Kh�ng c�n ��u! C�m �n!/cancel")
		return
	end   	
if GetTask(5859) == 1 then --dao
		SetItemNewFeature(nItemIndex, random(53,56)) --53 54 55 56
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh �ao")
end
if GetTask(5858) == 1 then --kiem
		SetItemNewFeature(nItemIndex, random(57,59))  --  57 58 59
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Ki�m")
end
if GetTask(5857) == 1 then --chuy
		SetItemNewFeature(nItemIndex, 60)  -- 
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Ch�y")
end
if GetTask(5856) == 1 then --bong
		SetItemNewFeature(nItemIndex, 41)  -- 40 41
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh B�ng")
end
if GetTask(5855) == 1 then --song
		SetItemNewFeature(nItemIndex, 61) --
		ConsumeEquiproomItem(200,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Song �ao")
end
if GetTask(5854) == 1 then --thuong
		SetItemNewFeature(nItemIndex, random(50,51)) -- 50 51
		ConsumeEquiproomItem(200,4,417,1,1)
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

