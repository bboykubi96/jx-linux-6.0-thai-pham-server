-- script viet hoa By http://tranhba.com  t�y b�c b�c khu long m�n tr�n to s�/ch� cao qu�t 
-- script viet hoa By http://tranhba.com TrapID# 

function main(sel) 
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H�y gia nh�p m�n ph�i �� ti�p t�c b�n t�u !!!");
		return
	end 
if (GetLevel() >= 5) then 
SetFightState(1); 
NewWorld(340,1853,3446); 
AddTermini(225); 
else 
Talk(1,"","Ph�a tr��c nguy hi�m # c�n l� tr� v� luy�n h� c�ng �i !") 
end 
end;
