-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n ng��i �i ���ng 5 v��ng th� ngh�a ��i tho�i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u c� ng�i ��n b�n trong t�i s� th�i , ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t �i .") 
SetTask(1256, 2) 
else 
Talk(1,"","Ng��i l�i mu�n h�i c�i �� ng��i ch�t a ? ta l�m sao bi�t ? nghe n�i ��c c� th�t to hi�p kh�ng cho ph�p h�n ��c c� v�n xu�ng n�i , c�i b�nh n�y mu�n h�i ng��i t�i khi n�o a ") 
return 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u c� ng�i ��n b�n trong t�i s� th�i , ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t �i ."); 
return 
end 

i = random(0,2) 

if (i == 0) then 
Say("V��ng th� ngh�a # nghe n�i ��c c� ��i hi�p ��ch phu nh�n l� m�t ph�n �� anh h�ng , kh�ng ch� c� v� c�ng cao c��ng , c�n l� m�t ��i m� nh�n d�m #",0) 
return 
end; 

if (i == 1) then 
Say("V��ng th� ngh�a # nghe n�i ��c c� ��i hi�p c�ng ��c c� phu nh�n nguy�n l� c�u gia , kh�ng ng� v�i nhau y�u nhau , v� v�y t�n kh� hi�m kh�ch l�c tr��c , k�t l�m quy�n thu�c , � tr�n giang h� c�n b� truy�n l�m m�t �o�n giai tho�i ��y #",0) 
return 
end; 

if (i == 2) then 
Say("V��ng th� ngh�a # ��c c� ��i hi�p ��ch n� nhi ��c c� v�n th��ng xuy�n ��n tr�n tr�n ch�i , ��y ch�nh l� c� m�t c�ch tinh qu�i ��ch ngh�ch ng�m qu� #",0) 
end; 

end; 
