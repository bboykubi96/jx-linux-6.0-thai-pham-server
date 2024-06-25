
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
		return Talk(1, "", "ho¹t ®éng nµy vÉn ch­a më, thêi gian më lµ tõ 16h ®Õn 17h vµ 20h ®Õn 21h")
	end
	local pDungeon = DungeonList[self.nCurDungeonMapId]
	if pDungeon then
		if pDungeon.szState ~= "ready" then
			return Talk(1, "", "b©y giê kh«ng ph¶i lµ giai ®o¹n b¸o danh")
		end
		
		if pDungeon:GetTotalMemberCount() >= 150 then
			return Talk(1, "", "Sè thµnh viªn ®¨ng ký tham gia ®· ®ñ, xin h·y ®îi l­ît sau.")
		end
		
		if ST_IsTransLife() ~= 1  and GetLevel() < 150 then
			return Talk(1, "", format("ch­a ®ñ cÊp %d hoÆc lµ ch­a trïng sinh kh«ng thÓ tham gia ho¹t ®éng nµy", 150))
		end
		local nBagUsedCount = PlayerFunLib:GetTaskDailyCount(VN_TSK_USE_BAG_DAILY)
		if PlayerHandle:GetSignUpCount() >= MAX_SIGNUP_COUNT + nBagUsedCount then
			return Talk(1, "", format("mçi ngµy chØ cã thÓ tham gia nhiÒu nhÊt %d trËn", MAX_SIGNUP_COUNT + nBagUsedCount))
		end
		
		local nRank = PlayerHandle:GetRank()
		local nFlag = PlayerHandle:GetAwardFlag()
		if nRank > 0 and nRank <= 10 and nFlag == 0 then
			return Talk(1, "", "ng­¬i ph¶i nhËn phÇn th­ëng b¶ng xÕp h¹ng tr­íc råi míi tham gia ®­îc")
		end
		
		local pMember = pDungeon:NewMember()
		local nMapId, nX, nY = pDungeon:GetReadyScenePos()
		
		pMember:MoveTo(nMapId, nX, nY)
	else
		return Talk(1, "", "ho¹t ®éng nµy vÉn ch­a më, thêi gian më lµ tõ 16h ®Õn 17h vµ 20h ®Õn 21h")
	end
end

function pActivity:GetRankAward()
	local nRank = PlayerHandle:GetRank()
	local nFlag = PlayerHandle:GetAwardFlag()
	if nFlag == 1 then
		return Talk(1, "", "Ng­¬i ®· nhËn phÇn th­ëng råi")
	end
	if nRank <= 0 then
		return Talk(1, "", "ng­¬i kh«ng cã xÕp h¹ng nªn kh«ng thÓ nhËn phÇn th­ëng nµy")
	end
	
	local szRankMsg = format("xÕp h¹ng cña ng­¬i lµ %d", nRank)
	if nRank > 10 then
		return Talk(1, "", format("%s,%s", szRankMsg, "kh«ng thÓ nhËn phÇn th­ëng"))
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
	Msg2Player("§· sö dông: <color=yellow>" .. solansudung .. "<color> lÇn")
end

function pActivity:SuDungBaoGaoThom()
	local solansudung = self:GetTask(%TSK_SUDUNGBAOGAOTHOM)
	Msg2Player("§· sö dông: <color=pink>" .. solansudung .. "<color> lÇn")
end

function pActivity:SuDungBaoGaoDB()
	
	local nCurCount = self:GetTask(%TSK_SUDUNGBAOGAODB)
	Msg2Player("§· sö dông: <color=green>" .. nCurCount .. "<color> lÇn")

	Ladder_NewLadder(10282, GetName(),nCurCount,0,GetLastFactionNumber());

	--Diem kn dat moc
	local tbBonusAward = {
		[100] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 3000000}, --Hoa son
			--{szName = "ChiÕu d¹", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*14},
			{szName = "QuÕ Hoa Thöu",tbProp={6,1,125,1,0,0},nCount=1,},
		},
		[200] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 4000000}, --Hoa son
			{szName = "QuÕ Hoa Thöu",tbProp={6,1,125,1,0,0},nCount=1,},
		},
		[300] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 5000000}, --Hoa son
			{szName = "QuÕ Hoa Thöu",tbProp={6,1,125,1,0,0},nCount=1,},
			
		},
		[400] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 6000000}, --Hoa son
			{szName = "QuÕ Hoa Thöu",tbProp={6,1,125,1,0,0},nCount=1,},
			
		},
		[500] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 10000000}, --Hoa son
			--{szName = "§¹i thµnh bÝ kÝp 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{
				{szName = "BÝ kÝp 90",tbProp={6,1,random(27,28),1,0,0},nCount=1,nRate=33},
				{szName = "BÝ kÝp 90",tbProp={6,1,random(33,43),1,0,0},nCount=1,nRate=33},
				{szName = "BÝ kÝp 90",tbProp={6,1,random(45,59),1,0,0},nCount=1,nRate=34},
				
			},

			
		},
		[1000] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 20000000}, --Hoa son
			{szName = "§¹i thµnh bÝ kÝp 90",tbProp={6,1,2424,1,0,0},nCount=1},
			
		},
	}

	if tbBonusAward[nCurCount] then
		tbAwardTemplet:Give(tbBonusAward[nCurCount], 1 , {EVENT_LOG_TITLE, format("SuDung%dlanBaoGaoDB", nCurCount)})
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông vËt phÈm Bao G¹o §Æc BiÖt ®Õn mèc <color=yellow>"..nCurCount.."<color>, nhËn ®­îc phÇn th­ëng nh­ ý")
	end

	--Phan thuong them
	local tbItemAward = 
	{
			{szName = "Phóc duyªn tiÓu", tbProp={6,1,123,1,0,0},nCount=1, nRate =5},
			{szName = "Phóc duyªn trung", tbProp={6,1,124,2,0,0},nCount=1, nRate =0.5},
			{szName = "Phóc duyªn §¹i", tbProp={6,1,125,3,0,0},nCount=1, nRate =0.3},
			{szName = "Tiªn th¶o lé §Æc BiÖt",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.2},--1 cai
			{szName = "Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nCount=1, nRate=2},--10 cai
			{szName = "NÕn B¸t tr©n phóc nguyÖt", nRate = 0.2,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "Tö mÉu lÖnh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tinh hång b¶o th¹ch",tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "Tö thñy tinh",tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lôc thñy tinh",tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam thñy tinh",tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "QuÕ hoa töu",tbProp={6,1,125,1,0,0},nCount=1,nRate=2},--2 vien
			{szName = "Ch×a khãa nh­­ ý",tbProp={6,1,2744,1,0,0},nCount=1,nRate=2},
			{szName = "LÖnh bµi hoµn thµnh d· tÈu",tbProp={6,1,4336,1,0,0},nCount=1,nRate=2},
			{szName= "Tói danh väng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai
			{szName = "ChiÕu d¹", tbProp={0,10,5,5,0,0},nCount=1,nRate=0.02},
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
	}
	tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "PhanThuongThemBaoGaoDB"})

end