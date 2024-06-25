Include("\\script\\missions\\bw\\bwhead.lua");

szCaptainName = {};
function OnTimer()
	timestate = GetMissionV(MS_STATE);
	V = GetMissionV(MS_NEWSVALUE) + 1;
	SetMissionV(MS_NEWSVALUE, V);
	
	szCaptainName = bw_getcaptains(); --»ñÈ¡Á½¶Ó¶Ó³¤µÄÃû×Ö£»

	if (timestate == 1) then 	--±¨Ãû½×¶Î
		local str1 = ReportMemberState(V);
		bw_noticecaptainkey(str1);
	elseif (timestate == 2) then --¿ªÕ½ÁË
		ReportBattle(V);
	elseif (timestate == 3) then  --Õ½¶·½áÊøÁË
		Msg2MSAll(BW_MISSIONID, "<#15718>");
		StopMissionTimer(BW_MISSIONID, BW_SMALLTIME_ID);
		StopMissionTimer(BW_MISSIONID, BW_TOTALTIME_ID);
	end;
end;

function ReportMemberState(V)
	--ÔÚ±¨ÃûÆÚ¼ä£¬ÏµÍ³¶¨ÆÚÍ¨ÖªÍæ¼Òµ±Ç°µÄ±¨ÃûÇé¿ö

	if (V == GO_TIME_GPZ) then
		bw_begin_compete();
	end;
	
	RestMin = floor((GO_TIME_GPZ - V) / 3);
	RestSec = mod((GO_TIME_GPZ - V),3) * 20;
	local str1;

	if (RestMin > 0) and (RestSec == 0) then
		str1 = "Thêi gian vµo thi ®Êu l«i ®µi cßn : <color=yellow>"..RestMin.."<color> phót."
		Msg2MSAll(BW_MISSIONID, str1);
		if ((GO_TIME_GPZ - V) == 3) then 
			str1 = GetMissionS(CITYID).."<#15721>"
			--AddGlobalCountNews(str1)
		end
	elseif (RestMin == 0) then
		str1 = "Thêi gian vµo thi ®Êu l«i ®µi cßn : <color=yellow>" ..RestSec.. "<color> gi©y."
		Msg2MSAll(BW_MISSIONID, str1);
	end;
	return str1;
end;

function bw_noticecaptainkey(str1)
	local nCount = GetMissionV(MS_MAXMEMBERCOUNT);
	if (nCount <= 1) then
		return
	end;
	local i;
	local nOldPlayer = PlayerIndex;
	local nOldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(BW_COMPETEMAP[1]);
	local masteridx, szName, nKey, str;
	for i = 1, 2 do
		masteridx = SearchPlayer(GetMissionS(i));
		if (masteridx > 0) then
			PlayerIndex = masteridx;
			if (PIdx2MSDIdx(BW_MISSIONID, masteridx) <= 0 and nil ~= str1) then
				Msg2Player(str1);
			end
			szName = GetMissionS(MSS_CAPTAIN[i]);
			nKey = GetMissionV(MS_TEAMKEY[i]);
			nCount = GetMissionV(MS_MAXMEMBERCOUNT);
			str = "<#15723><color=yellow> "..GetMissionS(CITYID).."<color> <#15724><color=yellow> "..nCount.." <color>VS<color=yellow> "..nCount.."<color><#15725><color=yellow>["..nKey.."]<color><#15726>";
			Msg2Player(str);
		end
	end;
	SubWorld = nOldSubWorld;
	PlayerIndex = nOldPlayer;
end;

function bw_begin_compete()
	local nGroup1PlayerCount = GetMSPlayerCount(BW_MISSIONID, 1);
	local nGroup2PlayerCount = GetMSPlayerCount(BW_MISSIONID, 2);
	if (nGroup1PlayerCount <= 0  and nGroup2PlayerCount <= 0 ) then 
		str1 = GetMissionS(CITYID).."<#15727><color=yellow> "..szCaptainName[1].."<color><#15701><color=yellow> "..szCaptainName[2].."<color><#15728>";
		Msg2MSAll(BW_MISSIONID,str1)
        WriteLog(str1);
		SetMissionV(MS_STATE,3);
		CloseMission(BW_MISSIONID);
		return
	end;

	if (nGroup1PlayerCount <= 0 ) then 
		str1 = GetMissionS(CITYID).."<#15729><color=yellow>"..szCaptainName[1].."<color><#15730><color=yellow>"..szCaptainName[2].."<color><#15731>"
		Msg2MSAll(BW_MISSIONID, str1);
        WriteLog(str1);
		bw_branchtask_win(2);
		CloseMission(BW_MISSIONID);
		return
	end;

	if (nGroup2PlayerCount <= 0 ) then 
		str1 = GetMissionS(CITYID).."<#15732><color=yellow>"..szCaptainName[2].."<color><#15733><color=yellow>"..szCaptainName[1].."<color><#15731>";
		Msg2MSAll(BW_MISSIONID, str1);
        WriteLog(str1);
		bw_branchtask_win(1);
		CloseMission(BW_MISSIONID);
		return
	end;
		
	Msg2MSAll(BW_MISSIONID, "ChÊm døt thêi gian vµo ®Êu tr­êng, thi ®Êu chÝnh thøc b¾t ®Çu!");
	str = GetMissionS(CITYID).."<#15735><color=yellow>"..szCaptainName[1].."<color><#15701> <color=yellow>"..szCaptainName[2].."<color><#15736>";
	RunMission(BW_MISSIONID);
	return
end;

