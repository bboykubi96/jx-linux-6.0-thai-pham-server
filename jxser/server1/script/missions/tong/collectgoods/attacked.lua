Include([[\script\missions\tong\collectgoods\head.lua]]); 

function OnMagicAttrib(nCallState, nTargetNpcIndex, nLauncherNpcIndex) 
if NpcIdx2PIdx(nTargetNpcIndex) <= 0 then 
return 
end 
PlayerIndex = NpcIdx2PIdx(nTargetNpcIndex) 

local nOldSubWorld = SubWorld; 
local nOldPlayer = PlayerIndex; 
	local nAttackTimes = GetTask(TK_ATTACKED_TIMES) + 1;

local idx = nLauncherNpcIndex; 
local nLauncher = NpcIdx2PIdx(idx); 

PlayerIndex = nLauncher; 
local IsBomber = GetTask(COLLG_TK_BOMB_MARK); 
if (IsBomber ~= -1)then 
return 
end; 
local szName = GetName(); 
collg_settonormal(); 

PlayerIndex = nOldPlayer; 
SubWorld = nOldSubWorld; 
collg_settobomber(); 
local nReMain = floor(GetMSRestTime(COLLG_MISSIONID, COLLG_RUNTIMERID) / 18); 
Msg2Player("N� tung hi�u qu� k�o d�i <color=yellow>"..nReMain.."<color> ph�t , xin nhanh l�n m�t ch�t n�m cho ng��i kh�c "); 
Msg2MSGroup(COLLG_MISSIONID,"Ph�o tr��ng t� <color=yellow>"..szName.."<color> n�m v�o <color=yellow>"..GetName().."<color>, v?<color=yellow>"..nReMain.."<color> 3 ph�t , m�i ng��i mu�n l�u � ", GetTask(TK_GROUPID)); 
end;