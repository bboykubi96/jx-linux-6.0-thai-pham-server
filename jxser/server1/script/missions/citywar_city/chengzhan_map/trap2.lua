-- script viet hoa By http://tranhba.com  c�ng th�nh chi�n trung chuy�n b�n �� to th�nh chi�n ��a �� # th� th�nh ph��ng # 
-- script viet hoa By http://tranhba.com Trap ID# c�ng th�nh chi�n 

function main() 
if (GetCurCamp() ~= 2) then 
Msg2Player("Kh�ng �i ���c , mu�n �i l�i c�a ��ch ph�i ��ch qu�n ��ch ph�c k�ch ch� . "); 
else 
local _,nX,nY = GetWorldPos()
local nDX= abs(nX-1909)
local nDY= abs(nY-3616)
if sqrt(nDX*nDX + nDY*nDY) > 20 then
return
end
SetCurCamp(GetCamp()) 
SetFightState(0) 
SetLogoutRV(0) 
NewWorld(223, 1613, 3185) 
-- Msg2Player("Bi loi me roi")
end; 
end; 
