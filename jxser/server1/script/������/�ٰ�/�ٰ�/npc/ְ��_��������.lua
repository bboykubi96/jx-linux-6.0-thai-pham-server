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
		return "N˜ Hi÷p"
	else
		return "ßπi Hi÷p"
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
	tbDailog.szTitleMsg = "<dec><npc>Ta mai danh »n t›ch b y l©u nay, h´m nay lπi bﬁ ng≠¨i t◊m Æ≠Óc, n„i vÀy ng≠¨i lµ v◊ <color=yellow> Hoµng Kim<color> trang bﬁ mµ Æ’n Æ©y µ"
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")

	local aryDescribe_1 = {
--		"Ta muËn dÔng trang bﬁ ÆÊi l y HÂn Thπch/exchange_olditem",
--		"Ta muËn dÔng HÂn Thπch ÆÊi l y l÷nh bµi trang bﬁ /exchange_lingpai",
--		"Ta muËn dÔng l÷nh bµi ÆÊi l y trang bﬁ /exchange_lingpai2goldequip",
	}

	local aryDescribe_0 = {
		--"Ch’ tπo An bang Hoµn M¸/main_talk",		
		--"Ph©n R∑ Trang Bﬁ Hoµng Kim/split_entry",
		--Óp Thµnh Trang Bﬁ Hoµng Kim/compose_entry",
		--"ßÊi m∂nh Gh–p Hoµng Kim/exchange_entry",
		--"N©ng c p Trang bﬁ  n/DoiNgayChoi",
		--"Mua Ng‰c TrÔng Luy÷n 50 cÙc/MuaMatNa",
	}
             -- tbDailog:AddOptEntry("Thay ßÁi Ngoπi H◊nh",DoiNgoaiTrang)
		tbDailog:AddOptEntry("N©ng C p Trang S¯c", NangCapTrangSuc.CheTaoTrangSuc, {NangCapTrangSuc})
		tbDailog:AddOptEntry("N©ng C p Th«n M∑", NangCapThanMa.CheTaoThanMa, {NangCapThanMa})
		tbDailog:AddOptEntry("N©ng C p NgÚ Hµnh  n", NangCapNguHanhAn.CheTaoNguHanhAn, {NangCapNguHanhAn})
		tbDailog:AddOptEntry("N©ng C p M∆t Nπ", NangCapMatNa.CheTaoMatNa, {NangCapMatNa})
              --tbDailog:AddOptEntry("Ch’ Tπo Trang Bﬁ Hi’m C„", DialogMain_DoHoangKim)
		tbDailog:AddOptEntry("Tinh Ch’ Cµn Kh´n", tbVnRingUpgrade.MainDialog, {tbVnRingUpgrade})
		tbDailog:AddOptEntry("TrÔng Luy÷n Trang Bﬁ", TrungLuyen)
		tbDailog:AddOptEntry("ßÊi Trang Bﬁ", DoiTrangBi)
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
			Talk(1,"","Ng≠¨i Kh´ng ßÒ 500 Xu Xin Ki”m Tra Lπi")
		end
	else
		Talk(1,"","Hµnh Trang Kh´ng ßÒ 20 § TrËng")
	end
end
----------------------------------------------------------ßÊi Thi’t Huy’t ß¨n--------------------------------------------------------------------------
function exchange_tiexuedan()
	if (CalcFreeItemCellCount() < 2) then
		Say("ß” Æ∂m b∂o an toµn cho vÀt ph»m, h∑y Æ” chıa ra 2 ´ trËng trÎ l™n", 0);
		return
	end
	GiveItemUI("ßÊi thi’t huy’t Æ¨n", "Xin h∑y b· 1 trang bﬁ hoµng kim m´n ph∏i b t k◊ vµo b™n d≠Ìi", "do_exchange_tiexuedan", "onCancel")
end

