IL("RELAYLADDER");
Include("\\script\\missions\\challengeoftime\\include.lua")
Include("\\script\\missions\\challengeoftime\\npc.lua")
Include("\\script\\event\\storm\\function.lua")
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua")
Include("\\script\\activitysys\\g_activity.lua");
Include("\\script\\activitysys\\functionlib.lua");
Include("\\script\\lib\\common.lua");
Include("\\script\\event\\change_destiny\\mission.lua");
Include("\\script\\task\\task_award_extend.lua")
Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\missions\\challengeoftime\\rank_perday.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\challengeoftime\\doubleexp.lua")
--------------------------------------------------------------------------
function award_player(player, exp, objects, time)
	local OldPlayerIndex = PlayerIndex;
	PlayerIndex = player;
	
	if(GetMissionV(VARV_MISSION_RESULT) == 1) then
		storm_addpoint(2, LIMIT_FINISH - time)
	end

	local experience = exp;
	if (type(exp) == "function") then
		experience = exp(time);
	end	
	if (experience ~= 0) then
		local point = experience * 10000;
		
		AddExp_Skill_Extend(point);
		if(greatnight_huang_event(3) == 1) then
		elseif(greatnight_huang_event(3) == 2) then
			point = point * 2;
		elseif(greatnight_huang_event(3) == 3) then
			point = point * 3;
		else
		end;
		
		local name = GetMissionS(VARS_TEAM_NAME);
		if (GetName() == name) then
			point = point * (1 + 0.2);
		end;
		if (advanced()) then
			point = point * 2;
		end
		
		point = BigBoss:AddChuangGuanPoint(point);
		point = Chuangguan_checkdoubleexp(point)
		AddOwnExp(point);
		Msg2Player("<#>B¹n ®¹t ®­îc " .. point .. " ®iÓm kinh nghiÖm.");
			--	if batch == 28  then
		--	tbAwardTemplet:GiveAwardByList({{szName = "B¶o r­¬ng v­ît ¶i", tbProp ={ 6, 1, 2742, 1, 0, 0, 0, 0}, nCount=5, nExpiredTime=43200}}, format("Get %s", "Kim bµi v­ît ¶i"))
		--	tbAwardTemplet:GiveAwardByList({{szName = "xu khoa", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=1,nBindState = -2}}, format("Get %s", "Xu Khoa"))
			--end
	end
	
	if (objects ~= nil) then
		award_random_object(objects, player);
	end

	PlayerIndex = OldPlayerIndex;
end

function drop_item(index, count)
	local x, y, world = GetNpcPos(index);
	if (count ~= 0) then
		for i = 1, count do
			DropItem(world, x, y, -1, 1, 2, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0);
		end
	end
	
	if ( random(1,100) <= 5 ) then
--		DropItem(world, x, y, -1, 6, 1, 1392, 0, 0, 0, 0, 0, 0, 0, 0, 0);
--		SetItemBindState(DropItem,-2)
	end
end

function award_batch_item(item, npc_index, time)
	local index = 0;
	local player = 0;
	while (1) do
		index, player = GetNextPlayer(MISSION_MATCH, index, 0);
		if (player > 0) then
			award_player(player, item[1], item[3], time);
		end
		if (index == 0) then
			break;
		end	
	end
	drop_item(npc_index, item[2]);
end

function award_batch(batch, npc_index)
	local map = current_npc_map();
	award_batch_item(map[batch][2], npc_index, 0);

	local tbAllPlayer = {};
	while (1) do
		index, player = GetNextPlayer(MISSION_MATCH, index, 0);
		if (player > 0) then
			tbAllPlayer[getn(tbAllPlayer)+1] = player;
		end
		if (index == 0) then
			break;
		end	
	end
	
	local n_level = 0;
	if (advanced()) then
		n_level = 2
	else
		n_level = 1
	end
	G_ACTIVITY:OnMessage("Chuanguan", batch, tbAllPlayer, n_level);
	award_batch_extend(batch)
end

