Include("\\script\\missions\\bw\\bwhead.lua");
function OnDeath(Launcher)
	local curcamp = GetCurCamp();
	local i;
	local szCaptainName = {};
	local szCaptainName = bw_getcaptains();

	local PlayerIndex1 = NpcIdx2PIdx(Launcher); -- murderÐ×ÊÖ
	local OrgPlayer  = PlayerIndex; --ËÀÕß
	local DeathName = GetName();
	local str;

	local nLaunGroupID;
	if (PlayerIndex1 > 0) then
		PlayerIndex = PlayerIndex1;
		local LaunName = GetName();
		nLaunGroupID = GetCurCamp();
		if (nLaunGroupID == 2 or nLaunGroupID == 3) then
			str  = GetMissionS(CITYID)..", §éi chiÕn th¾ng: <color=yellow>"..szCaptainName[nLaunGroupID - 1].."<color> ®éi <color=yellow>"..LaunName.."<color> ®· ®¸nh b¹i ®éi <color=yellow>"..szCaptainName[4 - nLaunGroupID].."<color> ®éi <color=yellow>"..DeathName.."<color>.";
			Msg2MSAll(BW_MISSIONID, str);
		end
	end
	
	PlayerIndex = OrgPlayer;
	if (nil ~= str) then
		DelMSPlayer(BW_MISSIONID, PlayerIndex);
	end
	
	bw_all_death();
end

function bw_all_death()
	State = GetMissionV(MS_STATE) ;
	if (State ~= 2) then
		return
	end
	local str1 = "";
    local strLog = "";
	local szCaptainName = {};
	local szCaptainName = bw_getcaptains();
    
    -- »ñÈ¡¶ÓÎéÊ£ÓàÈËÊý
	local nGroup1PlayerCount = GetMSPlayerCount(BW_MISSIONID, 1);
	local nGroup2PlayerCount = GetMSPlayerCount(BW_MISSIONID, 2);
    
    -- »ñÈ¡¶ÓÎéµ±Ç°ÉËº¦Á¿
    local nGroup1Damage = BWDamageStat:GetGroupDamage(1);
    local nGroup2Damage = BWDamageStat:GetGroupDamage(2);
    
    -- (1) Í¬¹éÓÚ¾¡
	if (nGroup1PlayerCount <= 0 ) and (nGroup2PlayerCount <= 0 ) then 
        if nGroup1Damage > nGroup2Damage then
           str1 = format("%s KÕt qu¶ l«i ®µi, ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d vµ ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d. <color=yellow>%s<color> giµnh chiÕn th¾ng chung cuéc.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
            strLog = format("%s Both arenas perish together. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage, szCaptainName[2]);
            bw_branchtask_win(2);
        elseif nGroup1Damage == nGroup2Damage then
            str1 = format("%s KÕt qu¶ l«i ®µi, ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d vµ ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d. Hßa trong trËn ®Êu nµy.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage);
            strLog = format("%s Both arenas perish together. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. None team wins",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage);
        else
            str1 = format("%s KÕt qu¶ l«i ®µi, ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d vµ ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d. <color=yellow>%s<color> giµnh chiÕn th¾ng chung cuéc.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
            strLog = format("%s Both arenas perish together. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage, szCaptainName[1]);
            bw_branchtask_win(1);
        end

        WriteLog(strLog);
		bw_death_close(str1);
    -- (2) 2¶ÓÈ«ËÀ
	elseif (nGroup2PlayerCount <= 0) then
        str1 = format("%s KÕt qu¶ l«i ®µi, ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d vµ ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d. <color=yellow>%s<color> giµnh chiÕn th¾ng chung cuéc.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
        strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
            GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
		bw_branchtask_win(1);

        WriteLog(strLog);
		bw_death_close(str1)
    -- (3) 1¶ÓÈ«ËÀ
	elseif (nGroup1PlayerCount <= 0) then 
        str1 = format("%s KÕt qu¶ l«i ®µi, ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d vµ ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d. <color=yellow>%s<color> giµnh chiÕn th¾ng chung cuéc.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
        strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
            GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
		bw_branchtask_win(2);

        WriteLog(strLog);
		bw_death_close(str1);
	end
end

function bw_death_close(str1)
	Msg2MSAll(BW_MISSIONID, str1);              -- ¸æËß³¡µØÖÐµÄÍæ¼Ò
    Msg2AllPreparationFields(str1);             -- ¸æËß³¡µØÍâµÄÍæ¼Ò
	SetMissionV(MS_STATE,3);
	CloseMission(BW_MISSIONID);
end