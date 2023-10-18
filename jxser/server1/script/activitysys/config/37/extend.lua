Include("\\script\\activitysys\\config\\37\\head.lua")
Include("\\script\\activitysys\\config\\37\\variables.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")

function pActivity:AddInitNpc()
	local tbNpcPos = {
		--[1] = {176,1566,2944,},
		[1] = {78,1572,3232,},
		--[3] = {162,1588,3145,},
	}
	local tbNpc = {	
			szName = "�ng Gi� Noel", 
			nLevel = 95,
			nNpcId = 1880,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	}

	local tbNpcPos1 = {
		[1] = {78,1576,3237,},
	}
	local tbNpc1 = {	
			szName = "��i T�ng Gi�ng Sinh", 
			nLevel = 95,
			nNpcId = 645,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	}

	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	end

	for i=1,getn(tbNpcPos1) do
		local nMapId1, nPosX1, nPosY1 = unpack(tbNpcPos1[i])
		basemission_CallNpc(tbNpc1, nMapId1, nPosX1 * 32, nPosY1 * 32)	
	end

end

function pActivity:PhanThuongDemGiangSinh()
	local nStartTime = 20171225
	if tonumber(GetLocalDate("%Y%m%d")) ~= nStartTime then
		Say("Ch� c� th� v�o ng�y <color=yellow>25/12<color> m�i nh�n ���c ph�n th��ng n�y, hi�n t�i kh�ng th� nh�n ���c")
		return 
	end
	local tbTeacherEXP = { {nExp_tl=1,nCount = 200000000,}, }
	tbAwardTemplet:Give(tbTeacherEXP,1,{%szEventName, "PhanThuongDemGS", "PhanThuongDemGS"})
	self:AddTask(%TSK_PHAN_THUONG_DEM_GS, 1)
end

function pActivity:YDBZ_GiveStar(YDBZ_mission_match, nTeam)
	local pidx,nj
	local tbPlayer = {}
	local nPlayerCount = 0
	local nOldPlayer = PlayerIndex
	
	for nj = 1, 10 do
		idx , pidx = GetNextPlayer(YDBZ_mission_match, idx, nTeam )
		if pidx > 0 then
			PlayerIndex = pidx
			if PlayerFunLib:CheckTotalLevel(80, "", ">=") == 1 then
				nPlayerCount = nPlayerCount + 1
				tbPlayer[nPlayerCount] = {pidx, 1}
			end
		end
		
		if idx == 0 then
			break;
		end
	end 
	
	for nj = 1, nPlayerCount do
		CallPlayerFunction(tbPlayer[nj][1], PlayerFunLib.GetItem, PlayerFunLib, ITEM_XMAS_STAR, 1, EVENT_LOG_TITLE, "YDBZ_GiveStar")
	end	
end


function pActivity:GiveXmasTrousers()
	local nDate = self:GetTask(TSK_LAST_ONLINEDATA)
	local nNowDate = tonumber(GetLocalDate("%Y%m%d"))
	local nHour = 0
	local nCurrentOnLineTime = 0
	local nLastOnLineTime = 0
	local nCount = 0
	if nDate == nNowDate then	
		nLastOnLineTime = self:GetTask(TSK_LAST_ONLINETIME)
		nCurrentOnLineTime = GetGameTime()
		nHour = floor((nCurrentOnLineTime - nLastOnLineTime) / 60 / 60)
		nCurrentOnLineTime = nLastOnLineTime + nHour * 60 * 60
	else 
		local nCurrentH = tonumber(GetLocalDate("%H"))
		local nCurrentM = tonumber(GetLocalDate("%M"))
		local nCurrentS = tonumber(GetLocalDate("%S"))
		nHour = nCurrentH 
		nCurrentOnLineTime = GetGameTime() - nCurrentM * 60 - nCurrentS
	end
	
	nCount = nHour * 10
	if nCount <= 0 then
		Msg2Player("Kho�ng c�ch nh�n l�n tr��c, th�i gian tr�n m�ng c�a ng��i ch�a �� 1 gi�, kh�ng th� nh�n")
		return 
	end
	local nMaxCount = 50 -  self:GetTaskDaily(TSK_XMAS_TROUSERS_DAILY)
	nMaxCount = min(nMaxCount, nCount)
	if nMaxCount <= 0 then
		Msg2Player("H�m nay ng��i kh�ng th� nh�n n�a, ng�y mai h�y quay l�i.")
		return 
	end
	
	if PlayerFunLib:CheckFreeBagCell(1,"default") ~= 1 then
		return
	end
	
	self:SetTask(TSK_LAST_ONLINETIME,nCurrentOnLineTime)
	self:SetTask(TSK_LAST_ONLINEDATA,nNowDate)

	PlayerFunLib:GetItem(ITEM_XMAS_TROUSERS,nMaxCount, EVENT_LOG_TITLE, "GiveXmasTrousers")
	local tbPumpkinPie = {szName="B�nh b� ��",tbProp={6,1,30166,1,0,0},nExpiredTime=NgayHetHanEventGS,}
	PlayerFunLib:GetItem(tbPumpkinPie,floor(nMaxCount/10)*40, EVENT_LOG_TITLE, "GivePumpkinPie")
	self:AddTaskDaily(TSK_XMAS_TROUSERS_DAILY, nMaxCount)
