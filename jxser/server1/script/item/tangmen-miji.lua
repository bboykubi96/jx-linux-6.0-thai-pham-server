-- script viet hoa By http://tranhba.com Create by yfeng 2004-3-9 
-- script viet hoa By http://tranhba.com Modified by fangjieying 2003-5-16 
-- script viet hoa By http://tranhba.com  ���ng m�n b� t�ch , t�c d�ng 80 c�p tr� l�n ���ng m�n �� t� s� d�ng sau , c� th� th�m 1 �i�m k� n�ng �i�m 
-- script viet hoa By http://tranhba.com  bao g�m xu�t s� , kh�ng bao g�m chuy�n m�n ph�i tr��c kia 
-- script viet hoa By http://tranhba.com  n�n v�t ph�m nhi�u nh�t ch� c� th� s� d�ng 15 l�n 
-- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng 80 th�p 4 v� b�y t� s� d�ng n�n v�t ph�m ��ch s� l�n 
function main(sel) 
times = mod(GetTask(80),16) 
party = GetLastAddFaction() 
str={ 
" ng��i c�m # ���ng m�n b� t�ch # �i�u nghi�n li�u n�a ng�y , k�t qu� c�i g� c�ng kh�ng c� l�nh ng� ��n . ", 
" ng��i c�m # ���ng m�n b� t�ch # �i�u nghi�n li�u n�a ng�y , k�t qu� l�nh ng� r�t �t , kh�ng hi�u qu� g� . ", 
" ng��i c�m # ���ng m�n b� t�ch # �i�u nghi�n li�u n�a ng�y , k�t qu� thu ���c m�t �t li�n quan t�i v� c�ng l�ng c�a ph�i . ", 
" ng��i �� �em # ���ng m�n b� t�ch # �i�u nghi�n th�u tri�t , t� trong c�ng n�a kh�ng chi�m ���c b�t k� t�m ��c . " 
} 
if(party ~= "tangmen") then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� ���ng m�n 
Msg2Player(str[1]) 
return 1 
elseif (GetLevel()<80) then -- script viet hoa By http://tranhba.com  l� ���ng m�n , nh�ng c�p b�c �t h�n 80 
Msg2Player(str[2]) 
return 1 
elseif(times > 14) then -- script viet hoa By http://tranhba.com  s� d�ng s� l�n �� ��t t�i th��ng h�n 
Msg2Player(str[4]) 
return 1 
else 
AddMagicPoint(1) -- script viet hoa By http://tranhba.com  th�m k� n�ng �i�m 1 
		SetTask(80,times+1)
Msg2Player(str[3]) 
return 0 
end 
end
