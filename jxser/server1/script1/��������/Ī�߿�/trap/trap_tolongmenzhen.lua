-- script viet hoa By http://tranhba.com  t�y b�c b�c khu s�/ch� cao qu�t to long m�n tr�n 
-- script viet hoa By http://tranhba.com Trap ID# s�/ch� cao qu�t 1 

function main(sel) 

local nSubWorldId = SubWorldIdx2ID(SubWorld); 

if nSubWorldId == 917 or nSubWorldId == 918 then 
local nW, nX, nY = RevID2WXY(GetPlayerRev()); 
NewWorld(nW, nX/32, nY/32); 
else 
SetFightState(1); 
NewWorld(121,1725,4275) 
end 

end;