end


function pActivity:CheckRandom(nSuccess, szFailLog)
	local rcur=random(1,100)
	if rcur <= nSuccess then
		return 1
	else
		Msg2Player("Th�t ��ng ti�c, l�n h�p th�nh n�y �� th�t b�i, xin h�y th� l�i!")
		szFailLog = szFailLog or ""
		%tbLog:PlayerActionLog(szFailLog, EVENT_LOG_TITLE)
		return 0
	end
end

-- �ϳ�ʥ�����
function pActivity:ComposeXmasGift(nCount)
	for i=1,nCount do
		local nSuccess = 70
		if self:CheckRandom(nSuccess,"GhepHopQuaNoelThatBai") == 1 then
			PlayerFunLib:GetItem({szName = "H�p qu� gi�ng sinh", tbProp={6,1,3080,1,0,0},nExpiredTime=NgayHetHanEventGS,},1, EVENT_LOG_TITLE, "GhepHopQuaNoelThanhCong")
		end
	end
end

-- �ϳ�ʥ�����ˣ�С��
function pActivity:ComposeXmasPerson_S(nCount)
	for i=1,nCount do
	--Change request Event Noel - Modified by DinhHQ - 20111129
		local nSuccess = 70
		if self:CheckRandom(nSuccess, "GhepNguoiTuyet(nho)ThatBai") == 1 then
			PlayerFunLib:GetItem({szName = "�ng Gi� Noel (nh�)", tbProp={6,1,3077,1,0,0},nExpiredTime=NgayHetHanEventGS,},1, EVENT_LOG_TITLE, "GhepNguoiTuyet(nho)ThanhCong")
		end
	end
end

function pActivity:GiveItemAward(tbAward, tbComposeLog, szLogAction, nTaskId)
	tbAwardTemplet:Give(tbAward, 1 , {EVENT_LOG_TITLE, szLogAction})
	local nCount = self:GetTask(nTaskId) + 1
	self:SetTask(nTaskId, nCount)
	Msg2Player("S� d�ng l�n th�: " ..nCount.."")
	if tbComposeLog[nCount] then
		tbLog:PlayerActionLog(tbComposeLog[nCount], EVENT_LOG_TITLE)
	end
end

function pActivity:UseXmasPerson_S()
	local tbAward = 
	{
		[1]={nExp=2000000,},
	}
	local tbUseLog = {
		[500] = "SuDung500LanNguoiTuyet(nho)",
		[1000] = "SuDung1000LanNguoiTuyet(nho)",
		}

	self:GiveItemAward(tbAward, tbUseLog, "UseXmasPerson_S", TSK_XMAS_PERSON_S_LIMIT)
end

function pActivity:UseXmasPerson_M()
	local tbAward = 
	{
		[1]={szName="Huy�n Tinh Kho�ng Th�ch ",tbProp={6,1,147,1,0,0},},
		[2]={nExp_tl=1,},
	}
	local tbUseLog = {
		[50] = "SuDung50LanNguoiTuyet(trung)",
		[100] = "SuDung100LanNguoiTuyet(trung)",
		[150] = "SuDung150LanNguoiTuyet(trung)",
		[200] = "SuDung200LanNguoiTuyet(trung)",
		}
	
	self:GiveItemAward(tbAward, tbUseLog, "SuDungNguoiTuyet(trung)NhanVatPham", TSK_XMAS_PERSON_M_LIMIT)
