-- script viet hoa By http://tranhba.com  Trung Nguy�n nam khu ��o h��ng th�n to D��ng Ch�u 
-- script viet hoa By http://tranhba.com TrapID# Trung Nguy�n nam khu 75 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) r�t xu�ng ra th�n c�p b�c y�u c�u v� 5 c�p 

function main(sel) 

if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
SetFightState(1); 
NewWorld(80, 1446, 3077) 
else 
Talk(1,"","Ph�a tr��c nguy hi�m , xin/m�i tr� v� luy�n n�a t�p !") 
SetPos(1911, 3211) -- script viet hoa By http://tranhba.com  �i ra Trap �i�m 
end 

end; 
