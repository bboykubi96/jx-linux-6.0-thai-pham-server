-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n qu�n r��u l�o b�n ��i tho�i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)
if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
SetTask(1256, 2); 
else 
Talk(1,"","M�i kh�ch quan d�ng b��c , ch�ng ta ti�u �i�m kh�ng d�m c�a m� li�u . h�m nay tr�n nh� ng��i tr�n kh�ng kh�i m� ch�t , ch�ng ta n�i n�y c�ng �� ch�t m�y qua ���ng kh�ch nh�n . b�y gi� quan ph� �ang �i�u tra , ti�u nh�n b�y gi� r�t s� v� v�y kh�ng th� ti�p t�c m� ti�m .") 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
return 
end 

Say("Qu�n r��u l�o b�n # k� t� ph�i H�nh S�n ��ch ��c c� ��i hi�p l�m minh ch� v� l�m sau , ch�ng ta c�i n�y nho nh� nam nh�c tr�n li�n tr� n�n n�o nhi�t l�n . tr�n tr�n th��ng s� c� m�t �t �ao kh�ch ki�m hi�p xu�t hi�n , ta ��y �t r��u qu�n ��ch l�m �n c�ng so tr��c kia t�t h�n nhi�u . ",0); 

end; 
