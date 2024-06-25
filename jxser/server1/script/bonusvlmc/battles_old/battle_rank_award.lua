
IncludeLib("LEAGUE")
IncludeLib("TASKSYS");
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

-- ����
function battle_rank_sort_Point(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_TOTALPOINT)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_TOTALPOINT)
	return nTotalPointA > nTotalPointB
end

-- PK���
function battle_rank_sort_PK(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_KILLPLAYER)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_KILLPLAYER)
	return nTotalPointA > nTotalPointB
end

-- ɱNPC��
function battle_rank_sort_NPC(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_KILLNPC)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_KILLNPC)
	return nTotalPointA > nTotalPointB
end

-- ��ն
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

-- 2011����ջ�����ͻ���
function battle_GiveHuanHuanByIndex()
	local tbItem = {szName="V�ng Hoa Chi�n Th�ng",tbProp={6,1,2824,1,0,0},nExpiredTime=20110530}
	tbAwardTemplet:Give(tbItem, 1, {"EventChienThang042011", "zhanshenghuahuan"})
	AddStatData("jiefangri_songjinchanchuzhanshenghuahuan", 1)
end

-- ��20110421~20110523���ܻ���������
function battle_GiveHuahuan(tbPlayerAll)
	local ndate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	local nStartDate = 201104280000
	local nEndDate = 201105300000
	if ndate < nStartDate or ndate > nEndDate then
		return
	end 
	
	local nCount = 10	-- ����������
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
-- ��ʱ���� 2010-06-07
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

local thuongthang ={

	--	{szName = "H�p Huy?t Chi?n (��i)",tbProp={6,1,4888,1,0,0},nCount=1,nBindState = -2},

}
local thuongthua ={
	--{szName = "H�p Huy?t Chi?n (Ti�u)",tbProp={6,1,4887,1,0,0},nCount=1,nBindState = -2},
}

	local a = PlayerIndex
	local b, c, d, e = 0, tonumber(GetLocalDate("%H")), 0, 1773
	local Tdate = floor(FormatTime2Number(GetCurServerTime()+24*60*60)/10000)
			local nWeekDay = tonumber(GetLocalDate("%w"));
	                                                       local nHour = tonumber(GetLocalDate("%H%M"))
	
	for _i = 1, getn(tbPlayerWin) do
		PlayerIndex = tbPlayerWin[_i]
		b = BT_GetData(1)
		
			if ( nHour >= 2100 and nHour < 2230) and b >= 6000 then
		--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e6}}, "test", 1);
		--	Msg2Player("<color=green>Tr�n 21h do l� b�n chi�n th�ng c� s� �i�m tr�n 6000 �i�m n�n b�n nh�n ���c 20tr EXP")
			--	tbAwardTemplet:GiveAwardByList(thuongthang, "T�ng Kim �i�m t�ch l�y");
				else 
			--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e6}}, "test", 1);
					end
					
		end			
		for _i = 1, getn(tbPlayerLos) do
			PlayerIndex = tbPlayerLos[_i]
			b = BT_GetData(1)
			
			if ( nHour >= 2100 and nHour < 2230) and b >= 6000 then
			--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 60e6}}, "test", 1);
			--	Msg2Player("<color=green>Tr�n 21h do l� b�n thua c� s� �i�m tr�n 6000 �i�m n�n b�n nh�n ���c 15tr EXP")	
			--	tbAwardTemplet:GiveAwardByList(thuongthua, "T�ng Kim �i�m t�ch l�y");
					else
				--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 30e6}}, "test", 1);
			end
	end
	
	PlayerIndex = a

end




function battle_rank_award0808(nBattleLevel)
	local tbPlayer = {}
	battle_rank_GetSortPlayer0808(tbPlayer, 0, battle_rank_sort_Point)
	for i=1, 20 do
		if tbPlayer[i] and tbPlayer[i] > 0 then
			Msg2MSAll(MISSIONID, format("<color=green>H�ng %d<color>: <color=yellow>%s<color>", i, doFunByPlayer(tbPlayer[i],GetName)))
			logplayer("dulieu/toptk_"..date("%d_%m_%Y")..".txt",format("Th�i gian : %s  - T�i kho�n [ %s] - H�ng %d  - Nh�n v�t : [%s ]  - Level : [%s ]  - Exp : [%s ]  ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(), i, doFunByPlayer(tbPlayer[i],GetName),doFunByPlayer(tbPlayer[i],GetLevel),doFunByPlayer(tbPlayer[i],GetExpPercent)))

		end
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


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
