-- script viet hoa By http://tranhba.com  t�y b�c b�c khu d��c v��ng c�c chi�n ��u NPC ? ? # C�n L�n 10 c�p nhi�m v� # th�nh �� h�i thu�c nhi�m v� # quy�n nghi�ng thi�n h� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-30) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-24) quy�n nghi�ng thi�n h� nhi�m v� 

function OnDeath() 
UTask_kl = GetTask(9); 
Uworld132 = GetTask(132) 
	if (UTask_kl == 10*256+10) or (Uworld132 == 10) then		-- script viet hoa By http://tranhba.com ������
if (HaveItem(112) == 0) then 
AddEventItem(112) 
Msg2Player("B�t ���c t� m�c t�c ") 
elseif (HaveItem(113) == 0) then 
AddEventItem(113) 
Msg2Player("B�t ���c ��a c�m c� ") 
elseif (HaveItem(114) == 0) then 
AddEventItem(114) 
Msg2Player("B�t ���c thi�n c� ") 
elseif (HaveItem(115) == 0) then 
AddEventItem(115) 
Msg2Player("B�t ���c h� nh� c� ") 
elseif (random(0,99) < 50) then 
AddEventItem(116) -- script viet hoa By http://tranhba.com  l�y ���c kh�c b�n d�ng sau , n�u nh� kh�ng c� linh chi th� c� 50% c� h�i ra linh chi 
Msg2Player("B�t ���c linh chi ") 
end 
elseif (GetTask(75) == 10) and (GetTask(53) == 10) and (random(0,99) < 60) then -- script viet hoa By http://tranhba.com  quy�n nghi�ng thi�n h� nhi�m v� , theo nh� ky t� s� l�y ���c 
AddEventItem(112) 
if (GetItemCount(112) >= 3) then 
Msg2Player("H�i ���c 3 g�c c�y t� m�c t�c , c� th� tr� v� �i ph�c m�nh ") 
else 
Msg2Player("H�i ���c 1 g�c c�y t� m�c t�c ") 
end 
end 
end; 
