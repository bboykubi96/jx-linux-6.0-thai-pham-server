-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n kh�ch s�n l�o b�n ��i tho�i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
SetTask(1256, 2); 
else 
Talk(1,"","M�i kh�ch quan v�o , ��ng s� ��ng s� , m�c d� � trong ph�ng kh�ch �� v�i h�p quan t�i , nh�ng l� ta v�n c�a m� ��n kh�ch c�ng l� v� y b�nh . ta s� kh�ng ph�i l� c�i �� . a a , ti�u �i�m r�t an to�n , d� nhi�n � lo�n th� trung c�i n�y thu l� ph� nh�t ��nh ph�i l�p m��i �i�m .") 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
return 
end 

Say("Kh�ch s�n l�o b�n # kh�ch xem quan ��ch d�ng v� , c�ng l� m�t � v�t �ao th��ng ki�m s�ng ng��i �i ? ch�ng ta n�i n�y th��ng s� c� ng��i trong giang h� xu�t nh�p , ��u l� l�n n�i b�i ph�ng ��c c� ��i hi�p ��ch . ",0); 

end; 
