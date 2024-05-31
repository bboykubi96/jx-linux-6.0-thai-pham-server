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
	[100] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 15000000},},
	[500] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 25000000}, },
	[700] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 35000000}, },
	[900] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 450000000}, },
	[1000] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 550000000}, },
	[1100] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 650000000}, },
	[1200] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 750000000}, },
	[1300] = 
	{
		{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 850000000},
	},
	[1400] = 
	{
		{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 950000000}, 
	},
	[1500] = 
	{
		{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 150000000}, 
		{
			{szName = "An Bang B�ng Tinh Th�ch H�ng Li�n", tbProp = {0,164}, nQuality = 1, nCount=1,nRate=20},
			{szName = "An Bang C�c Hoa Th�ch Ch� ho�n", tbProp = {0,165}, nQuality = 1, nCount=1,nRate=25},
			{szName = "An Bang �i�n Ho�ng Th�ch Ng�c B�i", tbProp = {0,166}, nQuality = 1, nCount=1,nRate=30},
			{szName = "An Bang K� Huy�t Th�ch Gi�i Ch�", tbProp = {0,167}, nQuality = 1, nCount=1,nRate=25},
		},
	},
}

function pContributionAward(nCount)
	local _ , nTongID = GetTongName()
	if (nTongID > 0) then
		AddContribution(nCount)
		Msg2Player("B�n nh�n ���c "..nCount.." �i�m c�ng hi�n bang h�i")
		%tbLog:PlayerActionLog(%szEventName, "SuDungCuonSachNhanVatPham", nCount.." �i�m c�ng hi�n bang h�i")
	end
end

