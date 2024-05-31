--Hang rong edit by mcteam
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

sotienmanhvaixanh = 5000
soxucuonchi = 5
soxuhoathibich = 10

function OnExit()

end;




function main()
	
	--dofile("script/global/�㷷����.lua")
	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	
	
	tbDailog.szTitleMsg = "<#><npc>Kh�ch quan c�n mua g�?"
	
--tbVng_Exchange_HHL:AddDialog(tbDailog)
	--event khai hoan vien
	--tbDailog:AddOptEntry("Mua m�nh thi�n th�ch", Sale, {171}); 
	--tbDailog:AddOptEntry("Mua Cu�n ch� gi�: "..soxucuonchi.." xu", MuaCuonChi11)
	--tbDailog:AddOptEntry("Mua H�a Th� B�ch gi�: "..soxuhoathibich.." xu", MuaHoaThiBich11)
	--tbDailog:AddOptEntry("Mua M�nh v�i m�u xanh l� gi�: "..sotienmanhvaixanh.." l��ng", MuaManhVaiMauXanhLa11)
	--tbDailog:AddOptEntry("Mua t�i Ho�ng Kim", MuaTuiHoangKim)
tbDailog:AddOptEntry("Mua L�nh B�i Phong L�ng �� (10 V�n)", mualenhbai)
tbDailog:AddOptEntry("Mua S�t Th� Gi�n (10 V�n)", muasatthugian)
	--tbDailog:AddOptEntry("��##�פ��#���", WantBuyHuiTian)
	--tbDailog:AddOptEntry("��##�#�#", WantBuyJinpai)
	--tbDailog:AddOptEntry("��#�#�#", WantBuyJinWuJinpai)
	-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("##�#�#��", WantBuyBaoshi)
	
	--tbDailog:AddOptEntry("̷#߿���(#�#���#�)", OpenSecondStore); 
-- script viet hoa By http://tranhba.com 	if tbTriumphDrum:CheckCondition_BuyDrum() == 1 then
-- script viet hoa By http://tranhba.com 		tbDailog:AddOptEntry("�߿####�",  tbTriumphDrum.NpcTalk,{tbTriumphDrum});  	
-- script viet hoa By http://tranhba.com 	end

	-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
	-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("�#�#", OnExit, {}); 	
	tbDailog:Show()
end;
function muasatthugian()
	if GetCash()>=100000 then
		Pay(100000)
		local tbItem = 
	{	

		{szName = "satthugian", tbProp = {6, 1, 400, 90,random(0,4),0}, nCount = 1},
		--{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nExpiredTime=10080},

		
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "satthugian");
	else
		Say("H�nh trang kh�ng c� �� 10 V�n L��ng")
		return
	end
end
function mualenhbai()
	if GetCash()>=100000 then
		Pay(100000)
		local Index = AddItem(4,489,1,1,0,0)	
	else
		Say("H�nh trang kh�ng c� �� 10 V�n L��ng")
		return
	end
end
function MuaTuiHoangKim()
	local tbSay = {}
	tinsert(tbSay,"T�i ho�ng kim An Bang H�ng Li�n # gi�: 2000 xu ./tuihoangkimABDayChuyen")
	tinsert(tbSay,"T�i ho�ng kim An Bang Gi�i Ch� 1 # gi�: 1500 xu ./tuihoangkimABGioiChi1")
	tinsert(tbSay,"T�i ho�ng kim An Bang Gi�i Ch� 2 # gi�: 1500 xu ./tuihoangkimABGioiChi2")
	tinsert(tbSay,"T�i ho�ng kim An Bang Ng�c B�i # gi�: 1000 xu ./tuihoangkimABNgocBoi")
	tinsert(tbSay,"K�t th�c ��i tho�i ./Quit")
	Say("H�ng rong: Ta chuy�n b�n c�c lo�i c�c ph�m qu�, kh�ch quan c�n mua g�?", getn(tbSay), tbSay)
end

function tuihoangkimABDayChuyen()
local soxu = 2000 --gia tien xu
local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
if (nCurTD >= soxu) then
	Say("M�i nh�n h�ng", 0)
else
	Say("Kh�ch quan kh�ng mang �� Ti�n ��ng!", 0)
	return 1;