function do_exchange_tiexuedan(nCount)
	if nCount ~= 1 then
		CreateTaskSay({"SË l≠Óng vÀt ph»m b· vµo kh´ng ÆÛng y™u c«u", "Thµnh thÀt xin lÁi, ta sœ sæp x’p lπi/exchange_tiexuedan", "ThÀt ngπi qÛa ta sœ quay lπi sau./onCancel"});
		return
	end

	local nItemIndex	= GetGiveItemUnit(1)
	local nQuality		= GetItemQuality(nItemIndex);	--∆∑÷ 
	
	if (nQuality ~= 1 or GetGlodEqIndex(nItemIndex) > 140) then
		CreateTaskSay({"H∑y Æ≠a cho ta 1 trang bﬁ hoµng kim m´n ph∏i", "Thµnh thÀt xin lÁi, ta sœ sæp x’p lπi/exchange_tiexuedan", "ThÀt ngπi qÛa ta sœ quay lπi sau./onCancel"});
		return
	end
	
	if (RemoveItemByIndex(nItemIndex) ~= 1) then
		WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"ßÊi thi’t huy’t Æ¨n Error",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			"X„a trang bﬁ hoµng kim m´n ph∏i th t bπi:\t"..GetItemName(nCurItemIdx)));
	end
	
	
	for i = 1, 20 do

		AddItem(6, 1, 2163, 1, 1, 0);
	end
	Msg2Player("ChÛc mıng Æπi hi÷p Æ∑ nhÀn Æ≠Óc 20 Thi’t Huy’t ß¨n!");
	WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"ßÊi thi’t huy’t Æ¨n Success",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			format("ßÊi %s thu Æ≠Óc thi’t huy’t Æ¨n", GetItemName(nItemIndex))));
end
--------------------------------------------------------------------------END------------------------------------------------------------
function DoiNgayChoi()
	local tbOpt = {
              
	       {"N©ng  n C≠Íng C p 10",DoiNgayChoivip},
               {"N©ng  n Nh≠Óc C p 10",DoiNgayChoithu},
               {"ßÁi  n C≠Íng L y Nh≠Óc",DoiNgayChoitot},
               {"ßÁi  n Nh≠Óc L y C≠Íng",DoiNgayChoian},
               {"Ta Chÿ Gh– Th®m Th´i"},
	}
	CreateNewSayEx("Ng≠¨i H∑y Loπi H◊nh MuËn ßÊi", tbOpt)
end
function DoiNgayChoivip()
	local tbFormula = 
	{
		szName = " n ",
		tbMaterial = {
				{szName=" n C≠Íng C p 9",tbProp={0,4888}, nQuality = 1,nCount=1},
				{szName="Ng‰c Linh hÂn",tbProp={6,1,5186,1,0,0},nCount=5000},
                                {szName="XU",tbProp={4,417,1,1,0,0},nCount=10000},

		},
		--tbProduct = {szName="B√ù Ki√ïp 180",tbProp = {6,1,4554,1,0,0}, nCount = 1},	------ra vat pham
		tbProduct = {szName = " n", tbProp = {0,4889}, nQuality = 1, nCount = 1},	---ra trang bi		
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
		szName = " n ",
		tbMaterial = {
				{szName=" n Nh≠Óc C p 9",tbProp={0,4898}, nQuality = 1,nCount=1},
				{szName="Ng‰c Linh hÂn",tbProp={6,1,5186,1,0,0},nCount=5000},
                                {szName="XU",tbProp={4,417,1,1,0,0},nCount=10000},

		},
		--tbProduct = {szName="B√ù Ki√ïp 180",tbProp = {6,1,4554,1,0,0}, nCount = 1},	------ra vat pham
		tbProduct = {szName = " n", tbProp = {0,4899}, nQuality = 1, nCount = 1},	---ra trang bi		
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
		szName = " n",
		tbMaterial = {
				{szName=" n Nh≠Óc C p 10",tbProp={0,4889}, nQuality = 1,nCount=1},
				{szName="XU",tbProp={4,417,1,1,0,0},nCount=10000},
                               {szName="Ng‰c Linh hÂn",tbProp={6,1,5186,1,0,0},nCount=5000},

		},
		--tbProduct = {szName="B√ù Ki√ïp 180",tbProp = {6,1,4554,1,0,0}, nCount = 1},	------ra vat pham
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
		szName = " n",
		tbMaterial = {
				{szName=" n C≠Íng C p 10",tbProp={0,4899}, nQuality = 1,nCount=1},
				{szName="XU",tbProp={4,417,1,1,0,0},nCount=10000},
                               {szName="Ng‰c Linh hÂn",tbProp={6,1,5186,1,0,0},nCount=5000},

		},
		--tbProduct = {szName="B√ù Ki√ïp 180",tbProp = {6,1,4554,1,0,0}, nCount = 1},	------ra vat pham
		tbProduct = {szName = "Bao Tay", tbProp = {0,4889}, nQuality = 1, nCount = 1},	---ra trang bi		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	local p = tbActivityCompose:new(tbFormula, "DoiVatPham", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end




