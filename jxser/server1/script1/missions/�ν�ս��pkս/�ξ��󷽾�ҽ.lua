-- script viet hoa By http://tranhba.com  Trung Nguy�n b�c khu t�ng kim chi�n tr��ng t�ng qu�n s�ng l�i �i�m qu�n y 
-- script viet hoa By http://tranhba.com  l� h�n 2004-10-14 

function main(sel) 
if (GetCurCamp() == 1) then 
SetFightState(0) 
Say("Tr�ng s� h�n mua ch�t thu�c tr� th��ng ph�ng th�n , chi�n tr��ng sinh t� kh� li�u !", 2,"Mua thu�c /yes","Kh�ng mua /no") 
else 
Talk(1,"","B�y ��u / ng��i v�a t�i , mau t�i b�t gi�n �i�p ") 
end; 
end; 

function yes() 
Sale(53) 
end; 

function no() 
end;
