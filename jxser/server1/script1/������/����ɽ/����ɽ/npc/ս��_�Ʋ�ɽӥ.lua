-- script viet hoa By http://tranhba.com  Giang Nam khu la ti�u s�n chi�n ��u _ v�n b� s�n �ng .lua # ti�u di�t h�i hoa t�c nhi�m v� # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-28) 

function OnDeath() 
Uworld43 = GetTask(43) 
if (Uworld43 >= 60) and (Uworld43 < 69) then -- script viet hoa By http://tranhba.com  kh�ng c� gi�t �� 10 c� 
		SetTask(43,Uworld43 + 1)
Msg2Player("Ng��i di�t m�t t�n v�n b� s�n �ng ") 
elseif (Uworld43 == 69) or (Uworld43 == 70) then -- script viet hoa By http://tranhba.com  �� gi�t �� 10 c� 
SetTask(43,70) 
Msg2Player("Ng��i di�t m�t t�n v�n b� s�n �ng , xem m�t ch�t �ng ch� c� c�i g� ph�n �ng . ") 
end 
end 