end

function pActivity:UseXmasPerson_L()
	local tbAward = 
	{
		[1]={nExp=10e6,},
		[2]={
			{szName = "�i�m Kinh Nghi�m", nExp=8000000,nRate=35},
			{szName = "�i�m Kinh Nghi�m", nExp=10000000,nRate=16},
			{szName = "�i�m Kinh Nghi�m", nExp=15000000,nRate=6},
			{szName = "�i�m Kinh Nghi�m", nExp=20000000,nRate=1.37},
			{szName = "�i�m Kinh Nghi�m", nExp=50000000,nRate=0.5},
			{szName = "�i�m Kinh Nghi�m", nExp=100000000,nRate=0.5},
			{szName = "�i�m Kinh Nghi�m", nExp=200000000,nRate=0.01},
		},		
	}
	local tbUseLog = {
		[50] = "SuDung50LanNguoiTuyet(lon)",
		[100] = "SuDung100LanNguoiTuyet(lon)",
		[200] = "SuDung200LanNguoiTuyet(lon)",
		[300] = "SuDung300LanNguoiTuyet(lon)",
		[400] = "SuDung400LanNguoiTuyet(lon)",
		[500] = "SuDung500LanNguoiTuyet(lon)",
		[600] = "SuDung600LanNguoiTuyet(lon)",
		[700] = "SuDung700LanNguoiTuyet(lon)",
		[800] = "SuDung800LanNguoiTuyet(lon)",	
		}
	local tbExtAward = {
		[50] = {nExp=20000000,},
		[100] = {nExp=20000000,},
		[200] = {nExp=20000000,},
		[300] = {nExp=20000000,},
		[400] = {nExp=30000000,},
		[500] = {nExp=40000000,},
		[600] = {nExp=50000000,},
		[700] = {nExp=60000000,},
		[800] = {nExp=100000000,},
	}
	--B� sung ph�n th��ng ��t m�c s� d�ng ng��i tuy�t l�n - Modified By DinhHQ - 20111129
	local nCount = self:GetTask(TSK_XMAS_PERSON_L_LIMIT) + 1
	if tbExtAward[nCount] then
		tbAwardTemplet:Give(tbExtAward[nCount], 1 , {EVENT_LOG_TITLE, tbUseLog[nCount]})
	end
	self:GiveItemAward(tbAward, {}, "SuDungNguoiTuyet(lon)NhanVatPham", TSK_XMAS_PERSON_L_LIMIT)	
end

function pActivity:UseXmasGift()
	local tbAward = 
	{
		[1]={nExp=1500000,},		
	}

	tbAwardTemplet:Give(tbAward, 1 , {"SuDungHopQuaNoel", "SuDungHopQuaNoel"})
	self:AddTask(TSK_XMAS_GIFT_LIMIT, 1)
	local nUseTime = self:GetTask(%TSK_XMAS_GIFT_LIMIT)
	Msg2Player("��i hi�p �� s� d�ng l�n th�: <color=green>"..nUseTime.."<color>")

end

function pActivity:UseXmasCake()
	local tbAward = 
	{
		nExp=1500000,
	}

	tbAwardTemplet:Give(tbAward, 1 , {"SuDungBanhGiangSinh", "SuDungBanhGiangSinh"})
	self:AddTask(TSK_XMAS_CAKE_LIMIT, 1)
	local nUseTime = self:GetTask(%TSK_XMAS_CAKE_LIMIT)
	Msg2Player("��i hi�p �� s� d�ng l�n th�: <color=yellow>"..nUseTime.."<color>")
end

