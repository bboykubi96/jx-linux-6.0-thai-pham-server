-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n ng��i �i ���ng 2 �i�n th�i b� ��i tho�i 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(201) == 1 then 
allbrother_0801_FindNpcTaskDialog(201) 
return 0; 
end 
if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
SetTask(1256, 2); 
else 
Talk(1,"","Ho khan m�t c�i ho khan , ta kh�ng ��nh kh�ng ���c , kh�ng bi�t th� n�o lu�n l� c�m th�y nh�c ��u . ho khan m�t c�i , kh�ng bi�t c�i b�nh n�y l�m sao b�y gi� , ng��i nhanh l�n r�i �i !") 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
return 
end 

Say("�i�n th�i b� # con trai c�a ta n�u nh� c�n s�ng , c�ng k�m kh�ng nhi�u l�m c� ng��i l�n nh� v�y . th��ng h�i h�n m��i l�m tu�i th�i �i�m b� b�nh ch�t , c�n d� l�i ta m�t c� l�o b� t� . ",0) 

end; 
