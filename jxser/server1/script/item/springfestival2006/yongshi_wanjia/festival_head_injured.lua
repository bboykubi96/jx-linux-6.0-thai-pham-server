Include([[\script\missions\springfestival\head.lua]]); 

function OnMagicAttrib(nCallState, nTargetNpcIndex, nLauncherNpcIndex) 
if NpcIdx2PIdx(nTargetNpcIndex) <= 0 then 
return 
end 
PlayerIndex = NpcIdx2PIdx(nTargetNpcIndex) 

local nOldPlayer = PlayerIndex; 

    local nAttackTimes = GetTask(TK_CO_ATTACKED_TIMES) + 1;

local idx = nLauncherNpcIndex; 
local nHurtPlayer = NpcIdx2PIdx(idx); 

PlayerIndex = nHurtPlayer; 

if (GetTask(TK_CO_GROUPID) <= CO_SMALLMAPCOUNT) then 
        SetTask(TK_CO_COUNT_ONETIME, GetTask(TK_CO_COUNT_ONETIME) + 1);
Msg2Player("Ng­¬i thµnh c«ng ®¸nh tróng "..CO_ANIMALNAME..GetTask(TK_CO_COUNT_ONETIME).." lÇn !"); 
end; 

PlayerIndex = nOldPlayer; 
if (nAttackTimes >= 20) then 
festival_go_other_place(); 
AddSkillState(673, 20, 0, 20 * 18); 
AddSkillState(309, 10, 0, 20 * 18); -- script viet hoa By http://tranhba.com  kh«ng chÞu c«ng kÝch 
Msg2Player(CO_ANIMALNAME.." mçi bÞ c«ng kÝch 20 lÇn sÏ <color=yellow> h«n mª 20 gi©y <color>!"); 
nAttackTimes = 0; 
end; 
SetTask(TK_CO_ATTACKED_TIMES, nAttackTimes); 
AddSkillState(674, 15, 0, 5 * 18); 
end;
