-- script viet hoa By http://tranhba.com  t�y b�c b�c khu sa m�c m� cung to kho�i ho�t l�m 
-- script viet hoa By http://tranhba.com TrapID# sa m�c m� cung 1 

function main(sel) 

local nSubWorldId = SubWorldIdx2ID(SubWorld); 
if nSubWorldId == 919 or nSubWorldId == 920 then 
local nW, nX, nY = RevID2WXY(GetPlayerRev()); 
NewWorld(nW, nX/32, nY/32); 
return 
end 

SetFightState(1); 
NewWorld(136, 1716, 3144) 
AddTermini(195) -- script viet hoa By http://tranhba.com  m�c d� t�t c� m�i ng��i l�u tr� v� �i�m ghi ch�p , nh�ng ch� c� 80 c�p tr� l�n m�i c� th� tr�c ti�p �i t�i 
end; 