function ReportBattle(V)
	bw_checkwinner();	--Õ½¶·½øÐÐ¹ý³ÌÖÐ£¬ÏµÍ³¶¨ÆÚÍ¨Öª¸÷·½µÄÕóÍöÇé¿ö
	gametime = (floor(GetMSRestTime(BW_MISSIONID,BW_TOTALTIME_ID)/18));
	RestMin = floor(gametime / 60);
	RestSec = mod(gametime,60);
	if (RestMin == 0) then
		Msg2MSAll(BW_MISSIONID, "Giai ®o¹n chiÕn ®Êu L«i §µi: Hai bªn ®ang thi ®Êu. Thêi gian cßn <color=yellow>"..RestSec.."<color> gi©y");
	elseif (RestSec == 0) then
		Msg2MSAll(BW_MISSIONID, "Giai ®o¹n chiÕn ®Êu L«i §µi: Hai bªn ®ang thi ®Êu. Thêi gian cßn <color=yellow>"..RestMin.."<color> phót ");
	else
		Msg2MSAll(BW_MISSIONID, "Giai ®o¹n chiÕn ®Êu L«i §µi: Hai bªn ®ang thi ®Êu. Thêi gian cßn <color=yellow>"..RestMin.."<color> phót <color=yellow>"..RestSec.."<color> gi©y.");
	end;
	local nGroup1Damage = BWDamageStat:GetGroupDamage(1);
	local nGroup2Damage = BWDamageStat:GetGroupDamage(2);
	local szCaptainName = bw_getcaptains();
--	Msg2MSAll(BW_MISSIONID, format("Tæng ®iÓm bÞ s¸t th­îng: ®éi <color=yellow>%s<color> lµ: %d - <color=yellow>%s<color> lµ: %d.", szCaptainName[1], nGroup1Damage, szCaptainName[2], nGroup2Damage));
end

function bw_checkwinner()
	local str1 = "";
    local strLog = "";
	local szCaptainName = bw_getcaptains();
    
    -- »ñÈ¡¶ÓÎéÊ£ÓàÈËÊý
	local nGroup1PlayerCount = GetMSPlayerCount(BW_MISSIONID, 1);
	local nGroup2PlayerCount = GetMSPlayerCount(BW_MISSIONID, 2);
    
    -- »ñÈ¡¶ÓÎéµ±Ç°ÉËº¦Á¿
    local nGroup1Damage = BWDamageStat:GetGroupDamage(1);
    local nGroup2Damage = BWDamageStat:GetGroupDamage(2);
    
    --(1) Ë«·½Í¬Ê±Àë³¡
	if (nGroup1PlayerCount <= 0 ) and (nGroup2PlayerCount <= 0 ) then
        if nGroup1Damage > nGroup2Damage then
            str1 = format("%s KÕt qu¶ l«i ®µi, ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d vµ ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d. <color=yellow>%s<color> giµnh chiÕn th¾ng chung cuéc.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
            strLog = format("%s Both arenas leave. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage, szCaptainName[2]);
            bw_branchtask_win(2);
        elseif nGroup1Damage == nGroup2Damage then
           str1 = format("%s KÕt qu¶ l«i ®µi, ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d vµ ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d. Hßa trong trËn nµy.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage);
            strLog = format("%s Both arenas leave. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. None team wins",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage);
        else
            str1 = format("%s KÕt qu¶ l«i ®µi, ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d vµ ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d. <color=yellow>%s<color> giµnh chiÕn th¾ng chung cuéc.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
            strLog = format("%s Both arenas leave. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage, szCaptainName[1]);
            bw_branchtask_win(1);
        end
        
        WriteLog(strLog);
        bw_all_gone(str1);
        return 
	end

    --(2) 1¶ÓÈ«²¿Àë³¡
	if (nGroup1PlayerCount <= 0 ) then 
        str1 = format("%s KÕt qu¶ l«i ®µi, ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d vµ ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d. <color=yellow>%s<color> giµnh chiÕn th¾ng chung cuéc.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
        strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
            GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
		bw_branchtask_win(2);
        WriteLog(strLog);
		bw_all_gone(str1)
		return
	end
	
    --(3) 2¶ÓÈ«²¿Àë³¡
	if (nGroup2PlayerCount <= 0 ) then 
        str1 = format("%s KÕt qu¶ l«i ®µi, ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d vµ ®éi <color=yellow>%s<color> chiÕn ®éi %d, ®¸nh tróng: %d. <color=yellow>%s<color> giµnh chiÕn th¾ng chung cuéc.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
        strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
            GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
		bw_branchtask_win(1);
        WriteLog(strLog);
		bw_all_gone(str1)
		return
	end
end

function bw_noticecaptainnews(str1)
	local nCount = GetMissionV(MS_MAXMEMBERCOUNT);
	if (nCount <= 1) then
		return
	end;
	local i;
	local nOldPlayer = PlayerIndex;
	local nOldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(BW_COMPETEMAP[1]);
	for i = 1, 2 do
		masteridx = SearchPlayer(GetMissionS(i));
		if (masteridx > 0) then
			PlayerIndex = masteridx;
			if (PIdx2MSDIdx(BW_MISSIONID, masteridx) <= 0 and nil ~= str1) then
				Msg2Player(str1);
			end
		end
	end;
	SubWorld = nOldSubWorld;
	PlayerIndex = nOldPlayer;
end;

function bw_all_gone(str1)
	Msg2MSAll(BW_MISSIONID, str1);
	SetMissionV(MS_STATE,3);
	bw_noticecaptainnews(str1);
	CloseMission(BW_MISSIONID);
end;