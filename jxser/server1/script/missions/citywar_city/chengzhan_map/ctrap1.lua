-- script viet hoa By http://tranhba.com  c�ng th�nh chi�n trung chuy�n b�n �� to th�nh chi�n ��a �� # th� th�nh ph��ng # 
-- script viet hoa By http://tranhba.com Trap ID# c�ng th�nh chi�n 

Include("\\script\\missions\\citywar_city\\head.lua")

function main() 
ft = GetFightState(); 
if (ft == 0) then 
SetPos(1571,3263) 
SetFightState(1) 
bt_RankEffect(BT_GetData(PL_CURRANK)) 
else 
if (GetCurCamp() ~= 1) then 
Msg2Player("Kh�ng �i ���c , mu�n �i l�i c�a ��ch ph�i ��ch qu�n ��ch ph�c k�ch ch� . "); 
SetPos(1571,3263) 
else 
SetPos(1565,3246) 
SetFightState(0) 
end; 
end; 
end; 
