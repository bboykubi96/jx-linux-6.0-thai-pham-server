-- script viet hoa By http://tranhba.com  Thi�u L�m m�c nh�n h�ng chi�n ��u NPC ? ? # Thi�u L�m 10 c�p nhi�m v� # quy�n nghi�ng thi�n h� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 

function OnDeath() 
UTask_sl = GetTask(7); 
	if (UTask_sl == 10*256+10) and (HaveItem(26) == 0) and (random(0,99) < 80) then
AddEventItem(26) 
Msg2Player("B�t ���c kim li�n hoa . ") 
AddNote("T�m ���c kim li�n hoa . ") 
elseif (GetTask(75) == 10) and (GetTask(54) == 10) and (HaveItem(26) == 0) and (random(0,99) < 40) then -- script viet hoa By http://tranhba.com  quy�n nghi�ng thi�n h� nhi�m v� , theo nh� ky t� s� l�y ���c 
AddEventItem(26) 
Msg2Player("B�t ���c kim li�n hoa , c� th� tr� v� �i g�p Th�i ��i th�c . ") 
end 
end; 
