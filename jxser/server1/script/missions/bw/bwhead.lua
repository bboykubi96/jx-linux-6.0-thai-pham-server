IncludeLib("RELAYLADDER")
Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")
Include("\\script\\missions\\bw\\bwdamagestat.lua")
--ÍË³öÓÎÏ·ºóµÄÖØÉúµãID,Ò²¾ÍÊÇ±¨ÃûµÄÄÇ¸öµØ·½°É
CS_RevId = 80;
CS_RevData = 36;

REVIVE_ID =
{
	[11] = {szMapName = "<#15751>", nPosId = 1,nMapId = 235},
	[78] = {szMapName = "<#15752>", nPosId = 1,nMapId = 236},
	[80] = {szMapName = "<#15753>", nPosId = 1,nMapId = 237},
	[238] = {szMapName = "<#15754>", nPosId = 1,nMapId = 238},
}

BW_PREPARATION_FIELD_ID = {235, 236, 237, 238};
--»á³¡ÍâµÄÎ»ÖÃ
BW_COMPETEMAP = {535, 210, 211};

--¼ÓÈëË«·½ÕóÓªÊ±µÄÎ»ÖÃ
CS_CampPos = {	{535, 1620, 3202},	--×ÏÉ«
				{535, 1620, 3202}, 	--ÂÌÉ«
				{535, 1620, 3202},   --¹ÛÕ½ÕßµÄÎ»ÖÃ°×É«
			 }; 
CS_CamperPos = {
				{1599, 3202, "Tr­¬ng Tam"},
				{1608, 3211, "Lı Tam"},
}
FRAME2TIME = 18;
--ÓÎÏ·µÄ×î´óÈËÊı
MAX_MEMBER_COUNT = 100;
--´æ´¢Íæ¼ÒµÄÎ»ÖÃµÄÈÎÎñ±äÁ¿
BW_SIGNPOSWORLD = 300;
BW_SIGNPOSX = 301;
BW_SIGNPOSY = 302;
MS_STATE = 1;
MS_MAXMEMBERCOUNT = 2;
CITYID = 6; --³ÇÊĞID
BW_KEY = 7; -- 0-100000000µÄËæ»úÊı
MS_NEWSVALUE = 9; --ÈÎÎñÖĞ´æ·ÅĞÂÎÅ±äÁ¿µÄµØ·½
MS_TEAMKEY = {10, 11};

MSS_CAPTAIN = {1, 2};
BW_SMALLTIME_ID = 10; --¶¨Ê±´¥·¢Æ÷
BW_TOTALTIME_ID = 11;
TIMER_1 = 20 * FRAME2TIME; -- 20Ãë¹«²¼Ò»ÏÂÕ½¿ö
TIMER_2 = 12 * 3 * TIMER_1 ; --½»Õ½×ÜÊ±¼äÎª10+2·ÖÖÓ

GO_TIME_GPZ = 6; -- ±¨ÃûÊ±¼äÎª2·ÖÖÓ
BW_MISSIONID = 4;

function Msg2AllPreparationFields(msg)
    if msg == nil or msg == "" then
        return nil;
    end

    local nOldSubWorld = SubWorld;
    for i = 1, getn(BW_PREPARATION_FIELD_ID) do
        SubWorld = SubWorldID2Idx(BW_PREPARATION_FIELD_ID[i]);
        Msg2SubWorld(msg);
    end
    
    SubWorld = nOldSubWorld;
end

function BW_SetRev()
--	if (GetTask(BW_SIGNPOSWORLD) == 80) then
--		SetRevPos(CS_RevId, CS_RevData)
--	elseif (GetTask(BW_SIGNPOSWORLD) == 78) then 
--		SetRevPos(29);--xy
--	else
--		SetRevPos(6);--cd
--	end;
	local nSignPosMapId = GetTask(BW_SIGNPOSWORLD)
	SetRevPos(nSignPosMapId, REVIVE_ID[nSignPosMapId].nPosId)
end;

