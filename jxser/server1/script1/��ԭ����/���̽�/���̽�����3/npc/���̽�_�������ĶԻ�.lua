-- script viet hoa By http://tranhba.com  Trung Nguy�n b�c khu ng�y nh�n d�y b�n binh kh� �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld30 = GetByte(GetTask(30),1) 
if (GetFaction() == "tianren") or (Uworld30 == 127) then 
Say("Trong th�p h�n # nh�ng v� kh� n�y c�ng l� l�n kim qu�c t�t nh�t c�ng t��ng ch� t�o ��ch , tuy�t ��i nh�t l�u . ", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no"); 
else 
Talk(1,"","Gi�o ch� c� l�nh , b�n gi�o v� kh� ch� c� th� b�n cho trung th�nh �� t� .") 
end 
end; 

function yes() 
Sale(60) 
end; 

function no() 
end; 
