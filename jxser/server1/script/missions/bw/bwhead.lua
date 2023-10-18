IncludeLib("RELAYLADDER")
Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")
--菟出游戏后的重生点ID,也据是报符的那个地方吧
CS_RevId = 80;
CS_RevData = 36;

--会场葩的位址
BW_COMPETEMAP = {209, 210, 211};

--加入双方阵营时的位址
CS_CampPos = {	{209, 1620, 3202},	--紫色
				{209, 1612, 3187}, 	--⑻色
				{209, 1598, 3216}   --观战者的位址白色
			 }; 
CS_CamperPos = {
				{1599, 3202, "张三"},
				{1608, 3211, "殿四"},
}
FRAME2TIME = 18;
--游戏的最大人数
MAX_MEMBER_COUNT = 100;
--存储萱家的位址的任务变缚
BW_SIGNPOSWORLD = 300;
BW_SIGNPOSX = 301;
BW_SIGNPOSY = 302;
MS_STATE = 1;
MS_MAXMEMBERCOUNT = 2;
CITYID = 6; --城市ID
BW_KEY = 7; -- 0-100000000的随机数
MS_NEWSVALUE = 9; --任务中存放孝闻变缚的地方
MS_TEAMKEY = {10, 11};

MSS_CAPTAIN = {1, 2};
BW_SMALLTIME_ID = 10; --定时触发器
BW_TOTALTIME_ID = 11;
TIMER_1 = 20 * FRAME2TIME; -- 20冯公布一息战况
TIMER_2 = 12 * 3 * TIMER_1 ; --交战总时间为10+2分钟

GO_TIME = 6; -- 报符时间为2分钟
BW_MISSIONID = 4;

function BW_SetRev()
	if (GetTask(BW_SIGNPOSWORLD) == 80) then
		SetRevPos(CS_RevId, CS_RevData)
	elseif (GetTask(BW_SIGNPOSWORLD) == 78) then 
		SetRevPos(29);--xy
	else
		SetRevPos(6);--cd
	end;
end;

--萱家要求惦开游戏
function LeaveGame()
	camp = GetCamp();--恢复原始阵营
	SetFightState(0)
	if (GetCurCamp() == 2) then
		LeaveChannel(PlayerIndex, "L玦 i gi竝");
	elseif (GetCurCamp() == 3) then
		LeaveChannel(PlayerIndex, "L玦 i 蕋");
	end;
	SetTaskTemp(200,0);
	SetPunish(1)--设址PK齿罚
	SetPKFlag(0)--关闭PK开关
	ForbidChangePK(0);
	RestoreOwnFeature()
	--打开交易绑摊
	DisabledStall(0);	--绑摊
	ForbitTrade(0);	--交易
	SetCurCamp(GetCamp());
	DisabledUseTownP(0)
	ForbidEnmity(0);
	DelMSPlayer(BW_MISSIONID, PlayerIndex);
	SetLogoutRV(0);--设址重生点
	SetCreateTeam(1);
	SetDeathScript("");--设址说蓥脚本为空

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
		NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
	end;
	PlayerIndex = OldPlayer;
	
end;

function JoinCamp(Camp)
	--泽刁二Mission捏加当前萱家
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
		EnterChannel(PlayerIndex, "L玦 i Gi竝");
	elseif (Camp == 2) then
		NewWorld(CS_CampPos[2][1], CS_CampPos[2][2], CS_CampPos[2][3])
		EnterChannel(PlayerIndex, "L玦 i 蕋");
	else 
		NewWorld(CS_CampPos[3][1], CS_CampPos[3][2], CS_CampPos[3][3])
	end;

	str = GetName().."<#>  ti課 v祇 u trng."
	Msg2MSAll(BW_MISSIONID, str);
end;

function bw_state_joined_in(Camp)
--设址与帮会有关的变缚，不允许泽竞技场战改变某个帮会阵营的诧作
	SetTaskTemp(200,1);

	--设址战斗状态
	SetFightState(0);

	--萱家菟出时，保存RV并，泽息次等入时臃RV(城市重生点，非菟出点)
	SetLogoutRV(1);

	--无说蓥齿罚
	SetPunish(0);
	
	ForbidEnmity(1);
	
	--禁止交易绑摊
	DisabledStall(1);	--绑摊
	ForbitTrade(1);	--交易
	
	--关闭组队功能
	SetCreateTeam(0);
	
	--打开PK开关
--	if (Camp == 0) then
--		SetPKFlag(0)
--		ChangeOwnFeature(0, 0, -1, -1, -1, -1, -1)
--		Msg2Player("Tr鋘g t礽: Tr筺g th竔  頲 萵");
--	else
--		SetPKFlag(1)
--	end;\
	SetPKFlag(2);
	ForbidChangePK(1);
	DisabledUseTownP(1)
	
	--设址重生点，一般是选择进入阜区的城市
	BW_SetRev()
	
	--设址当前萱家的说蓥脚本
	SetDeathScript("\\script\\missions\\bw\\bwdeath.lua");
	
	--设址息次说蓥的重生点

	x = GetTask(BW_SIGNPOSWORLD);
	y = GetTask(BW_SIGNPOSX);
	z = GetTask(BW_SIGNPOSY);
	SetTempRevPos(x, y * 32, z * 32);
end;

--捣到附个队长的符字
function bw_getcaptains()
	local OldSubWorld = SubWorld;
	local idx = SubWorldID2Idx(209);
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
	OldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(209);
	if (SubWorld < 0) then
		return
	end;
	local szCaptainName = {};
	local szCaptainName = bw_getcaptains();
	if (GetMissionV(MS_MAXMEMBERCOUNT) <= 1) then
		Say("Ngi  ghi danh tham gia l玦 i, kh玭g c莕 bi誸 s?l莕 tham gia, v蒼 c?th?tr鵦 ti誴 thi u.",0);
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
		Say("C竎 h?kh玭g ?s﹏ thi u trung, ta kh玭g th?n鉯 ra s?th?t?thi u.",0)
	else
		Say("S?th?t?l?color=yellow> ["..key.."]<color><#>, Nhanh l猲, h穣 n鉯 cho c竎 th祅h vi猲 trong i, th祅h vi猲 c?s?th?t?ch輓h x竎 m韎 c?th?v祇 thi u", 0);
	end
	SubWorld = OldSubWorld;
end

function bw_branchtask_win(nGroupID)	--给胜的一方作上标记
	nOldPlayer = PlayerIndex;
	--胜蝶的一队；
	local idx = 0;
	local pidx;
	for i = 1, 10 do
		idx , pidx = GetNextPlayer(BW_MISSIONID, idx, nGroupID);
		if (pidx > 0) then
		   	PlayerIndex = pidx;
			branchTask_GainBW1()	--保持确房一个萱家胜蝶时进行登记；
		end;
		if (idx == 0) then
			break;
		end;
	end
	PlayerIndex = nOldPlayer;
end;