function pActivity:PlayerOnLogin()
	local nDate = self:GetTask(TSK_LAST_ONLINEDATA)
	local nNowDate = tonumber(GetLocalDate("%Y%m%d"))
	local nCount = 0
	if nDate ~= nNowDate then	-- �������¼����ͬһ��
		nCurrentOnLineTime = GetGameTime()
		self:SetTask(TSK_LAST_ONLINETIME,nCurrentOnLineTime)
		self:SetTask(TSK_LAST_ONLINEDATA,nNowDate)
	end

	if GetTask(3907) ~= 2 then
		SetTask(3907,2)--task kiem tra event dot truoc moi dot event tang len 1
		SetTask(3908,0)--task nhan moc 1000
		SetTask(3909,0)--task event loai 3
		SetTask(3910,0) --ev kvan
		SetTask(3911,0) --ev xu
		SetTask(3912,0) --thuong free event
		self:SetTask(TSK_XMAS_GIFT_LIMIT,0)
		self:SetTask(TSK_XMAS_CAKE_LIMIT,0)
		self:SetTask(TSK_XMAS_PERSON_S_LIMIT,0)
		self:SetTask(TSK_XMAS_PERSON_M_LIMIT,0)
		self:SetTask(TSK_XMAS_PERSON_L_LIMIT,0)
		self:SetTask(TSK_XMAS_TROUSERS_DAILY,0)
		self:SetTask(TSK_LAST_ONLINETIME,0)
		self:SetTask(TSK_LAST_ONLINEDATA,0)
		self:SetTask(TSK_ONG_GIA_NOEL_HONG,0)
		self:SetTask(TSK_PHAN_THUONG_DEM_GS,0)
	end
end

--Nhan den bu giang sinh
function pActivity:CheckTimeGetCompensation()
	local nNowDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if nNowDate < 201112020900 or nNowDate >= 201112040000 then
		Talk(1, "", "Xin th� l�i, hi�n t�i �� qua th�i gian nh�n th��ng")
		return nil
	end
	return 1
end

--Ho�t ��ng th� 3 - Modified By DinhHQ - 20111215
function pActivity:CheckTimeGetFreeExp()
	local nNowDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if nNowDate < 201512240000 or nNowDate >= 201512252400 then
		Talk(1, "", "Xin th� l�i, hi�n t�i kh�ng ph�i l� th�i gian nh�n th��ng")
		return nil
	end
	return 1
end

IncludeLib("RELAYLADDER");

function pActivity:XemTOP3Event()
	local sResult = ""
	for i = 1, 3 do
		local nten, ncap,nphai = Ladder_GetLadderInfo(10282, i)
		sResult = sResult.."\r\n TOP "..i.." - <"..nten.."> s� l�n: <"..ncap..">"
	end
	Say("Danh s�ch b�ng x�p h�ng TOP 3 event k� n�y: \r\n" .. sResult)
end

