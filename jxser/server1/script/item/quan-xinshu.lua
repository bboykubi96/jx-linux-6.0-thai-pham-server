-- script viet hoa By http://tranhba.com Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com # ng� t�m thu�t # 
-- script viet hoa By http://tranhba.com  h�c ���c say ti�n l�i c�t k� n�ng 
-- script viet hoa By http://tranhba.com  C�n L�n , 80 c�p tr� l�n c� th� d�ng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(394) 
if(party ~= "kunlun") then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� C�n L�n 
Msg2Player("Ng��i c�m # ng� t�m thu�t # nghi�n c�u n�a ng�y , k�t qu� c�i g� c�ng kh�ng c� l�nh ng� ��n . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  l� C�n L�n nh�ng ch�a t�i 80 c�p 
Msg2Player("Ng��i c�m # ng� t�m thu�t # �i�u nghi�n li�u n�a ng�y , k�t qu� l�nh ng� r�t �t , kh�ng hi�u qu� g� . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  �� h�c qua n�n k� n�ng 
Msg2Player("Ng��i �� �em # ng� t�m thu�t # �i�u nghi�n th�u tri�t , t� trong c�ng n�a h�c kh�ng t�i b�t k� v�t g� . ") 
return 1 
else 
AddMagic(394,0) 
Msg2Player("H�c ���c k� n�ng � say ti�n l�i c�t � . ") 
return 0 
end 
end
