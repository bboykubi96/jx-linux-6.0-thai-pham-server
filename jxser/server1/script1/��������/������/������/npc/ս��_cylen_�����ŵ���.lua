-- script viet hoa By http://tranhba.com  th�y kh�i c�a chi�n ��u NPC th�y kh�i c�a �� t� nh�p m�n nhi�m v� # t�nh hoa # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-25) 

function OnDeath() 
Uworld36 = GetByte(GetTask(36),2) 
if (Uworld36 == 10) and (random(0,100) < 66) then -- script viet hoa By http://tranhba.com  nhi�m v� trung , c� 66% ��ch ky t� s� 
AddEventItem(106) 
Msg2Player("��t ���c t�nh hoa ") 
AddNote(" � hoa kh�i tr�n ��t ���c t�nh hoa ") 
end 
end; 
