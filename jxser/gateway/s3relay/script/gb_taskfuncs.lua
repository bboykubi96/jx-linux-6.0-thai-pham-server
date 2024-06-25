RELAYTASK_LEAGUEID = 500

function gb_GetTask(szModuleName, nTaskID)
	local lid = LG_GetLeagueObj(RELAYTASK_LEAGUEID, szModuleName) ;
	if (lid == 0 or lid == nil) then
		return 0
	end
	return LG_GetLeagueTask(lid,nTaskID)
end

function gb_SetTask(szModuleName, nTaskID, nValue)
	local lid = LG_GetLeagueObj(RELAYTASK_LEAGUEID, szModuleName) ;
	if (lid == 0 or lid == nil) then
		lid = LG_CreateLeagueObj()
		local memberObj = LGM_CreateMemberObj()
		LG_SetLeagueInfo(lid, RELAYTASK_LEAGUEID, szModuleName)
		LGM_SetMemberInfo(memberObj, szModuleName, 0, RELAYTASK_LEAGUEID, szModuleName)
		LG_AddMemberToObj(lid, memberObj)
		LG_ApplyAddLeague(lid)
		LG_FreeLeagueObj(lid)
	end
	
	LG_ApplySetLeagueTask(RELAYTASK_LEAGUEID, szModuleName, nTaskID, nValue)
end

function debug_print(szMsg)
	OutputMsg(szMsg)
end

function OnCreateModule(nLeagueType, szLeagueName, szMemberName, bSucceed)
	if (bSucceed == 0) then
		debug_print("gb_Task Build Fail: "..szLeagueName.."szMember"..szMemberName)
	end
	debug_print("gb_Task Build Success: "..szLeagueName.."szMember"..szMemberName)
end

function gb_AppendTask(szModuleName, nTaskID, nAppendValue)
	local lid = LG_GetLeagueObj(RELAYTASK_LEAGUEID, szModuleName);
	if (lid == 0 or lid == nil) then
		lid = LG_CreateLeagueObj()
		local memberObj = LGM_CreateMemberObj()
		LG_SetLeagueInfo(lid , RELAYTASK_LEAGUEID, szModuleName)
		LGM_SetMemberInfo(memberObj, szModuleName, 0, RELAYTASK_LEAGUEID, szModuleName)
		LG_AddMemberToObj(lid , memberObj)
		LG_ApplyAddLeague(lid)
		LG_FreeLeagueObj(lid)
	end
	LG_ApplyAppendLeagueTask(RELAYTASK_LEAGUEID, szModuleName, nTaskID, nAppendValue)
end
