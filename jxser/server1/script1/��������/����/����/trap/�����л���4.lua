-- script viet hoa By http://tranhba.com  Giang Nam khu ��i L� tr�ng th�i chi�n ��u thi�t ��i Trap 
-- script viet hoa By http://tranhba.com Trap Id 64 
-- script viet hoa By http://tranhba.com By t� v� 2003 n�m 10 th�ng 16 ng�y 

function main(sel) 

if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nh� ch�i x� vu kh�ng ph�i l� tr�ng th�i chi�n ��u , t�c � trong th�nh 
SetPos(1661, 2955) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � ngo�i th�nh 
SetFightState(1) -- script viet hoa By http://tranhba.com  chuy�n ��i v� tr�ng th�i chi�n ��u 
else -- script viet hoa By http://tranhba.com  nh� ch�i x� vu tr�ng th�i chi�n ��u , t�c � ngo�i th�nh 
SetPos(1654, 2953) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � trong th�nh 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
end; 
end;
