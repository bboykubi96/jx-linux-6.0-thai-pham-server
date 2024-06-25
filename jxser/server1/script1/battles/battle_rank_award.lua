
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

-- ª˝∑÷
function battle_rank_sort_Point(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_TOTALPOINT)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_TOTALPOINT)
	return nTotalPointA > nTotalPointB
end

-- PKÕÊº“
function battle_rank_sort_PK(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_KILLPLAYER)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_KILLPLAYER)
	return nTotalPointA > nTotalPointB
end

-- …±NPC ˝
function battle_rank_sort_NPC(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_KILLNPC)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_KILLNPC)
	return nTotalPointA > nTotalPointB
end

-- ¡¨’∂
function battle_rank_sort_SER(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_MAXSERIESKILL)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_MAXSERIESKILL)
	return nTotalPointA > nTotalPointB
end



function battle_rank_activity(nBattleLevel)
	
	local tbCmpFun = 
	{
		battle_rank_sort_Point,
		battle_rank_sort_PK,
		battle_rank_sort_NPC,
		battle_rank_sort_SER
	}
	
	G_ACTIVITY:OnMessage("SongJinRank",nBattleLevel, battle_rank_GetSortPlayer0808, tbCmpFun, {})
end

-- 2011Ω‚∑≈»’ªÓ∂Ø£¨‘˘ÀÕª®ª∑
function battle_GiveHuanHuanByIndex()
	local tbItem = {szName="Vﬂng Hoa Chi’n Thæng",tbProp={6,1,2824,1,0,0},nExpiredTime=20110530}
	tbAwardTemplet:Give(tbItem, 1, {"EventChienThang042011", "zhanshenghuahuan"})
	AddStatData("jiefangri_songjinchanchuzhanshenghuahuan", 1)
end

-- ‘⁄20110421~20110523≤≈ƒ‹ªÒµ√’‚∏ˆΩ±¿¯
function battle_GiveHuahuan(tbPlayerAll)
	local ndate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	local nStartDate = 201104280000
	local nEndDate = 201105300000
	if ndate < nStartDate or ndate > nEndDate then
		return
	end 
	
	local nCount = 10	-- ª®ª∑µƒ ˝¡ø
	local nNumber = getn(tbPlayerAll)
	local nSplit = 1
	if nNumber > nCount then
		nSplit = (nNumber - mod(nNumber,nCount)) / nCount
	end
	
	for i=1,nNumber,nSplit do
		if nCount == 0 then
			break
		end
		nCount = nCount - 1
		nPlayerIndex = tbPlayerAll[i]
		if nPlayerIndex > 0 then
			CallPlayerFunction(nPlayerIndex, battle_GiveHuanHuanByIndex)
		end
	end
end

function battle_finish_activity(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)
-- ¡Ÿ ±¥˙¬Î 2010-06-07
	if (DynamicExecute("\\script\\event\\jiefang_jieri\\201004\\main.lua", "FreedomEvent2010:IsActive1") == 1 and nBattleLevel == 3) then
		for i=1, getn(tbPlayerAll) do
			local nPlayerIndex = tbPlayerAll[i]
			
			if nPlayerIndex ~= nil and nPlayerIndex > 0 then
				DynamicExecute("\\script\\event\\jiefang_jieri\\201004\\soldier\\main.lua", "Soldier2010:SongjinSoldier", nPlayerIndex)
			end
		end
		
	end
	G_ACTIVITY:OnMessage("FinishSongJin",nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)
	bilActivity_EnBattle_2(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)
	battle_GiveHuahuan(tbPlayerAll)
end
function bilActivity_EnBattle_2(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)  --Tong Kim
--Msg2Player("<color=white>11111111111111111");
	local nWeekDay = tonumber(GetLocalDate("%w"));
	local nHour = tonumber(GetLocalDate("%H"))
   -- local sogiay = random(30,60)
--	if (nHour >= 21 and nHour < 23 and nWeekDay ~= 6 and nWeekDay ~= 0 ) then
	--TM_SetTimer(sogiay * 18,125,1,0);
	--TM_SetTimer(5 * 18,126,10,0);
	--end
	local a = PlayerIndex
	local b, c, d, e = 0, tonumber(GetLocalDate("%H")), 0, 1773
	local Tdate = floor(FormatTime2Number(GetCurServerTime()+24*60*60)/10000)
	local nWeekDay = tonumber(GetLocalDate("%w"));
	local nHour = tonumber(GetLocalDate("%H%M"))
	
