-- script viet hoa By http://tranhba.com description: ���ng m�n 40 c�p nhi�m v� n�i Thanh Th�nh n�m lo�i ��c s�c qu�i v�t # c�nh t� k� s�ng v�t 5# 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2) 
	if (UTask_tm == 40*256+20) then
SetTaskTemp(4,SetBit(GetTaskTemp(4),5,1)) -- script viet hoa By http://tranhba.com  ch� c�n � nhi�m v� trung , li�n c��ng b�ch thi�t tr� t�m th�i thay ��i l��ng th� 5 v� 
end 
end; 
