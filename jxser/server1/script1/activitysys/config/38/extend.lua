Include("\\script\\activitysys\\config\\38\\head.lua")
Include("\\script\\activitysys\\config\\38\\variables.lua")
Include("\\script\\activitysys\\config\\38\\gift_pos.lua")
Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\config\\38\\award.lua")
Include("\\script\\lib\\awardtemplet.lua")

pActivity.nPak = curpack()

EVENT_LOG_TITLE = "SPRING FESTIVIAL"
function pActivity:InitAddNpc()
	self:AddPlutus()
	self:AddGiftNpc()
	self:AddAmbienceNpc()
end

function pActivity:PlayerOnLogin()

	if GetTask(3907) ~= 5 then
		SetTask(3907,5)--task kiem tra event dot truoc moi dot event tang len 1
		--SetTask(3908,0)--task nhan moc 1000
		--SetTask(3909,0)--task event loai 3
		--SetTask(3910,0) --ev kvan
		--SetTask(3911,0) --ev xu
		--SetTask(3912,0) --thuong free event
		self:SetTask(TSK_SUDUNG_BANHCHUNG,0)
		self:SetTask(TSK_SUDUNG_MAMNGUQUA,0)
		self:SetTask(TSK_BAOLIXISD,0)
		self:SetTask(TSK_BAOLIXI,0)
	end
end

