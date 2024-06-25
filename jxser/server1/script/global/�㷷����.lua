Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
-- script viet hoa By http://tranhba.com ##Ì####µ¸#³#´Ý - modified by DinhHQ - 20110921
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")

function OnExit()

end;

function main()
	-- dofile()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new("Hµng rong");
	-- G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	
	
	tbDailog.szTitleMsg = "<#><npc>Chç ta c¸i g× còng cã hÕt. Ng­¬i cÇn c¸i g×?"
	
	-- script viet hoa By http://tranhba.com Change request 04/06/2011, ##¤×°##ð#°±#- Modified by DinhHQ - 20110605
-- script viet hoa By http://tranhba.com 	local w,x,y = GetWorldPos()
-- script viet hoa By http://tranhba.com 	if w == 176 then
-- script viet hoa By http://tranhba.com 		tbDailog:AddOptEntry("¢ß××£¯#Ð##.", Sale, {171}); 
-- script viet hoa By http://tranhba.com 	end
	-- script viet hoa By http://tranhba.com ##Ì####µ¸#³#´Ý- modified by DinhHQ - 20110921
	-- tbVng_Exchange_HHL:AddDialog(tbDailog)
	-- tbDailog:AddOptEntry("¢ß##××¤ï¤×#âÄß", WantBuyHuiTian)
	-- tbDailog:AddOptEntry("¢ß##ß#¸#", WantBuyJinpai)
	-- tbDailog:AddOptEntry("¢ß#ð#ó¸#", WantBuyJinWuJinpai)
	-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("##Ì#±#£¯", WantBuyBaoshi)
	
	-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
-- script viet hoa By http://tranhba.com 	tbDailog:AddOptEntry("Ì·#ß¿´¿´(#Ð#âÐ×#ª)", OpenSecondStore); 
-- script viet hoa By http://tranhba.com 	if tbTriumphDrum:CheckCondition_BuyDrum() == 1 then
-- script viet hoa By http://tranhba.com 		tbDailog:AddOptEntry("¢ß¿####Ä",  tbTriumphDrum.NpcTalk,{tbTriumphDrum});  	
-- script viet hoa By http://tranhba.com 	end

	-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
	-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("µ#¿#", OnExit, {}); 	
--	tbDailog:AddOptEntry("Mua k× tr©n dÞ b¶o", OpenKTC);
	-- tbDailog:AddOptEntry("Mua tµng b¶o ®å gi¸ 2 xu", MuaTangBaoDo);
	-- tbDailog:AddOptEntry("Mua m¶nh thiªn th¹ch sè 1", MuaTangBaoDo);
	-- tbDailog:AddOptEntry("Hîp thµnh lÖnh bµi boss TBD(cao cÊp)", PreConsume);
	tbDailog:Show()
end;

