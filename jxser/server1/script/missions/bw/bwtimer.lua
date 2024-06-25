Include("\\script\\missions\\bw\\bwhead.lua");

szCaptainName = {};
function OnTimer()
	timestate = GetMissionV(MS_STATE);
	V = GetMissionV(MS_NEWSVALUE) + 1;
	SetMissionV(MS_NEWSVALUE, V);
	
	szCaptainName = bw_getcaptains(); --��ȡ���Ӷӳ������֣�

	if (timestate == 1) then 	--�����׶�
		local str1 = ReportMemberState(V);
		bw_noticecaptainkey(str1);
	elseif (timestate == 2) then --��ս��
		ReportBattle(V);
	elseif (timestate == 3) then  --ս��������
		Msg2MSAll(BW_MISSIONID, "<#15718>");
		StopMissionTimer(BW_MISSIONID, BW_SMALLTIME_ID);
		StopMissionTimer(BW_MISSIONID, BW_TOTALTIME_ID);
	end;
end;

function ReportMemberState(V)
	--�ڱ����ڼ䣬ϵͳ����֪ͨ��ҵ�ǰ�ı������

	if (V == GO_TIME_GPZ) then
		bw_begin_compete();
	end;
	
	RestMin = floor((GO_TIME_GPZ - V) / 3);
	RestSec = mod((GO_TIME_GPZ - V),3) * 20;
	local str1;

	if (RestMin > 0) and (RestSec == 0) then
		str1 = "Th�i gian v�o thi ��u l�i ��i c�n : <color=yellow>"..RestMin.."<color> ph�t."
		Msg2MSAll(BW_MISSIONID, str1);
		if ((GO_TIME_GPZ - V) == 3) then 
			str1 = GetMissionS(CITYID).."<#15721>"
			--AddGlobalCountNews(str1)
		end
	elseif (RestMin == 0) then
		str1 = "Th�i gian v�o thi ��u l�i ��i c�n : <color=yellow>" ..RestSec.. "<color> gi�y."
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
		
	Msg2MSAll(BW_MISSIONID, "Ch�m d�t th�i gian v�o ��u tr��ng, thi ��u ch�nh th�c b�t ��u!");
	str = GetMissionS(CITYID).."<#15735><color=yellow>"..szCaptainName[1].."<color><#15701> <color=yellow>"..szCaptainName[2].."<color><#15736>";
	RunMission(BW_MISSIONID);
	return
end;

function ReportBattle(V)
	bw_checkwinner();	--ս�����й����У�ϵͳ����֪ͨ�������������
	gametime = (floor(GetMSRestTime(BW_MISSIONID,BW_TOTALTIME_ID)/18));
	RestMin = floor(gametime / 60);
	RestSec = mod(gametime,60);
	if (RestMin == 0) then
		Msg2MSAll(BW_MISSIONID, "Giai �o�n chi�n ��u L�i ��i: Hai b�n �ang thi ��u. Th�i gian c�n <color=yellow>"..RestSec.."<color> gi�y");
	elseif (RestSec == 0) then
		Msg2MSAll(BW_MISSIONID, "Giai �o�n chi�n ��u L�i ��i: Hai b�n �ang thi ��u. Th�i gian c�n <color=yellow>"..RestMin.."<color> ph�t ");
	else
		Msg2MSAll(BW_MISSIONID, "Giai �o�n chi�n ��u L�i ��i: Hai b�n �ang thi ��u. Th�i gian c�n <color=yellow>"..RestMin.."<color> ph�t <color=yellow>"..RestSec.."<color> gi�y.");
	end;
	local nGroup1Damage = BWDamageStat:GetGroupDamage(1);
	local nGroup2Damage = BWDamageStat:GetGroupDamage(2);
	local szCaptainName = bw_getcaptains();
--	Msg2MSAll(BW_MISSIONID, format("T�ng �i�m b� s�t th��ng: ��i <color=yellow>%s<color> l�: %d - <color=yellow>%s<color> l�: %d.", szCaptainName[1], nGroup1Damage, szCaptainName[2], nGroup2Damage));
end

function bw_checkwinner()
	local str1 = "";
    local strLog = "";
	local szCaptainName = bw_getcaptains();
    
    -- ��ȡ����ʣ������
	local nGroup1PlayerCount = GetMSPlayerCount(BW_MISSIONID, 1);
	local nGroup2PlayerCount = GetMSPlayerCount(BW_MISSIONID, 2);
    
    -- ��ȡ���鵱ǰ�˺���
    local nGroup1Damage = BWDamageStat:GetGroupDamage(1);
    local nGroup2Damage = BWDamageStat:GetGroupDamage(2);
    
    --(1) ˫��ͬʱ�볡
	if (nGroup1PlayerCount <= 0 ) and (nGroup2PlayerCount <= 0 ) then
        if nGroup1Damage > nGroup2Damage then
            str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
            strLog = format("%s Both arenas leave. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage, szCaptainName[2]);
            bw_branchtask_win(2);
        elseif nGroup1Damage == nGroup2Damage then
           str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. H�a trong tr�n n�y.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage);
            strLog = format("%s Both arenas leave. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. None team wins",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage);
        else
            str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
            strLog = format("%s Both arenas leave. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage, szCaptainName[1]);
            bw_branchtask_win(1);
        end
        
        WriteLog(strLog);
        bw_all_gone(str1);
        return 
	end

    --(2) 1��ȫ���볡
	if (nGroup1PlayerCount <= 0 ) then 
        str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
        strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
            GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
		bw_branchtask_win(2);
        WriteLog(strLog);
		bw_all_gone(str1)
		return
	end
	
    --(3) 2��ȫ���볡
	if (nGroup2PlayerCount <= 0 ) then 
        str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
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