local tbBookAward = 
{
		{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=1,nRate=30},

		{szName = "C�ng Hi�n L� bao",tbProp={6,1,30214,1,0,0},nCount=1,nRate=0.02},
		{szName = "C�ng Hi�n ��i L� bao",tbProp={6,1,30215,1,0,0},nCount=1,nRate=0.01},
		{szName = "Ki�n Thi�t L� Bao",tbProp={6,1,30216,1,0,0},nCount=1,nRate=0.02},
		{szName = "Ki�n Thi�t ��i L� Bao",tbProp={6,1,30217,1,0,0},nCount=1,nRate=0.01},
		{szName = "Chi�n B� L� Bao",tbProp={6,1,30218,1,0,0},nCount=1,nRate=0.02},
		{szName = "Chi�n B� ��i L� Bao",tbProp={6,1,30219,1,0,0},nCount=1,nRate=0.01},

		{szName = "B�ch qu� l�",tbProp={6,1,73,1,0,0},nCount=1,nRate=0.02},
		{szName = "Qu� hoa t�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.02},
		{szName = "L�nh b�i ho�n th�nh D� T�u",tbProp={6,1,4336,1,0,0},nCount=1,nRate=0.1},
		{szName = "Kim t�",tbProp={4,979,1,1,0,0},nCount=1,nRate=0.1},
		{szName = "Huy�n tinh c�p 8", tbProp={6,1,147,8,0,0},nCount=1, nRate =0.05},
		{szName = "Th�n b� kho�ng th�ch", tbProp={6,1,398,1,0,0},nCount=1, nRate =0.1},
		{szName = "Th�t tinh th�o", tbProp={6,1,1673,1,0,0},nCount=1, nRate =0.1},
		{szName = "B�ch ni�n th�t tinh th�o", tbProp={6,1,1674,1,0,0},nCount=1, nRate =0.1},
		{szName = "Thi�n ni�n th�t tinh th�o", tbProp={6,1,1675,1,0,0},nCount=1, nRate =0.1},
		{szName = "B�c ��u tr��ng sinh thu�t CST", tbProp={6,1,1390,1,0,0},nCount=1, nRate =0.01},
		{szName = "Ch�a Kh�a Nh� �", tbProp={6,1,2744,1,0,0},nCount=1, nRate =0.1},
		{szName = "Ch�a Kh�a V�ng", tbProp={6,1,30191,1,0,0},nCount=1, nRate =0.1},

		{szName = "�i�m Kinh Nghi�m", nExp=2000000,nRate=40},
		{szName = "�i�m Kinh Nghi�m", nExp=5000000,nRate=20},
		{szName = "�i�m Kinh Nghi�m", nExp=5000000,nRate=5},
		{szName = "�i�m Kinh Nghi�m", nExp=6000000,nRate=0.7},
		{szName = "�i�m Kinh Nghi�m", nExp=8000000,nRate=0.3},
		{szName = "�i�m Kinh Nghi�m", nExp=10000000,nRate=0.01},
		{szName = "�i�m Kinh Nghi�m", nExp=20000000,nRate=0.01},

		{szName="M�nh T�ng B�o �� 1",tbProp={4,490,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 2",tbProp={4,491,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 3",tbProp={4,492,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 4",tbProp={4,493,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 5",tbProp={4,494,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 6",tbProp={4,495,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 7",tbProp={4,496,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 8",tbProp={4,497,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 9",tbProp={4,498,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 10",tbProp={4,499,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 11",tbProp={4,500,1,1,0,0},nCount=1,nRate=0.02},
		{szName="M�nh T�ng B�o �� 12",tbProp={4,501,1,1,0,0},nCount=1,nRate=0.02},

		{szName="C�u Ch�u L�nh",tbProp={6,1,30117,1,0,0},nCount=1,nRate=0.5,nExpiredTime=43200},
		{szName="Ch�a Kh�a Th�n B�",tbProp={6,1,30182,1,0,0},nCount=1,nRate=0.02,nExpiredTime=43200},
		
		{szName = "Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=1, nRate=0.2},
		{szName = "Ti�n th�o l� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.1},
		{szName = "N�n B�t tr�n ph�c nguy�t", nRate = 0.5,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=0.1},	
		{szName = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.01},
		{szName = "T� m�u l�nh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
		{szName = "Tinh h�ng b�o th�ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.2},
		{szName = "T� th�y tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
		{szName = "L�c th�y tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
		{szName = "Lam th�y tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
		{szName = "Ph�c duy�n l� ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=0.1},
		{szName = "Ph�c duy�n l� trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=0.1},
		{szName = "Ph�c duy�n l� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=0.1},

		{szName = "V� L�m M�t T�ch",	tbProp={6,1,26,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.1},
		{szName = "T�y T�y Kinh",		tbProp={6,1,22,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.1},

		{szName = "T�n s� y�u b�i", tbProp={6,1,888,1,0,0},nCount=1, nRate =0.05},
		{szName = "C�c hoa th�ch", tbProp={4,963,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "B�ng th�ch k�t tinh", tbProp={4,967,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "B�ng thi�m t�", tbProp={4,965,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "K� huy�t th�ch", tbProp={4,966,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "M� n�o", tbProp={4,964,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "M�nh thi�n th�ch", tbProp={4,968,1,1,0,0},nCount=1, nRate =0.05},
		{szName = "�i�n ho�ng th�ch", tbProp={4,969,1,1,0,0},nCount=1, nRate =0.2},	
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
			szName = "��i L�o S�", 
			nLevel = 95,
			nNpcId = 1877,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
			},
		[2] = {
			szName = "Th� ��ng", 
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
				Msg2Player(format("Khi ti�u hao %s �� th�t b�i, xin h�y ��i m�t l�t r�i quay l�i",tbMaterial[i].szName))
				return 0
			end
		end
	else
		local tbProp = tbMaterial.tbProp
		if ConsumeItem(3, nCount, tbProp[1], tbProp[2], tbProp[3], -1) ~= 1 then
			Msg2Player(format("Khi ti�u hao %s �� th�t b�i, xin h�y ��i m�t l�t r�i quay l�i",tbMaterial[i].szName))
			return 0
		end
	end
	return 1
end

function pActivity:CheckItemCount(nValue, nTarget)
	if nValue < nTarget then
		Say("Ng��i kh�ng �� nguy�n li�u, xin h�y chu�n b� l�i")
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
		local nFreeCount = nCount * 3 -- Į����������3���Ҳ��ɵ���
		if CalcFreeItemCellCount() < nFreeCount then
			Say(format("�� b�o ��m an to�n t�i s�n, xin h�y ��m b�o h�nh trang c�n th�a %d � tr�ng.",nFreeCount))
			return 0
		end
	end
	return 1
end

function pActivity:SureHandIn(tbMaterial, nTaskId, nCount)
	if nCount <= 0 then
		return 
	end	
	--Ki�m tra s� l��ng giao n�p c� v��t qu� gi�i h�n - Modified by DinhHQ - 20111101
	local nMaxCount = 0
	if nTaskId == %TSK_HandInBook then
		nMaxCount = %nMaxBookCount + self:GetTask(%TSK_UsedTianyuhun) * %nPerTianyuhun - self:GetTask(%TSK_HandInBook) - nCount
	elseif nTaskId == %TSK_HandInPaper then
		nMaxCount = %nMaxPaperCount + self:GetTask(%TSK_UsedZhienhua) * %nPerZhienhua - self:GetTask(%TSK_HandInPaper) - nCount
	end	
		
	if nMaxCount < 0 then
		Say("S� l��ng v��t qu� gi�i h�n, xin h�y nh�p s� kh�c!")
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
		[1]={szName="Gi�y Tr�ng",tbProp={6,1,3039,1,0,0},},	
	}
	local nMaxCount = %nMaxPaperCount + self:GetTask(%TSK_UsedZhienhua) * %nPerZhienhua - self:GetTask(%TSK_HandInPaper)
	if nMaxCount < 1 then
		Say("Hi�n t�i s� l�n giao n�p c�a ng��i �� ��t ��n gi�i h�n cao nh�t, kh�ng th� giao n�p ���c n�a")
		return 
	end
	nMaxCount = min(%nMaxAskNumber, nMaxCount)
	local nItemCount = self:GetItemCount(tbPape)	
	nMaxCount = min(nMaxCount, nItemCount)
	if self:CheckItemCount(nMaxCount, 1) ~= 1 then
		return
	end
	g_AskClientNumberEx(0,nMaxCount, format("Nh�p s� (0-%d)", nMaxCount), {self.SureHandIn, {self,tbPape,%TSK_HandInPaper}})
end

function pActivity:TeacherAward()
	local nStartTime = 20161127
	if tonumber(GetLocalDate("%Y%m%d")) ~= nStartTime then
		Say("Ch� c� th� v�o ng�y <color=yellow>27/11<color> m�i nh�n ���c ph�n th��ng n�y, hi�n t�i kh�ng th� nh�n ���c")
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
	print("Nh�n ph�n th��ng �� ph� Kim �")
	local szTitle = "Xin h�y l�a ch�n �� Ph� m� ng��i mu�n nh�n:"
	local tbOpt = {}
	for nIndex=1,getn(%tbJinwu) do
		tinsert(tbOpt, {%tbJinwu[nIndex].szName, self.SelectJinWu,{self, nIndex}})
	end
	tinsert(tbOpt, {"�� ta suy ngh� l�i ��!", cancel})
	CreateNewSayEx(szTitle, tbOpt)
end

function pActivity:SelectJinWu(nIndex)
	local nFreeItemCellLimit = 1
	if CalcFreeItemCellCount() < nFreeItemCellLimit then
		Say(format("�� ��m b�o an to�n cho t�i s�n c�a b�n, xin h�y ��m b�o r�ng �t nh�t <color=yellow>%d <color> � tr�ng h�nh trang",nFreeItemCellLimit))
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
	Msg2Player(format("S� d�ng th�nh c�ng <color=yellow>%s<color>, nh�n ���c <color=yellow>%d<color> giao n�p <color=yellow>%s<color> l�n","Hoa Tri �n",%nPerZhienhua,"Gi�y Tr�ng"))
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
	Msg2Player(format("S� d�ng th�nh c�ng <color=yellow>%s<color>, nh�n ���c <color=yellow>%d<color> giao n�p <color=yellow>%s<color> l�n","Thi�n V� H�n",%nPerTianyuhun,"Cu�n S�ch"))
end

function pActivity:CheckBookLimit()
	local nMaxCount = %nMaxBookCount + self:GetTask(%TSK_UsedTianyuhun) * %nPerTianyuhun - self:GetTask(%TSK_HandInBook)
	if nMaxCount < 1 then
		Say("��i hi�p �� s� d�ng t�i �a v�t ph�m n�y, kh�ng th� s� d�ng th�m!")
		return nil
	end
	return 1
end

function pActivity:UseBook()
	self:AddTask(%TSK_HandInBook,1)	

	local diemkn = 
	{ 
		{szName = "900.000 �i�m Kinh Nghi�m", nExp=900000,nRate=100},
	}
	tbAwardTemplet:Give(diemkn,1,{%szEventName, "DiemKNMacDinh900000", "DiemKNMacDinh900000"})

	local tbTranslog = {strFolder = "201111_20Thang11/", nPromID = 16, nResult = 1}
	tbAwardTemplet:Give(%tbBookAward, nCount, {%szEventName, "SuDungCuonSachNhanVatPham", tbTranslog})
	local nUseTime = self:GetTask(%TSK_HandInBook)
	Msg2Player("��i hi�p �� s� d�ng cu�n s�ch th�: "..nUseTime.."")
	if %tbBookPartAward[nUseTime] then
		Msg2Player("Ph�n th��ng s� d�ng cu�n s�ch ��t m�c: "..nUseTime.."")
		tbAwardTemplet:Give(%tbBookPartAward[nUseTime], 1, {%szEventName, "PhanThuongBookDatMoc", "PhanThuongBookDatMoc"})
	end	
end

function pActivity:UseHopQuaNhaGiaoVietNam()
	self:AddTask(%TSK_SuDungHopQua,1)
	local nUseTime = self:GetTask(%TSK_SuDungHopQua)

	local tbhopqua = 
	{ 
		{szName = "900 000 �i�m Kinh Nghi�m", nExp=900000,nRate=100},
	}
	Msg2Player("S� d�ng h�p qu� th�: "..nUseTime.."")
	local tbTranslog = {strFolder = "201111_20Thang11/", nPromID = 16, nResult = 1}
	tbAwardTemplet:Give(tbhopqua,1,{%szEventName, "PhanThuongMoHopQuaNhaGiaoVietNam", tbTranslog})
end

pActivity.nPak = curpack()