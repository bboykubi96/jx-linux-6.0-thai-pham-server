-- script viet hoa By http://tranhba.com description: ���ng m�n tr�c h�i c�a th� ba ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 == 60) then 
i = random(0,7) 
if (i == 0) then 
Talk(1,"","Ch�nh ��ng v� l�i ") 
Msg2Player(" l�y ���c kh�u quy�t � ch�nh ��ng v� l�i ") 
elseif (i == 1) then 
Talk(1,"","�ang nam l� h�a ") 
Msg2Player(" l�y ���c kh�u quy�t � �ang nam l� h�a ") 
elseif (i == 2) then 
Talk(1,"","Ch�nh t�y v� chi�u ") 
Msg2Player(" l�y ���c kh�u quy�t � ch�nh t�y v� chi�u ") 
elseif (i == 3) then 
Talk(1,"","Ch�nh b�c l� th�y ") 
Msg2Player(" l�y ���c kh�u quy�t � ch�nh b�c l� th�y ") 
elseif (i == 4) then 
Talk(1,"","��ng nam l� gi� ") 
Msg2Player(" l�y ���c kh�u quy�t � ��ng nam l� gi� ") 
elseif (i == 5) then 
Talk(1,"","��ng b�c v� s�n ") 
Msg2Player(" l�y ���c kh�u quy�t � ��ng b�c v� s�n ") 
elseif (i == 6) then 
Talk(1,"","T�y nam v� ��a ") 
Msg2Player(" l�y ���c kh�u quy�t � t�y nam v� ��a ") 
else 
Talk(1,"","T�y b�c l� tr�i ") 
Msg2Player(" l�y ���c kh�u quy�t � t�y b�c l� tr�i ") 
end 
end 
end; 
