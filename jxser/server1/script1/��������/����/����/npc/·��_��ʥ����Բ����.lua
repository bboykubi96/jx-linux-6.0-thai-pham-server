-- script viet hoa By http://tranhba.com  th�nh ��i L� # ng��i �i ���ng # s�ng th�nh t� h� vi�n ph��ng tr��ng # th�y kh�i c�a 50 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-27) 

function main() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 50*256+10) then		-- script viet hoa By http://tranhba.com 50������
		SetTask(6,50*256+32)
Talk(4,"","Ph��ng tr��ng ��i s� , ta l� th�y kh�i �� t� , ch��ng m�n g�i ta t�i gi�p qu� t� t�m b�o v�t .","A di �� ph�t , phi�n to�i th� ch� li�u , ��o t�c �� tr�n v�o thi�n t�m th�p .","Th�p n�y l� ��i L� th�nh ��a , cho n�n , v� ph�ng ng�a ng��i kh�c ti�n v�o , � trong th�p c� r�t nhi�u ��ng nh�n . th� ch� �i v�o ph�i c�n th�n . !","��i s� y�n t�m ! ") 
	elseif (UTask_cy == 50*256+32) and (HaveItem(5) == 1) then		-- script viet hoa By http://tranhba.com  ���
		SetTask(6,50*256+50)
DelItem(5) 
Talk(3,"","Ph��ng tr��ng ��i s� , c�i n�y l� qu� t� m�t ��ch ng� ��ng Quan �m , b�y gi� c�n cho ��i s� .","A di �� ph�t , tr�n t� b�o v�t t�m ���c , th�t l� B� T�t ph� h� , �a t� th� ch� . xin/m�i thay ta c�m �n qu� ph�i ch��ng m�n .","��i s� kh�ng n�n kh�ch kh� !") 
Msg2Player("��ng ng� ��ng Quan �m cho ph��ng tr��ng h� vi�n ") 
AddNote("��ng ng� ��ng Quan �m cho ph��ng tr��ng h� vi�n ") 
	elseif (UTask_cy >= 50*256+32) and (UTask_cy < 50*256+50) then		-- script viet hoa By http://tranhba.com  ���������
Talk(1,"","H�t th�y li�n phi�n to�i n� th� ch� li�u , ta � ch� n�y ni�m kinh cho th� ch� c�u nguy�n ") 
	elseif (UTask_cy >= 50*256+50) then						-- script viet hoa By http://tranhba.com  ��������Ժ�
Talk(1,"","�a t� th� ch� , th� ch� ��ch �n ��c kh�ng hi�u th� n�o b�o ��p .") 
else 
Talk(3,"","Ng� ��ng Quan �m l� s�ng th�nh t� ��ch b�o v�t , c�ng l� s�ng th�nh t� ��ch ki�u ng�o ","Ng��i xu�t gia th� n�o c� h�o th�ng cao ng�o trong l�ng ��y ? ","Th� ch� ��ch d�y d� , b�n t�ng s� suy ngh� th�t k� , A di �� ph�t , A di �� ph�t , A di �� ph�t . ") 
end 
end; 
