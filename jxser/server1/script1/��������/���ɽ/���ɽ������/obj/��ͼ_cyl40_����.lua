-- script viet hoa By http://tranhba.com  �i�m th��ng s�n �c ph�ch ��ng ng��i �i ���ng NPC c� quan # th�y kh�i c�a 40 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function main() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 40*256+20) then
if (HaveItem(197) == 1) and (HaveItem(196) == 1) and (HaveItem(198) == 1) then -- script viet hoa By http://tranhba.com  mang theo 40 c�p nhi�m v� h�n n�a c�i ch�a kh�a ��y �� h�t 
DelItem(197) 
DelItem(196) 
DelItem(198) 
			SetTask(6,40*256+30)
AddNote("��nh b�i �c ph�ch ��ch tr� th� , c�m 3 c�i ch�a kh�a m� ra 3 c� h�c c�n ph�ng , c�u ra b� v�y ��ch thi�u n� . ") 
Msg2Player("��nh b�i �c ph�ch ��ch tr� th� , c�m 3 c�i ch�a kh�a m� ra 3 c� h�c c�n ph�ng , c�u ra b� v�y ��ch thi�u n� . ") 
else 
Msg2Player("Ng��i t�m ra k�t thi�u n� b�ng t�i c�n ph�ng c� quan , nh�ng l� ch� c�n 3 c�i ch�a kh�a m�i c� th� m� ra c�i n�y c� quan . ") 
end 
else 
Msg2Player("N�i n�y c� m�t c� quan , nh�ng l� kh�ng hi�u d�ng �� l�m c�i g� ��ch ") 
end 
end; 
