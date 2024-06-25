Include("\\script\\missions\\basemission\\class.lua")
IncludeLib("TIMER")
Include("\\script\\missions\\huashanqunzhan\\taskctrl.lua")
Include("\\script\\lib\\awardtemplet.lua")
if huashanqunzhan then
	--return 
end

huashanqunzhan = tbBaseMission:new() --´Ó»ùÀà¼Ì³ĞÏÂÀ´


local tbMissionData = 
{
	nLatencyTime		= 35,
	nDuelTime			= 20,
	szPlayerDeathScript	= "\\script\\missions\\huashanqunzhan\\playerdeath.lua",
	szMatchName			= "L«i §µi Lo¹n ChiÕn"
}


tbMissionData.tbMissionV =
{
	MISSION_STATE	= 1,
	SECOND_COUNTER	= 2,
	PLAYER_COUNT	= 3,
	MATCH_ID		= 4,
}
tbMissionData.tbMissionS = 
{
	WINER_INDEX		= 1,
}
function huashanqunzhan:_init(tbMissionData, tbRef)
	tbMissionData			= tbMissionData or {}
	self.tbLevelLimit		= tbMissionData.tbLevelLimit or self.tbLevelLimit
	self.nMissionId			= tbMissionData.nMissionId or self.nMissionId
	self.tbTimer			= tbMissionData.tbTimer	 or self.tbTimer
	self.tbMissionV			= tbMissionData.tbMissionV or self.tbMissionV
	self.tbMissionS			= tbMissionData.tbMissionS or self.tbMissionS
	self.nMapId				= tbMissionData.nMapId or self.nMapId
	self.tbRef				= tbRef or self.tbRef
	self.nLatencyTime		= tbMissionData.nLatencyTime or self.nLatencyTime
	self.nDuelTime			= tbMissionData.nDuelTime or self.nDuelTime
	self.szMatchName		= tbMissionData.szMatchName or self.szMatchName
	self.szPlayerDeathScript= tbMissionData.szPlayerDeathScript or self.szPlayerDeathScript
	self.TSK_Kill			= 1773
	self.TSK_Winer			= 1774
	self.TSK_MatchId		= 1775
	self.nMoney				= 300000
	self.nPlayerCountLimit	= 300
	self.nMinPlayerCountLimit = 1
end

huashanqunzhan.tbRevPos = 
{
	{325, 1541, 3172},
	{325, 1549, 3168},
	{325, 1545, 3177},
	{325, 1537, 3179},
	{325, 1543, 3187},
	{325, 1553, 3195},
	{325, 1537, 3163},
	{325, 1530, 3153},
	{325, 1550, 3171},
	{325, 1542, 3181},
	{325, 1533, 3188},
	{325, 1543, 3191},
	{325, 1558, 3199},
	{325, 1534, 3197},
}

function huashanqunzhan:OnInit()
	
	SetMissionV(self.tbMissionV.MISSION_STATE, 1)
	SetMissionV(self.tbMissionV.MATCH_ID, tonumber(GetLocalDate("%y%m%d%H%M")))
	ClearMapTrap(self.nMapId); 
end
	
function huashanqunzhan:OnPlayerJoin()
ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 1)
	
	--doFunByPlayer(nPlayerIndex, SetTask, self.TSK_Kills, 0)
	
	
	--if Pay(self.nMoney) == 0 then
	--	self:GotoSignUpPlace()
	--	Msg2Player("Kh«ng ®ñ ng©n l­îng.")
		--return Say("Kh«ng ®ñ ng©n l­îng.", 0)
	--end
	
	SetMissionV(self.tbMissionV.PLAYER_COUNT, GetMissionV(self.tbMissionV.PLAYER_COUNT) + 1);
	
	
	SetTask(self.TSK_Kills, 0)
	SetTask(self.TSK_Winer, 0)
	SetTask(self.TSK_MatchId, GetMissionV(self.tbMissionV.MATCH_ID))
	SetDeathScript(self.szPlayerDeathScript)
	
	local nRand = random(1,getn(self.tbRevPos))
	SetTempRevPos(self.tbRevPos[nRand][1], self.tbRevPos[nRand][2]*32, self.tbRevPos[nRand][3]*32)
	--ÉèÖÃÓë°ï»áÓĞ¹ØµÄ±äÁ¿£¬²»ÔÊĞíÔÚ¾º¼¼³¡Õ½¸Ä±äÄ³¸ö°ï»áÕóÓªµÄ²Ù×÷
	SetTaskTemp(200,1);
	--ÉèÖÃÕ½¶·×´Ì¬
