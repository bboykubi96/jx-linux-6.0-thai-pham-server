-- script viet hoa By http://tranhba.com  Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com  # Thi�n v��ng th��ng ph�p # cu�n hai # 
-- script viet hoa By http://tranhba.com  h�c ���c k� n�ng �u�i tinh tr�c th�ng 
-- script viet hoa By http://tranhba.com  Thi�n v��ng , 80 c�p tr� l�n c� th� d�ng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(323) 
if(party ~= "tianwang") then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� Thi�n v��ng 
Msg2Player("Ng��i c�m # Thi�n v��ng th��ng ph�p # cu�n hai # nghi�n c�u n�a ng�y , k�t qu� c�i g� c�ng kh�ng c� l�nh ng� ��n . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  l� Thi�n v��ng nh�ng ch�a t�i 80 c�p 
Msg2Player("Ng��i c�m # Thi�n v��ng th��ng ph�p # cu�n hai # �i�u nghi�n li�u n�a ng�y , k�t qu� l�nh ng� r�t �t , kh�ng hi�u qu� g� . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  �� h�c qua n�n k� n�ng 
Msg2Player("Ng��i �� �em # Thi�n v��ng th��ng ph�p # cu�n hai # �i�u nghi�n th�u tri�t , t� trong c�ng n�a h�c kh�ng t�i b�t k� v�t g� . ") 
return 1 
else 
AddMagic(323,1) -- script viet hoa By http://tranhba.com  h�c ���c k� n�ng 
Msg2Player("H�c ���c k� n�ng � �u�i tinh tr�c th�ng � . ") 
return 0 
end 
end
