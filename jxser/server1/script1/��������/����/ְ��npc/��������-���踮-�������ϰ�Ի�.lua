-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� th� r�n c�a h�ng l�o b�n ��i tho�i 

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc> th� r�n # mu�n mua �i�m g� binh kh� ? t�y ti�n ch�n , t�y ti�n nh�n , kh�ng c� chuy�n g� . " 
function main(sel) 
tiejiang_city(TIEJIANG_DIALOG); 
end; 


function yes() 
Sale(19); -- script viet hoa By http://tranhba.com  b�n ra giao d�ch khu�ng 
end; 