--		SetFightState(1);
	--Íæ¼ÒÍË³öÊ±£¬±£´æRV²¢£¬ÔÚÏÂ´ÎµÈÈëÊ±ÓÃRV(³ÇÊĞÖØÉúµã£¬·ÇÍË³öµã)
	SetLogoutRV(1);
	
	
	
	SetFightState(1);
	--ÎŞËÀÍö³Í·£
	SetPunish(0);
	--¹Ø±Õ×é¶Ó¹¦ÄÜ
	SetCreateTeam(0);
	LeaveTeam()
	--´ò¿ªPK¿ª¹Ø 
	
	--ÉèÖÃ³ğÉ±
	ForbidEnmity( 1 )
	--¿ªÊ¼Ó¦¸Ã¶¼²»ÄÜPK
	SetPKFlag(1)
	--½ûÖ¹½»Ò×;
	DisabledStall(1);
	ForbitTrade(0);
	ForbidChangePK(1);
	SetCurCamp(4);	--ÉèÖÃÁÙÊ±ÕóÓª
	DisabledUseTownP(1);	--½ûÖ¹Ê¹ÓÃ»Ø³Ì£»
	SetProtectTime(18*30) 
ChangeOwnFeature( 1, 3500*18, 1660,  0, 0, 0, 0)
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e6}}, "test", 1);
	WriteLogPro("dulieu/vaohoason.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da vao hoa son ton 5 xu dc 100tr kn\n");


	local nTimerCount = GetMissionV(self.tbMissionV.SECOND_COUNTER)
	local szMsg	= format("Thi ®Êu b¾t ®Çu, thêi gian cßn l¹i lµ <color=yellow>%d<color> phót.", self.nDuelTime - nTimerCount)
	Msg2Player(szMsg)
	Say("<color=white>+B¹n ®­îc tr¹ng th¸i bÊt tö trong 30s.\n+Chó ı: l«i ®µi cã thÓ lªn ho¾c xuèng ®­îc b»ng skill kinh kong\nPhót thø 15 cña trËn ®Êu tÊt c¶ nh©n vËt bŞ chuyÓn sang tr¹ng th¸i ®å s¸t.");
	PlayerFunLib:AddSkillState(1565,1,3,64800,1)
	return 1
end



function huashanqunzhan:OnLeave()
	ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 0)
	--¹Ø±Õ½ûÖ¹¹â»·
	ForbitAura(0)
	--¹Ø±ÕÉèÖÃÓë°ï»áÓĞ¹ØµÄ±äÁ¿£¬²»ÔÊĞíÔÚ¾º¼¼³¡Õ½¸Ä±äÄ³¸ö°ï»áÕóÓªµÄ²Ù×÷
	SetTaskTemp(200,0);
	--ÉèÖÃÕ½¶·×´Ì¬
	SetFightState(0);
	--Íæ¼ÒÍË³öÊ±£¬±£´æRV²¢£¬ÔÚÏÂ´ÎµÈÈëÊ±ÓÃRV(³ÇÊĞÖØÉúµã£¬·ÇÍË³öµã)
	--SetLogoutRV(0);
	--ËÀÍö³Í·£
	SetPunish(1);
	--¿ªÆô×é¶Ó¹¦ÄÜ
	SetCreateTeam(0);
	--´ò¿ªPK¿ª¹Ø 
	
	--ÉèÖÃ³ğÉ±
	ForbidEnmity( 0 )
	--¿ªÊ¼Ó¦¸Ã¶¼²»ÄÜPK
	SetPKFlag(0)
	--¹Ø±Õ½ûÖ¹½»Ò×;
	DisabledStall(0);
	ForbitTrade(0);
	
	local nCamp = GetCamp();
	SetCurCamp(nCamp);
	SetDeathScript(""); --Çå³ıËÀÍö½Å±¾
	ForbidChangePK(0);
	DisabledUseTownP(0);	--¹Ø±Õ½ûÖ¹Ê¹ÓÃ»Ø³Ì£»
RestoreOwnFeature();	
--Earn(150000)
--StackExp(5000000);
--TM_StopTimer(127)
end

