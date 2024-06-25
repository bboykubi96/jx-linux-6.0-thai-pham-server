Include("\\script\\missions\\basemission\\class.lua")
IncludeLib("TIMER")
Include("\\script\\missions\\huashanqunzhan\\taskctrl.lua")
Include("\\script\\lib\\awardtemplet.lua")
if huashanqunzhan then
	--return 
end

huashanqunzhan = tbBaseMission:new() --�ӻ���̳�����


local tbMissionData = 
{
	nLatencyTime		= 35,
	nDuelTime			= 20,
	szPlayerDeathScript	= "\\script\\missions\\huashanqunzhan\\playerdeath.lua",
	szMatchName			= "L�i ��i Lo�n Chi�n"
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
	--	Msg2Player("Kh�ng �� ng�n l��ng.")
		--return Say("Kh�ng �� ng�n l��ng.", 0)
	--end
	
	SetMissionV(self.tbMissionV.PLAYER_COUNT, GetMissionV(self.tbMissionV.PLAYER_COUNT) + 1);
	
	
	SetTask(self.TSK_Kills, 0)
	SetTask(self.TSK_Winer, 0)
	SetTask(self.TSK_MatchId, GetMissionV(self.tbMissionV.MATCH_ID))
	SetDeathScript(self.szPlayerDeathScript)
	
	local nRand = random(1,getn(self.tbRevPos))
	SetTempRevPos(self.tbRevPos[nRand][1], self.tbRevPos[nRand][2]*32, self.tbRevPos[nRand][3]*32)
	--���������йصı������������ھ�����ս�ı�ĳ�������Ӫ�Ĳ���
	SetTaskTemp(200,1);
	--����ս��״̬
--		SetFightState(1);
	--����˳�ʱ������RV�������´ε���ʱ��RV(���������㣬���˳���)
	SetLogoutRV(1);
	
	
	
	SetFightState(1);
	--�������ͷ�
	SetPunish(0);
	--�ر���ӹ���
	SetCreateTeam(0);
	LeaveTeam()
	--��PK���� 
	
	--���ó�ɱ
	ForbidEnmity( 1 )
	--��ʼӦ�ö�����PK
	SetPKFlag(1)
	--��ֹ����;
	DisabledStall(1);
	ForbitTrade(0);
	ForbidChangePK(1);
	SetCurCamp(4);	--������ʱ��Ӫ
	DisabledUseTownP(1);	--��ֹʹ�ûس̣�
	SetProtectTime(18*30) 
ChangeOwnFeature( 1, 3500*18, 1660,  0, 0, 0, 0)
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e6}}, "test", 1);
	WriteLogPro("dulieu/vaohoason.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da vao hoa son ton 5 xu dc 100tr kn\n");


	local nTimerCount = GetMissionV(self.tbMissionV.SECOND_COUNTER)
	local szMsg	= format("Thi ��u b�t ��u, th�i gian c�n l�i l� <color=yellow>%d<color> ph�t.", self.nDuelTime - nTimerCount)
	Msg2Player(szMsg)
	Say("<color=white>+B�n ���c tr�ng th�i b�t t� trong 30s.\n+Ch� �: l�i ��i c� th� l�n ho�c xu�ng ���c b�ng skill kinh kong\nPh�t th� 15 c�a tr�n ��u t�t c� nh�n v�t b� chuy�n sang tr�ng th�i �� s�t.");
	PlayerFunLib:AddSkillState(1565,1,3,64800,1)
	return 1
end



function huashanqunzhan:OnLeave()
	ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 0)
	--�رս�ֹ�⻷
	ForbitAura(0)
	--�ر����������йصı������������ھ�����ս�ı�ĳ�������Ӫ�Ĳ���
	SetTaskTemp(200,0);
	--����ս��״̬
	SetFightState(0);
	--����˳�ʱ������RV�������´ε���ʱ��RV(���������㣬���˳���)
	--SetLogoutRV(0);
	--�����ͷ�
	SetPunish(1);
	--������ӹ���
	SetCreateTeam(0);
	--��PK���� 
	
	--���ó�ɱ
	ForbidEnmity( 0 )
	--��ʼӦ�ö�����PK
	SetPKFlag(0)
	--�رս�ֹ����;
	DisabledStall(0);
	ForbitTrade(0);
	
	local nCamp = GetCamp();
	SetCurCamp(nCamp);
	SetDeathScript(""); --��������ű�
	ForbidChangePK(0);
	DisabledUseTownP(0);	--�رս�ֹʹ�ûس̣�
RestoreOwnFeature();	
--Earn(150000)
--StackExp(5000000);
--TM_StopTimer(127)
end

function huashanqunzhan:OnClose()
	
	Msg2MSAll(self.nMissionId, "Th�ng b�i �� ph�n ��nh.")
	SetMissionV(self.tbMissionV.MISSION_STATE, 2)
	local nPlayerCount	= GetMSPlayerCount(self.nMissionId, 0)
	local tbPlayer = {}
	if (nPlayerCount <= 0) then -- ������û���߲�����
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
	local szMsg	= format("Th�i gian thi ��u c�n l�i l� <color=yellow>%d<color> ph�t.", self.nDuelTime - nTimerCount)
	
	if nTimerCount >= self.nDuelTime or nPlayerCount <= 1 then
		self:OnClose()		
	else
		Msg2MSAll(self.nMissionId, szMsg)
		Msg2MSAll(self.nMissionId, format("S� ng��i c�n l�i: %d",nPlayerCount))
	end
	
	if nTimerCount >= self.nLatencyTime then
		Msg2MSAll("Th�i gian �� ��n.")
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
	
	local szMsg = format("<color=pink>B�n l� ng��i chi�n th�ng cu�i c�ng, trong v�ng <color=yellow>%d<color> ph�t ph�i ��n Hoa Son Lao Nhan �� nh�n th��ng qu� th�i h�n s� kh�ng nh�n ���c n�a.", self.nLatencyTime-nCurTime)
	ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 0)
	Msg2SubWorld(format("Ng��i M�nh Nh�t Server tr�n <color=green>L�i ��i Lo�n Chi�n<color=yellow> H�m Nay Kh�ng Ai Kh�c Ch�nh L�: <color=pink>%s<color>.", szWinerName))
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
