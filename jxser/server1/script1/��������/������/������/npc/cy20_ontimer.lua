-- script viet hoa By http://tranhba.com  th�y kh�i c�a 20 c�p nhi�m v� ��i m�n �� la hoa t�nh gi� ch�n v�n 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) 
-- script viet hoa By http://tranhba.com  Timer: 8 

Include("\\Script\\Global\\TimerHead.lua")

function OnTimer() 
UTask_cy = GetTask(6) 
StopTimer() 
	if (UTask_cy == 20*256+20) then		-- script viet hoa By http://tranhba.com  �ж���һ�׶ε�ʱ
PutMessage("Ng��i c�m th�y cho�ng v�ng ��u hoa m�t , tho�t nh�n ��c t�nh �� ph�t t�c #. ") 
Msg2Player("Ng��i c�m th�y cho�ng v�ng ��u hoa m�t , tho�t nh�n ��c t�nh �� ph�t t�c #. ") 
		SetTask(6, 20*256+30)
SetTimer(3 * CTime * FramePerSec, 8) -- script viet hoa By http://tranhba.com  t�nh gi� kh� ��nh v� n�a gi� #3 c� canh gi� # 
	elseif (UTask_cy == 20*256+30) then		-- script viet hoa By http://tranhba.com  �ж��ڶ��׶ε�ʱ
PutMessage("Ng��i c�m th�y t� chi v� l�c , c� th� ��c t�nh �� x�m nh�p trong c� th� r�t s�u . ") 
Msg2Player("Ng��i c�m th�y t� chi v� l�c , c� th� ��c t�nh �� x�m nh�p trong c� th� r�t s�u . ") 
		SetTask(6, 20*256+40)
SetTimer(3 * CTime * FramePerSec, 8) -- script viet hoa By http://tranhba.com  t�nh gi� kh� ��nh v� n�a gi� #3 c� canh gi� # 
	elseif (UTask_cy == 20*256+40) then		-- script viet hoa By http://tranhba.com  �ж������׶ε�ʱ
PutMessage("To�n th�n b�t ��u b�t ��ng , tay ch�n kh�ng c� ph�n �ng . ") 
Msg2Player("To�n th�n b�t ��u b�t ��ng , tay ch�n kh�ng c� ph�n �ng . ") 
		SetTask(6, 20*256+50)
SetTimer(3 * CTime * FramePerSec, 8) -- script viet hoa By http://tranhba.com  t�nh gi� kh� ��nh v� n�a gi� #3 c� canh gi� # 
else -- script viet hoa By http://tranhba.com  t�ng th� t� �o�n c�c k� l�c # ��c ph�t b� m�nh ## 
		SetTask(6, 20*256+10)
for i=1,GetItemCount(1) do DelItem(1) end 
PutMessage("��i m�n �� la hoa ��c t� �� ph�t t�n , ng��i b�i v� ��c ph�t b� m�nh ") 
Msg2Player("��i m�n �� la hoa ��c t� �� ph�t t�n , ng��i b�i v� ��c ph�t b� m�nh ") 
SetFightState(1) 
KillPlayer() 
end 
end; 
