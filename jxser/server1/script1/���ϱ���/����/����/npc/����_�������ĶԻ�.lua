-- script viet hoa By http://tranhba.com  t�y nam b�c khu ���ng m�n b�n binh kh� �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),1) 
if (GetFaction() == "tangmen") or (Uworld37 == 127) then 
Say("���ng thi�u # nh�ng th� n�y binh kh� ��u l� b�n m�n �m kh� ph�ng c�ng h�a kh� ph�ng ch� t�o ��ch , � n�i kh�c c�ng kh�ng th�y nhi�u a . ", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","M�n ch� c� l�nh , b�n m�n binh kh� kh�ng ph�i b�n cho ngo�i nh�n !") 
end 
end; 

function yes() 
Sale(54) 
end; 

function no() 
end; 
