-- script viet hoa By http://tranhba.com  Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com  # Th�i C�c ki�m ph� # cu�n hai # 
-- script viet hoa By http://tranhba.com  h�c ���c k� n�ng ng��i ki�m h�p nh�t 
-- script viet hoa By http://tranhba.com  V� ���ng , 80 c�p tr� l�n c� th� d�ng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(368) 
if(party ~= "wudang") then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� V� ���ng 
Msg2Player("Ng�i nghi�n c�u Th�i C�c ki�m ph� - cu�n 2 �� l�u , v�n kh�ng c� l�nh ng� c�i g� ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  l� V� ���ng nh�ng ch�a t�i 80 c�p 
Msg2Player("Ng�i nghi�n c�u Th�i C�c ki�m ph� - cu�n 2 �� l�u , l�nh ng� r�t �t . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  �� h�c qua n�n k� n�ng 
Msg2Player("Ng�i nghi�n c�u Th�i C�c ki�m ph� - cu�n 2 �� l�u , nh�ng l� v�n kh�ng c� h�c ���c c�i g� ") 
return 1 
else 
AddMagic(368,1) -- script viet hoa By http://tranhba.com  h�c ���c k� n�ng 
Msg2Player("H�c ���c ng��i ki�m h�p nh�t k� n�ng . ") 
return 0 
end 
end
