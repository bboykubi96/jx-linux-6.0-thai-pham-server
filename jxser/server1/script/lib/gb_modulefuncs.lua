-- script viet hoa By http://tranhba.com  �ng d�ng Relay ��ch chi�n ��i h� th�ng thi�t k� , to�n ph�c v� kh� t� , c�ng h��ng ��ch ch�c n�ng ch�t m� tr�ng th�i h�c l�y . 
-- script viet hoa By http://tranhba.com  n�n ch�c n�ng ��ch ��c �i�m l� # 
-- script viet hoa By http://tranhba.com 1# to�n ph�c v� kh� c� th� ��ng th�i ph�ng v�n c�ng s�a ��i 
-- script viet hoa By http://tranhba.com 2# cho d� m� l�i sau th�m t�i tr� ch�i sau v�n h�u hi�u 
-- script viet hoa By http://tranhba.com  thi�u s�t l� # n�u nh� ��ng th�i nhi�u thai ph�c v� kh� s�a ��i n�n tr� gi� l�c c� th� s� x�y ra v�n �� , cho n�n xin t�n l�c s� d�ng Append ��ch ph��ng th�c , t�c t�ng l�n ho�c �� gi�m m� th�c . 
-- script viet hoa By http://tranhba.com  n�u nh� Relay ���ng c� ho�c kh�ng c� h��ng �ng l�c , s� xu�t hi�n t�nh hu�ng d� th��ng . 
-- script viet hoa By http://tranhba.com  cho n�n v�n ch�c n�ng m�t lo�i �ng d�ng v�i ��i v�i tr� s� �� chu�n x�c kh�ng cao l�m ho�c l� c� th� ti�p nh�n c� ng� k�m hi�n t��ng ��ch ch�c n�ng . 
-- script viet hoa By http://tranhba.com Designed By Romandou 2006.1.21 
IncludeLib("LEAGUE") 
RELAYTASK_GAMEMODULE = 502 -- script viet hoa By http://tranhba.com  c�t gi� c�c lo�i ch�t m� ��ch chi�n ��i ID 
RELAYTASK_MODULETASK = 1 -- script viet hoa By http://tranhba.com  c�t gi� tr� ch�i ch�c n�ng ch�t m� tr�ng th�i nhi�m v� thay ��i l��ng ID 
-- script viet hoa By http://tranhba.com  m�t ch�c n�ng ��ch tr�ng th�i c� ba lo�i , 0# kh�ng m� ra UnUsed# , 1# m� ra Started# , 2# t�t Stopped# 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function gb_GetModule(szModuleName) 
local lid = LG_GetLeagueObj(RELAYTASK_GAMEMODULE, szModuleName) ; 
if (lid == 0 or lid == nil) then 
return 0 
end 
return LG_GetLeagueTask(lid, RELAYTASK_MODULETASK) 
end 

function gb_StopModule(szModuleName) 
OutputMsg("Game Module Is Stopped. -- script viet hoa By http://tranhba.com >"..szModuleName) 
gb_SetModule(szModuleName, 2) 
end 

function gb_StartModule(szModuleName) 
OutputMsg("Game Module Is Started. -- script viet hoa By http://tranhba.com >"..szModuleName) 
gb_SetModule(szModuleName, 1) 
end 

function OutputMsg(szMsg) 
WriteLog(szMsg) 
print(szMsg) 
end 

function gb_AutoStartModule(szModuleName) 
if (szModuleName == "") then 
return 
end 

local nState = gb_GetModule(szModuleName) 
if (nState == 0) then 
gb_StartModule(szModuleName) 
OutputMsg("New Game Module Is Started. -- script viet hoa By http://tranhba.com >"..szModuleName) 
elseif(nState == 1) then 
OutputMsg("Game Module Is Started. -- script viet hoa By http://tranhba.com >"..szModuleName) 
else 
OutputMsg("Game Module Is Stopped. -- script viet hoa By http://tranhba.com >"..szModuleName) 
end 

end 

function _gb_SetModule(szModuleName, nTaskID, nValue) 
local lid = LG_GetLeagueObj(RELAYTASK_GAMEMODULE, szModuleName) ; 
if (lid == 0 or lid == nil) then 
lid = LG_CreateLeagueObj() 
local memberObj = LGM_CreateMemberObj() 
LG_SetLeagueInfo(lid, RELAYTASK_GAMEMODULE, szModuleName) 
LGM_SetMemberInfo(memberObj, szModuleName, 0, RELAYTASK_GAMEMODULE, szModuleName) 
LG_AddMemberToObj(lid, memberObj) 
LG_ApplyAddLeague(lid) 
LG_FreeLeagueObj(lid) 
end 
LG_ApplySetLeagueTask(RELAYTASK_GAMEMODULE, szModuleName, nTaskID, nValue) 
end 

function gb_SetModule(szModuleName,nValue) 
_gb_SetModule(szModuleName,RELAYTASK_MODULETASK, nValue) 
end 
