-- script viet hoa By http://tranhba.com  t�y nam b�c khu giang t�n th�n ng��i �i ���ng 4 ng�y ng�y ��i tho�i 
-- script viet hoa By http://tranhba.com  giang t�n th�n tay m�i nhi�m v� # h� t� ��ch ��n cung 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 

function main(sel) 
UTask_world18 = GetTask(46); 
if(UTask_world8 == 1) then 
		Talk(1,"","H� t� ca n�i ��i khi huynh �y c� n�, s� d�n ch�u �i b�n chim, th�t th�ch qu�!")
elseif(UTask_world18 == 2) then 
Talk(1,"","N?c# H?T?ca ch# l# xong sao?") 
elseif(UTask_world18 >= 10) then 
Talk(1,"","Hay l#, l# n# H?T?Ca s?#n t# ch#!") 
else 
Talk(1,"","H?T?ca lu t�n g# g nh��c ch#! Ch# ph ti�n m vi�n m?huynh #!") 
end 
end; 
