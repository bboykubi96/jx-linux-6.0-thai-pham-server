-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n ng��i �i ���ng 4 tri�u ng�n �� ��i tho�i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
SetTask(1256, 2); 
else 
Talk(1,"","A . b�y gi� tr�n tr�n c� c�ng ng�y c�ng nhi�u ng��i �� ch�t c�ng kh�ng bi�t nguy�n nh�n . �ng tr�i a #.") 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
return 
end 

i = random(0,1) 

if (i == 0) then 
Say("Tri�u ng�n �� # ta th�t l� nh� �i h�c ���ng ��c s�ch , nh�ng l� ph� th�n kh�ng �� cho , n�i c� g�i ��c s�ch l�i kh�ng th� thi c�ng danh , ch�ng qua l� l�ng ph� ti�n . ",0) 
return 
end; 

if (i == 1) then 
Say("Tri�u ng�n �� # ph� th�n l�o th� ��nh ta , n�i ta l� th��ng ti�n h�ng , c� l�c c�n ngay c� ta m� c�ng nhau ��nh . n�u nh� ta gi�ng nh� ng��i m�t d�ng c� b�n l�nh , ph� th�n c� ph�i hay kh�ng c�ng s� kh�ng ��nh l�i ta ? ",0) 
end; 

end; 
