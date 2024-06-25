Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\config\\1037\\extend.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\log.lua")

NPC_PARAM_POS = 1
NPC_PARAM_DEATH = 2
NPC_PARAM_TASK_ID = 3

TRACK_LIST_LTT = 
{
	{1747*32,3092*32},
	{1736*32,3103*32},
	{1724*32,3117*32},
	{1712*32,3130*32},
	{1703*32,3141*32},
	{1692*32,3151*32},
	{1687*32,3169*32},
	{1686*32,3181*32},
}

tbCarriage = {}
tbCarriageLTT = {}


function add_carriage_ltt(nMapId, nTaskId, szName, nCamp)
	
	local szScriptPath = "\\script\\activitysys\\config\\1037\\carriage.lua"

	local nMapIndex = SubWorldID2Idx(nMapId)
	if nMapIndex >= 0 then
		local nNpcIndex = AddNpcEx(1903, 1, random(0,4), nMapIndex, %TRACK_LIST_LTT[1][1], %TRACK_LIST_LTT[1][2], 1, szName, 0)
		if nNpcIndex > 0 then
			SetNpcAI(nNpcIndex, 0)
			SetNpcCurCamp(nNpcIndex, nCamp)
			SetNpcActiveRegion(nNpcIndex, 1)
			SetNpcParam(nNpcIndex, %NPC_PARAM_POS, 2)
			SetNpcParam(nNpcIndex, %NPC_PARAM_TASK_ID, nTaskId)
			SetNpcScript(nNpcIndex, szScriptPath)
			SetNpcTimer(nNpcIndex, 18)
			return nNpcIndex
		end
	end
	return 0
end



function OnTimer(nNpcIndex, nTimeOut)
	local nPosId = GetNpcParam(nNpcIndex, %NPC_PARAM_POS)
	local tbPos =  %TRACK_LIST_LTT[nPosId]
	
	if not tbPos then
		return
	end
	
	if GetNpcParam(nNpcIndex, %NPC_PARAM_DEATH) == 1 then
		return 
	end
	
	if is_arrive_at(nNpcIndex, tbPos[1], tbPos[2]) then
		nPosId = nPosId + 1
		SetNpcParam(nNpcIndex, %NPC_PARAM_POS, nPosId)
		tbPos =  %TRACK_LIST_LTT[nPosId]
	end
	
	if nPosId > getn(%TRACK_LIST_LTT) then
		SetNpcParam(nNpcIndex, %NPC_PARAM_DEATH, 1)
		local nTaskId = GetNpcParam(nNpcIndex, %NPC_PARAM_TASK_ID)
		pActivity:TaskFinish(nTaskId)
		DelNpc(nNpcIndex)
	else
		NpcWalk(nNpcIndex, tbPos[1]/32, tbPos[2]/32)
	end
	
	SetNpcTimer(nNpcIndex, 18)
end

function is_arrive_at(nNpcIndex, nX, nY)
	local MAX_DIS = 100
	local nX32, nY32 = GetNpcPos(nNpcIndex)

	if abs(nX - nX32) < MAX_DIS and abs(nY - nY32) < MAX_DIS then
		return 1
	end
end

function OnDeath(nNpcIndex)
	if GetNpcParam(nNpcIndex, %NPC_PARAM_DEATH) == 1 then
		return
	end
	
	SetNpcParam(nNpcIndex, %NPC_PARAM_DEATH, 1)
	
	if (PlayerId and PlayerId > 0) and (PlayerIndex and PlayerIndex > 0) then 
		local szPlayerName = ""
		szPlayerName = GetName()
		local szAction = format("%s ®· tiªu diÖt %s", szPlayerName, GetNpcName(nNpcIndex))
		
		%tbLog:PlayerAwardLog(%EVENT_LOG_TITLE, szAction)		
	end
	
	local nTaskId = GetNpcParam(nNpcIndex, %NPC_PARAM_TASK_ID)
	pActivity:TaskFailed(nTaskId, nNpcIndex)
	
	local tbAward = {[1]={szName="Hçn Nguyªn Linh Lé",tbProp={6,1,30202,1,0,0},},}
	
	if (PlayerId and PlayerId > 0) and (PlayerIndex and PlayerIndex > 0) then 
		tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, tbAward, "Carriage Drop Item", 1)
	else
		tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbAward, "Carriage Drop Item", 1)
	end
	
end
