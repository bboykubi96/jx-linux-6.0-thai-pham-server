-- script viet hoa By http://tranhba.com  c�ng th�nh chi�n trung chuy�n b�n �� to th�nh chi�n ��a �� # th� th�nh ph��ng # 
-- script viet hoa By http://tranhba.com Trap ID# c�ng th�nh chi�n 

function main() 
if (GetCurCamp() ~= 1) then 
Msg2Player("Kh�ng �i ���c , mu�n �i l�i c�a ��ch ph�i ��ch qu�n ��ch ph�c k�ch ch� . "); 
else 
SetCurCamp(GetCamp()) 
SetFightState(0) 
SetLogoutRV(0) 
NewWorld(222, 1613, 3185) 
end; 
end; 
