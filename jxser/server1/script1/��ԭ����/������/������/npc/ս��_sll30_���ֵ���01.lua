-- script viet hoa By http://tranhba.com  th�p l�m m� cung chi�n ��u NPC ? ? 30 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 

function OnDeath() 
UTask_sl = GetTask(7); 
	if (UTask_sl == 30*256+10) and (random(0,99) < 50) then
		SetTask(7,30*256+20)
Msg2Player("Th� ra l� h�nh tung qu� b� ng��i c�a l� ng��i Kim , b�n h� ��ng ��ng �� tr�m B�n nh��c ba la m�t nghi ng� tr�i qua , ch�y ��n b�c ki�m c�c ph�a t�y ��ch Kim quang ��ng li�u . ") 
AddNote(" � th�p l�m h�nh tung qu� b� ng��i c�a l� ng��i Kim , b�n h� ��ng ��ng �� tr�m B�n nh��c ba la m�t nghi ng� tr�i qua , ch�y ��n b�c ki�m c�c ph�a t�y ��ch Kim quang ��ng li�u . ") 
end 
end; 
