-- script viet hoa By http://tranhba.com  Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com  # th�y kh�i song �ao # 
-- script viet hoa By http://tranhba.com  h�c ���c k� n�ng b�ng t�m ti�n t� 
-- script viet hoa By http://tranhba.com  th�y kh�i , 80 c�p tr� l�n c� th� d�ng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(337) 
if(party ~= "cuiyan") then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� th�y kh�i 
Msg2Player("Ng��i c�m # th�y kh�i �ao ph�p # nghi�n c�u n�a ng�y , k�t qu� c�i g� c�ng kh�ng c� l�nh ng� ��n . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  l� th�y kh�i nh�ng ch�a t�i 80 c�p 
Msg2Player("Ng��i c�m # th�y kh�i �ao ph�p # �i�u nghi�n li�u n�a ng�y , k�t qu� l�nh ng� r�t �t , kh�ng hi�u qu� g� . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  �� h�c qua n�n k� n�ng 
Msg2Player("Ng��i �� �em # th�y kh�i �ao ph�p # �i�u nghi�n th�u tri�t , t� trong c�ng n�a h�c kh�ng t�i b�t k� v�t g� . ") 
return 1 
else 
AddMagic(337,1) -- script viet hoa By http://tranhba.com  h�c ���c k� n�ng 
Msg2Player("H�c ���c k� n�ng � b�ng t�m ti�n t� � . ") 
return 0 
end 
end
