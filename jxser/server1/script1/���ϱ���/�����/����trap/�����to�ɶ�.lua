-- script viet hoa By http://tranhba.com  t�y nam b�c khu giang t�n th�n to th�nh �� 
-- script viet hoa By http://tranhba.com Trap ID# t�y nam b�c khu 55 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) r�t xu�ng ra th�n c�p b�c y�u c�u v� 5 c�p 

function main(sel) 

if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
SetFightState(1); 
NewWorld(11, 3407, 5295) 
else 
Talk(1,"","Ph�a tr��c nguy hi�m , xin/m�i tr� v� luy�n n�a t�p !") 
SetPos(3402, 6019) -- script viet hoa By http://tranhba.com  �i ra Trap �i�m 
end 

end; 
