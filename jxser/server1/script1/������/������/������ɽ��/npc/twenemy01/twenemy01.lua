-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p Thi�n v��ng ��o s�n ��ng ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/24 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 10*256+20) and (GetItemCount("��Ѫʯ") < 3) then
AddEventItem(91) 
Msg2Player(" l�y ���c m�t vi�n m�u g� th�ch ") 
AddNote(" � tr�n tr�i v��ng ��o trong s�n ��ng t�m ���c m�t vi�n m�u g� th�ch . ") 
end 
end; 
