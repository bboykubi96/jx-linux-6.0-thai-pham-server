-- script viet hoa By http://tranhba.com  ph�i Thi�u l�m b�n trang b� ��ch �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld38 = GetByte(GetTask(38),2) 
if (GetFaction() == "shaolin") or (Uworld38 == 127) then 
Say("Ng��i xu�t gia kh�ng th� ph� tr��ng , nh�ng th� n�y y m�o ��u l� t� c�c v� s� huynh �� l�m .", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","Ch��ng m�n c� l�nh , b�n ph�i trang b� ch� b�n cho ��ng m�n ") 
end 
end; 

function yes() 
Sale(70) 
end; 

function no() 
end; 
