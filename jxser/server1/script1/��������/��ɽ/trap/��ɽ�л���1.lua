-- script viet hoa By http://tranhba.com  t�y b�c nam khu Hoa S�n tr�ng th�i chi�n ��u thi�t ��i �i�m 1 
-- script viet hoa By http://tranhba.com 2004.1.5 
-- script viet hoa By http://tranhba.com by Suyu 
-- script viet hoa By http://tranhba.com  2004-05-01(Dan_Deng) 

function main(sel) 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nh� ch�i x� vu kh�ng ph�i l� tr�ng th�i chi�n ��u , t�c � trong th�nh 
SetPos(2600, 3610) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � ngo�i th�nh 
SetFightState(1) -- script viet hoa By http://tranhba.com  chuy�n ��i v� tr�ng th�i chi�n ��u 
else -- script viet hoa By http://tranhba.com  nh� ch�i x� vu tr�ng th�i chi�n ��u , t�c � ngo�i th�nh 
SetPos(2604, 3599) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � trong th�nh 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
end; 
end; 
