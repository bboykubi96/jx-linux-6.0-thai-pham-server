-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� ti�m t�p h�a l�o b�n ��i tho�i 
Include("\\script\\global\\global_zahuodian.lua");

function main(sel) 
local Buttons = store_sel_extend(); 
Say("Ti�m t�p h�a l�o b�n # mu�n mua �i�m g� ? ta ��y n�i n�y ��ch h�ng nh�ng ��y �� h�t li�u , mu�n g� c� g� , xem m�t ch�t �i . ", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no"); 
end; 


function yes() 
Sale(20); -- script viet hoa By http://tranhba.com  b�n ra giao d�ch khu�ng 
end; 

function BuyChristmasCard() 
Sale(97); 
end 


function no() 
end; 
