----------------***Heart*Doldly***----------------------
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\sharedata.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")

BigBoss = {}
BigBoss.TSK_PLAYER_BOSSKILLED = 2598; 
BigBoss.TSK_BIGBOSS_REWARD = 2661; 
BigBoss.CAN_GET_REWARD_BIT = 1;
BigBoss.EXP_REWARD_BIT = 2;
BigBoss.SONGJIN_REWARD_BIT = 3;
BigBoss.CHUANGGUAN_REWARD_BIT = 4;

BigBoss.tbKillRecord = {};
BigBoss.IsBigBossDead = 0;
BigBoss.CallBackParam = {}

BigBoss.tbGlobalReward = 
{
	{szName="H�m nay tr�n T�ng Kim 21:00, �i�m t�ch l�y s� ���c nh�n ��i", nRate=25, pFun=function() PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.SONGJIN_REWARD_BIT, 1); Msg2Player(format("��i hi�p nh�n ���c ph�n th��ng <color=yellow>%s<color>","H�m nay tr�n T�ng Kim 21:00, �i�m t�ch l�y s� ���c nh�n ��i"))end},
	{szName="H�m nay v��t �i ��t 21:00, �i�m kinh nghi�m s� ���c nh�n ��i", nRate=25, pFun=function() PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.CHUANGGUAN_REWARD_BIT, 1); Msg2Player(format("��i hi�p nh�n ���c ph�n th��ng <color=yellow>%s<color>","H�m nay v��t �i ��t 21:00, �i�m kinh nghi�m s� ���c nh�n ��i"))end},
	{szName="Nh�n ��i kinh nghi�m khi ��nh qu�i trong 1 gi�", nRate=25, pFun=function() AddSkillState(967, 1, 1, 64800); PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.EXP_REWARD_BIT, 1); Msg2Player(format("��i hi�p nh�n ���c ph�n th��ng <color=yellow>%s<color>","Nh�n ��i kinh nghi�m khi ��nh qu�i trong 1 gi�"))end},
	{nExp = 10000000000, nRate=25},
}

BigBoss.tbKillerReward = 
{
	{tbProp = {6,1,3022,1,0,0}, nCount=10, nExpiredTime=43200},
	{tbProp = {4,239,1,1,0,0}, nCount=10},
	{tbProp = {4,238,1,1,0,0}, nCount=10},
	{tbProp = {4,240,1,1,0,0}, nCount=10},
	{tbProp = {4,353,1,1,0,0}, nCount=10},
	{tbProp = {0,11,450,1,0,0}, nCount=1, nExpiredTime=10080},
	{tbProp = {6,1,907,1,0,0}, nCount=8, nExpiredTime=10080},
	{tbProp = {6,1,3022,1,0,0}, nCount=8},
	{tbProp = {6,1,3022,1,0,0}, nCount=10, nExpiredTime=10080},
	{tbProp = {6,1,2566,1,0,0}, nCount = 500},
}

BigBoss.tbNormalDrop = 
{
	{tbProp = {6,1,1075,1,0,0}, nCount=3},
	{tbProp = {4,239,1,1,0,0}, nCount=10},
	{tbProp = {4,238,1,1,0,0}, nCount=10},
	{tbProp = {4,240,1,1,0,0}, nCount=10},
	{tbProp = {4,353,1,1,0,0}, nCount=10},
	{tbProp = {6,1,1672,1,0,0}, nCount=10},
	{tbProp = {0,11,450,1,0,0}, nCount=1, nExpiredTime=10080},
	{tbProp = {6,1,2115,1,0,0}, nCount=10},
	{tbProp = {6,1,2219,1,0,0}, nCount=3},
	{tbProp = {6,0,6,1,0,0}, nCount=20},
	{tbProp = {6,0,3,1,0,0}, nCount=20},
	{tbProp = {6,1,3022,1,0,0}, nCount=10},
	{tbProp = {6,1,3022,1,0,0}, nCount=10},
	{tbProp = {6,1,26,1,0,0}, nCount=10},
	{tbProp = {6,1,22,1,0,0}, nCount=10},
	{tbProp = {6,1,2566,1,0,0}, nCount = 500},
}

--DC ph�n th��ng boss ��c C� - Modified By DinhHQ - 20111010
BigBoss.tbVngNewDropItem = {
	[1] = {
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0}, nCount = 6,nRate=0.5},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0}, nCount = 5,nRate=1.5},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0}, nCount = 4,nRate=2.5},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0}, nCount = 3,nRate=3.5},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0}, nCount = 2,nRate=4.5},
	},
	[2] = {
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 5,nRate=0.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 4,nRate=1.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 3,nRate=2.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 2,nRate=3.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 1,nRate=4.5},
	},
	[3] = {
		{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0}, nCount = 5,nRate=0.5},
		{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0}, nCount = 4,nRate=1.5},
		{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0}, nCount = 3,nRate=2.5},
		{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0}, nCount = 2,nRate=3.5},
		{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0}, nCount = 1,nRate=4.5},
	},
}

