-- script viet hoa By http://tranhba.com  hai h� khu Thi�n v��ng gi�p b�n trang b� ��ch bang ch�ng ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld38 = GetByte(GetTask(38),1) 
if (GetFaction() == "tianwang") or (Uworld38 == 127) then 
Say("Thi�n v��ng bang ch�ng # b�n bang c�c huynh �� c� ng�y ��ng b�n t�y b�o ��ch , c�ng kh�ng th� kh�ng c� m�t hai b� h�o trang b� �i ? ", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","Bang ch� c� l�nh # b�n bang binh kh� ch� b�n cho ��ng m�n huynh �� ") 
end 
end; 

function yes() 
Sale(58); 
end; 

function no() 
end; 