function pActivity:UseXmasPerson_Pink()

	self:AddTask(TSK_ONG_GIA_NOEL_HONG,1)
	local nUseTime = self:GetTask(%TSK_ONG_GIA_NOEL_HONG)
	Msg2Player("S� d�ng l�n th�: <color=cyan>" ..nUseTime.."<color>")

	--Ladder_NewLadder(10282, GetName(),nUseTime,0,GetLastFactionNumber());

	if nUseTime <= 1000 then --nho hon 1000 moi duoc diem kinh nghiem
		local tbExpAward = 
		{
			[1] = {szName = "�i�m kinh nghi�m", nExp = 1500000},
		}
		tbAwardTemplet:Give(tbExpAward, 1 , {EVENT_LOG_TITLE, "SuDungOngGiaNoelHong"})
	end

	local tbBonusAward = 
	{
		[500] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 150000000},},
		[600] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 160000000},},
		[700] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 170000000},},
		[800] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 180000000},},
		[900] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 190000000},
			{szName = "M�t n� V��ng Gi�", tbProp = {0,11,561,1,0,0}, nExpiredTime = 60*24*15, nCount=1},
			{szName = "Th�t tinh th�o", tbProp={6,1,1673,1,0,0},nCount=1, },
			{szName = "B�ch ni�n th�t tinh th�o", tbProp={6,1,1674,1,0,0},nCount=1, },
			{szName = "Thi�n ni�n th�t tinh th�o", tbProp={6,1,1675,1,0,0},nCount=1, },
			{szName = "B�c ��u truy�n c�ng thu�t", tbProp={6,1,1672,1,0,0},nCount=1, },
		},
		[1000] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp_tl = 7000000000}, 
			{szName = "Nh�t k� c�n kh�n ph�",	tbProp = {6,1,2126,1,0,0},nCount=1,},
			{szName = "Huy�n tinh c�p 8", tbProp={6,1,147,8,0,0},nCount=1,},
			{szName = "��i th�nh b� k�p 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=50,},
		},
	}

	if tbBonusAward[nUseTime] then
		tbAwardTemplet:Give(tbBonusAward[nUseTime], 1 , {EVENT_LOG_TITLE, format("SuDung%dlanVatPhamOngGiaNoelHong", nUseTime)})
		local msgtbao = "Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng v�t ph�m Event ��n m�c <color=yellow>"..nUseTime.."<color>, nh�n ���c ph�n th��ng nh� �"
		Msg2SubWorld(msgtbao)
	end

	local tbItemAward = 
	{
			{szName = "Kim t�",tbProp={4,979,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Th�n b� kho�ng th�ch", tbProp={6,1,398,1,0,0},nCount=1, nRate =0.1},

			{szName = "Huy�n tinh c�p 1", tbProp={6,1,147,1,0,0},nCount=1, nRate =5},--25 cai
			{szName = "Huy�n tinh c�p 2", tbProp={6,1,147,2,0,0},nCount=1, nRate =0.5},
			{szName = "Huy�n tinh c�p 3", tbProp={6,1,147,3,0,0},nCount=1, nRate =0.3},
			{szName = "Huy�n tinh c�p 4", tbProp={6,1,147,4,0,0},nCount=1, nRate =0.2},
			{szName = "Huy�n tinh c�p 5", tbProp={6,1,147,5,0,0},nCount=1, nRate =0.1},

			{szName = "Ti�n th�o l� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.2},--1 cai
			{szName = "Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=1, nRate=2},--10 cai
			{szName = "N�n B�t tr�n ph�c nguy�t", nRate = 0.2,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "T� m�u l�nh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tinh h�ng b�o th�ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "T� th�y tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "L�c th�y tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam th�y tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Qu� hoa t�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "V� l�m m�t t�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},
			{szName = "T�y t�y kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.1},
			{szName= "T�i danh v�ng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai

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

			{szName = "�i�m Kinh Nghi�m", nExp=2000000,nRate=1},
			{szName = "�i�m Kinh Nghi�m", nExp=4000000,nRate=1},
			{szName = "�i�m Kinh Nghi�m", nExp=6000000,nRate=1},
			{szName = "�i�m Kinh Nghi�m", nExp=8000000,nRate=1},
			{szName = "�i�m Kinh Nghi�m", nExp=10000000,nRate=0.01},
			{szName = "�i�m Kinh Nghi�m", nExp=15000000,nRate=0.01},

			{szName = "L�nh b�i ho�n th�nh D� T�u",tbProp={6,1,4336,1,0,0},nCount=1,nRate=0.1},
			{szName = "C�ng Hi�n L� bao",tbProp={6,1,30214,1,0,0},nCount=1,nRate=0.02},
			{szName = "C�ng Hi�n ��i L� bao",tbProp={6,1,30215,1,0,0},nCount=1,nRate=0.01},
			{szName = "Ki�n Thi�t L� Bao",tbProp={6,1,30216,1,0,0},nCount=1,nRate=0.02},
			{szName = "Ki�n Thi�t ��i L� Bao",tbProp={6,1,30217,1,0,0},nCount=1,nRate=0.01},
			{szName = "Chi�n B� L� Bao",tbProp={6,1,30218,1,0,0},nCount=1,nRate=0.02},
			{szName = "Chi�n B� ��i L� Bao",tbProp={6,1,30219,1,0,0},nCount=1,nRate=0.01},

			{szName = "Ti�n th�o l� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1, nRate=1},
			{szName = "N�n B�t tr�n ph�c nguy�t", nRate = 0.5,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "T� m�u l�nh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},

			{szName = "T�n s� y�u b�i", tbProp={6,1,888,1,0,0},nCount=1, nRate =0.05},
			{szName = "C�c hoa th�ch", tbProp={4,963,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "B�ng th�ch k�t tinh", tbProp={4,967,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "B�ng thi�m t�", tbProp={4,965,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "K� huy�t th�ch", tbProp={4,966,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "M� n�o", tbProp={4,964,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "M�nh thi�n th�ch", tbProp={4,968,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "�i�n ho�ng th�ch", tbProp={4,969,1,1,0,0},nCount=1, nRate =0.2},
	}
	tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "SuDungOngGiaNoelHong"})
	
end

pActivity.nPak = curpack()