BigBoss.tbVngNewDropEquip = {
	[1] = {
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0}, nCount = 6,nRate=0.5},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0}, nCount = 5,nRate=1.5},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0}, nCount = 4,nRate=2.5},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0}, nCount = 3,nRate=3.5},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0}, nCount = 2,nRate=4.5},
	},
	[2] = {
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 5,nRate=0.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 4,nRate=1.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 3,nRate=2.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 2,nRate=3.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 1,nRate=4.5},
	},
	[3] = {
		{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0}, nCount = 5,nRate=0.5},
		{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0}, nCount = 4,nRate=1.5},
		{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0}, nCount = 3,nRate=2.5},
		{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0}, nCount = 2,nRate=3.5},
		{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0}, nCount = 1,nRate=4.5},
	},
}	

function AddKillRecord_CallBack(Param, ResultHandle)
	szName = BigBoss.CallBackParam[Param][1];
	nSecondes = BigBoss.CallBackParam[Param][2];
	BigBoss.CallBackParam[Param] = nil;
	if (OB_IsEmpty(ResultHandle) == 0) then
		BigBoss.tbKillRecord = ObjBuffer:PopObject(ResultHandle);
	end
	
	local nIdx = 0;
	
	local nIdx = 0;
	for i=1,getn(BigBoss.tbKillRecord) do
		if (BigBoss.tbKillRecord[i][2] > nSecondes) then
			nIdx = i;
			break;
		end
	end
	
	if (nIdx == 0) then
		nIdx = getn(BigBoss.tbKillRecord) + 1;
	end
	
	tinsert(BigBoss.tbKillRecord, nIdx, {szName, nSecondes});
	
	local nCount = 0;
	
	
	for i=1,getn(BigBoss.tbKillRecord) do
		if (BigBoss.tbKillRecord[i] and BigBoss.tbKillRecord[i][1] == szName) then
			nCount = nCount + 1;
			if (nCount > 1) then
				tremove(BigBoss.tbKillRecord, nIdx);
			end
		end
	end
	
	SaveShareData("FUNC_BIGBOSS_LADDER", 0, 0, BigBoss.tbKillRecord);
end

function BigBoss:AddKillRecord(szName, nSecondes)
	self.CallBackParam[getn(self.CallBackParam)+1] = {szName, nSecondes};
	
	LoadShareData("FUNC_BIGBOSS_LADDER", 0, 0, "AddKillRecord_CallBack", getn(self.CallBackParam));
end

function BigBoss:GetKillRecord(szCallBack, nParam)
	nParam = nParam or 0;
	LoadShareData("FUNC_BIGBOSS_LADDER", 0, 0, szCallBack, nParam);
end

function BigBoss:BigBossGlobalReward()
	self.CallBackParam[getn(self.CallBackParam) + 1] = PlayerIndex;
	RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "IsBigBossDead", 0, "BigBossGlobalReward_CallBack", getn(self.CallBackParam));
end

function BigBossGlobalReward_CallBack(Param, ResultHandle)
	local Index = BigBoss.CallBackParam[Param]
	if (Index and Index > 0) then
		local OldPlayerIndex = PlayerIndex
		PlayerIndex = Index
		if (OB_IsEmpty(ResultHandle) == 0) then
			IsBigBossDead = ObjBuffer:PopObject(ResultHandle);
			if (IsBigBossDead == 1) then
				PlayerFunLib:AddTaskDaily(BigBoss.TSK_BIGBOSS_REWARD, 0);	
				if (PlayerFunLib:CheckTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.CAN_GET_REWARD_BIT, 1, "H�m nay ��i hi�p �� nh�n th��ng r�i!") == 1) then
					PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.CAN_GET_REWARD_BIT, 0);
					tbAwardTemplet:GiveAwardByList(BigBoss.tbGlobalReward, format("[%s] big boss global reward",date("%Y%m%d")));
				end
			else
				Talk(1, "", format("H�m nay v�n ch�a ��nh b�i <color=red>%s<color>","��c C� Thi�n Phong"));
			end
		end
		PlayerIndex = OldPlayerIndex
		BigBoss.CallBackParam[Param] = nil
	end
end

-------------------------------------------------Ph�n Th��ng T� ��i Gi�t Boss ��c C� Thi�n Phong-----------------------------------------------------------------------------------
function BigBoss:BigBossDeath(nNpcIndex)
	
	local nTime = tonumber(GetLocalDate("%H%M%S"))-194500; --Gi� Boss Xu�t Hi�n
	
	local nTeamSize = GetTeamSize();
	local szName;
	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, 20000000000, 0, format("%s ph�n th��ng","Ph�n th��ng kinh nghi�m cho ng��i c� c�ng k�ch m�nh nh�t v�o ��c C� Thi�n Phong"));
		end
	else 
		szName = GetName();
		local tbbossdc = {
			{szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=500},
			{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=50},
			{szName="Xu Kh�a",tbProp={4,1495,1,1,0,0},nCount=200,nBindState = -2},
		}
		PlayerFunLib:AddExp(20000000000, 0, format("%s ph�n th��ng","Ph�n th��ng kinh nghi�m cho ng��i c� c�ng k�ch m�nh nh�t v�o ��c C� Thi�n Phong"));
		tbAwardTemplet:GiveAwardByList(tbbossdc, "Ph�n th��ng Ti�u Di�t Boss C� Nh�n")
	end
