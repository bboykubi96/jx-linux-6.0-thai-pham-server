ITEMTYPE = 1; -- script viet hoa By http://tranhba.com  c�ng c�ng ��o c� 
szItem = " gi� r�t ng�c " 
szEffect = " ch�m l�i 7 gi�y "; 
nSkillId = 674; 
nSkillLevel = 15; 
nTime = 7; 

function main(nItemID, nNpcIndex) 

local nTargetPlayerIndex = NpcIdx2PIdx(nNpcIndex) 
if nTargetPlayerIndex == 0 then 
Msg2Player("N�n ��o c� ch� c� th� ��i v�i nh� ch�i s� d�ng !"); 
return 1 
end 

local szSelfName = GetName() 
local szTargetName = GetNpcName(nNpcIndex) 
local szItemName = GetItemName(nItemID) 

local nOldPlayerIndex = PlayerIndex 

PlayerIndex = nTargetPlayerIndex 
AddSkillState(nSkillId, nSkillLevel, 0, nTime * 18) 
Msg2Player(format("%s ��i v�i ng��i s� d�ng :%s!", szSelfName, szItemName)); 
PlayerIndex = nOldPlayerIndex 

Msg2Player(format("Ng��i ��i v�i m�c ti�u :%s s� d�ng :%s!", szTargetName, szItemName)); 

return 0 
end
