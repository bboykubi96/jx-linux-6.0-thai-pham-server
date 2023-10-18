
Include("\\script\\activitysys\\config\\20\\head.lua")
Include("\\script\\activitysys\\config\\20\\variables.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\caiji\\rule.lua")
IncludeLib("SETTING")
Include("\\script\\lib\\log.lua")
pActivity.nPak = curpack()

tbSheduleDate =
{
	{16,00},
	{16,20},
	{16,40},
	{20,00},
	{20,20},
	{20,40},
}

function pActivity:CalcNextTime()	
	local nCurTime = GetCurServerTime()
	local nYear = tonumber(GetLocalDate("%Y"))
	local nMonth = tonumber(GetLocalDate("%m"))
	local nDay = tonumber(GetLocalDate("%d"))
	for i=1, getn(%tbSheduleDate) do
		local pTime = %tbSheduleDate[i]
		local nStartTime = Tm2Time(nYear, nMonth, nDay, pTime[1],pTime[2])
		if nCurTime < nStartTime then
			return nStartTime - nCurTime		
		end
	end
	local nNextDayTime = Tm2Time(nYear, nMonth, nDay, %tbSheduleDate[1][1],%tbSheduleDate[1][2]) + 24*60*60
	return nNextDayTime - nCurTime
end


function pActivity:InitRule()
	%PlayerHandle:Init(self.TaskGroup, TSKI_RANK, TSKI_AWARD_FLAG, TSKI_SIGNUP_COUNT)
	local nNextTime = self:CalcNextTime()
	
	if SubWorldID2Idx(11) > 0 then
		PreApplyDungeonMap(TEMPLATE_MAP_ID, 0, 0)
		AddTimer(nNextTime * 18, "pActivity:OnShedule", 0)
	end
end

function pActivity:OnShedule()
	if self:IsExpired() then
		return 0
	end
	if self:CheckDate() then			
		local pDungeonType = DungeonType["collection rice plant"]
		if pDungeonType then
			local pDungeon = pDungeonType:new_dungeon(TEMPLATE_MAP_ID)
			if pDungeon then
				self.nCurDungeonMapId = pDungeon.nMapId
			end
		end
		
	end
	return INTERVAL_MINUTE * 60 * 18
end

function pActivity:SignUp()
	if not self.nCurDungeonMapId then
		return Talk(1, "", "ho�t ��ng n�y v�n ch�a m�, th�i gian m� l� t� 16h ��n 17h v� 20h ��n 21h")
	end
	local pDungeon = DungeonList[self.nCurDungeonMapId]
	if pDungeon then
		if pDungeon.szState ~= "ready" then
			return Talk(1, "", "b�y gi� kh�ng ph�i l� giai �o�n b�o danh")
		end
		
		if pDungeon:GetTotalMemberCount() >= 150 then
			return Talk(1, "", "S� th�nh vi�n ��ng k� tham gia �� ��, xin h�y ��i l��t sau.")
		end
		
		if ST_IsTransLife() ~= 1  and GetLevel() < 150 then
			return Talk(1, "", format("ch�a �� c�p %d ho�c l� ch�a tr�ng sinh kh�ng th� tham gia ho�t ��ng n�y", 150))
		end
		local nBagUsedCount = PlayerFunLib:GetTaskDailyCount(VN_TSK_USE_BAG_DAILY)
		if PlayerHandle:GetSignUpCount() >= MAX_SIGNUP_COUNT + nBagUsedCount then
			return Talk(1, "", format("m�i ng�y ch� c� th� tham gia nhi�u nh�t %d tr�n", MAX_SIGNUP_COUNT + nBagUsedCount))
		end
		
		local nRank = PlayerHandle:GetRank()
		local nFlag = PlayerHandle:GetAwardFlag()
		if nRank > 0 and nRank <= 10 and nFlag == 0 then
			return Talk(1, "", "ng��i ph�i nh�n ph�n th��ng b�ng x�p h�ng tr��c r�i m�i tham gia ���c")
		end
		
		local pMember = pDungeon:NewMember()
		local nMapId, nX, nY = pDungeon:GetReadyScenePos()
		
		pMember:MoveTo(nMapId, nX, nY)
	else
		return Talk(1, "", "ho�t ��ng n�y v�n ch�a m�, th�i gian m� l� t� 16h ��n 17h v� 20h ��n 21h")
	end
end