function pActivity:UseNewYearGift()
	local AWARD_TABLE = tbAwardList["Gift_Item"]
	tbAwardTemplet:Give(AWARD_TABLE, 1, {EVENT_LOG_TITLE, "get gift award by item"})
	--mini game - Modified By DinhHQ - 20120103
	local nStartTime = 20170127
	local nEndTime = 20180305
	local nCurrTime = tonumber(GetLocalDate("%Y%m%d"))
	if nCurrTime >= nStartTime and nCurrTime < nEndTime then
		local tbMiniGameAward = 
		{
			{szName="M�t n� - Long Ch�u",tbProp={0,11,75,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="M�t n� - ��u R�ng",tbProp={0,11,76,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="M�t n� - Th�n R�ng",tbProp={0,11,77,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="M�t n� - �u�i R�ng",tbProp={0,11,78,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="M�t n� - ��u �ng ��a",tbProp={0,11,72,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="M�t n� - Nam S� ",tbProp={0,11,73,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="M�t n� - B�c S� ",tbProp={0,11,74,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="M�t n� - B�c S� ",tbProp={0,11,74,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="Ph�o hoa m�ng xu�n",tbProp={6, 1, 3087, 1,0,0},nCount=1,nRate=20,nExpiredTime=20180305,},
		}
		tbAwardTemplet:Give(tbMiniGameAward, 1, {EVENT_LOG_TITLE, "SuDungLeVatNamMoiNhanMatNa"})
	end
	
	--local solansudung = self:GetTask(%TSK_GET_NEWYEAR_GIFT_DAILY)
	--Msg2Player("H�m nay �� s� d�ng: " .. solansudung .. " l�n")

end

function pActivity:UseNewYearFireworks()
	local AWARD_TABLE = tbAwardList["Fireworks"]
	tbAwardTemplet:Give(AWARD_TABLE, 1, {EVENT_LOG_TITLE, "get gift award by item"})
	tbVngTransLog:Write("201201_event_tet/", 22, "SuDungPhaoHoaNamMoi", "N/A", 1)
	local nSkillId = 1175
	local _,nX32,nY32 = GetWorldPos()
	CastSkill(nSkillId, 1, nX32*32, nY32*32) -- ��������̻�����

	--local solansudung = self:GetTask(%TSK_USED_NEWYEAR_FIREWORKS)
	--Msg2Player("H�m nay �� s� d�ng: " .. solansudung .. " l�n")
end

function pActivity:CheckFireworksUseTime()
	local nStartTime = 20180127
	local nEndTime = 20180305
	local nCurrTime = tonumber(GetLocalDate("%Y%m%d"))
	
	if nCurrTime >= nStartTime and nCurrTime < nEndTime then
		return 1
	else
		Msg2Player(format("Th�i gian hi�n t�i kh�ng ��ng, xin h�y ��i ��n %3$d-%2$d-%1$d ��n %5$d-%4$d-%1$d h�y s� d�ng nh�!",2017,1,27,2,27))
	end
end

local tbPool = 
{
	[2] = {{nX = 2571, nY = 3509, nR = 100}},
}

function InMap(nMapId)
	local nFlag = 0
	for nTmpMapId, _ in %tbPool do
		if nTmpMapId == nMapId then
			nFlag = 1
			break
		end
	end
	return nFlag
end

function IsInDistance(nX, nY, tbPosList)
	for _, tbPos in tbPosList do
		local nDis = (nX - tbPos.nX)^2 + (nY - tbPos.nY)^2
--		print("nX, nY, nR,nDis", tbPos.nX, tbPos.nY, tbPos.nR, nDis)
		if tbPos.nR > nDis then
			return 1
		end
	end
	return
end

function pActivity:CheckFireworksUseTime()
	local nStartTime = 20180216
	local nEndTime = 20180220
	local nCurrTime = tonumber(GetLocalDate("%Y%m%d"))
	local nStartHour = 1900
	local nEndHour = 1916
	local nCurHour = tonumber(date("%H%M"))
	local nMapId, nX, nY = GetWorldPos()
	
	if not (nCurrTime >= nStartTime and nCurrTime < nEndTime) then
		Say("T� ng�y 16/02 ��n ng�y 19/02 m�i c� th� s� d�ng")
	elseif not (nCurHour >= nStartHour and nCurHour < nEndHour) then
		Say("V�o l�c 19h00 ��n 19h15 mang ph�o hoa n�y ��n ��nh Hoa S�n t�a �� 321/219 �� chung vui c�ng b�n h�u")
	elseif InMap(nMapId) ~= 1 then
		Say("Mang ph�o hoa n�y ��n ��nh Hoa S�n �� chung vui c�ng b�n h�u")
	elseif IsInDistance(nX, nY, %tbPool[nMapId]) ~= 1 then
		Say("Mang ph�o hoa n�y ��n ��nh Hoa S�n t�a �� 321/219 �� chung vui c�ng b�n h�u")
	else
		return 1
	end

end

function pActivity:AddPlutus()
	local szNpcName = "��i Th�n T�i"
	local nNpcId = 1528
	local tbNpcPos = {
		{176,1585,2953},
		{1,1584,3192},
		{37,1709,3118},
		{162,1621,3183},
		{78,1586,3223},
		{11,3139,5063}}
			
	NpcFunLib:AddDialogNpc(szNpcName, nNpcId, tbNpcPos)
end

function pActivity:AddGiftNpc()
	local nMapIndex = SubWorldID2Idx(%GIFT_MAPID)
	if nMapIndex < 0 then
		return
	end
	local szNpcName = "L� V�t N�m M�i"
	local nNpcId = 1288
	for i=1, getn(%GIFT_POS) do
		local nX, nY = %GIFT_POS[i][1], %GIFT_POS[i][2]
		local nNpcIndex = AddNpc(nNpcId, 1, nMapIndex, nX*32, nY*32, 0, szNpcName);
		SetNpcScript(nNpcIndex, "\\script\\activitysys\\config\\38\\npc_gift.lua")
	end
end

function pActivity:AddAmbienceNpc()
	Include("\\script\\activitysys\\config\\38\\ambience_npc.lua")
	DynamicExecute("\\script\\activitysys\\ambience.lua", "tbAmbience:CreateNpc",tbAmbienceNpc)
end


function pActivity:ExpiredTime()
	return self:IsExpired() 
end

function pActivity:CheckGifeGetDaily()
	if self:CheckTaskDaily(%TSK_GET_NEWYEAR_GIFT_DAILY, %MAX_GET_NEWYEAR_GIFT_DAILY, "H�m nay ng��i �� thu th�p ��, ng�y mai h�y quay l�i nh�!", "<") == 1 then
		return 1
	else
		return 0
	end
end

function pActivity:GetNewYearGift()
	self:AddTaskDaily(%TSK_GET_NEWYEAR_GIFT_DAILY, 1)
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

function pActivity:TetND2016_MamNguQua()

	local nCurCount = self:GetTask(%TSK_SUDUNG_MAMNGUQUA)
	nCurCount = nCurCount + 1
	Msg2Player("�� s� d�ng: " .. nCurCount .. " l�n")

	local tbExpAward = 
	{
		[1] = {szName = "�i�m kinh nghi�m", nExp = 1500000},
	}
	tbAwardTemplet:Give(tbExpAward, 1 , {EVENT_LOG_TITLE, "SuDungMamNguQuaMD"})
	--Phan thuong them
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

			{szName = "�i�m Kinh Nghi�m", nExp=2000000,nRate=0.5},
			{szName = "�i�m Kinh Nghi�m", nExp=4000000,nRate=0.5},
			{szName = "�i�m Kinh Nghi�m", nExp=6000000,nRate=0.5},
			{szName = "�i�m Kinh Nghi�m", nExp=8000000,nRate=0.5},
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
	tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "SuDungNguThaiKetTinh"})
	--Diem kn dat moc
	local tbBonusAward = {
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
			{szName = "�� ph� Ho�ng Kim - ��nh Qu�c � Sa Ph�t Qu�n",tbProp={6,1,384,1,0,0},nCount=2},
		},
		[1000] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp_tl = 7000000000}, 
			{szName = "Nh�t k� c�n kh�n ph�",	tbProp = {6,1,2126,1,0,0},nCount=1,},
			{szName = "Huy�n tinh c�p 8", tbProp={6,1,147,8,0,0},nCount=1,},
			{szName = "��i th�nh b� k�p 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=50,},
			{szName = "�� ph� Ho�ng Kim - An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={6,1,388,1,0,0},nCount=2},
		},
	}

	if tbBonusAward[nCurCount] then
		tbAwardTemplet:Give(tbBonusAward[nCurCount], 1 , {EVENT_LOG_TITLE, format("SuDung%dlanMamNguQua", nCurCount)})
		Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().."<color> s� d�ng ��n m�c <color=green>"..nCurCount.."<color> v�t ph�m M�m ng� qu�, nh�n ���c ph�n th��ng nh� �")
	end
	
end

function pActivity:TetND2016_BanhChungDacBiet()
	
	local tbExpAward = {
		[1] = {szName = "�i�m kinh nghi�m", nExp = 900000},
	}
	tbAwardTemplet:Give(tbExpAward, 1 , {EVENT_LOG_TITLE, "SuDungBanhChungDacBietMD"})

	local solansudung = self:GetTask(%TSK_SUDUNG_BANHCHUNG)
	solansudung = solansudung + 1
	Msg2Player("�� s� d�ng: " .. solansudung .. " l�n")
end

function pActivity:TetND2016_BaoLiXi()
	local tbItemAward = 
	{
		{szName="�i�m Kinh Nghi�m c�ng d�n", nExp_tl=random(100000000,200000000)},
	}
	tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "SuDungBaoLiXiNam2016"})
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Bao L� X� M�ng n�m m�i<color> t�i npc ��i Th�n T�i (T��ng D��ng 198/201)")
end