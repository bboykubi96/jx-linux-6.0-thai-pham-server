-- script viet hoa By http://tranhba.com  t�y nam nam khu ��i L� ph� Tr��ng giang b�n t�u thuy�n phu ��i tho�i 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com 20031029 

CurWharf = 9; 
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function main(sel) 
if (GetLevel() >= 50) then 
Say("Ho�ng H� c�u kh�c loan , ng��i � ��y s�ng ��ch b�n n�y , ta � s�n ��ch b�n kia , c�ch nhau Th��ng S�n nh� h�i , mu�n g�p c�ng kh� kh�n .", 3,"Ng�i thuy�n /WharfFun","Kh�ng ng�i /OnCancel", "# �i hoa ��o ��o (5) /go_thd") 
else 
Say("Ho�ng H� c�u kh�c loan , ng��i � ��y s�ng ��ch b�n n�y , ta � s�n ��ch b�n kia , c�ch nhau Th��ng S�n nh� h�i , mu�n g�p c�ng kh� kh�n .", 2,"Ng�i thuy�n /WharfFun","Kh�ng ng�i /OnCancel") 
end 
end; 

function OnCancel() 
Talk(1,"","Kh�ng c� ti�n kh�ng th� ng�i thuy�n ! ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function go_thd() 
nRet = aexp_gotothd(239); 
-- script viet hoa By http://tranhba.com  if (nRet == 1) then 
-- script viet hoa By http://tranhba.com  Msg2Player("Thuy�n phu # g�n nh�t �i hoa ��o ��o ng��i c�a c�ng th�t nhi�u . ���c r�i , ng��i ng�i xong l�u #") 
if (nRet == -1) then 
Talk(1,"","��n hoa ��o ��o ph� d�ng "..AEXP_TICKET.." hai , ng��i �� ch�a ? ") 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
