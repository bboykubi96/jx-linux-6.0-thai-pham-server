-- script viet hoa By http://tranhba.com  Trung Nguy�n b�c khu t�ng kim chi�n tr��ng kim qu�n s�ng l�i �i�m qu�n y 
-- script viet hoa By http://tranhba.com  l� h�n 2004-10-14 

function main(sel) 
if (GetCurCamp() == 2) then 
SetFightState(0) 
Say("T��ng qu�n c�n ph�i mua c�i g� kh�ng ?", 2,"Mua thu�c /yes","Kh�ng mua /no") 
else 
Talk(1,"","Xem ng��i t�c mi th� nh�n , mu�n g�t ta b�n cho ng��i ��i kim qu�c ��ch th�n d��c cho ng��i a ?") 
end; 
end; 

function yes() 
Sale(53) 
end; 

function no() 
end;
