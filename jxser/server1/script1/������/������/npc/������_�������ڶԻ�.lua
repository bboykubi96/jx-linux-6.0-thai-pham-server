-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n Thi�n v��ng t��ng l�nh ��i tho�i ba l�ng ti�u c� nhi�m v� # Thi�n v��ng nh�p m�n 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-10) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p mi�n ph� ��a �� t� b�n m�n tr� v� m�n ph�i 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-09-05) l�n n�a s�a sang l�i nhi�m v� thay ��i l��ng kh�ng ch� 

Include("\\script\\global\\���ɽ�������\\������������.lua")

function main(sel) 
UTask_world18 = GetTask(46); 
if(UTask_world18 == 1) and (HaveItem(180) == 0) then 
Talk(1,"","Thi�n v��ng �� t� # t� ba ho�n a , n�u l� c�u ng��i ��ch , v�y d� nhi�n l� ngh�a b�t dung t� , m�c d� trong bang ��ch c�c huynh �� c�ng ch� d�ng , ta s� ��a ng��i m�t vi�n �i . ") 
AddEventItem(180) 
-- script viet hoa By http://tranhba.com  SetTask(46, 2) -- script viet hoa By http://tranhba.com  v� ph��ng ti�n l�m l�i nhi�m v� , ch� cho ��o c� kh�ng th�m thay ��i l��ng tr� gi� 
Msg2Player("Ng��i l�y ���c m�t vi�n t� ba ho�n . ") 
AddNote("Ng��i l�y ���c m�t vi�n t� ba ho�n . ") 
else 
default_talk() 
end 
end; 
