-- script viet hoa By http://tranhba.com  t�y b�c b�c khu long m�n tr�n Ho�ng H� b�n t�u thuy�n phu ��i tho�i 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com 20031029 

CurWharf = 10; 
Include("\\script\\global\\station.lua")

function main(sel) 
if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p n�m 
Say("Ch�ng ta � n�i n�y tr�n thuy�n l�m th� th�t r�t kh� c�c # ng�y ph�i gi� th�i ��ch , b�y gi� l�i g�p gi� l�n l�ng , s� r�ng c�ng kh�ng s�ng ���c li�u !", 2,"Ng�i thuy�n /WharfFun","Kh�ng ng�i /OnCancel") 
else 
Talk(1,"","B�n ngo�i qu� r�i lo�n , xem ng��i tay tr�i g� kh�ng ch�c # v�a ra th�n b�n ngo�i ta lo l�ng ng��i li�n ��u ng��i kh� gi� ���c li�u !") 
end 
end; 

function OnCancel() 
Talk(1,"","Kh�ng c� ti�n kh�ng th� ng�i ! ") 
end;
