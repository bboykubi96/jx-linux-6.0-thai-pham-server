-- script viet hoa By http://tranhba.com  �ng d�ng Relay ��ch chi�n ��i h� th�ng thi�t k� , to�n ph�c v� kh� t� , c�ng h��ng ��ch nhi�m v� m�i thay ��i l��ng ch�c n�ng . 
-- script viet hoa By http://tranhba.com  n�n nhi�m v� thay ��i l��ng ��ch ��c �i�m l� # 
-- script viet hoa By http://tranhba.com 1# to�n ph�c v� kh� c� th� ��ng th�i ph�ng v�n c�ng s�a ��i 
-- script viet hoa By http://tranhba.com 2# cho d� m� l�i sau th�m t�i tr� ch�i sau v�n h�u hi�u 
-- script viet hoa By http://tranhba.com  thi�u s�t l� # n�u nh� ��ng th�i nhi�u thai ph�c v� kh� s�a ��i n�n tr� gi� l�c c� th� s� x�y ra v�n �� , cho n�n xin t�n l�c s� d�ng Append ��ch ph��ng th�c , t�c t�ng l�n ho�c �� gi�m m� th�c . 
-- script viet hoa By http://tranhba.com  n�u nh� Relay ���ng c� ho�c kh�ng c� h��ng �ng l�c , s� xu�t hi�n t�nh hu�ng d� th��ng . 
-- script viet hoa By http://tranhba.com  cho n�n v�n ch�c n�ng m�t lo�i �ng d�ng v�i ��i v�i tr� s� �� chu�n x�c kh�ng cao l�m ho�c l� c� th� ti�p nh�n c� ng� k�m hi�n t��ng ��ch ch�c n�ng . 
-- script viet hoa By http://tranhba.com Designed By Romandou 2005.11.14 

IncludeLib("LEAGUE") 
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
print("lid = nil") 
lid = LG_CreateLeagueObj() 
local memberObj = LGM_CreateMemberObj() 
LG_SetLeagueInfo(lid, RELAYTASK_LEAGUEID, szModuleName) 
LGM_SetMemberInfo(memberObj, szModuleName, 0, RELAYTASK_LEAGUEID, szModuleName) 
LG_AddMemberToObj(lid, memberObj) 
		LG_ApplyAddLeague(lid,"\\script\\lib\\gb_taskfuncs.lua", "OnCreateModule")
LG_FreeLeagueObj(lid) 
end 

LG_ApplySetLeagueTask(RELAYTASK_LEAGUEID, szModuleName, nTaskID, nValue) 
end 

function OnCreateModule(nLeagueType, szLeagueName, szMemberName, bSucceed) 
if (bSucceed == 0) then 
WriteLog("gb_Task Build Fail: "..szLeagueName.."szMember"..szMemberName) 
print("gb_Task Build Fail: "..szLeagueName.."szMember"..szMemberName) 
end 
print("gb_Task Build Success: "..szLeagueName.."szMember"..szMemberName) 
end 

function gb_AppendTask(szModuleName, nTaskID, nAppendValue) 
local lid = LG_GetLeagueObj(RELAYTASK_LEAGUEID, szModuleName) ; 
if (lid == 0 or lid == nil) then 
print("append nil") 
lid = LG_CreateLeagueObj() 
local memberObj = LGM_CreateMemberObj() 
LG_SetLeagueInfo(lid , RELAYTASK_LEAGUEID, szModuleName) 
LGM_SetMemberInfo(memberObj, szModuleName, 0, RELAYTASK_LEAGUEID, szModuleName) 
LG_AddMemberToObj(lid , memberObj) 
		LG_ApplyAddLeague(lid ,"\\script\\lib\\gb_taskfuncs.lua", "OnCreateModule")
LG_FreeLeagueObj(lid) 
end 
LG_ApplyAppendLeagueTask(RELAYTASK_LEAGUEID, szModuleName, nTaskID, nAppendValue) 
end 