local tbAward_batch = 
{
	[1] = 1,
	[2] = 1,
	[3] = 1,
	[4] = 1,
	[5] = 1,
	[6] = 1,
       [7] = 1,
	[8] = 1,
	[9] = 1,
	[10] = 1,
	[11] = 1,
	[12] = 1,
       [13] = 1,
	[14] = 1,
	[15] = 1,
	[16] = 1,
	[17] = 1,
	[18] = 1,
       [19] = 1,
	[20] = 1,
	[21] = 1,
	[22] = 1,
	[23] = 1,
       [24] = 1,
	[25] = 1,
	[26] = 1,
	[27] = 1,
	[28] = 1,
}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--PhÇn Th­ëng Qua ¶i
local tbPro= {
--	{nExp_tl = 100000000},
	--{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=1},
--	{szName="§¸ Linh Hån",tbProp={6,1,4905,1,0,0},nCount=1},	
}
--PhÇn Th­ëng Dµnh Cho §éi Tr­ëng
tbAward_Personal = {
	--{nExp_tl = 1e9},
	--{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=5},
}
--PhÇn Th­ëng Dµnh Cho §éi Ngò
tbAward_Teams = {
	[1] = {	
		{nExp_tl=5e6},	
	--	{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=2},
--	{szName="D· TÈu Chi LÖnh",tbProp={6,1,4407,1,1,0},nCount=2},
	--	{szName="M¶nh Ph«i TÝm",tbProp={4,1622,1,1},nCount=10},
	--	{szName="M¶nh GhÐp R­¬ng An Bang",tbProp={4,1624,1,1},nCount=2},
		--	{szName="HuyÒn tinh Kho¸ng Th¹ch",tbProp={6,1,147,2,0},nCount=1},
--		{szName="LÔ Bao TiÒn §ång",tbProp={6,1,4515,1,1,0},nCount=1},
	--	{szName="Bã Cá",tbProp={6,1,4415,1,1,0},nCount=5},
			
	},
	[2] = {
		--	{szName = "Phóc Duyªn TiÓu",tbProp={6,1,122,1,0,0},nCount=1,nRate=5},
		--	{szName = "Phóc Duyªn §¹i",tbProp={6,1,124,1,0,0},nCount=1,nRate=1},
		--	{szName = "Tiªn Th¶o Lé",tbProp={6,1,71,1,0,0},nCount=1,nRate=5},
		--	{szName = "Thiªn S¬n B¶o Lé",tbProp={6,1,72,1,0,0},nCount=1,nRate=5},
		--	{szName = "Phi Phong",tbProp={6,1,15,1,0,0},nCount=1,nRate=5},
		--	{szName = "Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1},nCount=1,nRate=1},
		--	{szName = "Lam Thñy Tinh",tbProp={4,238,1,1},nCount=1,nRate=1},
		--	{szName = "Tö Thñy Tinh",tbProp={4,239,1,1},nCount=1,nRate=1},
		--	{szName = "Lôc Thñy Tinh",tbProp={4,240,1,1},nCount=1,nRate=1},
		--			{szName="HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,3,0},nCount=1,nRate=15},
	--	{szName="HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,4,0},nCount=1,nRate=15},
	},
}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function award_batch_extend(batch)
	award_batch_contribution(batch)
	local nOldPlayer = PlayerIndex;
	local index = 0;
	local player = 0;
	while (1) do
		index, player = GetNextPlayer(MISSION_MATCH, index, 0);
		if (player > 0) then
			PlayerIndex = player;
			SetTask(tbBirthday0905.tbTask.tsk_toll_cg_passcount, batch);
			--Tu 10h Den 22h
			--if %tbAward_batch[batch] and GetMissionV(VARV_BATCH_MODEL) == 1 then
		--		%tbPro.nCount = %tbAward_batch[batch]
			--	tbAwardTemplet:GiveAwardByList(%tbPro, "chuangguan award", 1)
			if batch>=1 and batch<=4 then
			tbAwardTemplet:GiveAwardByList({{nExp_tl=100000},}, "test", 1);
			elseif batch>=5 and batch<=10 then
				tbAwardTemplet:GiveAwardByList({{nExp_tl=200000},}, "test", 1);
			elseif batch>=11 and batch<=15 then
				tbAwardTemplet:GiveAwardByList({{nExp_tl=250000},}, "test", 1);
			elseif batch>=16 and batch<=20 then
				tbAwardTemplet:GiveAwardByList({{nExp_tl=300000},}, "test", 1);
			elseif batch>=21 and batch<=25 then
				tbAwardTemplet:GiveAwardByList({{nExp_tl=350000},}, "test", 1);
			elseif batch>=26 and batch<=28 then
				tbAwardTemplet:GiveAwardByList({{nExp_tl=450000},}, "test", 1);
			end
			--	Add120SkillExp(300000)
			--	Clear120SkillExpLimit ()
			--end
			--Tu 23h Den 9h
			--if GetMissionV(VARV_BATCH_MODEL) == 1 and batch == GetMissionV(VARV_XIAONIESHICHEN_BATCH) then
			--	%tbPro.nCount = 1
			--	tbAwardTemplet:GiveAwardByList(%tbPro, "xiaonieshichen awrad", 1)
			
			--	local nExpCount = 10000000
			--	nExpCount = Chuangguan_checkdoubleexp(nExpCount)
			--	tbAwardTemplet:GiveAwardByList({nExp_tl=1,nCount = nExpCount,}, "xiaonieshichen awrad", 1)
			--end
		end
		if (index == 0) then
			break;
		end	
	end
	PlayerIndex = nOldPlayer;
end

function award_batch_worldcup(batch)
	
	if checkPayCardTime() ~= 1 then
		return 
	end;
	
	local oldPlayer = PlayerIndex
	local index = 0;
	local player = 0;
	while (1) do
		index, player = GetNextPlayer(MISSION_MATCH, index, 0);
		if (player > 0) then
			PlayerIndex = player
			if batch==20 then
				_Debug("<<Î´·­Òë>>"..batch.."<<Î´·­Òë>>");
				worldcup_challenge_addpoint(1);
			elseif batch==28 then
				_Debug("<<Î´·­Òë>>"..batch.."<<Î´·­Òë>>");
				worldcup_challenge_addpoint(1);			
			end;
		end
		if (index == 0) then
			break;
		end	
	end
	PlayerIndex = oldPlayer
end

function award_batch_contribution(batch)
	local nOldPlayer = PlayerIndex;
	local index = 0;
	local player = 0;
	while (1) do
		index, player = GetNextPlayer(MISSION_MATCH, index, 0);
		if (player > 0) then
			PlayerIndex = player;
			tongaward_challengeoutoftime(batch);
		end
		if (index == 0) then
			break;
		end	
	end
	PlayerIndex = nOldPlayer;
end

function award_success(npc_index, time)
	local item = {};
	if (advanced()) then
		item = map_haward_success;
	else
		item = map_laward_success;
	end
	award_batch_item(item, npc_index, time);	
end

function success(npc_index)
	local time = GetMissionV(VARV_BOARD_TIMER);
	time = time + INTERVAL_BOARD * 60 - floor(GetMSRestTime(MISSION_MATCH, TIMER_BOARD) / 18);
	SetMissionV(VARV_BOARD_TIMER, time);
	
	SetMissionV(VARV_MISSION_RESULT, 1);
		
	award_success(npc_index, time);
	
	local laddertime = time;
	local teamname = GetMissionS(VARS_TEAM_NAME)
	local nLeaderFaction = GetMissionS(VARS_TEAMLEADER_FACTION)
	local nLeaderGender = GetMissionS(VARS_TEAMLEADER_GENDER)
	local MapId = SubWorldIdx2ID(SubWorld)
	local LadderId = 10179;
	if (map_isadvanced[MapId] == 1) then
		LadderId = 10180;
	end
	
	local bfind = 0
	for i = 1, 10 do 
		name , value = Ladder_GetLadderInfo(LadderId, i)
		if (name  == teamname) then
			bfind = 1
			if ( laddertime > value) then
				Ladder_NewLadder(LadderId, teamname, -1 * laddertime, 1, nLeaderFaction, nLeaderGender)
				break
			end
		end
	end
	
	if (bfind == 0) then
		Ladder_NewLadder(LadderId, teamname, laddertime, 1, nLeaderFaction, nLeaderGender)
	end
   	
   	Ladder_NewLadder(DailyRankLadderId, teamname, -1 * laddertime, 1)
	
	if (advanced()) then
		local nOldPlayer = PlayerIndex;
		local index = 0;
		local player = 0;
		while (1) do
			index, player = GetNextPlayer(MISSION_MATCH, index, 0);
			if (player > 0) then
				PlayerIndex = player;
				ndate = tonumber(GetLocalDate("%y%m%d"));
				update_gbtask(time);
				if (GetTask(tsk_rank_lastdate) == ndate) then
					if (GetTask(tsk_rank_lastscore) > time) then
						SetTask(tsk_rank_lastscore, time);
					end
				else
					SetTask(tsk_rank_2thdate, GetTask(tsk_rank_lastdate));
					SetTask(tsk_rank_2thscore, GetTask(tsk_rank_lastscore));
					SetTask(tsk_rank_lastdate, ndate);
					SetTask(tsk_rank_lastscore, time);
				end
			end
			if (index == 0) then
				break;
			end	
		end
		PlayerIndex = nOldPlayer;
		
	end

	broadcast(GetMissionS(VARS_TEAM_NAME) .. " §éi ngò ®· th¾ng lîi hoµn thµnh nhiÖm vô ®óng thêi gian, ®· dông" .. floor(time / 60) .. "phót" .. mod(time, 60) .. "gi©y! Tr­íc ®ã"..laddertime.." gi©y");
	--Msg2SubWorld(GetMissionS(VARS_TEAM_NAME) .. " §éi ngò ®· th¾ng lîi hoµn thµnh nhiÖm vô ®óng thêi gian, PhÇn th­ëng: <color=cyan>2 G¹o NÕp + 2 R­¬ng M¶nh HKMP<color>")
	if (time < 30 * 60) then
		local map = map_lo_hidden_npc;
		if (advanced()) then
			map = map_hi_hidden_npc;
		end
		local index = random(1, getn(map));
		close_board_timer();
		Msg2MSAll(MISSION_MATCH, "<#>NhiÖm vô bÝ mËt ®· khái ®éng råi");
		create_all_npc(map[index]);
	else
		kickout();
	end
	tbAwardTemplet:GiveAwardByList(tbAward_Personal,"PhÇn Th­ëng V­ît ¶i Dµnh Cho §éi Tr­ëng")
end

function award_hidden_mission()
	local index = 0;
	local player = 0;
	local OldPlayerIndex = PlayerIndex;
	while (1) do
		index, player = GetNextPlayer(MISSION_MATCH, index, 0);
		if (player > 0) then
			award_random_object(map_random_awards, player);
			
			PlayerIndex = player;
			SetTask(tbBirthday0905.tbTask.tsk_toll_cg_passcount, 29);
			
			if GetMissionV(VARV_BATCH_MODEL) == 1 then
				--%tbAward_Teams.nCount = 3
				--tbAwardTemplet:GiveAwardByList(%tbAward_Teams, "chuangguan award", 1)
			end
		--	Add120SkillExp(5000000)
		--	Clear120SkillExpLimit ()
		--	tbAwardTemplet:GiveAwardByList(tbAward_Teams, "PhÇn Th­ëng V­ît ¶i Dµnh Cho §éi Ngò")
		--	local nIndex = AddItem(6,1,2742,1,0,0) ITEM_SetExpiredTime(nIndex, 1440) SyncItem(nIndex)  --B¶o R­¬ng V­ît ¶i
		--	local a=random(1,50)
		--if a==10 then

		tbAwardTemplet:GiveAwardByList({{nExp_tl=5e6},}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName="LÖnh bµi gäi boss",tbProp={6,1,4489,1,1,0},nCount=3},}, "test", 1);
	Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· v­ît thµnh c«ng 28 ¶i vµ nhËn ®­îc phÇn th­ëng.")
--end
		end
		if (index == 0) then
			break;
		end	
	end
	PlayerIndex = OldPlayerIndex;
end

function batch_finish(index)
	if (GetMissionV(VARV_MISSION_RESULT) == 1) then
	
		award_hidden_mission();
		
		if GetMissionV(VARV_BATCH_MODEL) == 1 and GetMissionV(VARV_BOARD_TIMER) <= CHUANGGUAN30_TIME_LIMIT  then
		--	add_transfer_npc()
		kickout();
		else
			kickout();
		end
	else
		local batch = GetMissionV(VARV_NPC_BATCH);
		Msg2MSAll(MISSION_MATCH, GetMissionS(VARS_TEAM_NAME) .. " §éi ngò ®· tiªu diÖt toµn bé " .. batch .. " ®¸m qu¸i!");
		--PhÇn Th­ëng KÕt Thóc Qu¸i Dµnh Cho Member Khi Qua Mçi ¶i
		--local nIndex = AddItem(6,1,2742,1,0,0) ITEM_SetExpiredTime(nIndex, 1440) SyncItem(nIndex)  --B¶o R­¬ng V­ît ¶i
		
		award_batch(batch, index);
    	
		if (batch >= get_batch_count()) then
			success(index);
		else
			batch = batch + 1;
			SetMissionV(VARV_NPC_BATCH, batch);
			create_batch_npc(batch);
		end
	end
end

function NpcDeathAward(index)
	local nNpcSettingIdx = GetNpcSettingIdx(index);
	tbChangeDestiny:completeMission_NieShiChen(nNpcSettingIdx);
end

function OnDeath(index)
	NpcDeathAward(index);
	local count = GetMissionV(VARV_NPC_COUNT) - 1;	
	if (count >= 0) then
		SetMissionV(VARV_NPC_COUNT, count);
		if (count == 0) then
			batch_finish(index);
		end
	end
end
local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow> BOSS V­ît ¶i<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end