--------------------------------------------Ph�n Th��ng Ng��i Xung Quanh ��ng G�n Boss----------------------------------------------------------------------------------------------------------------
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 5000000000, 0, format("%s ph�n th��ng","Ph�n th��ng kinh nghi�m cho ng��i ��ng g�n khi ��nh b�i ��c C� Thi�n Phong"));
	end
	
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, self.tbKillerReward, format("%s r�t","��c C� Thi�n Phong"), 1);
	
	tbDropTemplet:GiveAwardByList(nNpcIndex, -1, self.tbNormalDrop, format("%s r�t","��c C� Thi�n Phong"), 1);
	
	--DC Ph�n th��ng - Modified By DinhHQ - 20111010
	--item
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, self.tbVngNewDropItem, format("%s r�t","��c C� Thi�n Phong"), 1);
	--trang b�
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, self.tbVngNewDropEquip, format("%s r�t","��c C� Thi�n Phong"), 1);
	
	local nCount = GetTask(self.TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(self.TSK_PLAYER_BOSSKILLED, nCount);
	
	local Handle = OB_Create()
	if (Handle > 0) then
		ObjBuffer:PushObject(Handle, 1)
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "SetBigBossDead", Handle);
		OB_Release(Handle)
	end
	
	local szNews = format("T� ��i <color=yellow>%s<color> �� Ti�u Di�t Th�nh C�ng  <color=yellow>��c C� Thi�n Phong<color>, Nh�n ���c 20 T� Kinh Nghi�m Ng��i Xung Quanh ��ng G�n Boss Nh�n ���c 5 T� Kinh Nghi�m H�y Nhanh Ch�ng ��n VLMC Create By Nh�n Th��ng!",szName);
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	
	self:AddKillRecord(szName, nTime);
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function BigBoss:RemoveSongJinBonus()
	PlayerFunLib:AddTaskDaily(self.TSK_BIGBOSS_REWARD, 0);	
	PlayerFunLib:SetTaskBit(self.TSK_BIGBOSS_REWARD, self.SONGJIN_REWARD_BIT, 0);
end

function BigBoss:RemoveChuangGuanBonus()
	PlayerFunLib:AddTaskDaily(self.TSK_BIGBOSS_REWARD, 0);	
	PlayerFunLib:SetTaskBit(self.TSK_BIGBOSS_REWARD, self.CHUANGGUAN_REWARD_BIT, 0);
end

function BigBoss:AddSongJinPoint(nBasePoint)
	PlayerFunLib:AddTaskDaily(self.TSK_BIGBOSS_REWARD, 0);	
	local nType = GetBit(PlayerFunLib:GetActivityTask(self.TSK_BIGBOSS_REWARD), self.SONGJIN_REWARD_BIT);
	if (nType == 1) then
		local nHour = tonumber(GetLocalDate("%H"));
		if (nHour <= 22) then 
			nBasePoint = nBasePoint * 2;
		end
		
	end
	--Lunar new year 2011 - Bobus award - Modified By DinhHQ - 20120103
	local nNowDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if nNowDate >= 201701010000 and nNowDate < 202512312400 and nType ~= 1 then
		nBasePoint = nBasePoint * 2;
	end
	return nBasePoint;
end

function BigBoss:AddChuangGuanPoint(nBasePoint)
	PlayerFunLib:AddTaskDaily(self.TSK_BIGBOSS_REWARD, 0);	
	local nType = GetBit(PlayerFunLib:GetActivityTask(self.TSK_BIGBOSS_REWARD), self.CHUANGGUAN_REWARD_BIT);
	if (nType == 1) then
		nBasePoint = nBasePoint * 2;
	end
	--Lunar new year 2011 - Bobus award - Modified By DinhHQ - 20120103
	local nNowDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if nNowDate >= 201701010000 and nNowDate < 202512312400 and nType ~= 1 then
		nBasePoint = nBasePoint * 2;
	end
	return nBasePoint;
end

function BigBoss:MakeAllPlayerCanGetReward()
	local nIdx = GetFirstPlayerAtServer();
	while(nIdx > 0) do
		doFunByPlayer(nIdx, PlayerFunLib.AddTaskDaily, PlayerFunLib, self.TSK_BIGBOSS_REWARD, 0);
		doFunByPlayer(nIdx, PlayerFunLib.SetTaskBit, PlayerFunLib, self.TSK_BIGBOSS_REWARD, self.CAN_GET_REWARD_BIT, 1);
		nIdx = GetNextPlayerAtServer();
	end
end