for _i = 1, getn(tbPlayerWin) do
		PlayerIndex = tbPlayerWin[_i]
		b = BT_GetData(1)
	--	tbAwardTemplet:GiveAwardByList({{szName="L÷nh Bµi G‰i Boss",tbProp={6,1,4459,1,1},nCount=1},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "HÈ Ti™u L÷nh",tbProp={6,1,30317,1,0,0},nCount=1},}, "test", 1);
		if ( nHour >= 0100 and nHour < 2230)  then
			--	if b>=10000 then
				tbAwardTemplet:GiveAwardByList({{nExp = 10e6}}, "test", 1);
		--	end
			if b>=5000 then
				tbAwardTemplet:GiveAwardByList({{szName = "Hu©n C´ng TËng Kim",tbProp={6,1,1773,1,1},nCount=1,nBindState=-2},}, "test", 1);
			end
		end

end		
for _i = 1, getn(tbPlayerLos) do
			PlayerIndex = tbPlayerLos[_i]
			b = BT_GetData(1)
			if ( nHour >= 0100 and nHour < 2230)  then
			--	if b>=10000 then
			if b>=5000 then
				tbAwardTemplet:GiveAwardByList({{szName = "Hu©n C´ng TËng Kim",tbProp={6,1,1773,1,1},nCount=1,nBindState=-2},}, "test", 1);
			end
				tbAwardTemplet:GiveAwardByList({{nExp = 5e6}}, "test", 1);
			--end
		end
end
	PlayerIndex = a
end

function battle_rank_award0808(nBattleLevel)
	local tbPlayer = {}
	battle_rank_GetSortPlayer0808(tbPlayer, 0, battle_rank_sort_Point)
	for i=1, 20 do
		if tbPlayer[i] and tbPlayer[i] > 0 then
			Msg2MSAll(MISSIONID, format("<color=green>Hπng %d<color>: <color=yellow>%s<color>", i, doFunByPlayer(tbPlayer[i],GetName)))
		end
	end	
	local nHour = tonumber(GetLocalDate("%H%M"))
		if (nHour>=0100 and nHour<2300)  then
			for i = 1, 20 do
				local szName = doFunByPlayer(tbPlayer[i],GetName)
				if szName ~= nil and szName ~= "" then
					local nTopPlayerIdx = SearchPlayer(szName);
					if (nTopPlayerIdx > 0) then
					--	doFunByPlayer(nTopPlayerIdx, AddAward1,i)
					end
				end
		end
		end
end
function AddAward1(nRank)
	if not nRank then
	return
	end

	if nRank==1 then
		tbAwardTemplet:GiveAwardByList({{szName="HÈp trang bﬁ xanh hi’m",tbProp={6,1,4478,1,1},nCount=3},}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName = "L∏ CÍ ß· Thi’u Nhi",tbProp={6,1,4500,1,1},nCount=5},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName="D∑ t»u chÿ l÷nh",tbProp={6,1,4407,1,1},nCount=5},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName="Ti™n Th∂o LÈ",tbProp={6,1,1181,1,1},nCount=1},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=50},}, "test", 1);
	elseif nRank==2 then
		tbAwardTemplet:GiveAwardByList({{szName="HÈp trang bﬁ xanh hi’m",tbProp={6,1,4478,1,1},nCount=2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName="D∑ t»u chÿ l÷nh",tbProp={6,1,4407,1,1},nCount=5},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=30},}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName = "L∏ CÍ ß· Thi’u Nhi",tbProp={6,1,4500,1,1},nCount=3},}, "test", 1);
	elseif nRank==3 then
		tbAwardTemplet:GiveAwardByList({{szName="HÈp trang bﬁ xanh hi’m",tbProp={6,1,4478,1,1},nCount=1},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=20},}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName = "L∏ CÍ ß· Thi’u Nhi",tbProp={6,1,4500,1,1},nCount=3},}, "test", 1);

	elseif nRank==4 then
		tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=10},}, "test", 1);
	elseif nRank==5 then
		tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=10},}, "test", 1);
	end

end

 
function battle_rank_GetSortPlayer0808(tbPlayer, nCamp, pCompare)
	tbPlayer= tbPlayer or {}
	local idx = 0;
	
	for i = 1 , GetMSPlayerCount(MISSIONID, nCamp) do
		idx, pidx = GetNextPlayer(MISSIONID, idx, nCamp)
		if (pidx and  pidx > 0) then
			tinsert(tbPlayer, pidx)
		end
		if (idx <= 0) then 
			break
		end;
	end
	
	sort(tbPlayer, pCompare)
	return tbPlayer
end

function battle_rank_doFun0808(nRank, nSortType, pfun, ...)
	
	local szName,nTotalPoint = BT_GetTopTenInfo(nRank, nSortType);
	
	if szName ~= nil and szName ~= "" then
			local nTopPlayerIdx = SearchPlayer(szName);
			
			if (nTopPlayerIdx > 0) then
				doFunByPlayer(nTopPlayerIdx, pfun,unpack(arg))
			end
		end
end