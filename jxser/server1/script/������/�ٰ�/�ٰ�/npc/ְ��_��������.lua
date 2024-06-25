Include( "\\script\\task\\system\\task_string.lua" );
Include("\\script\\global\\recoin_goldenequip.lua")
Include("\\script\\task\\equipex\\head.lua");
Include("\\script\\global\\platina_upgrade.lua")
Include("\\script\\misc\\itemexchangevalue\\itemexchangevalue.lua") 
Include("\\script\\misc\\itemexchangevalue\\ex_goldequip_lingpai.lua")	
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaonhan\\main.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\trungluyentrangbi\\trungluyen.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equipment\\equipment.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\nangcapnguhanhan\\equip_nguhanhan.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\nangcaptrangsuc\\equip_trangsuc.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\nangcapthanma\\equip_thanma.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\nangcapmatna\\equip_matna.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\update_feature\\chetaohoangkim\\chetaohoangkim.lua")
-------------------------------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then
		return "N� Hi�p"
	else
		return "��i Hi�p"
	end
end
------------------------------------------------------
function main()
	if (CheckGlobalTradeFlag() == 0) then		
		return
	end
	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	tbDailog.szTitleMsg = "<dec><npc>Ta mai danh �n t�ch b�y l�u nay, h�m nay l�i b� ng��i t�m ���c, n�i v�y ng��i l� v� <color=yellow> Ho�ng Kim<color> trang b� m� ��n ��y �"
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")

	local aryDescribe_1 = {
--		"Ta mu�n d�ng trang b� ��i l�y H�n Th�ch/exchange_olditem",
--		"Ta mu�n d�ng H�n Th�ch ��i l�y l�nh b�i trang b� /exchange_lingpai",
--		"Ta mu�n d�ng l�nh b�i ��i l�y trang b� /exchange_lingpai2goldequip",
	}

	local aryDescribe_0 = {
		--"Ch� t�o An bang Ho�n M�/main_talk",		
		--"Ph�n R� Trang B� Ho�ng Kim/split_entry",
		--�p Th�nh Trang B� Ho�ng Kim/compose_entry",
		--"��i m�nh Gh�p Ho�ng Kim/exchange_entry",
		--"N�ng c�p Trang b� �n/DoiNgayChoi",
		--"Mua Ng�c Tr�ng Luy�n 50 c�c/MuaMatNa",
	}
             -- tbDailog:AddOptEntry("Thay ��i Ngo�i H�nh",DoiNgoaiTrang)
		tbDailog:AddOptEntry("N�ng C�p Trang S�c", NangCapTrangSuc.CheTaoTrangSuc, {NangCapTrangSuc})
		tbDailog:AddOptEntry("N�ng C�p Th�n M�", NangCapThanMa.CheTaoThanMa, {NangCapThanMa})
		tbDailog:AddOptEntry("N�ng C�p Ng� H�nh �n", NangCapNguHanhAn.CheTaoNguHanhAn, {NangCapNguHanhAn})
		tbDailog:AddOptEntry("N�ng C�p M�t N�", NangCapMatNa.CheTaoMatNa, {NangCapMatNa})
              --tbDailog:AddOptEntry("Ch� T�o Trang B� Hi�m C�", DialogMain_DoHoangKim)
		tbDailog:AddOptEntry("Tinh Ch� C�n Kh�n", tbVnRingUpgrade.MainDialog, {tbVnRingUpgrade})
		tbDailog:AddOptEntry("Tr�ng Luy�n Trang B�", TrungLuyen)
		tbDailog:AddOptEntry("��i Trang B�", DoiTrangBi)
		for i = 1, getn(aryDescribe_0) do
			local _,_, szOpt, szFun = strfind(aryDescribe_0[i], "([^/]+)/([^/]+)")
			local fn = getglobal(szFun)
			if fn then
				tbDailog:AddOptEntry(szOpt, fn);	
			end
		end
	tbDailog:Show()
end
function DoiNgoaiTrang()
tbFeatureNpc:Dialog()
end

function MuaMatNa()
local nKNB = CalcEquiproomItemCount(4,417,1,1)
local nFree = CalcFreeItemCellCount()
	if (nFree >= 20) then
		if (nKNB >= 500) then
			ConsumeEquiproomItem(500,4,417,1,-1) 
                     tbAwardTemplet:GiveAwardByList({tbProp={6,1,5414,1,0,0},nCount=50}," ruong chau bao")
		else
			Talk(1,"","Ng��i Kh�ng �� 500 Xu Xin Ki�m Tra L�i")
		end
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng")
	end
end
----------------------------------------------------------��i Thi�t Huy�t ��n--------------------------------------------------------------------------
function exchange_tiexuedan()
	if (CalcFreeItemCellCount() < 2) then
		Say("�� ��m b�o an to�n cho v�t ph�m, h�y �� ch�a ra 2 � tr�ng tr� l�n", 0);
		return
	end
	GiveItemUI("��i thi�t huy�t ��n", "Xin h�y b� 1 trang b� ho�ng kim m�n ph�i b�t k� v�o b�n d��i", "do_exchange_tiexuedan", "onCancel")
end

