-- script viet hoa By http://tranhba.com  chi�n ��u _ b�ch o�nh o�nh .lua 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-04-13) 

function OnDeath() 
Uworld50 = GetTask(50) 
if (Uworld50 == 31) then -- script viet hoa By http://tranhba.com  hai ng��i c�ng ��nh b�i , c� th� l�y ���c tay d� 
SetTask(50,40) 
AddEventItem(383) 
Msg2Player("��nh b�i b�ch o�nh o�nh ") 
Talk(2,"","B�ch c� n��ng # ��y ch�nh l� �u th� c�a ng��i sao ?","Ng��i n�y th�t l� c� v� �ch lo l�ng chuy�n c�a ng��i kh�c t�nh ��y , ��i kim qu�c s� kh�ng b� qua ng��i ") 
elseif (Uworld50 == 30) then 
SetTask(50,32) 
Msg2Player("��nh b�i b�ch o�nh o�nh ") 
Talk(1,"","A ! ta b� th��ng . m�t khi�n cho ��i nh�n , �i mau !") 
elseif (Uworld50 == 40) and (HaveItem(383) == 0) then -- script viet hoa By http://tranhba.com  l�n n�a l�y ���c tay d� 
SetTask(50,40) 
AddEventItem(383) 
Msg2Player("��nh b�i b�ch o�nh o�nh ") 
Talk(2,"","B�ch c� n��ng # ��y ch�nh l� �u th� c�a ng��i sao ?","Ng��i n�y th�t l� c� v� �ch lo l�ng chuy�n c�a ng��i kh�c t�nh ��y , ��i kim qu�c s� kh�ng b� qua ng��i ") 
end 
end 
