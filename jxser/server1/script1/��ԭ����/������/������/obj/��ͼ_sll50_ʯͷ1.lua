-- script viet hoa By http://tranhba.com  b�n �� v�t ph�m Thi�u l�m t� sau t�ng l�m �� 1 Thi�u L�m 50 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function main() 
UTask_sl = GetTask(7) 
	if (UTask_sl == 50*256+30) and (HaveItem(28) == 0) then		-- script viet hoa By http://tranhba.com ����50��������
i = GetTaskTemp(47) 
if (i == 2) then 
Talk(1,"","�� t� t� b� na ��ng , th�y ph�a d��i gi�ng nh� c� quy�n s�ch ") 
AddEventItem(28) 
AddNote("B�t ���c D�ch c�n kinh . ") 
Msg2Player("B�t ���c D�ch c�n kinh . ") 
SetTaskTemp(47,0) -- script viet hoa By http://tranhba.com  ph�c v� t�m th�i thay ��i l��ng , v�n nh�t tr� l�i ��nh ... 
elseif (i == 1) then 
Talk(1,"","Ng��i d�ng s�c ��y �� #, gi�ng nh� c� ch�t chuy�n ��ng ") 
SetTaskTemp(47,2) 
else 
Talk(1,"","Ng��i d�ng s�c ��y �� #, nh�ng l� , n� nh� c� b�t ��ng ") 
SetTaskTemp(47,1) 
end 
else 
Talk(1,"","Ng��i d�ng s�c ��y �� #, nh�ng l� , n� nh� c� b�t ��ng ") 
end 
end; 
