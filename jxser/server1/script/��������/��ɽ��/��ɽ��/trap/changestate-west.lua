-- script viet hoa By http://tranhba.com  ph�i Hoa s�n T�y M�n chi�n ��u thi�t ��i �i�m 

function main(sel) 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nh� ch�i x� vu kh�ng ph�i l� tr�ng th�i chi�n ��u , t�c � b�n trong ph�i 
SetPos(1335, 2896); -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � ph�i b�n ngo�i 
SetFightState(1); -- script viet hoa By http://tranhba.com  chuy�n ��i v� tr�ng th�i chi�n ��u 
else 
SetPos(1338, 2895); -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � b�n trong ph�i 
SetFightState(0); -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
end; 
end; 
