-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng b�c m�n tr�ng th�i chi�n ��u thi�t ��i Trap 

function main(sel) 

if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nh� ch�i x� vu kh�ng ph�i l� tr�ng th�i chi�n ��u , t�c � trong th�nh 
SetPos(1674, 3145) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � ngo�i th�nh 
SetFightState(1) -- script viet hoa By http://tranhba.com  chuy�n ��i v� tr�ng th�i chi�n ��u 
else -- script viet hoa By http://tranhba.com  nh� ch�i x� vu tr�ng th�i chi�n ��u , t�c � ngo�i th�nh 
SetPos(1671, 3150) -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � trong th�nh 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
end; 
AddStation(1) -- script viet hoa By http://tranhba.com  ghi ch�p vai tr� �� t�ng �� ��n ph��ng t��ng ph� 
end;
