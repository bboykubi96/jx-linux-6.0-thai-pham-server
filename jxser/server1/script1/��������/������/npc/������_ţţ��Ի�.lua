-- script viet hoa By http://tranhba.com description: v�nh nh�c tr�n _ b� b� m� 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/18 
-- script viet hoa By http://tranhba.com modify 2003/7/21 wangzg 
-- script viet hoa By http://tranhba.com update 2003/7/22 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 

function main(sel) 
UTask_world37=GetTask(65) 
if ((UTask_world37==0) and (GetLevel() >= 2)) then -- script viet hoa By http://tranhba.com  y�u c�u c�p b�c v��t qua 2 c�p 
Say("Nh� ta b� b� c� ng�y l�n ��m n�i mu�n �i khi ��i hi�p , b�y gi� l�i kh�ng bi�t ch�y ��n �i ��u r�i , th�t l� c�p ng��i ch�t nh� ta b� b� c� ng�y l�n ��m n�i mu�n �i khi ��i hi�p , b�y gi� l�i kh�ng bi�t ch�y ��n �i ��u r�i , th�t l� c�p ng��i ch�t ",2,"��i t�u ��ng lo l�ng , ta gi�p ng��i t�m /yes","Kh�ng �i t�m /no") 
elseif (UTask_world37==2) then 
Talk(1,"","��i t�u ��ng lo l�ng , ta gi�p ng��i t�m ") 
else 
Talk(1,"","Kh�p n�i ��u kh�ng y�n �n , h�i t� l�i kh�ng nghe l�i , th�t l� quan t�m a !") 
end 
end; 

function yes() 
Talk(1,"","Ng��i th�t l� ng��i t�t , li�n l�m phi�n ng��i h� tr� ") 
SetTask(65,2) 
AddNote("Ti�p nh�n v� # gi�p b� b� m� t�m h�i t� ") 
Msg2Player("Ti�p nh�n v� # gi�p b� b� m� t�m h�i t� ") 
end 

function no() 
end 
