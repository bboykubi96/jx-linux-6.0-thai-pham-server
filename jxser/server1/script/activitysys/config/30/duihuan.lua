Include("\\script\\activitysys\\config\\30\\head.lua")
Include("\\script\\activitysys\\config\\30\\config.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\30\\variables.lua")

local szEventName = "Event_NhaGiaoVN"
local nMaxAskNumber = 2000 


local tbBookPartAward = 
{
	[100] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 15000000},},
	[500] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 25000000}, },
	[700] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 35000000}, },
	[900] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 450000000}, },
	[1000] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 550000000}, },
	[1100] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 650000000}, },
	[1200] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 750000000}, },
	[1300] = 
	{
		{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 850000000},
	},
	[1400] = 
	{
		{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 950000000}, 
	},
	[1500] = 
	{
		{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 150000000}, 
		{
			{szName = "An Bang B¨ng Tinh Th¹ch H¹ng Liªn", tbProp = {0,164}, nQuality = 1, nCount=1,nRate=20},
			{szName = "An Bang Cóc Hoa Th¹ch ChØ hoµn", tbProp = {0,165}, nQuality = 1, nCount=1,nRate=25},
			{szName = "An Bang §iÒn Hoµng Th¹ch Ngäc Béi", tbProp = {0,166}, nQuality = 1, nCount=1,nRate=30},
			{szName = "An Bang Kª HuyÕt Th¹ch Giíi ChØ", tbProp = {0,167}, nQuality = 1, nCount=1,nRate=25},
		},
	},
}

function pContributionAward(nCount)
	local _ , nTongID = GetTongName()
	if (nTongID > 0) then
		AddContribution(nCount)
		Msg2Player("B¹n nhËn ®­îc "..nCount.." ®iÓm cèng hiÕn bang héi")
		%tbLog:PlayerActionLog(%szEventName, "SuDungCuonSachNhanVatPham", nCount.." ®iÓm cèng hiÕn bang héi")
	end
end

