-- script viet hoa By http://tranhba.com description: bi�n kinh ph� thi�t th�p t�ng hai ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4) 
UTask_trsub01 = GetBit(GetTask(21),2) 
	if (UTask_tr == 50*256+20) and (UTask_trsub01 == 0) and (HaveItem(161) == 0) and (random(0,99) < 50) then
AddEventItem(161) 
Msg2Player("��t ���c th� hai c�i ch�a kh�a ") 
AddNote(" � thi�t th�p t�ng th� hai , ��nh b�i t�ng v� binh , b�t ���c khai th� hai c� quan ��ch c�i ch�a kh�a ") 
end 
end; 
