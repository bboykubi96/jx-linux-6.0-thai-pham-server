-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� k� vi�n l�o b�o ��i tho�i 

function main(sel) 

if ( GetSex() == 0 ) then -- script viet hoa By http://tranhba.com  nh� ch�i gi�i t�nh v� nam 

i = random(0,2) 

if (i == 0) then 
Say("K� vi�n l�o b�o # c� c�u c�ch ng�n g�i � th��c chi ��ch b� di , tuy ��c ��ch h�n � , ng��i h�n nghe n�i qua ch� ? ",0) 
return 
end 

if (i == 1) then 
Say("K� vi�n l�o b�o # b�n ta v�n t� v��n ��ch n� oa nhi c�ng ��u l� t� th��c chi tinh ch�n t� ch�n t�i , t�ng c�i m�t kh�ng ch� c� d�ng d�p t� b� n�n nh�c , b�ch tr�ng no�n t�nh , h�n n�a nhu t�nh nh� n��c , thi�n gi�i nh�n � , c�ng t� �i v�o vui ��a m�t ch�t �i #", 0) 
return 
end 

if (i == 2) then 
Say("K� vi�n l�o b�o # ai y�u , ta ti�u gia , ng��i th�ch g� d�ng ��ch c� n��ng ? ta ��y m� ��ch c� n��ng ng��i ng��i ��u l� qu�c s�c thi�n h��ng , t�i ng��i h�i l�ng #", 0) 
return 
end 

else -- script viet hoa By http://tranhba.com  nh� ch�i gi�i t�nh v� n� 

Say("K� vi�n l�o b�o # y�u , ��y ch�nh l� m�n m�i m� chuy�n , ��i khu� n� c�ng t�i �i d�o k� vi�n # ng��ng ng�ng , ta ��y n�i n�y c�ng kh�ng ti�p ��i n� kh�ch #", 0) 

end; 



end;
