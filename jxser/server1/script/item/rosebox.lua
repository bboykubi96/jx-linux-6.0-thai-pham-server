IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t�i nh�p SETTING ch�n v�n ch� th� kho 

function main() 
p = random(0,99) 
if (p < 50) then 
AddItem(0,2,28,2,0,0,0) -- script viet hoa By http://tranhba.com  kinh thi�n gi�p 
Msg2Player("Ch�c m�ng ng��i l�y ���c m�i giang h� t�nh l� s�o trang chi kinh thi�n gi�p , ch�c ng��i ng�y ng�y vui v� !") 
return 0 
else 
AddItem(0,2,28,5,0,0,0) -- script viet hoa By http://tranhba.com  kh�p ��a qu�n 
Msg2Player("Ch�c m�ng ng��i l�y ���c m�i giang h� t�nh l� s�o trang chi kh�p ��a qu�n , ch�c ng��i ng�y ng�y vui v� !") 
return 0 
end 

end
