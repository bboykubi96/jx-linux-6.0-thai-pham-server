-- script viet hoa By http://tranhba.com  hai h� khu Thi�n v��ng gi�p b�n binh kh� bang ch�ng ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld38 = GetByte(GetTask(38),1) 
if (GetFaction() == "tianwang") or (Uworld38 == 127) then 
Say("Thi�n v��ng bang ch�ng # xem m�t ch�t ch�ng ta Thi�n v��ng gi�p c�c huynh �� ch� t�o ��ch binh kh� �i #", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","Bang ch� c� l�nh # b�n bang binh kh� ch� b�n cho ��ng m�n huynh �� ") 
end 
end; 

function yes() 
Sale(57); 
end; 

function no() 
end; 
