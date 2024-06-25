-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu long m«n trÊn to phong l¨ng ®é 
-- script viet hoa By http://tranhba.com TrapID# 

function main(sel) 
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H·y gia nhËp m«n ph¶i ®Ó tiÕp tôc b«n tÈu !!!");
		return
	end 
if (GetLevel() >= 5) then 
SetFightState(1); 
NewWorld(336, 1119, 3192); 
AddTermini(224); 
else 
Talk(1,"","Phİa tr­íc nguy hiÓm # cßn lµ trë vÒ luyÖn h¹ c«ng ®i !") 
end 
end;
