-- script viet hoa By http://tranhba.com  chi�n ��u _ kim qu�c b� khi�n cho .lua 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-04-13) 

function OnDeath() 
Uworld50 = GetTask(50) 
if ((Uworld50 == 32) or (Uworld50 == 40)) and (HaveItem(383) == 0) then -- script viet hoa By http://tranhba.com  hai ng��i c�ng ��nh b�i , c� th� l�y ���c tay d� 
SetTask(50,40) 
AddEventItem(383) 
Msg2Player("��nh b�i b�ch o�nh o�nh ") 
Talk(2,"","B�ch c� n��ng ! ��y ch�nh l� �u th� c�a ng��i sao ?","Ng��i th� n�o c� r�nh r�i qu�n chuy�n c�a ng��i ta a , ��i kim qu�c s� kh�ng b� qua ng��i ") 
elseif (Uworld50 == 30) then 
SetTask(50,31) 
Talk(1,"","B�ch hi�u xu , ch�y mau !") 
end 
end 
