
-- script viet hoa By http://tranhba.com  c�ng th�nh chi�n trung chuy�n b�n �� to th�nh chi�n ��a �� # th� th�nh ph��ng # 
-- script viet hoa By http://tranhba.com Trap ID# c�ng th�nh chi�n 
-- script viet hoa By http://tranhba.com 211 , 1622 , 3249 211 , 1608 , 3235 
Include("\\script\\missions\\citywar_city\\head.lua")

function main() 
ft = GetFightState(); 
if (ft == 0) then 
SetPos(1866,3547) 
SetFightState(1) 
bt_RankEffect(BT_GetData(PL_CURRANK)) 
else 
if (GetCurCamp() ~= 2) then 
Msg2Player("Kh�ng �i ���c , mu�n �i l�i c�a ��ch ph�i ��ch qu�n ��ch ph�c k�ch ch� . "); 
SetPos(1866,3547) 
else 
SetPos(1875,3571) 
SetFightState(0) 
end; 
end; 
end; 
