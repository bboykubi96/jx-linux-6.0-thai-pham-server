-- script viet hoa By http://tranhba.com  chi�n ��u _ tuy�t ch�m .lua # th� gi�i nhi�m v� # r�a s�ch oan khu�t # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-04-15) 

function OnDeath() 
Uworld51 = GetTask(51) 
if (Uworld51 == 60) then -- script viet hoa By http://tranhba.com  nhi�m v� trung , l� ��nh th� nh�t ti�u BOSS 
SetTask(51,62) 
Talk(1,"","Quy�t gi�t huynh �� �em b�o th� cho/d�m ta ") 
elseif (HaveItem(377) == 0) and ((Uworld51 == 61) or (Uworld51 == 70) or (Uworld51 == 80)) then -- script viet hoa By http://tranhba.com  nhi�m v� trung , c� th� ph�i b� k�p 
Talk(1,"","C�i th� ! ") 
SetTask(51,70) 
AddEventItem(377) -- script viet hoa By http://tranhba.com  " ���ng m�n b� k�p " 
Msg2Player("Ng��i gi�t ch�t kim qu�c th�ch kh�ch , ph�t hi�n tr�n ng��i h�n c� v�n ���ng m�n b� t�ch ") 
end 
end 
