-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p xu�t s� nhi�m v� thanh loa ��o b�o r��ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function main() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 60*256+20) and (HaveItem(101) == 1) then
DelItem(101) 
Talk(2,"","Thi�n v��ng di th� �� b� ng��i Kim c�m �i ","Tr�n ��t c� m�t �t ch� h��ng thanh loa ��o ��ch d�u hi�u , xem ra s�t th� v�a r�i �i kh�ng l�u #. ") 
		SetTask(3, 60*256+40)
AddNote("M� ra H� B�c b�n ��ch b�o r��ng , m�i bi�t Thi�n v��ng di th� b� kim qu�c s�t th� c�m �i . ") 
	elseif (UTask_tw == 60*256+40) then
Talk(1,"","B�o r��ng l� v� �ch ��ch . ") 
else 
Talk(1,"","Kh�ng c� c�i ch�a kh�a , m� kh�ng ra b�o r��ng .") 
end 
end; 