--Íæ¼ÒÒªÇóÀë¿ªÓÎÏ·
function LeaveGame()
	local nGroupId = GetCurCamp() - 1
	BWDamageStat:FetchDamageToGroup(PlayerIndex, nGroupId)
	
	camp = GetCamp();--»Ö¸´Ô­Ê¼ÕóÓª
	SetFightState(0)
	if (GetCurCamp() == 2) then
		LeaveChannel(PlayerIndex, "L«i ®µi nhiÒu ng­êi bªn Gi¸p");
	elseif (GetCurCamp() == 3) then
		LeaveChannel(PlayerIndex, "L«i ®µi nhiÒu ng­êi bªn Êt");
	end;
	SetTaskTemp(200,0);
	SetPunish(1)--ÉèÖÃPK³Í·£
	SetPKFlag(0)--¹Ø±ÕPK¿ª¹Ø
	ForbidChangePK(0);
	RestoreOwnFeature()
	--´ò¿ª½»Ò×°ÚÌ¯
	DisabledStall(0);	--°ÚÌ¯
	ForbitTrade(0);	--½»Ò×
	SetCurCamp(GetCamp());
	DisabledUseTownP(0)
	ForbidEnmity(0);
	DelMSPlayer(BW_MISSIONID, PlayerIndex);
	SetLogoutRV(0);--ÉèÖÃÖØÉúµã
	SetCreateTeam(1);
	SetDeathScript("");--ÉèÖÃËÀÍö½Å±¾Îª¿Õ
	ForbitStamina(0)
	BWDamageStat:FinishPersonalStat(PlayerIndex)
end;

function GameOver()
	PTab = {};
	idx = 0;
	local i;
	local j = 1;
	for i = 1, 500 do 
		idx , pidx = GetNextPlayer(BW_MISSIONID, idx, 0);
		
		if (pidx > 0) then
			PTab[j] = pidx;
			j = j + 1;
		end;
		if (idx == 0 ) then 
			break
		end
	end
	
	PCount = getn(PTab);
	OldPlayer = PlayerIndex;
	for i  = 1, PCount do 
		PlayerIndex = PTab[i];
		DelMSPlayer(BW_MISSIONID, PlayerIndex);
		NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
	end;
	PlayerIndex = OldPlayer;
	
end;

function JoinCamp(Camp)
	--ÔÚµÚ¶şMissionÄÚ¼Óµ±Ç°Íæ¼Ò
	LeaveTeam()
	local Camp1;
	if (Camp == 3) then
		Camp1 = 0;
	else
		Camp1 = Camp + 1;
	end
	AddMSPlayer(BW_MISSIONID, Camp);
	SetCurCamp(Camp1)
	bw_state_joined_in(Camp1);

	if (Camp == 1) then
		NewWorld(CS_CampPos[1][1], CS_CampPos[1][2], CS_CampPos[1][3])
		EnterChannel(PlayerIndex, "L«i ®µi nhiÒu ng­êi bªn Gi¸p");
	elseif (Camp == 2) then
		NewWorld(CS_CampPos[2][1], CS_CampPos[2][2], CS_CampPos[2][3])
		EnterChannel(PlayerIndex, "L«i ®µi nhiÒu ng­êi bªn Êt");
	else 
		NewWorld(CS_CampPos[3][1], CS_CampPos[3][2], CS_CampPos[3][3])
	end;

	str = GetName().." ®· vµo ®Êu tr­êng thi ®Êu."
	Msg2MSAll(BW_MISSIONID, str);
end;

