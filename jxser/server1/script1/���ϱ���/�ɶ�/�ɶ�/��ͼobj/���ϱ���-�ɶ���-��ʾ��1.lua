-- script viet hoa By http://tranhba.com  t�y nam b�c khu th�nh �� ph� nha m�n c�a c�o k� b�i 1 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-02-27) l�n n�a thi�t k� nhi�m v� ( th�nh �� gi�t heo r�ng ) 
-- script viet hoa By http://tranhba.com  nh�ng t�i di�n nhi�m v� # t�i di�n chu k� # th�c t� th�i gian 1 ng�y # 

function main(sel) 
Uworld11 = GetTask(11) 
Udate = tonumber(date("%Y%m%d")) -- script viet hoa By http://tranhba.com  c�n chuy�n ��i th�nh tr� s� m�i c� th� tr�c ti�p ti�n h�nh t��ng ��i 
if (GetSex() == 0) then -- script viet hoa By http://tranhba.com  nam n� n�i dung b�t ��ng 
sexstr = " tr�ng s� " 
else 
sexstr = " n� hi�p " 
end 

if (Uworld11 == 0) or ((Uworld11 > 255) and (Uworld11 < Udate)) then -- script viet hoa By http://tranhba.com  c� th� ti�p nh�n v� 
Say("Th�ng b�o # g�n nh�t � ngo�i th�nh c� heo r�ng nhi�u lo�n , ph� h� trang gi� , th�t l� phi�n to�i , �� treo gi�i th��ng 500 l��ng b�c tr�ng , t�m d�ng s� ti�u di�t nh�ng th� n�y heo r�ng . gi�t ch�t heo r�ng ��ch , c� th� t�i nha m�n d�n t��ng .",2,"Treo gi�i th��ng b�ng /W11_get","Kh�ng c� trang gi� /no") 
elseif (Uworld11 <= 255) then -- script viet hoa By http://tranhba.com  nhi�m v� ti�n h�nh trung 
Talk(1,"","Th�nh �� ph� nha d�ch : "..sexstr..GetName().." r�t nhi�u hi�p s� vui l�ng v� d�n tr� h�i , cho ng��i ta d�n mang ��n b�nh an , chu�n b� ngh�nh ��n chi�n th�ng tr� v� tr�ng s� . ") 
else -- script viet hoa By http://tranhba.com  ch�a t�i t�i di�n th�i gian 
Talk(1,"","Th�nh �� ph� nha d�ch : "..sexstr..GetName().." v� d�n tr� h�i , ng��i n�o gi�t ���c 4 c�i khu v�c ��ch heo r�ng , v�n ph� li�n t��ng th��ng 500 hai , l�m khen ng�i hi�p ngh�a ��ch h�nh ��ng . ") 
end 
end; 

function W11_get() 
Talk(1,"","Th�nh �� ph� nha l�m # ng�y g�n ��y b�n giao b� heo r�ng qu�y r�y , khi�n cho trang gi� h�y ��ng t� n�a , th�t l� gh� t�m , hi�n treo gi�i th��ng b�c tr�ng n�m tr�m l��ng , t�m ki�m c� th� di�t tr� ��m n�y heo r�ng ��ch d�ng s� . ph�m l� gi�t ch�t heo r�ng m��i ��u ng��i , l� ���c ��n nha m�n ch� nh�n l�y th��ng ng�n . ") 
SetTask(11,1) 
end 

function no() 
end 
