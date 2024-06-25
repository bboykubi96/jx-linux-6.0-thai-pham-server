Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
-- script viet hoa By http://tranhba.com ##�####��#�#�� - modified by DinhHQ - 20110921
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")

function OnExit()

end;

function main()
	-- dofile()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new("H�ng rong");
	-- G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	
	
	tbDailog.szTitleMsg = "<#><npc>Ch� ta c�i g� c�ng c� h�t. Ng��i c�n c�i g�?"
	
	-- script viet hoa By http://tranhba.com Change request 04/06/2011, ##�װ##�#��#- Modified by DinhHQ - 20110605
-- script viet hoa By http://tranhba.com 	local w,x,y = GetWorldPos()
-- script viet hoa By http://tranhba.com 	if w == 176 then
-- script viet hoa By http://tranhba.com 		tbDailog:AddOptEntry("���ף�#�##.", Sale, {171}); 
-- script viet hoa By http://tranhba.com 	end
	-- script viet hoa By http://tranhba.com ##�####��#�#��- modified by DinhHQ - 20110921
	-- tbVng_Exchange_HHL:AddDialog(tbDailog)
	-- tbDailog:AddOptEntry("��##�פ��#���", WantBuyHuiTian)
	-- tbDailog:AddOptEntry("��##�#�#", WantBuyJinpai)
	-- tbDailog:AddOptEntry("��#�#�#", WantBuyJinWuJinpai)
	-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("##�#�#��", WantBuyBaoshi)
	
	-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
-- script viet hoa By http://tranhba.com 	tbDailog:AddOptEntry("̷#߿���(#�#���#�)", OpenSecondStore); 
-- script viet hoa By http://tranhba.com 	if tbTriumphDrum:CheckCondition_BuyDrum() == 1 then
-- script viet hoa By http://tranhba.com 		tbDailog:AddOptEntry("�߿####�",  tbTriumphDrum.NpcTalk,{tbTriumphDrum});  	
-- script viet hoa By http://tranhba.com 	end

	-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
	-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("�#�#", OnExit, {}); 	
--	tbDailog:AddOptEntry("Mua k� tr�n d� b�o", OpenKTC);
	-- tbDailog:AddOptEntry("Mua t�ng b�o �� gi� 2 xu", MuaTangBaoDo);
	-- tbDailog:AddOptEntry("Mua m�nh thi�n th�ch s� 1", MuaTangBaoDo);
	-- tbDailog:AddOptEntry("H�p th�nh l�nh b�i boss TBD(cao c�p)", PreConsume);
	tbDailog:Show()
end;

