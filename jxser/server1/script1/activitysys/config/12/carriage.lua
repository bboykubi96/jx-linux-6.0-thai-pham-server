Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\config\\12\\extend.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\log.lua")

NPC_PARAM_POS = 1
NPC_PARAM_DEATH = 2
NPC_PARAM_TASK_ID = 3

TRACK_LIST = 
{
{1565*32,3245*32},
{1547*32,3273*32},
{1542*32,3313*32},
{1543*32,3306*32},
{1483*32,3298*32},
{1450*32,3290*32},
{1429*32,3329*32},
{1410*32,3379*32},
{1433*32,3402*32},
{1456*32,3428*32},
{1478*32,3408*32},
{1503*32,3383*32},
{1533*32,3405*32},
{1559*32,3396*32},
{1568*32,3390*32},
{1574*32,3394*32},
{1599*32,3414*32},
{1617*32,3394*32},
{1653*32,3398*32},
{1668*32,3408*32},
}

tbCarriage = {}


function add_carriage(nMapId, nTaskId, szName, nCamp)
	
	local szScriptPath = "\\script\\activitysys\\config\\12\\carriage.lua"

	local nMapIndex = SubWorldID2Idx(nMapId)
	if nMapIndex >= 0 then
		local nNpcIndex = AddNpcEx(1981, 1, random(0,4), nMapIndex, %TRACK_LIST[1][1], %TRACK_LIST[1][2], 1, szName, 0)
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
	local tbPos =  %TRACK_LIST[nPosId]
	
	if not tbPos then
		return
	end
	
	if GetNpcParam(nNpcIndex, %NPC_PARAM_DEATH) == 1 then
		return 
	end
	
	if is_arrive_at(nNpcIndex, tbPos[1], tbPos[2]) then
		nPosId = nPosId + 1
		SetNpcParam(nNpcIndex, %NPC_PARAM_POS, nPosId)
		tbPos =  %TRACK_LIST[nPosId]
	end
	
	if nPosId > getn(%TRACK_LIST) then
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
		Msg2SubWorld("<color=green>Cao thñ <color=yellow>"..szPlayerName.."<color=blue> ®· c­íp Tiªu cña cao thñ <color=yellow>"..GetNpcName(nNpcIndex).."<color=green>")
	end
	
	local nTaskId = GetNpcParam(nNpcIndex, %NPC_PARAM_TASK_ID)
	pActivity:TaskFailed(nTaskId, nNpcIndex)
	
                local tbAward = {[1]={szName="Kim Nguyªn B¶o",tbProp={4,343,1,1},nCount=1},}
	
	if (PlayerId and PlayerId > 0) and (PlayerIndex and PlayerIndex > 0) then 
		tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, tbAward, "Carriage Drop Item", 1)
	else
		tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbAward, "Carriage Drop Item", 1)
	end
	
end
