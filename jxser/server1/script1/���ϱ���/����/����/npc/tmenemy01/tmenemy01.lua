-- script viet hoa By http://tranhba.com description: ���ng m�n tr�c h�i c�a th� nh�t ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 >= 20) and (Uworld37 < 127) and (HaveItem(33) == 0) and (random(0,99) < 50) then -- script viet hoa By http://tranhba.com  nhi�m v� trung , kh�ng c� m�u xanh tr�c tr��ng , 50% ky t� s� 
AddEventItem(33) 
Msg2Player(" l�y ���c m�u xanh tr�c tr��ng ") 
AddNote(" � c�a th� nh�t ��nh b�i m� sau , l�y ���c m�u xanh tr�c tr��ng ") 
end 
end; 
