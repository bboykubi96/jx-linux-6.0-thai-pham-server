-- script viet hoa By http://tranhba.com description: t�n l�ng n�ng phu # ng�y nh�n 30 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4); 
	if ((UTask_tr == 30*256+20) and (HaveItem(62) == 0)) then			-- script viet hoa By http://tranhba.com  ����״̬�Ի�
Talk(3, "select","Ta ng�y h�m qua � �i�n l� ��o ��a ��ch th�i �i�m , ��o ���c li�u m�t t�ng �� , chi�u l�p l�nh ��ch tr�ch ��p m�t , nh�ng l� c�ng kh�ng c� th� �n l�i kh�ng th� xuy�n , c� �ch l�i g� ? th�ng tr��c c�ng th�n ��ch v��ng b�y ��o ���c li�u m�t ��i b�c , ng��i ta ��o ���c ch�nh l� b�c , ta l�i ch� ��o ���c m�t t�ng �� , th�t l� xui x�o !", " ( ��y kh�ng ph�i l� v�n m�ng t� sao ?!) ��i th�c , ta mu�n mua ng��i t�ng �� kia , c� th� kh�ng ?","Kh�ng nghe l�m ch� , ng��i th�t mu�n mua ? # ta th�t may m�n , g�p ph�i m�t ��i ngu mu�i # , h�o h�o h�o , ch� c�n ng��i c�m m�t tr�m l��ng b�c t�i , c�i n�y t�ng �� s� l� c�a ng��i ") 
	elseif (UTask_tr >=30*256+20) then								-- script viet hoa By http://tranhba.com ִ����30������
Talk(1,"","Ng��i c�n ph�i mua c�i g� sao ? l�n sau ta ��o ���c li�n ti�n nghi b�n cho ng��i !") 
else -- script viet hoa By http://tranhba.com  thi�u t�nh ��i tho�i 
Talk(1,"","Tr�ng c� ��i ��ch ��a , kh�ng bi�t l�c n�o m�i ��o l�y ���c tr�n b�o ph�t ��i t�i a !") 
end 
end; 

function select() 
if (GetCash() >= 100) then 
Pay(100) 
AddEventItem(62) 
Msg2Player(" l�y ���c v�n m�ng t� b�o th�ch ") 
AddNote(" � t�n l�ng b�n ngo�i ��ch �i�n l� t�m ���c n�ng phu , mua ���c v�n m�ng t� b�o th�ch ") 
else 
Talk(1,"","Ch� ti�n �� r�i t�i t�m ta n�a . ") 
end 
end; 
