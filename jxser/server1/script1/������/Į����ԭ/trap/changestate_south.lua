-- script viet hoa By http://tranhba.com  M�c B�c th�o nguy�n c�a nam chi�n ��u thi�t ��i �i�m 

function main(sel) 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nh� ch�i x� vu kh�ng ph�i l� tr�ng th�i chi�n ��u , t�c � b�n trong c�a 
SetPos(1261, 2508); -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � ngo�i c�a 
SetFightState(1); -- script viet hoa By http://tranhba.com  chuy�n ��i v� tr�ng th�i chi�n ��u 
else 
SetPos(1263, 2504); -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � b�n trong c�a 
SetFightState(0); -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
end; 
end; 