function pActivity:GetRankAward()
	local nRank = PlayerHandle:GetRank()
	local nFlag = PlayerHandle:GetAwardFlag()
	if nFlag == 1 then
		return Talk(1, "", "Ng��i �� nh�n ph�n th��ng r�i")
	end
	if nRank <= 0 then
		return Talk(1, "", "ng��i kh�ng c� x�p h�ng n�n kh�ng th� nh�n ph�n th��ng n�y")
	end
	
	local szRankMsg = format("x�p h�ng c�a ng��i l� %d", nRank)
	if nRank > 10 then
		return Talk(1, "", format("%s,%s", szRankMsg, "kh�ng th� nh�n ph�n th��ng"))
	end
	local tbAward = RANK_AWARD[nRank]
	if tbAward then
		PlayerHandle:SetAwardFlag(1)
		Msg2Player(format("%s.", szRankMsg))
		%tbAwardTemplet:Give(tbAward, 1, {"Event_Thang6", "get rank award"})
	end
end

function pActivity:UseBagLog()
	%tbLog:PlayerActionLog("Event_Thang6", "SuDungTuiHuong")
end

function pActivity:SuDungBaoGaoThuong()
	local solansudung = self:GetTask(%TSK_SUDUNGBAOGAOTHUONG)
	Msg2Player("�� s� d�ng: <color=yellow>" .. solansudung .. "<color> l�n")
end

function pActivity:SuDungBaoGaoThom()
	local solansudung = self:GetTask(%TSK_SUDUNGBAOGAOTHOM)
	Msg2Player("�� s� d�ng: <color=pink>" .. solansudung .. "<color> l�n")
end

function pActivity:SuDungBaoGaoDB()
	
	local nCurCount = self:GetTask(%TSK_SUDUNGBAOGAODB)
	Msg2Player("�� s� d�ng: <color=green>" .. nCurCount .. "<color> l�n")

	Ladder_NewLadder(10282, GetName(),nCurCount,0,GetLastFactionNumber());

	--Diem kn dat moc
	local tbBonusAward = {
		[100] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 3000000}, --Hoa son
			--{szName = "Chi�u d�", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*14},
			{szName = "Qu� Hoa Th�u",tbProp={6,1,125,1,0,0},nCount=1,},
		},
		[200] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 4000000}, --Hoa son
			{szName = "Qu� Hoa Th�u",tbProp={6,1,125,1,0,0},nCount=1,},
		},
		[300] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 5000000}, --Hoa son
			{szName = "Qu� Hoa Th�u",tbProp={6,1,125,1,0,0},nCount=1,},
			
		},
		[400] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 6000000}, --Hoa son
			{szName = "Qu� Hoa Th�u",tbProp={6,1,125,1,0,0},nCount=1,},
			
		},
		[500] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 10000000}, --Hoa son
			--{szName = "��i th�nh b� k�p 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{
				{szName = "B� k�p 90",tbProp={6,1,random(27,28),1,0,0},nCount=1,nRate=33},
				{szName = "B� k�p 90",tbProp={6,1,random(33,43),1,0,0},nCount=1,nRate=33},
				{szName = "B� k�p 90",tbProp={6,1,random(45,59),1,0,0},nCount=1,nRate=34},
				
			},

			
		},
		[1000] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 20000000}, --Hoa son
			{szName = "��i th�nh b� k�p 90",tbProp={6,1,2424,1,0,0},nCount=1},
			
		},
	}

	if tbBonusAward[nCurCount] then
		tbAwardTemplet:Give(tbBonusAward[nCurCount], 1 , {EVENT_LOG_TITLE, format("SuDung%dlanBaoGaoDB", nCurCount)})
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng v�t ph�m Bao G�o ��c Bi�t ��n m�c <color=yellow>"..nCurCount.."<color>, nh�n ���c ph�n th��ng nh� �")
	end

	--Phan thuong them
	local tbItemAward = 
	{
			{szName = "Ph�c duy�n ti�u", tbProp={6,1,123,1,0,0},nCount=1, nRate =5},
			{szName = "Ph�c duy�n trung", tbProp={6,1,124,2,0,0},nCount=1, nRate =0.5},
			{szName = "Ph�c duy�n ��i", tbProp={6,1,125,3,0,0},nCount=1, nRate =0.3},
			{szName = "Ti�n th�o l� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.2},--1 cai
			{szName = "Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=1, nRate=2},--10 cai
			{szName = "N�n B�t tr�n ph�c nguy�t", nRate = 0.2,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "T� m�u l�nh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tinh h�ng b�o th�ch",tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "T� th�y tinh",tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "L�c th�y tinh",tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam th�y tinh",tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Qu� hoa t�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=2},--2 vien
			{szName = "Ch�a kh�a nh�� �",tbProp={6,1,2744,1,0,0},nCount=1,nRate=2},
			{szName = "L�nh b�i ho�n th�nh d� t�u",tbProp={6,1,4336,1,0,0},nCount=1,nRate=2},
			{szName= "T�i danh v�ng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai
			{szName = "Chi�u d�", tbProp={0,10,5,5,0,0},nCount=1,nRate=0.02},
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
	}
	tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "PhanThuongThemBaoGaoDB"})

end