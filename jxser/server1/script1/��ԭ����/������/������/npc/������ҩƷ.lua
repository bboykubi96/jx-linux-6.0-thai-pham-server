-- script viet hoa By http://tranhba.com  ph�i Thi�u l�m b�n thu�c ��ch �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld38 = GetByte(GetTask(38),2) 
if (GetFaction() == "shaolin") or (Uworld38 == 127) then 
Say("M�c d� n�i b�n ph�i v� c�ng c� th� c��ng th�n ki�n th� , nh�ng l� c�ng c� ng� b�nh ��ch th�i �i�m , cho n�n , c�n ph�i c� c�c lo�i thu�c men .", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","Ch��ng m�n c� l�nh , b�n ph�i thu�c men ch� b�n cho ��ng m�n ") 
end 
end; 

function yes() 
Sale(71) 
end; 

function no() 
end; 
