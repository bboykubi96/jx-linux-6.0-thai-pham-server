-- script viet hoa By http://tranhba.com  Ng� ��c gi�o b�n binh kh� �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),2) 
if (GetFaction() == "wudu") or (Uworld37 == 127) then 
Say("B�n ph�i v�n l� kh�ng c�n sinh m�nh l�c th� th�ng , b�i v� khi bi�t v�n d�ng lo�i v� kh� n�y li�n tuy�t th� v� song ", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","Gi�o ch� c� l�nh : m�n ph�i binh kh� kh�ng th� b�n cho ngo�i nh�n ") 
end 
end; 

function yes() 
Sale(78) 
end; 

function no() 
end; 
