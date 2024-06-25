Include("\\script\\missions\\challengeoftime\\include.lua")
Include("\\script\\missions\\challengeoftime\\npc.lua")
IL("RELAYLADDER");
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua")
Include("\\script\\activitysys\\g_activity.lua");
Include("\\script\\activitysys\\functionlib.lua");
Include("\\script\\lib\\common.lua");
Include("\\script\\event\\change_destiny\\mission.lua");	-- ÄæÌì¸ÄÃü
Include("\\script\\task\\task_award_extend.lua")
Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\missions\\challengeoftime\\rank_perday.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\challengeoftime\\doubleexp.lua")
Include("\\script\\activitysys\\config\\1005\\partysupport.lua")
function award_player(player, exp, objects, time)
	local OldPlayerIndex = PlayerIndex;
	PlayerIndex = player;
	if(GetMissionV(VARV_MISSION_RESULT) == 1) then	--×îÖÕ½±Àø
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
			point = point * (1 + 0.2);	--½±Àø¸ü¶à
		end;
		if (advanced()) then
			point = point * 2;
		end
		point = BigBoss:AddChuangGuanPoint(point);
		point = Chuangguan_checkdoubleexp(point)
		AddOwnExp(point);
		Msg2Player("<#>B¹n ®¹t ®­îc" .. point .. "®iÓm kinh nghiÖm.");
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
			-- µôÂäÎå»¨
			DropItem(world, x, y, -1, 1, 2, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0);
		end
	end
	if ( random(1,100) <= 5 ) then
		DropItem(world, x, y, -1, 6, 1, 1392, 0, 0, 0, 0, 0, 0, 0, 0, 0);
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
	
	--G_ACTIVITY:OnMessage("Chuanguan", batch, tbAllPlayer, n_level);
	
	--Phong V©n LÖnh Bµi t?®éi h?tr?t©n th?- Modified By DinhHQ - 20110916
	tbPVLB_PtSpprt:COTAward(batch, tbAllPlayer)
	
	-- LLG_ALLINONE_TODO_20070802
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

local tbPro = {
	-- {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=5},
	-- {szName="xu",tbProp={4,417,1,1,0,0},nCount=50},
	-- {szName="even fee",tbProp={6,1,5094,1,0,0},nCount=1,nExpiredTime=20220729},
}

function award_batch_extend(batch)
	award_batch_contribution(batch)
	local nOldPlayer = PlayerIndex;
	local index = 0;
	local player = 0;
	while (1) do
		index, player = GetNextPlayer(MISSION_MATCH, index, 0);
		if (player > 0) then
			PlayerIndex = player;
			-- Ô½ÄÏÉúÈÕ»î¶¯Ê±¼äÌôÕ½ÈüµÄ¹ý¹ØÊý
			SetTask(tbBirthday0905.tbTask.tsk_toll_cg_passcount, batch);
			-- ´³¹Øµ÷Õû by wangjingjun 2011.03.01
			--if %tbAward_batch[batch] and GetMissionV(VARV_BATCH_MODEL) == 1 then
				%tbPro.nCount = %tbAward_batch[batch]
			-- tbAwardTemplet:GiveAwardByList(%tbPro, "xiaonieshichen awrad", 1)
			--end
			--tbAwardTemplet:GiveAwardByList(%tbPro, "xiaonieshichen awrad", 1)
			-- Ð¡Äôß±³¾½±Àø
			--if GetMissionV(VARV_BATCH_MODEL) == 1 and batch == GetMissionV(VARV_XIAONIESHICHEN_BATCH) then
			--	%tbPro.nCount = 1
			--	 tbAwardTemplet:GiveAwardByList(%tbPro, "xiaonieshichen awrad", 1)
				tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1,0},nCount=5,},}, "test", 1);
				local nExpCount = 500000000
				nExpCount = Chuangguan_checkdoubleexp(nExpCount)
				tbAwardTemplet:GiveAwardByList({nExp_tl=1,nCount = nExpCount,}, "xiaonieshichen awrad", 1)
			--end
			
		end
		if (index == 0) then
			break;
		end	
	end
	PlayerIndex = nOldPlayer;
end

function award_batch_worldcup(batch)
	-- ÊÀ½ç±­»î¶¯µÄ´¦Àí
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

--¼Ó°ï»á¹±Ï×¶È
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
-- Í¨¹Ø½±Àø
function award_success(npc_index, time)
	local item = {};
	if (advanced()) then
		item = map_haward_success;	-- ¸ß¼¶±ÈÈüÍ¨¹Ø½±Àø
	else
		item = map_laward_success;	-- ³õ¼¶±ÈÈüÍ¨¹Ø½±Àø
	end
	award_batch_item(item, npc_index, time);	
