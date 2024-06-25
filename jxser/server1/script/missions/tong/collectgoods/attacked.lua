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
Msg2Player("Næ tung hiÖu qu¶ kÐo dµi <color=yellow>"..nReMain.."<color> phót , xin nhanh lªn mét chót nÐm cho ng­êi kh¸c "); 
Msg2MSGroup(COLLG_MISSIONID,"Ph¸o tr­îng tõ <color=yellow>"..szName.."<color> nÐm vµo <color=yellow>"..GetName().."<color>, v?<color=yellow>"..nReMain.."<color> 3 phót , mäi ng­êi muèn l­u ý ", GetTask(TK_GROUPID)); 
end;