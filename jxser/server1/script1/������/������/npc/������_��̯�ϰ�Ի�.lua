-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n tr� than l�o b�n ��i tho�i 

function main(sel) 
if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)
if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u c� ng�i ��n b�n trong t�i s� th�i , ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t �i .") 
SetTask(1256, 2); 
else 
Talk(1,"","Ng��i t�i h�i th�m li�n quan t�i ng��i ch�t tin t�c ��ng kh�ng ? # , g�n nh�t H�nh S�n d��i ch�n c� r�t nhi�u ng��i ch�t . kh�ng bi�t m�i ti�n tri�n sao , ng��i �i h�i m�t ch�t ng��i kh�c �i .") 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u c� ng�i ��n b�n trong t�i s� th�i , ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t �i .") 
return 
end; 

i = random(0,2) 
if (i == 0) then 
Talk(1,"","Tr� than l�o b�n # kh�ch quan , �i t�i H�nh S�n d��i ch�n , nh�t ��nh ph�i n�m th� m�t ch�t ch�ng ta n�i n�y m�y m� tr� . ") 
elseif (i == 1) then 
Talk(1,"","Tr� than l�o b�n #� danh s�n t�n n��c n�i danh tr� � , m�y m� tr� l� ch�ng ta H�nh S�n ��ch ��c s�n , c�u ph� n�i danh , ngay t� l�c ���ng thay m�t li�n b� li�t v�o c�ng ph�m . ") 
else 
Talk(1,"","Tr� than l�o b�n # m�y m� tr� t� v� thu�n h�u , m�i th�m n�ng n�c , thu�n m� kh�ng ��m , n�ng m� kh�ng s�p . # th��ng m�t b�u , kh�ng ch� c� th� sinh t�n m� ph�p , v�n c� th� ti�u th� gi�i ��c ��y . ") 
end 
end 
