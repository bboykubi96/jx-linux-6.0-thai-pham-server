-- script viet hoa By http://tranhba.com  t�y nam b�c khu ���ng m�n b�n trang b� ��ch �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),1) 
if (GetFaction() == "tangmen") or (Uworld37 == 127) then 
Say("���ng nh� # �� t� b�n m�n th�n ph�p khinh linh , kh�ng ch� c� b�i v� t�p ch�nh l� ��c m�n tuy�t h�c , c�n ph�i �ch v�i nh�ng th� n�y nh� li�n ��ch trang b� ��", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","M�n ch� c� l�nh , b�n m�n trang b� ch� b�n cho ��ng m�n !") 
end 
end; 

function yes() 
Sale(55) 
end; 

function no() 
end; 
