-- script viet hoa By http://tranhba.com description: t�n l�ng d��i ��t m�t t�ng ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4); 
	if (UTask_tr == 30*256+20) and (HaveItem(61) == 0) then
AddEventItem(61) 
Msg2Player(" l�y ���c b�o th�ch t� m�u xanh bi�c . ") 
AddNote("T�n l�ng d��i ��t , ��nh b�i b�o ng�c �n tr�m , l�y ���c b�o th�ch t� m�u xanh bi�c . ") 
end 
end; 
