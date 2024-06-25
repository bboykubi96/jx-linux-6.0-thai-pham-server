---------------------------------***Edit*By*Heart*Doldly***------------------------------------
IncludeLib("LEAGUE")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\sharedata.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
-------------------------------------------------------
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
BigBoss.tbGlobalReward = {
	{szName="H«m nay trËn Tèng Kim 21:00, ®iÓm tÝch lòy sÏ ®­îc nh©n ®«i", nRate=25, pFun=function() PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.SONGJIN_REWARD_BIT, 1); Msg2Player(format("§¹i hiÖp nhËn ®­îc phÇn th­ëng <color=yellow>%s<color>","H«m nay trËn Tèng Kim 21:00, ®iÓm tÝch lòy sÏ ®­îc nh©n ®«i"))end},
	{szName="H«m nay v­ît ¶i ®ît 21:00, ®iÓm kinh nghiÖm sÏ ®­îc nh©n ®«i", nRate=25, pFun=function() PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.CHUANGGUAN_REWARD_BIT, 1); Msg2Player(format("§¹i hiÖp nhËn ®­îc phÇn th­ëng <color=yellow>%s<color>","H«m nay v­ît ¶i ®ît 21:00, ®iÓm kinh nghiÖm sÏ ®­îc nh©n ®«i"))end},
	{szName="Nh©n ®«i kinh nghiÖm khi ®¸nh qu¸i trong 1 giê", nRate=25, pFun=function() AddSkillState(967, 1, 1, 64800); PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.EXP_REWARD_BIT, 1); Msg2Player(format("§¹i hiÖp nhËn ®­îc phÇn th­ëng <color=yellow>%s<color>","Nh©n ®«i kinh nghiÖm khi ®¸nh qu¸i trong 1 giê"))end},
	{nExp = 1000000000, nRate=25},
}

BigBoss.tbVngNewDropItem = {--PhÇn Th­ëng Rít Ra Tõ Boss §éc C« Thiªn Phong
	[1] = {
		[12]={{szName="Ch×a Khãa Nh­ ý",tbProp={6,1,2744,1,0,0},nCount=1,nRate=30},},
		[13]={{szName="Phi tèc hoµn lÔ bao",tbProp={6,1,2520,1,0,0},nCount=1,nRate=60},},
		[14]={{szName="§¹i lùc hoµn lÔ bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=60},},
		[14]={{szName="KNB",tbProp={4,417,1,1,0,0},nCount=100,nRate=80},},

	},	
	[2] = {
		{szName="Thiªn Linh §¬n",tbProp={4,2456,1,1,0,0},nCount = 100},
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
				if (PlayerFunLib:CheckTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.CAN_GET_REWARD_BIT, 1, "H«m nay ®¹i hiÖp ®· nhËn th­ëng råi!") == 1) then
					PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.CAN_GET_REWARD_BIT, 0);
					tbAwardTemplet:GiveAwardByList(BigBoss.tbGlobalReward, format("[%s] big boss global reward",date("%Y%m%d")));
				end
			else
				Talk(1, "", format("H«m nay vÉn ch­a ®¸nh b¹i <color=red>%s<color>","§éc C« Thiªn Phong"));
			end
		end
		PlayerIndex = OldPlayerIndex
		BigBoss.CallBackParam[Param] = nil
	end
end

-------------------------------------------------PhÇn Th­ëng Tæ §æi GiÕt Boss §éc C« Thiªn Phong-----------------------------------------------------------------------------------
function BigBoss:BigBossDeath(nNpcIndex)
local nTime = tonumber(GetLocalDate("%H%M%S"))-194500; --Giê Boss XuÊt HiÖn
local nTeamSize = GetTeamSize();
local szName;
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			szName = GetName()
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, 100000000000, 0, format("%s phÇn th­ëng","kinh nghiÖm cho Tæ §éi cã c«ng kÝch m¹nh nhÊt vµo §éc C« Thiªn Phong"));
		end
	else
		szName = GetName()
		PlayerFunLib:AddExp(70000000000, 0, format("%s phÇn th­ëng","kinh nghiÖm cho ng­êi cã c«ng kÝch m¹nh nhÊt vµo §éc C« Thiªn Phong"));
	end

	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 50000000000, 0, format("%s phÇn th­ëng","PhÇn th­ëng kinh nghiÖm cho ng­êi ®øng gÇn khi §¸nh b¹i §éc C« Thiªn Phong"));
	end
	
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, self.tbVngNewDropItem, format("%s rít","§éc C« Thiªn Phong"), 1);
	
	local nCount = GetTask(self.TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(self.TSK_PLAYER_BOSSKILLED, nCount);
	
	local Handle = OB_Create()
	if (Handle > 0) then
		ObjBuffer:PushObject(Handle, 1)
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "SetBigBossDead", Handle);
		OB_Release(Handle)
	end
	
	local szNews = format("Tæ §éi <color=yellow>%s<color> §· Tiªu DiÖt Thµnh C«ng  <color=yellow>§éc C« Thiªn Phong<color>",szName);
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