-----------------
local tbGoods = {
-- {szName = "M¶nh thiªn th¹ch sè 1",tbProp = {4,1318,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M¶nh thiªn th¹ch sè 2",tbProp = {4,1319,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M¶nh thiªn th¹ch sè 3",tbProp = {4,1320,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M¶nh thiªn th¹ch sè 4",tbProp = {4,1321,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M¶nh thiªn th¹ch sè 5",tbProp = {4,1322,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M¶nh thiªn th¹ch sè 6",tbProp = {4,1323,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M¶nh thiªn th¹ch sè 7",tbProp = {4,1324,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M¶nh thiªn th¹ch sè 8",tbProp = {4,1325,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "M¶nh thiªn th¹ch sè 9",tbProp = {4,1326,1,1,0,0},nCount=1,nQuality=1, nCoin = 500},
-- {szName = "DÞ Dung ThuËt",tbProp = {6,1,4404,1,0,0},nCount=1, nCoin = 200}, --open
-- {szName = "Thµnh chñ lÔ bao",tbProp = {6,1,1339,1,0,0},nCount=1, nCoin = 25},
-- {szName = "Méc bµi gäi boss",tbProp = {6,1,1478,1,0,0},nCount=1, nCoin = 2, nCash=100},
-- {szName = "Phï dung nguyªn th¹ch",tbProp = {6,1,152},nCount=1, nCoin = 2},
{szName = "ThÎ ®æi tªn",tbProp = {6,1,1534,1,0,0},nCount=1, nCoin = 200}, --open
{szName = "Lam thñy tinh - sÏ ®ãng khi cã sù kiÖn" ,tbProp= {4,238,1,1,0,0},nCount=1, nCoin=50},
{szName = "Tö thñy tinh - sÏ ®ãng khi cã sù kiÖn",tbProp = {4,239,1,1,0,0},nCount=1, nCoin=50},
{szName = "Lôc thñy tinh - sÏ ®ãng khi cã sù kiÖn",tbProp = {4,240,1,1,0,0},nCount=1, nCoin=50},
{szName = "Tinh Hång B¶o Th¹ch - sÏ ®ãng khi cã sù kiÖn",tbProp = {4,353,1,1,0,0},nCount=1, nCoin=40},
-- {szName = "Ng­êi tuyÕt",tbProp = {6,1,1319,1,0,0},nCount=1, nPrice = 3},
-- {szName = "ThÇn hµnh phï 30 ngµy",tbProp = {6,1,1266,1,0,0}, nCash=10,nExpiredTime=24*60*30},
-- {szName = "Thiªn c¬ lÖnh",tbProp = {6,1,1091,1,0,0},nCount=1, nCoin=5}, --open
-- {szName = "ThÇn bÝ kho¸ng th¹ch",tbProp = {6,1,398,1,0,0},nCount=1, nCoin=500},
-- {szName = "Kim tª",tbProp = {4,979,1,1,0,0},nCount=1, nCoin=1000},
-- {szName = "LÖnh bµi phong l¨ng ®é",tbProp = {4,489,1,1,0,0},nCount=1, nCash=75,nCoin=5}, --open
-- {szName = "S¸t thñ gi¶n 90",tbProp = {6,1,2339,1,0,0}, nCash=75,nCoin=5}, --open
-- {szName = "GiÇy th«ng hµnh b¶n ®å ®Æc biÖt",tbProp = {6,1,4390,1,0,0}, nCoin=1},
-- {szName = "Trèng Kh¶i Hoµn",tbProp = {6,1,2309,1,0,0},nCoin = 5, nCash=125},
-- {szName = "Thiªn S¬n TuyÕt Liªn",tbProp = {6,1,1431,1,0,0},nCount=1, nCoin = 100,},
}
------------------
function MuaTangBaoDo()
	Say("Ng­¬i ch¾c ch¾n mua <color=green> Tµng b¶o ®å <color> gi¸ <color=yellow>2 tiÒn ®ång?",2,
			"Ch¾c ch¾n/MuaTangBaoDo1",
			"Ta suy nghÜ l¹i ®·/no")
end
function MuaTangBaoDo1()
	local nTotal=2
	if CalcFreeItemCellCount() < 2 then
			Say("Hµnh trang kh«ng ®ñ chç trèng. Vui lßng kiÓm tra l¹i.",0);
			return
	end
	if  CalcEquiproomItemCount(4, 417, 1, -1) < nTotal then
		Say("Ng­¬i kiÓm tra l¹i hµnh trang xem cã ®ñ tiÒn ®ång kh«ng?",0)
		return
		end
	if ConsumeEquiproomItem(nTotal, 4, 417, 1, -1) ~=1 then
		Say("Cã lçi trong qu¸ tr×nh trõ tiÒn ®ång vui lßng b¸o l¹i víi GM")
		WriteLog("BÞ lçi trong qu¸ tr×nh trõ tiÒn ®ång ®¸nh b¹c")
		return
	end
	local nRandom = random (2,171)
	local ITEM_DATAU= {
			[1]={tbProp={6,2,3,1,0,0},tbParam={nRandom},nCount = 1,nRate=100,}, -- phai tu 2 den 171
	}
	tbAwardTemplet:GiveAwardByList(ITEM_DATAU, "ITEM_DATAU")
end

function PreConsume()
GiveItemUI("Xin ®Æt 2 lÖnh bµi boss vµo ®©y. ","L­u ý cã x¸c xuÊt rít. §¹i hiÖp h·y c©n nh¾c", "ConsumeBossItem", "Cancel");
end

function ConsumeBossItem(nCount)
if nCount ~=2 then
	return Say("Vui long ®Æt ®óng 2 lÖnh bµi boss.",0)
end
local nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = 0,0,0,0,0,0;
for i=1,nCount do
	nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = GetItemProp(GetGiveItemUnit(i));
	if nGenre ~= 6 or nDetail ~= 1 or nParticular ~= 4374 then
		return Say("VËt phÈm ®Æt vµo kh«ng®óng.",0)
	end
end
RemoveItemByIndex(GetGiveItemUnit(1))
RemoveItemByIndex(GetGiveItemUnit(2))
local tbItem = {}


if random(1,10000)  < 2500 then
	tinsert(tbItem,1,{szName = "LÖnh bµi gäi boss",tbProp = {6,1,4374,1,0,0},nCount=1})
	tbAwardTemplet:GiveAwardByList(tbItem, "§Ëp xÞt LB boss",1)
	Msg2Player("ChÕ t¸c thÊt b¹i. ThËt chia buån.")
else
	tinsert(tbItem,1,{szName = "LÖnh bµi gäi boss cao cÊp",tbProp = {6,1,1164,1,0,0},nCount=1})
	tbAwardTemplet:GiveAwardByList(tbItem, "§Ëp thµnh c«ng LB boss",1)
	Msg2Player("ChÕ t¸c thµnh c«ng. Chóc mõng ng­¬i.")
end
end

function OpenKTC()
	local szTitle = "<npc>Xin mêi lùa chän mÆt hµng"
	local tbOpt =	{
					
							}
	for i=1,getn(%tbGoods) do
		if %tbGoods[i].nCoin then
			tinsert(tbOpt, 1, {format("Mua %s gi¸ %d tiÒn ®ång",%tbGoods[i].szName,%tbGoods[i].nCoin),GetNumberForBuy,{i,1}})
		end
		if %tbGoods[i].nCash then
			tinsert(tbOpt, 1, {format("Mua %s gi¸ %d v¹n",%tbGoods[i].szName,%tbGoods[i].nCash),GetNumberForBuy,{i,2}})
		end
	end
	tinsert(tbOpt, 1, {"Tho¸t",no})
	CreateNewSayEx(szTitle, tbOpt)						
							
end

function GetNumberForBuy(nItemId,nKind)--1 la tien dong 2 tien van
-- Msg2Player("GGGO")
g_AskClientNumberEx(1,60, format("Sè l­îng", 60), {GetNumberFromClient,{nItemId,nKind}})
end
function GetNumberFromClient(nItemId,nKind,nNumber)
if type(nNumber)~="number" or nNumber < 0 or nNumber > 60 then
return
end
if nKind == 1 then
	Say(format("Ng­¬i ch¾c ch¾n mua <color=green>%d %s <color> gi¸ tæng céng <color=yellow>%d tiÒn ®ång?",nNumber,%tbGoods[nItemId].szName,%tbGoods[nItemId].nCoin*nNumber),2,format("Ch¾c ch¾n/#ConfirmBuy(%d,%d,%d)",nItemId,nKind,nNumber),"Ta suy nghÜ l¹i ®·/no")
elseif nKind == 2 then
	Say(format("Ng­¬i ch¾c ch¾n mua <color=green>%d %s <color> gi¸ tæng céng <color=yellow>%d v¹n?",nNumber,%tbGoods[nItemId].szName,%tbGoods[nItemId].nCash*nNumber),2,format("Ch¾c ch¾n/#ConfirmBuy(%d,%d,%d)",nItemId,nKind,nNumber),"Ta suy nghÜ l¹i ®·/no")
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
		Say("Hµnh trang kh«ng ®ñ chç trèng. Vui lßng kiÓm tra l¹i.",0);
		return
end
if nKind == 1 then
	if  CalcEquiproomItemCount(4, 417, 1, -1) < nTotal then
		Say("Ng­¬i kiÓm tra l¹i hµnh trang xem cã ®ñ tiÒn ®ång kh«ng?",0)
		return
		end
	if ConsumeEquiproomItem(nTotal, 4, 417, 1, -1) ~=1 then
		Say("Cã lçi trong qu¸ tr×nh trõ tiÒn ®ång vui lßng b¸o l¹i víi GM")
		WriteLog("BÞ lçi trong qu¸ tr×nh trõ tiÒn ®ång ®¸nh b¹c")
		return
	end
elseif nKind == 2 then
	if GetCash() < nTotal then
		Say("Hµnh trang kh«ng ®ñ tiÒn v¹n. Vui lßng kiÓm tra l¹i.",0)
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
	AddShop2Stores(178, "#Ð#â#ª", 1, 100, "", 1);
	OpenStores();

end

function WantBuyHuiTian()
	-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
	local nPrice = 1
	local szTitle = format("¢ß##××¤ï¤×#âÄß#Ìß#ã#%s###µ¸#",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"Ì#Ì#", BuyHuiTian}) 
	tinsert(tbOpt, {"#³±·¢##ý##ß#"}) 
	CreateNewSayEx(szTitle, tbOpt);
end

function WantBuyJinpai()
	-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
	local nPrice = 100
	local szTitle = format("¢ß##ß#¸##Ìß#ã#%s###µ¸#",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"Ì#Ì#", BuyJinpai}) 
	tinsert(tbOpt, {"#³±·¢##ý##ß#"}) 
	CreateNewSayEx(szTitle, tbOpt);
end

function WantBuyJinWuJinpai()
	local nPrice = 400
	local szTitle = format("¢ß#ð#ó¸##Ìß#ã#%s###µ¸###Ä·ß#Ì###¢ß¢ð?",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"Ì#Ì#", BuyJinWuJinpai}) 
	tinsert(tbOpt, {"#³±·¢##ý##ß#"}) 
	CreateNewSayEx(szTitle, tbOpt);
end


function BuyHuiTian()
	local tbFormula = 
	{
		szName = "##××¤ï¤×#âÄß",
		-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
		tbMaterial = {{szName="###µ¸#",tbProp={6,1,2566,1,0,0},nCount = 1,},},
		tbProduct = {szName="##××¤ï¤×#âÄß",tbProp={6,1,1781,1,0,0}, tbParam={60},},
		
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
		szName = "##ß##ðÅ#",
		-- script viet hoa By http://tranhba.com Change request 04/06/2011 - Modified by DinhHQ - 20110605
		tbMaterial = {{szName="###µ¸#",tbProp={6,1,2566,1,0,0},nCount = 100,},},
		tbProduct = {szName="##ß#¸#",tbProp={6,1,2350,1,0,0},},
		
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
		szName = "#ð#ó#ðÅ#",
		tbMaterial = {{szName="###µ¸#",tbProp={6,1,2566,1,0,0},nCount = 400,},},
		tbProduct = {szName="#ð#ó#ðÅ#",tbProp={6,1,2349,1,0,0},},
		
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
	local szTitle = format("Ä·####ÄÄ##±#£¯Ä#",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		[1] = 
		{
			tbMaterial = 
			{
				{szName = "#µ#¤#°±#", tbProp = {0, {905,1134}}, nQuality = 1 },
			},
			tbProduct = {szName="#µ#¤£¯", tbProp={6, 1, 2710, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[2] = 
		{
			tbMaterial = 
			{
				{szName = "¤#¢##°±#", tbProp = {0, {1135,1364}}, nQuality = 1 },
			},
			tbProduct = {szName="¤#¢#£¯", tbProp={6, 1, 2711, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[3] = 
		{
			tbMaterial = 
			{
				{szName = "²¤µ##°±#", tbProp = {0, {1365,1594}}, nQuality = 1 },
			},
			tbProduct = {szName="²¤µ#£¯", tbProp={6, 1, 2712, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[4] = 
		{
			tbMaterial = 
			{
				{szName = "##¤³#°±#", tbProp = {0, {1595,1824}}, nQuality = 1 },
			},
			tbProduct = {szName="##¤³£¯", tbProp={6, 1, 2713, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},		
		[5] = 
		{
			tbMaterial = 
			{
				{szName = "##ß##°±#", tbProp = {0, {1825,2054}}, nQuality = 1 },
			},
			tbProduct = {szName="##ß#£¯", tbProp={6, 1, 3000, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("###· %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Ì###"})
	CreateNewSayEx(szTitle, tbOpt);
end
