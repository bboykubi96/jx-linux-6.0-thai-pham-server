-- script viet hoa By http://tranhba.com  Trung Nguy�n b�c khu t�ng kim chi�n tr��ng t�ng qu�n qu�n y 
-- script viet hoa By http://tranhba.com  t� v� 

function main(sel) 
if (GetCurCamp() == 1) then 
Say("Kh�ng s� hy sinh ��ch binh m�i l� h�o binh , ra c�a ��nh gi�c ph�i b�o tr�ng th�n th� , mua ch�t thu�c sao ? ", 2,"Mua thu�c /yes","Kh�ng mua /no") 
else 
Talk(1,""," � ��u ra gian t� # v� binh mau ��a ng��i n�y b�t l�i #") 
end 
end; 

function yes() 
Sale(53) 
end; 

function no() 
end;
