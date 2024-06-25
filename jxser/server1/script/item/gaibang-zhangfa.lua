-- script viet hoa By http://tranhba.com Created by fangjieying 2003-5-17
-- script viet hoa By http://tranhba.com ####°#â#####
-- script viet hoa By http://tranhba.com ###¸#Ð¸ó¤ó××##Ä#
-- script viet hoa By http://tranhba.com ##°###80##ß¤Ð#¿Ðã·
function main(sel)
	party = GetLastAddFaction()
	skill = HaveMagic(357)
	if(party ~= "gaibang") then							-- script viet hoa By http://tranhba.com  ²#£###°#
		Msg2Player("Ä·Ä·#Å####°#â########¿¸#°#××###¸##£²·´ß²·#¸×#ß####")
		return 1
	elseif(GetLever < 80) then							-- script viet hoa By http://tranhba.com  £###°####´##80##
		Msg2Player("Ä·Ä·#Å####°#â######ª##¸#°#××###¸##¸×#ßÐâÐï##·#£²·´######")
		return 1
	elseif(skill ~= -1) then							-- script viet hoa By http://tranhba.com  ß####ý#·##Ä#
		Msg2Player("Ä·ß###°#####°#â######ª##Ý#³###´ã##¤ïß²##²###Ì#º#######")
		return 1
	else
		AddMagic(357,1)
		Msg2Player("###¸¸###Ä##°#Ð¸ó¤ó××#±##")
		return 0
	end
end
