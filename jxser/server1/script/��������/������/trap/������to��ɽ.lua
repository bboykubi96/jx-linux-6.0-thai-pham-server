-- script viet hoa By http://tranhba.com  t�y b�c nam khu v�nh nh�c tr�n to Hoa S�n 
-- script viet hoa By http://tranhba.com TrapID# t�y b�c nam khu 30 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) r�t xu�ng ra th�n c�p b�c y�u c�u v� 5 c�p 
Include("\\script\\global\\g7vn\\g7configall.lua")
function main(sel) 

if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
SetFightState(1); 
NewWorld(2, 2287 ,4092) 
else 
Talk(1,"","Tr��c m�t nguy hi�m , c�n l� tr� v� tu luy�n m�t c�i !") 
SetPos(1851, 2831) -- script viet hoa By http://tranhba.com  �i ra Trap �i�m 
end 

end; 
