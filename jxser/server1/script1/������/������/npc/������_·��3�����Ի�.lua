-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n ng��i �i ���ng 3 a ph�c ��i tho�i 

function main(sel) 

if ( GetTask(1256) == 1) then 

		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n . .") 
SetTask(1256, 2); 
else 
Talk(1,"","Ng��i t�i th�t l� ��ng l�c . ch�ng ta nhanh l�n t�m ���c c�i b�nh n�y ��ch c�n nguy�n # �� cho ng��i ta r�t lo l�ng a .") 
end 
return 
elseif ( GetTask(1256) == 2) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
return 
end 

Say("Mu�n th��ng H�nh S�n h�c v� , l�m m�t mu�n ��c c� ��i hi�p ng��i nh� v�y , s� c��ng ph� nh��c , thay tr�i h�nh ��o , d��ng n�o uy phong #",0) 

end; 