-----------------
local tbGoods = {
-- {szName = "M�nh thi�n th�ch s� 1",tbProp = {4,1318,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M�nh thi�n th�ch s� 2",tbProp = {4,1319,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M�nh thi�n th�ch s� 3",tbProp = {4,1320,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M�nh thi�n th�ch s� 4",tbProp = {4,1321,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M�nh thi�n th�ch s� 5",tbProp = {4,1322,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M�nh thi�n th�ch s� 6",tbProp = {4,1323,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M�nh thi�n th�ch s� 7",tbProp = {4,1324,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M�nh thi�n th�ch s� 8",tbProp = {4,1325,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M�nh thi�n th�ch s� 9",tbProp = {4,1326,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "D� Dung Thu�t",tbProp = {6,1,4404,1,0,0},nCount=1, nCoin = 200}, --open
-- {szName = "Th�nh ch� l� bao",tbProp = {6,1,1339,1,0,0},nCount=1, nCoin = 25},
-- {szName = "M�c b�i g�i boss",tbProp = {6,1,1478,1,0,0},nCount=1, nCoin = 2, nCash=100},
-- {szName = "Ph� dung nguy�n th�ch",tbProp = {6,1,152},nCount=1, nCoin = 2},
{szName = "Th� ��i t�n",tbProp = {6,1,1534,1,0,0},nCount=1, nCoin = 200}, --open
{szName = "Lam th�y tinh - s� ��ng khi c� s� ki�n" ,tbProp= {4,238,1,1,0,0},nCount=1, nCoin=50},
{szName = "T� th�y tinh - s� ��ng khi c� s� ki�n",tbProp = {4,239,1,1,0,0},nCount=1, nCoin=50},
{szName = "L�c th�y tinh - s� ��ng khi c� s� ki�n",tbProp = {4,240,1,1,0,0},nCount=1, nCoin=50},
{szName = "Tinh H�ng B�o Th�ch - s� ��ng khi c� s� ki�n",tbProp = {4,353,1,1,0,0},nCount=1, nCoin=40},
-- {szName = "Ng��i tuy�t",tbProp = {6,1,1319,1,0,0},nCount=1, nPrice = 3},
-- {szName = "Th�n h�nh ph� 30 ng�y",tbProp = {6,1,1266,1,0,0}, nCash=10,nExpiredTime=24*60*30},
-- {szName = "Thi�n c� l�nh",tbProp = {6,1,1091,1,0,0},nCount=1, nCoin=5}, --open
-- {szName = "Th�n b� kho�ng th�ch",tbProp = {6,1,398,1,0,0},nCount=1, nCoin=500},
-- {szName = "Kim t�",tbProp = {4,979,1,1,0,0},nCount=1, nCoin=1000},
-- {szName = "L�nh b�i phong l�ng ��",tbProp = {4,489,1,1,0,0},nCount=1, nCash=75,nCoin=5}, --open
-- {szName = "S�t th� gi�n 90",tbProp = {6,1,2339,1,0,0}, nCash=75,nCoin=5}, --open
-- {szName = "Gi�y th�ng h�nh b�n �� ��c bi�t",tbProp = {6,1,4390,1,0,0}, nCoin=1},
-- {szName = "Tr�ng Kh�i Ho�n",tbProp = {6,1,2309,1,0,0},nCoin = 5, nCash=125},
-- {szName = "Thi�n S�n Tuy�t Li�n",tbProp = {6,1,1431,1,0,0},nCount=1, nCoin = 100,},
}
------------------
function MuaTangBaoDo()
	Say("Ng��i ch�c ch�n mua <color=green> T�ng b�o �� <color> gi� <color=yellow>2 ti�n ��ng?",2,
			"Ch�c ch�n/MuaTangBaoDo1",
			"Ta suy ngh� l�i ��/no")
end
function MuaTangBaoDo1()
	local nTotal=2
	if CalcFreeItemCellCount() < 2 then
			Say("H�nh trang kh�ng �� ch� tr�ng. Vui l�ng ki�m tra l�i.",0);
			return
	end
	if  CalcEquiproomItemCount(4, 417, 1, -1) < nTotal then
		Say("Ng��i ki�m tra l�i h�nh trang xem c� �� ti�n ��ng kh�ng?",0)
		return
		end
	if ConsumeEquiproomItem(nTotal, 4, 417, 1, -1) ~=1 then
		Say("C� l�i trong qu� tr�nh tr� ti�n ��ng vui l�ng b�o l�i v�i GM")
		WriteLog("B� l�i trong qu� tr�nh tr� ti�n ��ng ��nh b�c")
		return
	end
	local nRandom = random (2,171)
	local ITEM_DATAU= {
			[1]={tbProp={6,2,3,1,0,0},tbParam={nRandom},nCount = 1,nRate=100,}, -- phai tu 2 den 171
	}
	tbAwardTemplet:GiveAwardByList(ITEM_DATAU, "ITEM_DATAU")
end

function PreConsume()
GiveItemUI("Xin ��t 2 l�nh b�i boss v�o ��y. ","L�u � c� x�c xu�t r�t. ��i hi�p h�y c�n nh�c", "ConsumeBossItem", "Cancel");
end

function ConsumeBossItem(nCount)
if nCount ~=2 then
	return Say("Vui long ��t ��ng 2 l�nh b�i boss.",0)
end
local nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = 0,0,0,0,0,0;
for i=1,nCount do
	nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = GetItemProp(GetGiveItemUnit(i));
	if nGenre ~= 6 or nDetail ~= 1 or nParticular ~= 4374 then
		return Say("V�t ph�m ��t v�o kh�ng��ng.",0)
	end
end
RemoveItemByIndex(GetGiveItemUnit(1))
RemoveItemByIndex(GetGiveItemUnit(2))
local tbItem = {}


if random(1,10000)  < 2500 then
	tinsert(tbItem,1,{szName = "L�nh b�i g�i boss",tbProp = {6,1,4374,1,0,0},nCount=1})
	tbAwardTemplet:GiveAwardByList(tbItem, "��p x�t LB boss",1)
	Msg2Player("Ch� t�c th�t b�i. Th�t chia bu�n.")
else
	tinsert(tbItem,1,{szName = "L�nh b�i g�i boss cao c�p",tbProp = {6,1,1164,1,0,0},nCount=1})
	tbAwardTemplet:GiveAwardByList(tbItem, "��p th�nh c�ng LB boss",1)
	Msg2Player("Ch� t�c th�nh c�ng. Ch�c m�ng ng��i.")
end
end

function OpenKTC()
	local szTitle = "<npc>Xin m�i l�a ch�n m�t h�ng"
	local tbOpt =	{
					
							}
	for i=1,getn(%tbGoods) do
		if %tbGoods[i].nCoin then
			tinsert(tbOpt, 1, {format("Mua %s gi� %d ti�n ��ng",%tbGoods[i].szName,%tbGoods[i].nCoin),GetNumberForBuy,{i,1}})
		end
		if %tbGoods[i].nCash then
			tinsert(tbOpt, 1, {format("Mua %s gi� %d v�n",%tbGoods[i].szName,%tbGoods[i].nCash),GetNumberForBuy,{i,2}})
		end
	end
	tinsert(tbOpt, 1, {"Tho�t",no})
	CreateNewSayEx(szTitle, tbOpt)						
							
end

function GetNumberForBuy(nItemId,nKind)--1 la tien dong 2 tien van
-- Msg2Player("GGGO")
g_AskClientNumberEx(1,60, format("S� l��ng", 60), {GetNumberFromClient,{nItemId,nKind}})
end
function GetNumberFromClient(nItemId,nKind,nNumber)
if type(nNumber)~="number" or nNumber < 0 or nNumber > 60 then
return
end
if nKind == 1 then
	Say(format("Ng��i ch�c ch�n mua <color=green>%d %s <color> gi� t�ng c�ng <color=yellow>%d ti�n ��ng?",nNumber,%tbGoods[nItemId].szName,%tbGoods[nItemId].nCoin*nNumber),2,format("Ch�c ch�n/#ConfirmBuy(%d,%d,%d)",nItemId,nKind,nNumber),"Ta suy ngh� l�i ��/no")
elseif nKind == 2 then
	Say(format("Ng��i ch�c ch�n mua <color=green>%d %s <color> gi� t�ng c�ng <color=yellow>%d v�n?",nNumber,%tbGoods[nItemId].szName,%tbGoods[nItemId].nCash*nNumber),2,format("Ch�c ch�n/#ConfirmBuy(%d,%d,%d)",nItemId,nKind,nNumber),"Ta suy ngh� l�i ��/no")
end
end
function ConfirmBuy(nItemId,nKind,nNumber)
local nTotal
if nKind == 1 then
	nTotal = %tbGoods[nItemId].nCoin*nNumber
elseif nKind == 2 then
	nTotal = %tbGoods[nItemId].nCash*nNumber*10000
end
if CalcFreeItemCellCount() < nNumber then
		Say("H�nh trang kh�ng �� ch� tr�ng. Vui l�ng ki�m tra l�i.",0);
		return
end
if nKind == 1 then
	if  CalcEquiproomItemCount(4, 417, 1, -1) < nTotal then
		Say("Ng��i ki�m tra l�i h�nh trang xem c� �� ti�n ��ng kh�ng?",0)
		return
		end
	if ConsumeEquiproomItem(nTotal, 4, 417, 1, -1) ~=1 then
		Say("C� l�i trong qu� tr�nh tr� ti�n ��ng vui l�ng b�o l�i v�i GM")
		WriteLog("B� l�i trong qu� tr�nh tr� ti�n ��ng ��nh b�c")
		return
	end
elseif nKind == 2 then
	if GetCash() < nTotal then
		Say("H�nh trang kh�ng �� ti�n v�n. Vui l�ng ki�m tra l�i.",0)
		return
	end
	Pay(nTotal)
else
	return
end
local tbItem = {}
tinsert(tbItem,1,%tbGoods[nItemId])
tbAwardTemplet:GiveAwardByList(tbItem, format("Mua ki tran cac kieu %d ",nKind),nNumber)
end
function OpenSecondStore()
	do return end	
	CreateStores();
	AddShop2Stores(178, "#�#�#�", 1, 100, "", 1);
	OpenStores();

end

function WantBuyHuiTian()
	-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
	local nPrice = 1
	local szTitle = format("��##�פ��#���#��#�#%s###��#",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"�#�#", BuyHuiTian}) 
	tinsert(tbOpt, {"#����##�##�#"}) 
	CreateNewSayEx(szTitle, tbOpt);
end

function WantBuyJinpai()
	-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
	local nPrice = 100
	local szTitle = format("��##�#�##��#�#%s###��#",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"�#�#", BuyJinpai}) 
	tinsert(tbOpt, {"#����##�##�#"}) 
	CreateNewSayEx(szTitle, tbOpt);
end

function WantBuyJinWuJinpai()
	local nPrice = 400
	local szTitle = format("��#�#�##��#�#%s###��###ķ�#�###�ߢ�?",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"�#�#", BuyJinWuJinpai}) 
	tinsert(tbOpt, {"#����##�##�#"}) 
	CreateNewSayEx(szTitle, tbOpt);
end


function BuyHuiTian()
	local tbFormula = 
	{
		szName = "##�פ��#���",
		-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
		tbMaterial = {{szName="###��#",tbProp={6,1,2566,1,0,0},nCount = 1,},},
		tbProduct = {szName="##�פ��#���",tbProp={6,1,1781,1,0,0}, tbParam={60},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BuyJinpai()
	local tbFormula = 
	{
		szName = "##�##��#",
		-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
		tbMaterial = {{szName="###��#",tbProp={6,1,2566,1,0,0},nCount = 100,},},
		tbProduct = {szName="##�#�#",tbProp={6,1,2350,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 0.02,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin2zimangjinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BuyJinWuJinpai()
	local tbFormula = 
	{
		szName = "#�#�#��#",
		tbMaterial = {{szName="###��#",tbProp={6,1,2566,1,0,0},nCount = 400,},},
		tbProduct = {szName="#�#�#��#",tbProp={6,1,2349,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin3jinwujinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
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
	local szTitle = format("ķ####��##�#���#",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		[1] = 
		{
			tbMaterial = 
			{
				{szName = "#�#�#��#", tbProp = {0, {905,1134}}, nQuality = 1 },
			},
			tbProduct = {szName="#�#���", tbProp={6, 1, 2710, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[2] = 
		{
			tbMaterial = 
			{
				{szName = "�#�##��#", tbProp = {0, {1135,1364}}, nQuality = 1 },
			},
			tbProduct = {szName="�#�#��", tbProp={6, 1, 2711, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[3] = 
		{
			tbMaterial = 
			{
				{szName = "���##��#", tbProp = {0, {1365,1594}}, nQuality = 1 },
			},
			tbProduct = {szName="���#��", tbProp={6, 1, 2712, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[4] = 
		{
			tbMaterial = 
			{
				{szName = "##��#��#", tbProp = {0, {1595,1824}}, nQuality = 1 },
			},
			tbProduct = {szName="##����", tbProp={6, 1, 2713, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},		
		[5] = 
		{
			tbMaterial = 
			{
				{szName = "##�##��#", tbProp = {0, {1825,2054}}, nQuality = 1 },
			},
			tbProduct = {szName="##�#��", tbProp={6, 1, 3000, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("###� %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"�###"})
	CreateNewSayEx(szTitle, tbOpt);
end
