-- script viet hoa By http://tranhba.com  th�c c��ng s�n chi�n ��u NPC qu�n Kim C�i Bang 30 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-28) 

function OnDeath() 
UTask_gb = GetTask(8); 
	if (UTask_gb == 30*256+20) then			-- script viet hoa By http://tranhba.com 30��������
		SetTask(8,30*256+30)
AddNote("��nh b�i mai ph�c ��ch qu�n Kim , c�c v� m�t t�ch C�i Bang �� t� c�ng b� qu�n Kim ph�c binh b�t l�i . ") 
Msg2Player("��nh b�i mai ph�c ��ch qu�n Kim , c�c v� m�t t�ch C�i Bang �� t� c�ng b� qu�n Kim ph�c binh b�t l�i . ") 
end 
end; 
