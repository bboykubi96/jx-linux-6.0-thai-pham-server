-- script viet hoa By http://tranhba.com  t�y nam b�c khu Tr��ng giang ng�n ngu�n to nh�n th�ch ��ng 
-- script viet hoa By http://tranhba.com Trap ID# t�y nam b�c khu 17 

function main(sel) 
if GetLevel() < 70 then
Say("C�p �� 70 tr� l�n m�i c� th� di chuy�n t�i map")
return 1
end

local checkexp = GetExpPercent()
if checkexp < -50 then
Say("Hi�n t�i �i�m kinh nghi�m v��t -50% kh�ng th� di chuy�n l�n map")
return 1
end

SetFightState(1) 
NewWorld(10, 1603, 3209); 

AddTermini(21) 

end;
