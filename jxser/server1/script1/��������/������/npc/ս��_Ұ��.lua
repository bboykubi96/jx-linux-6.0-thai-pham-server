-- script viet hoa By http://tranhba.com  long m�n tr�n chi�n ��u heo r�ng tay m�i nhi�m v� # heo r�ng th�t 
-- script viet hoa By http://tranhba.com  By#Dan_Deng(2003-09-17) 

function OnDeath() 
UTask_world27 = GetTask(27) 
if (UTask_world27 == 5) and (random(0,99) < 80) then 
AddEventItem(228) 
if (GetItemCount(228) >= 3) then 
Msg2Player(" l�c n�o b�t ���c 3 kh�i heo r�ng th�t l�c n�o m�i c� th� �i ") 
AddNote(" l�c n�o b�t ���c 3 kh�i heo r�ng th�t l�c n�o m�i c� th� �i ") 
else 
Msg2Player("Gi�t m�t con heo r�ng b�t ���c m�t mi�ng th�t ") 
end 
end 
end; 
