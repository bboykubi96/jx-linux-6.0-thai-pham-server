-- script viet hoa By http://tranhba.com  Trung Nguy�n b�c khu ng�y nh�n d�y b�n trang b� ��ch �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld30 = GetByte(GetTask(30),1) 
if (GetFaction() == "tianren") or (Uworld30 == 127) then 
Say("V� ��ch # nh�ng th� n�y ��u l� trong cung ��ch b�n/c�c cung n� t� tay may ��ch , nh�n m�t ch�t , th� c�ng nhi�u tinh t� ��", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","Gi�o ch� c� l�nh , b�n gi�o trang b� ch� c� th� b�n cho trung th�nh �� t� .") 
end 
end; 

function yes() 
Sale(61) 
end; 

function no() 
end; 