function bw_state_joined_in(Camp)
--ÉèÖÃÓë°ï»áÓĞ¹ØµÄ±äÁ¿£¬²»ÔÊĞíÔÚ¾º¼¼³¡Õ½¸Ä±äÄ³¸ö°ï»áÕóÓªµÄ²Ù×÷
	SetTaskTemp(200,1);

	--ÉèÖÃÕ½¶·×´Ì¬
	SetFightState(0);

	--Íæ¼ÒÍË³öÊ±£¬±£´æRV²¢£¬ÔÚÏÂ´ÎµÈÈëÊ±ÓÃRV(³ÇÊĞÖØÉúµã£¬·ÇÍË³öµã)
	SetLogoutRV(1);

	--ÎŞËÀÍö³Í·£
	SetPunish(0);
	
	ForbidEnmity(1);
	
	--½ûÖ¹½»Ò×°ÚÌ¯
	DisabledStall(1);	--°ÚÌ¯
	ForbitTrade(1);	--½»Ò×
	
	--¹Ø±Õ×é¶Ó¹¦ÄÜ
	SetCreateTeam(0);
	
	--´ò¿ªPK¿ª¹Ø
	if (Camp == 0) then
		SetPKFlag(0)
		ChangeOwnFeature(0, 0, -1, -1, -1, -1, -1)
		Msg2Player("Träng tµi: Tr¹ng th¸i ®· ®­îc Èn");
	else
		SetPKFlag(2)
	end;

	ForbidChangePK(1);
	DisabledUseTownP(1)
	
	--ÉèÖÃÖØÉúµã£¬Ò»°ãÊÇÑ¡Ôñ½øÈë¸ÃÇøµÄ³ÇÊĞ
	BW_SetRev()
	
	--ÉèÖÃµ±Ç°Íæ¼ÒµÄËÀÍö½Å±¾
	SetDeathScript("\\script\\missions\\bw\\bwdeath.lua");
	
	--ÉèÖÃÏÂ´ÎËÀÍöµÄÖØÉúµã

	x = GetTask(BW_SIGNPOSWORLD);
	y = GetTask(BW_SIGNPOSX);
	z = GetTask(BW_SIGNPOSY);
	SetTempRevPos(x, y * 32, z * 32);
end;

--µÃµ½Á½¸ö¶Ó³¤µÄÃû×Ö
function bw_getcaptains()
	local OldSubWorld = SubWorld;
	local idx = SubWorldID2Idx(535);
	local szCaptainName = {};
	if (idx == -1) then
		return szCaptainName;
	end;
	SubWorld = idx;
	szCaptainName[1] = GetMissionS(MSS_CAPTAIN[1]);
	szCaptainName[2] = GetMissionS(MSS_CAPTAIN[2]);
	SubWorld = OldSubWorld;
	return szCaptainName;
end;

function OnShowKey()
	do return Say("Hay ho ®Ğo g× mµ xem ®i ra chç kh¸c ch¬i. Lªn xem ca sÜ live cho nã håi hép") end
	OldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(535);
	if (SubWorld < 0) then
		return
	end;
	local szCaptainName = {};
	local szCaptainName = bw_getcaptains();
	if (GetMissionV(MS_MAXMEMBERCOUNT) <= 1) then
		Say(15661,0);
		SubWorld = OldSubWorld;
		return
	end
	local key = 0
	if (GetName() == szCaptainName[1]) then
		key = GetMissionV(MS_TEAMKEY[1]);
	end
	
	if (GetName() == szCaptainName[2]) then 
		key = GetMissionV(MS_TEAMKEY[2]);
	end
	if (key == 0) then
		Say(15662,0)
	else
		Say("<#15663><color=yellow>["..key.."]<color><#15664>", 0);
	end
	SubWorld = OldSubWorld;
end

function bw_branchtask_win(nGroupID)	--¸øÊ¤µÄÒ»·½×÷ÉÏ±ê¼Ç
	nOldPlayer = PlayerIndex;
	--Ê¤ÀûµÄÒ»¶Ó£»
	local idx = 0;
	local pidx;
	for i = 1, 10 do
		idx , pidx = GetNextPlayer(BW_MISSIONID, idx, nGroupID);
		if (pidx > 0) then
		   	PlayerIndex = pidx;
			branchTask_GainBW1()	--±£³ÖÈÃÃ¿Ò»¸öÍæ¼ÒÊ¤ÀûÊ±½øĞĞµÇ¼Ç£»
		end;
		if (idx == 0) then
			break;
		end;
	end
	PlayerIndex = nOldPlayer;
end;
