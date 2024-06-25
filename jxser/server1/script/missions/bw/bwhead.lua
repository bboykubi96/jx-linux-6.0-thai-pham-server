IncludeLib("RELAYLADDER")
Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")
Include("\\script\\missions\\bw\\bwdamagestat.lua")
--�˳���Ϸ���������ID,Ҳ���Ǳ������Ǹ��ط���
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
--�᳡���λ��
BW_COMPETEMAP = {535, 210, 211};

--����˫����Ӫʱ��λ��
CS_CampPos = {	{535, 1620, 3202},	--��ɫ
				{535, 1620, 3202}, 	--��ɫ
				{535, 1620, 3202},   --��ս�ߵ�λ�ð�ɫ
			 }; 
CS_CamperPos = {
				{1599, 3202, "Tr��ng Tam"},
				{1608, 3211, "L� Tam"},
}
FRAME2TIME = 18;
--��Ϸ���������
MAX_MEMBER_COUNT = 100;
--�洢��ҵ�λ�õ��������
BW_SIGNPOSWORLD = 300;
BW_SIGNPOSX = 301;
BW_SIGNPOSY = 302;
MS_STATE = 1;
MS_MAXMEMBERCOUNT = 2;
CITYID = 6; --����ID
BW_KEY = 7; -- 0-100000000�������
MS_NEWSVALUE = 9; --�����д�����ű����ĵط�
MS_TEAMKEY = {10, 11};

MSS_CAPTAIN = {1, 2};
BW_SMALLTIME_ID = 10; --��ʱ������
BW_TOTALTIME_ID = 11;
TIMER_1 = 20 * FRAME2TIME; -- 20�빫��һ��ս��
TIMER_2 = 12 * 3 * TIMER_1 ; --��ս��ʱ��Ϊ10+2����

GO_TIME_GPZ = 6; -- ����ʱ��Ϊ2����
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

--���Ҫ���뿪��Ϸ
function LeaveGame()
	local nGroupId = GetCurCamp() - 1
	BWDamageStat:FetchDamageToGroup(PlayerIndex, nGroupId)
	
	camp = GetCamp();--�ָ�ԭʼ��Ӫ
	SetFightState(0)
	if (GetCurCamp() == 2) then
		LeaveChannel(PlayerIndex, "L�i ��i nhi�u ng��i b�n Gi�p");
	elseif (GetCurCamp() == 3) then
		LeaveChannel(PlayerIndex, "L�i ��i nhi�u ng��i b�n �t");
	end;
	SetTaskTemp(200,0);
	SetPunish(1)--����PK�ͷ�
	SetPKFlag(0)--�ر�PK����
	ForbidChangePK(0);
	RestoreOwnFeature()
	--�򿪽��װ�̯
	DisabledStall(0);	--��̯
	ForbitTrade(0);	--����
	SetCurCamp(GetCamp());
	DisabledUseTownP(0)
	ForbidEnmity(0);
	DelMSPlayer(BW_MISSIONID, PlayerIndex);
	SetLogoutRV(0);--����������
	SetCreateTeam(1);
	SetDeathScript("");--���������ű�Ϊ��
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
	--�ڵڶ�Mission�ڼӵ�ǰ���
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
		EnterChannel(PlayerIndex, "L�i ��i nhi�u ng��i b�n Gi�p");
	elseif (Camp == 2) then
		NewWorld(CS_CampPos[2][1], CS_CampPos[2][2], CS_CampPos[2][3])
		EnterChannel(PlayerIndex, "L�i ��i nhi�u ng��i b�n �t");
	else 
		NewWorld(CS_CampPos[3][1], CS_CampPos[3][2], CS_CampPos[3][3])
	end;

	str = GetName().." �� v�o ��u tr��ng thi ��u."
	Msg2MSAll(BW_MISSIONID, str);
end;

function bw_state_joined_in(Camp)
--���������йصı������������ھ�����ս�ı�ĳ�������Ӫ�Ĳ���
	SetTaskTemp(200,1);

	--����ս��״̬
	SetFightState(0);

	--����˳�ʱ������RV�������´ε���ʱ��RV(���������㣬���˳���)
	SetLogoutRV(1);

	--�������ͷ�
	SetPunish(0);
	
	ForbidEnmity(1);
	
	--��ֹ���װ�̯
	DisabledStall(1);	--��̯
	ForbitTrade(1);	--����
	
	--�ر���ӹ���
	SetCreateTeam(0);
	
	--��PK����
	if (Camp == 0) then
		SetPKFlag(0)
		ChangeOwnFeature(0, 0, -1, -1, -1, -1, -1)
		Msg2Player("Tr�ng t�i: Tr�ng th�i �� ���c �n");
	else
		SetPKFlag(2)
	end;

	ForbidChangePK(1);
	DisabledUseTownP(1)
	
	--���������㣬һ����ѡ���������ĳ���
	BW_SetRev()
	
	--���õ�ǰ��ҵ������ű�
	SetDeathScript("\\script\\missions\\bw\\bwdeath.lua");
	
	--�����´�������������

	x = GetTask(BW_SIGNPOSWORLD);
	y = GetTask(BW_SIGNPOSX);
	z = GetTask(BW_SIGNPOSY);
	SetTempRevPos(x, y * 32, z * 32);
end;

--�õ������ӳ�������
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
	do return Say("Hay ho ��o g� m� xem �i ra ch� kh�c ch�i. L�n xem ca s� live cho n� h�i h�p") end
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

function bw_branchtask_win(nGroupID)	--��ʤ��һ�����ϱ��
	nOldPlayer = PlayerIndex;
	--ʤ����һ�ӣ�
	local idx = 0;
	local pidx;
	for i = 1, 10 do
		idx , pidx = GetNextPlayer(BW_MISSIONID, idx, nGroupID);
		if (pidx > 0) then
		   	PlayerIndex = pidx;
			branchTask_GainBW1()	--������ÿһ�����ʤ��ʱ���еǼǣ�
		end;
		if (idx == 0) then
			break;
		end;
	end
	PlayerIndex = nOldPlayer;
end;
