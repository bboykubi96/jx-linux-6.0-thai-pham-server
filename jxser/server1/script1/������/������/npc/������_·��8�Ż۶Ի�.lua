-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n ng��i �i ���ng 8 nghe th�y tu� ��i tho�i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)
if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
SetTask(1256, 2); 
return 
else 
Talk(1,"","B�i v� c�i n�y qu�i b�nh kh�a tr�i th��ng H�nh S�n ��ch ���ng , ta kh�ng c� m�t th�y ��c c� ��i hi�p li�u .") 
return 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
return 
end 

Say("Nghe th�y tu� # ng��i c�ng l� l�n n�i b�i ph�ng ��c c� ��i hi�p sao ? h�n nh�ng l� th�n t��ng c�a ta , ng��i n�u l� th�y h�n , phi�n to�i �� cho h�n cho ta k� c� t�n . ? ",0) 

end; 
