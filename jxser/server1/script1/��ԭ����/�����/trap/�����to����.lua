-- script viet hoa By http://tranhba.com  Trung Nguy�n nam khu ��o h��ng th�n to t��ng d��ng 
-- script viet hoa By http://tranhba.com TrapID# Trung Nguy�n nam khu 73 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) r�t xu�ng ra th�n c�p b�c y�u c�u v� 5 c�p 

function main(sel) 

if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
SetFightState(1); 
NewWorld(78, 1799, 3425) 
else 
Talk(1,"","Ph�a tr��c nguy hi�m , xin/m�i tr� v� luy�n n�a t�p !") 
SetPos(1335, 3397) -- script viet hoa By http://tranhba.com  �i ra Trap �i�m 
end 

end; 
