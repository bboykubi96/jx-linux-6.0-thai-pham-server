-- script viet hoa By http://tranhba.com Create by yfeng 2004-3-15 
-- script viet hoa By http://tranhba.com Modified by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com # b�y r�p thu�t # lo�n ho�n k�ch # 
-- script viet hoa By http://tranhba.com  h�c ���c lo�n ho�n k�ch k� n�ng 
-- script viet hoa By http://tranhba.com  ���ng m�n , 80 c�p tr� l�n c� th� d�ng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(351) 
if(party ~= "tangmen") then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� ���ng m�n 
Msg2Player("Ng��i c�m # b�y r�p thu�t # lo�n ho�n k�ch # nghi�n c�u n�a ng�y , k�t qu� c�i g� c�ng kh�ng c� l�nh ng� ��n . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  l� ���ng m�n nh�ng ch�a t�i 80 c�p 
Msg2Player("Ng��i c�m # b�y r�p thu�t # lo�n ho�n k�ch # �i�u nghi�n li�u n�a ng�y , k�t qu� l�nh ng� r�t �t , kh�ng hi�u qu� g� . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  �� h�c qua n�n k� n�ng 
Msg2Player("Ng��i �� �em # b�y r�p thu�t # lo�n ho�n k�ch # �i�u nghi�n th�u tri�t , t� trong c�ng n�a h�c kh�ng t�i b�t k� v�t g� . ") 
return 1 
else 
AddMagic(351,0) 
Msg2Player("H�c ���c k� n�ng � lo�n ho�n k�ch � . ") 
return 0 
end 
end
