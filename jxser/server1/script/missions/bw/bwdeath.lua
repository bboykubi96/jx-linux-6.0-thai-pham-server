Include("\\script\\missions\\bw\\bwhead.lua");
function OnDeath(Launcher)
	local curcamp = GetCurCamp();
	local i;
	local szCaptainName = {};
	local szCaptainName = bw_getcaptains();

	local PlayerIndex1 = NpcIdx2PIdx(Launcher); -- murder����
	local OrgPlayer  = PlayerIndex; --����
	local DeathName = GetName();
	local str;

	local nLaunGroupID;
	if (PlayerIndex1 > 0) then
		PlayerIndex = PlayerIndex1;
		local LaunName = GetName();
		nLaunGroupID = GetCurCamp();
		if (nLaunGroupID == 2 or nLaunGroupID == 3) then
			str  = GetMissionS(CITYID)..", ��i chi�n th�ng: <color=yellow>"..szCaptainName[nLaunGroupID - 1].."<color> ��i <color=yellow>"..LaunName.."<color> �� ��nh b�i ��i <color=yellow>"..szCaptainName[4 - nLaunGroupID].."<color> ��i <color=yellow>"..DeathName.."<color>.";
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
    
    -- ��ȡ����ʣ������
	local nGroup1PlayerCount = GetMSPlayerCount(BW_MISSIONID, 1);
	local nGroup2PlayerCount = GetMSPlayerCount(BW_MISSIONID, 2);
    
    -- ��ȡ���鵱ǰ�˺���
    local nGroup1Damage = BWDamageStat:GetGroupDamage(1);
    local nGroup2Damage = BWDamageStat:GetGroupDamage(2);
    
    -- (1) ͬ���ھ�
	if (nGroup1PlayerCount <= 0 ) and (nGroup2PlayerCount <= 0 ) then 
        if nGroup1Damage > nGroup2Damage then
           str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
            strLog = format("%s Both arenas perish together. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage, szCaptainName[2]);
            bw_branchtask_win(2);
        elseif nGroup1Damage == nGroup2Damage then
            str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. H�a trong tr�n ��u n�y.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage);
            strLog = format("%s Both arenas perish together. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. None team wins",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage);
        else
            str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
            strLog = format("%s Both arenas perish together. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
                GetMissionS(CITYID), szCaptainName[1], 0, nGroup1Damage, szCaptainName[2], 0, nGroup2Damage, szCaptainName[1]);
            bw_branchtask_win(1);
        end

        WriteLog(strLog);
		bw_death_close(str1);
    -- (2) 2��ȫ��
	elseif (nGroup2PlayerCount <= 0) then
        str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
        strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
            GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[1]);
		bw_branchtask_win(1);

        WriteLog(strLog);
		bw_death_close(str1)
    -- (3) 1��ȫ��
	elseif (nGroup1PlayerCount <= 0) then 
        str1 = format("%s K�t qu� l�i ��i, ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d v� ��i <color=yellow>%s<color> chi�n ��i %d, ��nh tr�ng: %d. <color=yellow>%s<color> gi�nh chi�n th�ng chung cu�c.",
                GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
        strLog = format("%s Game finished. Team %s : Left - %d, Damaged - %d; Team %s : Left - %d, Damage - %d. Team %s win",
            GetMissionS(CITYID), szCaptainName[1], nGroup1PlayerCount, nGroup1Damage, szCaptainName[2], nGroup2PlayerCount, nGroup2Damage, szCaptainName[2]);
		bw_branchtask_win(2);

        WriteLog(strLog);
		bw_death_close(str1);
	end
end

function bw_death_close(str1)
	Msg2MSAll(BW_MISSIONID, str1);              -- ���߳����е����
    Msg2AllPreparationFields(str1);             -- ���߳���������
	SetMissionV(MS_STATE,3);
	CloseMission(BW_MISSIONID);
end