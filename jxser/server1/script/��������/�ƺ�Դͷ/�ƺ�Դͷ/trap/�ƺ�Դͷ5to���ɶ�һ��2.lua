-- script viet hoa By http://tranhba.com  t�y b�c b�c khu Ho�ng H� ng�n ngu�n 5to l�u ti�n ��ng m�t t�ng 2 
-- script viet hoa By http://tranhba.com TrapID# t�y b�c b�c khu 15 

function main(sel) 
if GetLevel() < 50 then
Say("C�p �� 50 tr� l�n m�i c� th� di chuy�n t�i map")
return 1
end

local checkexp = GetExpPercent()
if checkexp < -50 then
Say("Hi�n t�i �i�m kinh nghi�m v��t -50% kh�ng th� di chuy�n l�n map")
return 1
end

SetFightState(1); 
NewWorld(125, 1811, 3219); 


end;