end

-- ±ÈÈüÊ¤Àû
function success(npc_index)
	-- Í³¼ÆÊ±¼ä
	local time = GetMissionV(VARV_BOARD_TIMER);
	time = time + INTERVAL_BOARD * 60 - floor(GetMSRestTime(MISSION_MATCH, TIMER_BOARD) / 18);
	SetMissionV(VARV_BOARD_TIMER, time);
	
	-- ±ê¼ÇÎªÍ¨¹Ø
	SetMissionV(VARV_MISSION_RESULT, 1);
		
	-- Í¨¹Ø½±Àø
	award_success(npc_index, time);
	
	--local laddertime = LIMIT_FINISH - time;
	local laddertime = time;
	local teamname = GetMissionS(VARS_TEAM_NAME)
	local nLeaderFaction = GetMissionS(VARS_TEAMLEADER_FACTION)
	local nLeaderGender = GetMissionS(VARS_TEAMLEADER_GENDER)
	local MapId = SubWorldIdx2ID(SubWorld)
	local LadderId = 10179;
	if (map_isadvanced[MapId] == 1) then
		LadderId = 10180;
	end
	
	-- DEBUG
	--print(format("team name:%s", teamname));
			
	-- ÅÅÐÐ°ñ
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
	-- ¸üÐÂÃ¿ÌìµÄ³É¼¨
	if (advanced()) then
		local nOldPlayer = PlayerIndex;
		local index = 0;
		local player = 0;
		while (1) do
			index, player = GetNextPlayer(MISSION_MATCH, index, 0);
			if (player > 0) then
				PlayerIndex = player;
				Kevin_add_vuotai()
				StackExp(1000000000)
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
	broadcast(GetMissionS(VARS_TEAM_NAME) .. "§éi ng?®· th¾ng lîi hoµn thµnh nhiÖm v?®óng thêi gian, ®· dông" .. floor(time / 60) .. "phót" .. mod(time, 60) .. "gi©y! Tr­íc ®ã"..laddertime.." gi©y");
		
	-- DEBUG
	--print(format("used time: %d seconds", time));

	-- Èç¹ûÓÃÊ±ÉÙÓÚ12·ÖÖÓ£¬´ÓÒþ²Ø¹Ø¿¨ÖÐËæ»úÑ¡È¡1¸ö¿ªÆô	
	if (time < 20 * 60) then
		local map = map_lo_hidden_npc;
		if (advanced()) then
			map = map_hi_hidden_npc;
		end
		local index = random(1, getn(map));
		close_board_timer();
		Msg2MSAll(MISSION_MATCH, "<#>NhiÖm v?b?mËt ®· khái ®éng råi");
		create_all_npc(map[index]);
	else
		-- Ìß»Ø±¨Ãûµã
		kickout();
	end
end

-- Òþ²ØÈÎÎñ½±Àø
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
			end
			
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
			add_transfer_npc()
		else
			kickout();
		end
	else
		local batch = GetMissionV(VARV_NPC_BATCH);
		Msg2MSAll(MISSION_MATCH, GetMissionS(VARS_TEAM_NAME) .. "§éi ng?®· tiªu diÖt toµn b?" .. batch .. "®¸m qu¸i!");
		award_batch(batch, index);
		if (batch >= get_batch_count()) then
			-- ½áÊø
			success(index);
		else
			-- ²úÉúÏÂÒ»Åú¹Ö
			batch = batch + 1;
			SetMissionV(VARV_NPC_BATCH, batch);
			create_batch_npc(batch);
		end
	end
end

-- NPCËÀÍö½±Àø
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

function Kevin_add_vuotai()
	tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1,0},nCount=300,},}, "test", 1);
	-- tbAwardTemplet:GiveAwardByList({{szName="Hµnh HiÖp Kú[1]",tbProp={6,1,4975,1,0,0},nCount=1},}, "test", 1);
	-- tbAwardTemplet:GiveAwardByList({{szName="Hµnh HiÖp LÖnh",tbProp={6,1,4981,1,0,0},nCount=20,},}, "test", 1);
	-- tbAwardTemplet:GiveAwardByList({{szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,4982,1,0,0},nCount=20,},}, "test", 1);
		-- tbAwardTemplet:GiveAwardByList({{szName = "Tói nguyªn liÖu",tbProp={6,1,4998,1,0,0},nCount=50},}, "test", 1);
	-- local szNews = format("§¹i hiÖp <color=green>"..GetName().."<color=yellow> §· hoµn thµnh xuÊt s¾c trËn v­ît ¶i");
	-- LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end