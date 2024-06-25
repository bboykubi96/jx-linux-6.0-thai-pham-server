-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu long m«n trÊn to sê/chí cao quËt 
-- script viet hoa By http://tranhba.com TrapID# 

function main(sel) 
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H·y gia nhËp m«n ph¶i ®Ó tiÕp tôc b«n tÈu !!!");
		return
	end 
if (GetLevel() >= 5) then 
SetFightState(1); 
NewWorld(340,1853,3446); 
AddTermini(225); 
else 
Talk(1,"","Phİa tr­íc nguy hiÓm # cßn lµ trë vÒ luyÖn h¹ c«ng ®i !") 
end 
end;