end

if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
	Msg2Player("Tr� ti�n ��ng th�t b�i !")
	return 1;
end
AddItem(6,1,4257,1,0,0);--Tui hoang kim an bang hang lien
end

function tuihoangkimABGioiChi1()
local soxu = 1500 --gia tien xu
local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
if (nCurTD >= soxu) then
	Say("M�i nh�n h�ng", 0)
else
	Say("Kh�ch quan kh�ng mang �� Ti�n ��ng!", 0)
	return 1;
end

if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
	Msg2Player("Tr� ti�n ��ng th�t b�i !")
	return 1;
end
AddItem(6,1,4258,1,0,0);--Tui hoang kim an bang gioi chi 1
end

function tuihoangkimABGioiChi2()
local soxu = 1500 --gia tien xu
local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
if (nCurTD >= soxu) then
	Say("M�i nh�n h�ng", 0)
else
	Say("Kh�ch quan kh�ng mang �� Ti�n ��ng!", 0)
	return 1;
end

if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
	Msg2Player("Tr� ti�n ��ng th�t b�i !")
	return 1;
end
AddItem(6,1,4259,1,0,0);--Tui hoang kim an bang gioi chi 2
end

function tuihoangkimABNgocBoi()
local soxu = 1000 --gia tien xu
local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
if (nCurTD >= soxu) then
	Say("M�i nh�n h�ng", 0)
else
	Say("Kh�ch quan kh�ng mang �� Ti�n ��ng!", 0)
	return 1;
end

if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
	Msg2Player("Tr� ti�n ��ng th�t b�i !")
	return 1;
end
AddItem(6,1,4260,1,0,0);--Tui hoang kim an bang ngoc boi
end

function MuaCuonChi11()
local soxu = soxucuonchi --gia tien xu
local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
maxsl = nCurTD/soxu
AskClientForNumber("enter_str_cuonchi", 0, maxsl,"Xin m�i nh�p v�o s� l��ng: "); 

end

function enter_str_cuonchi(n_key)
local soxu = soxucuonchi --gia tien xu
local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
maxsl = nCurTD/soxu

if (n_key < 0 or n_key > maxsl) then 
return 
end 

for i=1,n_key do

	if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
		Msg2Player("Tr� ti�n ��ng th�t b�i !")
		return 1;
	end
	AddItem(6,1,3138,1,0,0);

end

Msg2Player("�� nh�n ���c "..n_key.." cu�n ch�")
end;

function MuaHoaThiBich11()
local soxu = soxuhoathibich --gia tien xu
local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
maxsl = nCurTD/soxu

AskClientForNumber("enter_str_hoathibich", 0, maxsl,"Xin m�i nh�p v�o s� l��ng: "); 

end

function enter_str_hoathibich(n_key)
local soxu = soxuhoathibich --gia tien xu
local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
maxsl = nCurTD/soxu

if (n_key < 0 or n_key > maxsl) then 
return 
end 


for i=1,n_key do

	if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
		Msg2Player("Tr� ti�n ��ng th�t b�i !")
		return 1;
	end

	AddItem(6,1,3145,1,0,0);
end

Msg2Player("�� nh�n ���c "..n_key.." H�a th� b�ch")

end;

function MuaManhVaiMauXanhLa11()

local sltien = GetCash()
local sltienphaitra = sotienmanhvaixanh
maxsl = sltien/sltienphaitra

AskClientForNumber("enter_str_num", 0, maxsl,"Xin m�i nh�p v�o s� l��ng: "); 

--if(sltien < sltienphaitra) then
	--Say("Kh�ch quan kh�ng mang ��: "..sltienphaitra.." l��ng")
	--return
--end


end

function enter_str_num(n_key) 

local sltien = GetCash()
local sltienphaitra = sotienmanhvaixanh
maxsl = sltien/sltienphaitra

if (n_key < 0 or n_key > maxsl) then 
return 
end 

for i=1,n_key do
	AddItem(6,1,3143,1,0,0);
	Pay(sltienphaitra)
end

Msg2Player("�� nh�n ���c "..n_key.." M�nh v�i m�u xanh l�")

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
