-- script viet hoa By http://tranhba.com  nhi�m v� v�t ph�m ��i m�n �� la hoa th�y kh�i 20 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

Include("\\Script\\Global\\TimerHead.lua")

function main() 
UTask_cy = GetTask(6) 
	if (GetSeries() == 2) and (GetFaction() == "cuiyan") and (UTask_cy >= 20*256+10) and (UTask_cy < 30*256) then		-- script viet hoa By http://tranhba.com ����20�������в��ܼ�˵���
i = GetTimerId() 
if (i ~= 0) and (i ~= 8) then -- script viet hoa By http://tranhba.com  kh�c c� t�nh gi� kh� � v�n h�nh trung 
Talk(1,"","Ng��i nhi�m v� kh�n c�p , c�n ch�y lo�n a ?") 
return 
end 
SetPropState() 
AddEventItem(1) 
Msg2Player("H�i m�t ��a ��i m�n �� la hoa . ") 
if (i == 0) then -- script viet hoa By http://tranhba.com  ch�a tr�ng ��c l� �� cho h�n tr�ng ��c 
SetTimer(3 * CTime * FramePerSec, 8) -- script viet hoa By http://tranhba.com  t�nh gi� kh� ��nh v� n�a gi� #3 c� canh gi� # 
			SetTask(6,20*256+20)				-- script viet hoa By http://tranhba.com  ������Ϊ�ж���һ�׶�
-- script viet hoa By http://tranhba.com  PutMessage("Ng��i c�m th�y tay trung m�t tr�n t� d�i t��ng , �� tr�ng ��c . ") 
Msg2Player("Ng��i c�m th�y tay trung m�t tr�n t� d�i t��ng , �� tr�ng ��c . ") 
end 
else 
Msg2Player("Ng��i l�y tay h�i ���c m�t ��a m�n �� la hoa ") 
Msg2Player("M�i v�a ch�m t�i hoa , ng��i li�n c�m th�y tay trung m�t tr�n t� d�i nh�t , gi�ng nh� hoa c� ��c , ng��i l�p t�c ��a tay tr� l�i . ") 
end 
end; 