function huashanqunzhan:OnClose()
	
	Msg2MSAll(self.nMissionId, "Th¾ng b¹i ®· ph©n ®Şnh.")
	SetMissionV(self.tbMissionV.MISSION_STATE, 2)
	local nPlayerCount	= GetMSPlayerCount(self.nMissionId, 0)
	local tbPlayer = {}
	if (nPlayerCount <= 0) then -- ±ÈÈü³¡Ã»ÈËÕß²»´¦Àí
		return
	end;
	local idx, pidx = 0, 0;
	for i = 1, nPlayerCount do
		idx, pidx = GetNextPlayer(self.nMissionId, idx, 0);
		if (pidx > 0) then
			tinsert(tbPlayer, pidx)
		end;
		
		if (idx == 0) then
			break;
		end;
	end
	
	self:Judge(tbPlayer)
	for i = 1, getn(tbPlayer) do
		doFunByPlayer(tbPlayer[i], self.GotoSignUpPlace, self)
	end
	
end

function huashanqunzhan:OnTimer()
	local nTimerCount = GetMissionV(self.tbMissionV.SECOND_COUNTER)
	nTimerCount = nTimerCount + 1
	SetMissionV(self.tbMissionV.SECOND_COUNTER, nTimerCount)
	local nPlayerCount = GetMSPlayerCount(self.nMissionId, 0)
	local szMsg	= format("Thêi gian thi ®Êu cßn l¹i lµ <color=yellow>%d<color> phót.", self.nDuelTime - nTimerCount)
	
	if nTimerCount >= self.nDuelTime or nPlayerCount <= 1 then
		self:OnClose()		
	else
		Msg2MSAll(self.nMissionId, szMsg)
		Msg2MSAll(self.nMissionId, format("Sè ng­êi cßn l¹i: %d",nPlayerCount))
	end
	
	if nTimerCount >= self.nLatencyTime then
		Msg2MSAll("Thêi gian ®· ®Õn.")
		self:CloseGame()
		return 
	end
	
	
end


function huashanqunzhan:Judge(tbPlayer)
	local nPlayerCount = getn(tbPlayer)
	
	if nPlayerCount > 1 then
		local compare = function (nPlayerIndex1, nPlayerIndex2)
			local Kills1 = doFunByPlayer(nPlayerIndex1, GetTask, %self.TSK_Kills)
			local Kills2 = doFunByPlayer(nPlayerIndex2, GetTask, %self.TSK_Kills)
			if Kills1 ~= Kills2 then
				return Kills1 > Kills2
			end
			local nLevel1 = doFunByPlayer(nPlayerIndex1, GetLevel)
			local nLevel2 = doFunByPlayer(nPlayerIndex2, GetLevel)
			if nLevel1 ~= nLevel2 then
				return nLevel1 < nLevel2
			end
			local nCurExp1 = doFunByPlayer(nPlayerIndex1, GetExp)
			local nCurExp2 = doFunByPlayer(nPlayerIndex2, GetExp)
			return nCurExp1 < nCurExp2
		end	
		sort(tbPlayer, compare)
	elseif nPlayerCount == 0 then
		return 
	end
	local szWinerName = doFunByPlayer(tbPlayer[1],GetName)
	local nCurTime = GetMissionV(self.tbMissionV.SECOND_COUNTER)
	
	local szMsg = format("<color=pink>B¹n lµ ng­êi chiÕn th¾ng cuèi cïng, trong vßng <color=yellow>%d<color> phót ph¶i ®Õn Hoa Son Lao Nhan ®Ó nhËn th­ëng qu¸ thêi h¹n sÏ kh«ng nhËn ®­îc n÷a.", self.nLatencyTime-nCurTime)
	ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 0)
	Msg2SubWorld(format("Ng­êi M¹nh NhÊt Server trªn <color=green>L«i §µi Lo¹n ChiÕn<color=yellow> H«m Nay Kh«ng Ai Kh¸c Chİnh Lµ: <color=pink>%s<color>.", szWinerName))
	doFunByPlayer(tbPlayer[1], SetTask, self.TSK_Winer, GetMissionV(self.tbMissionV.PLAYER_COUNT))
	doFunByPlayer(tbPlayer[1], Msg2Player, szMsg)
end
	


function huashanqunzhan:GotoSignUpPlace()
	local nRand = random(1,getn(self.tbRevPos))
	NewWorld(self.tbRevPos[nRand][1], self.tbRevPos[nRand][2], self.tbRevPos[nRand][3])
	
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

huashanqunzhan:_init(tbMissionData)