function do_exchange_tiexuedan(nCount)
	if nCount ~= 1 then
		CreateTaskSay({"S� l��ng v�t ph�m b� v�o kh�ng ��ng y�u c�u", "Th�nh th�t xin l�i, ta s� s�p x�p l�i/exchange_tiexuedan", "Th�t ng�i q�a ta s� quay l�i sau./onCancel"});
		return
	end

	local nItemIndex	= GetGiveItemUnit(1)
	local nQuality		= GetItemQuality(nItemIndex);	--Ʒ��
	
	if (nQuality ~= 1 or GetGlodEqIndex(nItemIndex) > 140) then
		CreateTaskSay({"H�y ��a cho ta 1 trang b� ho�ng kim m�n ph�i", "Th�nh th�t xin l�i, ta s� s�p x�p l�i/exchange_tiexuedan", "Th�t ng�i q�a ta s� quay l�i sau./onCancel"});
		return
	end
	
	if (RemoveItemByIndex(nItemIndex) ~= 1) then
		WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"��i thi�t huy�t ��n Error",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			"X�a trang b� ho�ng kim m�n ph�i th�t b�i:\t"..GetItemName(nCurItemIdx)));
	end
	
	
	for i = 1, 20 do

		AddItem(6, 1, 2163, 1, 1, 0);
	end
	Msg2Player("Ch�c m�ng ��i hi�p �� nh�n ���c 20 Thi�t Huy�t ��n!");
	WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"��i thi�t huy�t ��n Success",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			format("��i %s thu ���c thi�t huy�t ��n", GetItemName(nItemIndex))));
end
--------------------------------------------------------------------------END------------------------------------------------------------
function DoiNgayChoi()
	local tbOpt = {
              
	       {"N�ng �n C��ng C�p 10",DoiNgayChoivip},
               {"N�ng �n Nh��c C�p 10",DoiNgayChoithu},
               {"��i �n C��ng L�y Nh��c",DoiNgayChoitot},
               {"��i �n Nh��c L�y C��ng",DoiNgayChoian},
               {"Ta Ch� Gh� Th�m Th�i"},
	}
	CreateNewSayEx("Ng��i H�y Lo�i H�nh Mu�n ��i", tbOpt)
end
function DoiNgayChoivip()
	local tbFormula = 
	{
		szName = "�n ",
		tbMaterial = {
				{szName="�n C��ng C�p 9",tbProp={0,4888}, nQuality = 1,nCount=1},
				{szName="Ng�c Linh h�n",tbProp={6,1,5186,1,0,0},nCount=5000},
                                {szName="XU",tbProp={4,417,1,1,0,0},nCount=10000},

		},
		--tbProduct = {szName="BÝ KiÕp 180",tbProp = {6,1,4554,1,0,0}, nCount = 1},	------ra vat pham
		tbProduct = {szName = "�n", tbProp = {0,4889}, nQuality = 1, nCount = 1},	---ra trang bi		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	local p = tbActivityCompose:new(tbFormula, "DoiVatPham", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
-------------
function DoiNgayChoithu()
local tbFormula = 
	{
		szName = "�n ",
		tbMaterial = {
				{szName="�n Nh��c C�p 9",tbProp={0,4898}, nQuality = 1,nCount=1},
				{szName="Ng�c Linh h�n",tbProp={6,1,5186,1,0,0},nCount=5000},
                                {szName="XU",tbProp={4,417,1,1,0,0},nCount=10000},

		},
		--tbProduct = {szName="BÝ KiÕp 180",tbProp = {6,1,4554,1,0,0}, nCount = 1},	------ra vat pham
		tbProduct = {szName = "�n", tbProp = {0,4899}, nQuality = 1, nCount = 1},	---ra trang bi		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	local p = tbActivityCompose:new(tbFormula, "DoiVatPham", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
-------------
function DoiNgayChoitot()
local tbFormula = 
	{
		szName = "�n",
		tbMaterial = {
				{szName="�n Nh��c C�p 10",tbProp={0,4889}, nQuality = 1,nCount=1},
				{szName="XU",tbProp={4,417,1,1,0,0},nCount=10000},
                               {szName="Ng�c Linh h�n",tbProp={6,1,5186,1,0,0},nCount=5000},

		},
		--tbProduct = {szName="BÝ KiÕp 180",tbProp = {6,1,4554,1,0,0}, nCount = 1},	------ra vat pham
		tbProduct = {szName = "Bao Tay", tbProp = {0,4899}, nQuality = 1, nCount = 1},	---ra trang bi		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	local p = tbActivityCompose:new(tbFormula, "DoiVatPham", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
------------------------------------
function DoiNgayChoian()
local tbFormula = 
	{
		szName = "�n",
		tbMaterial = {
				{szName="�n C��ng C�p 10",tbProp={0,4899}, nQuality = 1,nCount=1},
				{szName="XU",tbProp={4,417,1,1,0,0},nCount=10000},
                               {szName="Ng�c Linh h�n",tbProp={6,1,5186,1,0,0},nCount=5000},

		},
		--tbProduct = {szName="BÝ KiÕp 180",tbProp = {6,1,4554,1,0,0}, nCount = 1},	------ra vat pham
		tbProduct = {szName = "Bao Tay", tbProp = {0,4889}, nQuality = 1, nCount = 1},	---ra trang bi		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	local p = tbActivityCompose:new(tbFormula, "DoiVatPham", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end




