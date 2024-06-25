
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
	battle_GiveHuahuan(tbPlayerAll)
	bilActivity_EnBattle_2(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)
end

function bilActivity_EnBattle_2(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)
	local a = PlayerIndex
	local b, c, d, e = 0, tonumber(GetLocalDate("%H")), 0, 1773
	local Tdate = floor(FormatTime2Number(GetCurServerTime()+24*60*60)/10000)
	local nWeekDay = tonumber(GetLocalDate("%w"));
	local nHour = tonumber(GetLocalDate("%H%M"))
	
		for _i = 1, getn(tbPlayerWin) do
		PlayerIndex = tbPlayerWin[_i]
		b = BT_GetData(1)
		
			if ( nHour >= 2050 and nHour < 2230) and b >= 5000 then
				tl_addPlayerExp(10000000000)
				Msg2Player("<color=green>TrÀn 21h do lµ b™n chi’n thæng c„ sË Æi”m tr™n 5000 Æi”m n™n bπn nhÀn Æ≠Óc 10 t˚ EXP")			
			end
			
			local tbRoomItems = GetRoomItems(0)
			local nItemIdx
			local Used = 0
			for i=1, getn(tbRoomItems) do
				nItemIdx = tbRoomItems[i]
				if (GetItemName(nItemIdx) == "Daily Task Card") then
					-- if (Used == 0) then
						local n_param = tonumber(GetItemParam(nItemIdx,3))
						SetSpecItemParam(nItemIdx,3, (n_param + b))
						SetItemBindState(nItemIdx, -2);
						SyncItem(nItemIdx)
						break
						-- Used = 1
					-- end
				end
			end
		end
		for _i = 1, getn(tbPlayerLos) do
			PlayerIndex = tbPlayerLos[_i]
			b = BT_GetData(1)
			
			if ( nHour >= 2050 and nHour < 2230) and b >= 5000 then
				tl_addPlayerExp(5000000000)
				Msg2Player("<color=green>TrÀn 21h do lµ b™n thua c„ sË Æi”m tr™n 5000 Æi”m n™n bπn nhÀn Æ≠Óc 5 t˚ EXP")						
			end
			local tbRoomItems = GetRoomItems(0)
			local nItemIdx
			local Used = 0
			for i=1, getn(tbRoomItems) do
				nItemIdx = tbRoomItems[i]
				if (GetItemName(nItemIdx) == "Daily Task Card") then
					-- if (Used == 0) then
						local n_param = tonumber(GetItemParam(nItemIdx,3))
						SetSpecItemParam(nItemIdx,3, (n_param + b))
						SetItemBindState(nItemIdx, -2);
						SyncItem(nItemIdx)
						break
						-- Used = 1
					-- end
				end
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
	for i = 1, 20 do
	local szName = doFunByPlayer(tbPlayer[i],GetName)
		if szName ~= nil and szName ~= "" then
		local nTopPlayerIdx = SearchPlayer(szName);
			if (nTopPlayerIdx > 0) then
				doFunByPlayer(nTopPlayerIdx, AddAward,i)
			end
		end
	end;
end

function AddAward(nRank)
	if not nRank then
	return
	end
	local tbThuongTop = 
	{
	[1]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=10000,},
			-- {szName = "ßi”m Kinh Nghi÷m", nExp_tl=40000000,},
			-- {szName = "Ng˘a Phi™n VÚ", tbProp={0,10,7,1,0,0}, nCount=1,nExpiredTime=24*30},
		},
		[2]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=8000,},
			-- {szName = "ßi”m Kinh Nghi÷m", nExp_tl=30000000,},
			-- {szName = "Ng˘a B´n Ti™u", tbProp={0,10,6,1,0,0}, nCount=1,nExpiredTime=24*30},
		},
		[3]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=6000,},
			-- {szName = "ßi”m Kinh Nghi÷m", nExp_tl=20000000,},
			-- {szName = "Ng˘a B´n Ti™u", tbProp={0,10,6,1,0,0}, nCount=1,nExpiredTime=24*30},
		},
		[4]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=4000,},
			-- {szName = "ßi”m Kinh Nghi÷m", nExp_tl=10000000,},
		},
		[5]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=4000,},
			-- {szName = "ßi”m Kinh Nghi÷m", nExp_tl=10000000,},
		},
		[6]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=4000,},
			-- {szName = "ßi”m Kinh Nghi÷m", nExp_tl=10000000,},																		
		},
		[7]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=4000,},
			-- {szName = "ßi”m Kinh Nghi÷m", nExp_tl=10000000,},
		},
		[8]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=4000,},
			-- {szName = "ßi”m Kinh Nghi÷m", nExp_tl=10000000,},													   
		},
		[9]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=4000,},
			-- {szName = "ßi”m Kinh Nghi÷m", nExp_tl=10000000,},															   
		},
		[10]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=4000,},
		},
		[11]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=1000,},
		},
		[12]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=1000,},
		},
		[13]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=1000,},
		},
		[14]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=1000,},
		},
		[15]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=1000,},
		},
		[16]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=1000,},
		},
		[17]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=1000,},
		},
		[18]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=1000,},
		},
		[19]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=1000,},
		},
		[20]={
			{szName="Xu", tbProp={4,417,1,1,0,0},nCount=1000,},
		},
	}
	local slog = format("ThuongTop%dTongKim", nRank)
	local nWeekDay = tonumber(GetLocalDate("%w"));
	local nHour = tonumber(GetLocalDate("%H%M"))
	local tbAward2 = tbThuongTop[nRank]
	
		if( nHour >= 2100 and nHour < 2205)then
		tbAwardTemplet:Give(tbAward2, 1, {slog,slog})	
        end
		if( nHour >= 1300 and nHour < 1405)then
		tbAwardTemplet:Give(tbAward2, 1, {slog,slog})	
        end
	-- tbAwardTemplet:Give(tbAward2, 1, {slog,slog})
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