local tbBookAward = 
{
		{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=1,nRate=30},

		{szName = "Cèng HiÕn LÔ bao",tbProp={6,1,30214,1,0,0},nCount=1,nRate=0.02},
		{szName = "Cèng HiÕn §¹i LÔ bao",tbProp={6,1,30215,1,0,0},nCount=1,nRate=0.01},
		{szName = "KiÕn ThiÕt LÔ Bao",tbProp={6,1,30216,1,0,0},nCount=1,nRate=0.02},
		{szName = "KiÕn ThiÕt §¹i LÔ Bao",tbProp={6,1,30217,1,0,0},nCount=1,nRate=0.01},
		{szName = "ChiÕn BÞ LÔ Bao",tbProp={6,1,30218,1,0,0},nCount=1,nRate=0.02},
		{szName = "ChiÕn BÞ §¹i LÔ Bao",tbProp={6,1,30219,1,0,0},nCount=1,nRate=0.01},

		{szName = "B¸ch qu¶ lé",tbProp={6,1,73,1,0,0},nCount=1,nRate=0.02},
		{szName = "QuÕ hoa töu",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.02},
		{szName = "LÖnh bµi hoµn thµnh D· TÈu",tbProp={6,1,4336,1,0,0},nCount=1,nRate=0.1},
		{szName = "Kim tª",tbProp={4,979,1,1,0,0},nCount=1,nRate=0.1},
		{szName = "HuyÒn tinh cÊp 8", tbProp={6,1,147,8,0,0},nCount=1, nRate =0.05},
		{szName = "ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398,1,0,0},nCount=1, nRate =0.1},
		{szName = "ThÊt tinh th¶o", tbProp={6,1,1673,1,0,0},nCount=1, nRate =0.1},
		{szName = "B¸ch niªn thÊt tinh th¶o", tbProp={6,1,1674,1,0,0},nCount=1, nRate =0.1},
		{szName = "Thiªn niªn thÊt tinh th¶o", tbProp={6,1,1675,1,0,0},nCount=1, nRate =0.1},
		{szName = "B¾c ®Èu tr­êng sinh thuËt CST", tbProp={6,1,1390,1,0,0},nCount=1, nRate =0.01},
		{szName = "Ch×a Khãa Nh­ ý", tbProp={6,1,2744,1,0,0},nCount=1, nRate =0.1},
		{szName = "Ch×a Khãa Vµng", tbProp={6,1,30191,1,0,0},nCount=1, nRate =0.1},

		{szName = "§iÓm Kinh NghiÖm", nExp=2000000,nRate=40},
		{szName = "§iÓm Kinh NghiÖm", nExp=5000000,nRate=20},
		{szName = "§iÓm Kinh NghiÖm", nExp=5000000,nRate=5},
		{szName = "§iÓm Kinh NghiÖm", nExp=6000000,nRate=0.7},
		{szName = "§iÓm Kinh NghiÖm", nExp=8000000,nRate=0.3},
		{szName = "§iÓm Kinh NghiÖm", nExp=10000000,nRate=0.01},
		{szName = "§iÓm Kinh NghiÖm", nExp=20000000,nRate=0.01},

		{szName="M¶nh Tµng B¶o §å 1",tbProp={4,490,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 2",tbProp={4,491,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 3",tbProp={4,492,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 4",tbProp={4,493,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 5",tbProp={4,494,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 6",tbProp={4,495,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 7",tbProp={4,496,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 8",tbProp={4,497,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 9",tbProp={4,498,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 10",tbProp={4,499,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 11",tbProp={4,500,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M¶nh Tµng B¶o §å 12",tbProp={4,501,1,1,0,0},nCount=1,nRate=0.02},

		{szName="Cöu Ch©u LÖnh",tbProp={6,1,30117,1,0,0},nCount=1,nRate=0.5,nExpiredTime=43200},
		{szName="Ch×a Khãa ThÇn BÝ",tbProp={6,1,30182,1,0,0},nCount=1,nRate=0.02,nExpiredTime=43200},
		
		{szName = "Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nCount=1, nRate=0.2},
		{szName = "Tiªn th¶o lé §Æc BiÖt",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.1},
		{szName = "NÕn B¸t tr©n phóc nguyÖt", nRate = 0.5,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=0.1},	
		{szName = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.01},
		{szName = "Tö mÉu lÖnh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
		{szName = "Tinh hång b¶o th¹ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.2},
		{szName = "Tö thñy tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
		{szName = "Lôc thñy tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
		{szName = "Lam thñy tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
		{szName = "Phóc duyªn lé tiÓu",tbProp={6,1,122,1,0,0},nCount=1,nRate=0.1},
		{szName = "Phóc duyªn lé trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=0.1},
		{szName = "Phóc duyªn lé ®¹i",tbProp={6,1,124,1,0,0},nCount=1,nRate=0.1},

		{szName = "Vâ L©m MËt TÞch",	tbProp={6,1,26,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.1},
		{szName = "TÈy Tñy Kinh",		tbProp={6,1,22,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.1},

		{szName = "TÝn sø yªu bµi", tbProp={6,1,888,1,0,0},nCount=1, nRate =0.05},
		{szName = "Cóc hoa th¹ch", tbProp={4,963,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "B¨ng th¹ch kÕt tinh", tbProp={4,967,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "B¨ng thiÒm t¬", tbProp={4,965,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "Kª huyÕt th¹ch", tbProp={4,966,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "M· n·o", tbProp={4,964,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "M¶nh thiªn th¹ch", tbProp={4,968,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "§iÒn hoµng th¹ch", tbProp={4,969,1,1,0,0},nCount=1, nRate =0.2},	
}

local tbBaizhiPartLog = 
{
	[500] = "NopVatPhamGiayTrang500Lan",
	[1000] = "NopVatPhamGiayTrang1000Lan",
	[1500] = "NopVatPhamGiayTrang1500Lan",
	[2000] = "NopVatPhamGiayTrang2000Lan",
	[2500] = "NopVatPhamGiayTrang2500Lan",
	[3000] = "NopVatPhamGiayTrang3000Lan",
}	

function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {78,1575,3258,},
		[2] = {78,1569,3250,},
	}
	local tbNpc = {
		[1] = {
			szName = "§¹i L·o S­", 
			nLevel = 95,
			nNpcId = 1877,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
			},
		[2] = {
			szName = "Th­ §ång", 
			nLevel = 95,
			nNpcId = 1878,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
			},
	}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc[i], nMapId, nPosX * 32, nPosY * 32)	
	end
end

function pActivity:GetItemCount(tbMaterial)
	local nMaxCount = -1
	if type(tbMaterial[1]) == "table" then
		for i=1, getn(tbMaterial) do
			local tbProp = tbMaterial[i].tbProp
			tbMaterial[i].nCount = tbMaterial[i].nCount or 1
			local nCount = CalcItemCount(3, tbProp[1], tbProp[2], tbProp[3], -1)
			nCount = floor(nCount / tbMaterial[i].nCount)
			if nMaxCount < 0 then
				nMaxCount = nCount
			else
				nMaxCount = min(nMaxCount, nCount)
			end
		end
	else
		local tbProp = tbMaterial.tbProp
		local nCount = CalcItemCount(3, tbProp[1], tbProp[2], tbProp[3], -1)
		nMaxCount = min(nMaxCount, nCount)
	end
	nMaxCount = max(0, nMaxCount)
	return nMaxCount
end

function pActivity:ConsumeItem(tbMaterial, nCount)
	if type(tbMaterial[1]) == "table" then
		for i=1, getn(tbMaterial) do
			local tbProp = tbMaterial[i].tbProp
			tbMaterial[i].nCount = tbMaterial[i].nCount or 1
			local nTotalCount = nCount * tbMaterial[i].nCount
			if ConsumeItem(3, nTotalCount, tbProp[1], tbProp[2], tbProp[3], -1) ~= 1 then
				Msg2Player(format("Khi tiªu hao %s ®· thÊt b¹i, xin h·y ®îi mét l¸t råi quay l¹i",tbMaterial[i].szName))
				return 0
			end
		end
	else
		local tbProp = tbMaterial.tbProp
		if ConsumeItem(3, nCount, tbProp[1], tbProp[2], tbProp[3], -1) ~= 1 then
			Msg2Player(format("Khi tiªu hao %s ®· thÊt b¹i, xin h·y ®îi mét l¸t råi quay l¹i",tbMaterial[i].szName))
			return 0
		end
	end
	return 1
end

function pActivity:CheckItemCount(nValue, nTarget)
	if nValue < nTarget then
		Say("Ng­¬i kh«ng ®ñ nguyªn liÖu, xin h·y chuÈn bÞ l¹i")
		return 0
	end
	return 1
end

function pActivity:DoHandInPaper(nCount, nTaskId)
	local tbExp = {{nExp_tl=1,nCount = 1000000,},}
	local nPreCount = self:GetTask(nTaskId)
	local nNowCount = nPreCount + nCount
	tbAwardTemplet:Give(tbExp, nCount, {%szEventName, "HandInPaper"})
	for key,value in %tbBaizhiPartLog do
		if key > nPreCount and key <= nNowCount then
			%tbLog:PlayerActionLog(%szEventName, value)
			tbVngTransLog:Write("201111_20Thang11/", 16, value, "N/A", 1)
		end
	end
	self:AddTask(nTaskId, nCount)
end

function pActivity:GiveAward(nTaskId, nCount)
	if nTaskId == %TSK_HandInBook then
		self:DoHandInBook(nCount, nTaskId)
	elseif nTaskId == %TSK_HandInPaper then
		self:DoHandInPaper(nCount, nTaskId)
	end
	
end

function pActivity:CheckFreeCell(nTaskId, nCount)
	if nTaskId == %TSK_HandInBook then
		local nFreeCount = nCount * 3 -- Ä®±±´«ËÍÁîÓÐ3ÕÅÇÒ²»¿Éµþ¼Ó
		if CalcFreeItemCellCount() < nFreeCount then
			Say(format("§Ó b¶o ®¶m an toµn tµi s¶n, xin h·y ®¶m b¶o hµnh trang cßn thõa %d « trèng.",nFreeCount))
			return 0
		end
	end
	return 1
end

function pActivity:SureHandIn(tbMaterial, nTaskId, nCount)
	if nCount <= 0 then
		return 
	end	
	--KiÓm tra sè l­îng giao nép cã v­ît qu¸ giíi h¹n - Modified by DinhHQ - 20111101
	local nMaxCount = 0
	if nTaskId == %TSK_HandInBook then
		nMaxCount = %nMaxBookCount + self:GetTask(%TSK_UsedTianyuhun) * %nPerTianyuhun - self:GetTask(%TSK_HandInBook) - nCount
	elseif nTaskId == %TSK_HandInPaper then
		nMaxCount = %nMaxPaperCount + self:GetTask(%TSK_UsedZhienhua) * %nPerZhienhua - self:GetTask(%TSK_HandInPaper) - nCount
	end	
		
	if nMaxCount < 0 then
		Say("Sè l­îng v­ît qu¸ giíi h¹n, xin h·y nhËp sè kh¸c!")
		return 
	end
	
	local nItemCount = self:GetItemCount(tbMaterial)
	if self:CheckItemCount(nItemCount, nCount) ~= 1 then
		return
	end
	
	if self:CheckFreeCell(nTaskId, nCount) ~= 1 then
		return 
	end 
	
	if self:ConsumeItem(tbMaterial, nCount) ~= 1 then
		return 
	end
	
	self:GiveAward(nTaskId, nCount)
end

function pActivity:HandInPaper()
	local tbPape = {
		[1]={szName="GiÊy Tr¾ng",tbProp={6,1,3039,1,0,0},},	
	}
	local nMaxCount = %nMaxPaperCount + self:GetTask(%TSK_UsedZhienhua) * %nPerZhienhua - self:GetTask(%TSK_HandInPaper)
	if nMaxCount < 1 then
		Say("HiÖn t¹i sè lÇn giao nép cña ng­¬i ®· ®¹t ®Õn giíi h¹n cao nhÊt, kh«ng thÓ giao nép ®­îc n÷a")
		return 
	end
	nMaxCount = min(%nMaxAskNumber, nMaxCount)
	local nItemCount = self:GetItemCount(tbPape)	
	nMaxCount = min(nMaxCount, nItemCount)
	if self:CheckItemCount(nMaxCount, 1) ~= 1 then
		return
	end
	g_AskClientNumberEx(0,nMaxCount, format("NhËp sè (0-%d)", nMaxCount), {self.SureHandIn, {self,tbPape,%TSK_HandInPaper}})
end

function pActivity:TeacherAward()
	local nStartTime = 20161127
	if tonumber(GetLocalDate("%Y%m%d")) ~= nStartTime then
		Say("ChØ cã thÓ vµo ngµy <color=yellow>27/11<color> míi nhËn ®­îc phÇn th­ëng nµy, hiÖn t¹i kh«ng thÓ nhËn ®­îc")
		return 
	end
	local tbTeacherEXP = { {nExp_tl=1,nCount = 50000000,}, }
	local tbTranslog = {strFolder = "201111_20Thang11/", nPromID = 16, nResult = 1}
	tbAwardTemplet:Give(tbTeacherEXP,1,{%szEventName, "NhanPhanThuongTaiNPCDaiLaoSu", tbTranslog})
	self:AddTask(%TSK_TeacherAward, 1)
end

local tbJinwu = {
}

function pActivity:JinwuAward()
	print("NhËn phÇn th­ëng ®å phæ Kim ¤")
	local szTitle = "Xin h·y lùa chän §å Phæ mµ ng­¬i muèn nhËn:"
	local tbOpt = {}
	for nIndex=1,getn(%tbJinwu) do
		tinsert(tbOpt, {%tbJinwu[nIndex].szName, self.SelectJinWu,{self, nIndex}})
	end
	tinsert(tbOpt, {"§Ó ta suy nghÜ l¹i ®·!", cancel})
	CreateNewSayEx(szTitle, tbOpt)
end

function pActivity:SelectJinWu(nIndex)
	local nFreeItemCellLimit = 1
	if CalcFreeItemCellCount() < nFreeItemCellLimit then
		Say(format("§Ó ®¶m b¶o an toµn cho tµi s¶n cña b¹n, xin h·y ®¶m b¶o r»ng Ýt nhÊt <color=yellow>%d <color> « trèng hµnh trang",nFreeItemCellLimit))
		return 
	end
	tbAwardTemplet:Give(%tbJinwu[nIndex], 1, {%szEventName, "SuDung700LanCuonSach_JinWu"})
	self:AddTask(%TSK_JinwuAward, 1)
end

function pActivity:UseZhienhua()
	local tbUseLog = {
		[10] = "SuDungHoaTriAn10Lan",
		[20] = "SuDungHoaTriAn20Lan",
		}
	self:AddTask(%TSK_UsedZhienhua,1)
	local nUseTime = self:GetTask(%TSK_UsedZhienhua)
	if tbUseLog[nUseTime] then
		%tbLog:PlayerActionLog(%szEventName, tbUseLog[nUseTime])
		tbVngTransLog:Write("201111_20Thang11/", 16, tbUseLog[nUseTime], "N/A", 1)
	end
	Msg2Player(format("Sö dông thµnh c«ng <color=yellow>%s<color>, nhËn ®­îc <color=yellow>%d<color> giao nép <color=yellow>%s<color> lÇn","Hoa Tri ¢n",%nPerZhienhua,"GiÊy Tr¾ng"))
end

function pActivity:UseTianyuhun()
	local tbUseLog = {
		[10] = "SuDungThienVuHon10Lan",
		[20] = "SuDungThienVuHon20Lan",
		}
	self:AddTask(%TSK_UsedTianyuhun,1)
	local nUseTime = self:GetTask(%TSK_UsedTianyuhun)
	if tbUseLog[nUseTime] then
		%tbLog:PlayerActionLog(%szEventName, tbUseLog[nUseTime])
		tbVngTransLog:Write("201111_20Thang11/", 16, tbUseLog[nUseTime], "N/A", 1)
	end
	Msg2Player(format("Sö dông thµnh c«ng <color=yellow>%s<color>, nhËn ®­îc <color=yellow>%d<color> giao nép <color=yellow>%s<color> lÇn","Thiªn Vò Hån",%nPerTianyuhun,"Cuèn S¸ch"))
end

function pActivity:CheckBookLimit()
	local nMaxCount = %nMaxBookCount + self:GetTask(%TSK_UsedTianyuhun) * %nPerTianyuhun - self:GetTask(%TSK_HandInBook)
	if nMaxCount < 1 then
		Say("§¹i hiÖp ®· sö dông tèi ®a vËt phÈm nµy, kh«ng thÓ sö dông thªm!")
		return nil
	end
	return 1
end

function pActivity:UseBook()
	self:AddTask(%TSK_HandInBook,1)	

	local diemkn = 
	{ 
		{szName = "900.000 §iÓm Kinh NghiÖm", nExp=900000,nRate=100},
	}
	tbAwardTemplet:Give(diemkn,1,{%szEventName, "DiemKNMacDinh900000", "DiemKNMacDinh900000"})

	local tbTranslog = {strFolder = "201111_20Thang11/", nPromID = 16, nResult = 1}
	tbAwardTemplet:Give(%tbBookAward, nCount, {%szEventName, "SuDungCuonSachNhanVatPham", tbTranslog})
	local nUseTime = self:GetTask(%TSK_HandInBook)
	Msg2Player("§¹i hiÖp ®· sö dông cuèn s¸ch thø: "..nUseTime.."")
	if %tbBookPartAward[nUseTime] then
		Msg2Player("PhÇn th­ëng sö dông cuèn s¸ch ®¹t mèc: "..nUseTime.."")
		tbAwardTemplet:Give(%tbBookPartAward[nUseTime], 1, {%szEventName, "PhanThuongBookDatMoc", "PhanThuongBookDatMoc"})
	end	
end

function pActivity:UseHopQuaNhaGiaoVietNam()
	self:AddTask(%TSK_SuDungHopQua,1)
	local nUseTime = self:GetTask(%TSK_SuDungHopQua)

	local tbhopqua = 
	{ 
		{szName = "900 000 §iÓm Kinh NghiÖm", nExp=900000,nRate=100},
	}
	Msg2Player("Sö dông hép quµ thø: "..nUseTime.."")
	local tbTranslog = {strFolder = "201111_20Thang11/", nPromID = 16, nResult = 1}
	tbAwardTemplet:Give(tbhopqua,1,{%szEventName, "PhanThuongMoHopQuaNhaGiaoVietNam", tbTranslog})
end

pActivity.nPak = curpack()