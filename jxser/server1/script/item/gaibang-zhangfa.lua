-- script viet hoa By http://tranhba.com Created by fangjieying 2003-5-17
-- script viet hoa By http://tranhba.com ####�#�#####
-- script viet hoa By http://tranhba.com ###�#и����##�#
-- script viet hoa By http://tranhba.com ##�###80##ߤ�#���
function main(sel)
	party = GetLastAddFaction()
	skill = HaveMagic(357)
	if(party ~= "gaibang") then							-- script viet hoa By http://tranhba.com  �#�###�#
		Msg2Player("ķķ#�####�#�########��#�#��###�##����߲�#��#�####")
		return 1
	elseif(GetLever < 80) then							-- script viet hoa By http://tranhba.com  �###�####�##80##
		Msg2Player("ķķ#�####�#�######�##�#�#��###�##��#�����##�#����######")
		return 1
	elseif(skill ~= -1) then							-- script viet hoa By http://tranhba.com  �####�#�##�#
		Msg2Player("ķ�###�#####�#�######�##�#�###��##��߲##�###�#�#######")
		return 1
	else
		AddMagic(357,1)
		Msg2Player("###��###�##�#и����#�##")
		return 0
	end
end
