-- script viet hoa By http://tranhba.com  th�y kh�i c�a b�n thu�c ��ch �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld36 = GetByte(GetTask(36),2) 
if (GetFaction() == "cuiyan") or (Uworld36 == 127) then 
Say("Trang b� d�m tr�n qu� thu�c men c�ng nhi�u , l�i c�ng h�u �ch ", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","M�n ch� c� l�nh , b�n m�n thu�c men ch� b�n cho ��ng m�n .") 
end 
end; 

function yes() 
Sale(68) 
end; 

function no() 
end; 
