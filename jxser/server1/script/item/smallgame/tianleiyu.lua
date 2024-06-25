ITEMTYPE = 1; -- script viet hoa By http://tranhba.com ###²#µ##
szItem = "××µ#ã#"
szEffect = "¤#3·#";
nSkillId = 673;
nSkillLevel = 20;
nTime = 3;

function main(nItemID, nNpcIndex)
	
	local nTargetPlayerIndex = NpcIdx2PIdx(nNpcIndex)
	if nTargetPlayerIndex == 0 then
		Msg2Player("#·#µ####Ä##¤Ý##ß£#ã·!");
		return 1
	end
	
	local szSelfName = GetName()
	local szTargetName = GetNpcName(nNpcIndex)
	local szItemName = GetItemName(nItemID)
	
	local nOldPlayerIndex = PlayerIndex
	
	PlayerIndex = nTargetPlayerIndex
	AddSkillState(nSkillId, nSkillLevel, 0, nTime * 18)
	Msg2Player(format("%s #¤Ä·£#ã·¸#:%s!", szSelfName, szItemName));
	PlayerIndex = nOldPlayerIndex
	
	Msg2Player(format("Ä·#¤Ä¿±ª:%s £#ã·:%s!", szTargetName, szItemName));
	
	return 0
end
