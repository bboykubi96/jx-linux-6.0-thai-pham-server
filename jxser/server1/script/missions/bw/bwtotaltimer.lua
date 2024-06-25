Include("\\script\\missions\\bw\\bwhead.lua");

function OnTimer()
	State = GetMissionV(MS_STATE) ;
	if (State == 0) then
		return
	end;
	
	local str1 = "";
    local strLog = "";
	local szCaptainName = {};
	local szCaptainName = bw_getcaptains();
    
    -- ��ȡ����ʣ������
	local nGroup1PlayerCount = GetMSPlayerCount(BW_MISSIONID, 1);
	local nGroup2PlayerCount = GetMSPlayerCount(BW_MISSIONID, 2);
    
    -- ��ȡ���鵱ǰ�˺���
    local nGroup1Damage = BWDamageStat:GetGroupDamage(1);
    local nGroup2Damage = BWDamageStat:GetGroupDamage(2);
    
    -- ʤ���ж�
    --(1) ˫��ͬʱ�볡
	if (nGroup1PlayerCount <= 0 ) and (nGroup2PlayerCount <= 0 ) then
        if (nGroup1Damage > nGroup2Damage) then
            str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
            strLog = format("%s Both arenas leave. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage, szCaptainName[2]);
            bw_branchtask_win(2);
        elseif nGroup1Damage == nGroup2Damage then
          str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. H�a nhau trong v�ng n�y.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage);
          strLog = format("%s Both arenas leave. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. None team win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage);
        else
            str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
            strLog = format("%s Both arenas leave. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage, szCaptainName[1]);
            bw_branchtask_win(1);
        end
	end

    --(2) ˫����������һ����
	if (nGroup1PlayerCount == nGroup2PlayerCount) then
        if nGroup1Damage > nGroup2Damage then
            str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
            strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
            bw_branchtask_win(2);

        elseif nGroup1Damage == nGroup2Damage then
           str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. H�a nhau trong tr�n n�y.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage);
            strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. None team win",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage);
         
         else
            str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1])
            strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
            bw_branchtask_win(1);
        end

    --(3) ����2����������
	elseif (nGroup2PlayerCount > nGroup1PlayerCount) then
        str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
        strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
            GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
		bw_branchtask_win(2);
    --(4) ����1����������
	elseif (nGroup1PlayerCount > nGroup2PlayerCount) then 
        str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
        strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
            GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
		bw_branchtask_win(1);
	end;
	Msg2MSAll(BW_MISSIONID, str1);
    WriteLog(strLog);
	SetMissionV(MS_STATE,3);
	CloseMission(BW_MISSIONID);
	return
end