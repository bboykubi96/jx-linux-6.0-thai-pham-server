ITEMTYPE = 1; -- script viet hoa By http://tranhba.com  c«ng céng ®¹o cô 
szItem = " giã rÐt ngäc " 
szEffect = " chËm l¹i 7 gi©y "; 
nSkillId = 674; 
nSkillLevel = 15; 
nTime = 7; 

function main(nItemID, nNpcIndex) 

local nTargetPlayerIndex = NpcIdx2PIdx(nNpcIndex) 
if nTargetPlayerIndex == 0 then 
Msg2Player("Nªn ®¹o cô chØ cã thÓ ®èi víi nhµ ch¬i sö dông !"); 
return 1 
end 

local szSelfName = GetName() 
local szTargetName = GetNpcName(nNpcIndex) 
local szItemName = GetItemName(nItemID) 

local nOldPlayerIndex = PlayerIndex 

PlayerIndex = nTargetPlayerIndex 
AddSkillState(nSkillId, nSkillLevel, 0, nTime * 18) 
Msg2Player(format("%s ®èi víi ng­¬i sö dông :%s!", szSelfName, szItemName)); 
PlayerIndex = nOldPlayerIndex 

Msg2Player(format("Ng­¬i ®èi víi môc tiªu :%s sö dông :%s!", szTargetName, szItemName)); 

return 0 
end
