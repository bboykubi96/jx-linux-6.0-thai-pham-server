-- script viet hoa By http://tranhba.com  Giang Nam khu la ti�u s�n chi�n ��u _ l�i b� cu�ng lang .lua # ti�u di�t h�i hoa t�c nhi�m v� # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-28) 

function OnDeath() 
Uworld43 = GetTask(43) 
if (Uworld43 >= 20) and (Uworld43 < 29) then -- script viet hoa By http://tranhba.com  kh�ng c� gi�t �� 10 c� 
		SetTask(43,Uworld43 + 1)
Msg2Player("Ng��i gi�t m�t t�n l�i b� cu�ng lang ") 
elseif (Uworld43 == 29) or (Uworld43 == 30) then -- script viet hoa By http://tranhba.com  �� gi�t �� 10 c� 
SetTask(43,30) 
Msg2Player("Ng��i gi�t m�t t�n l�i b� cu�ng lang , t�i xem m�t ch�t lang ch� c� c�i g� ph�n �ng . ") 
end 
end 
