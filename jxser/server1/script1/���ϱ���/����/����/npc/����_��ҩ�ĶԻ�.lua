-- script viet hoa By http://tranhba.com  t�y nam b�c khu ���ng m�n b�n thu�c ��ch �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),1) 
if (GetFaction() == "tangmen") or (Uworld37 == 127) then 
Say("���ng ��c # b�n m�n tuy�t xu�n t�u ��ch y thu�t c� th� n�i ��c b� thi�n h� , h�n nghi�n ch� nh�ng thu�c n�y ho�n , h�c h�c , n�i l� ho�t t� nh�n th�t b�ch c�t c�ng kh�ng qu� ��ng a #", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","M�n ch� c� l�nh , b�n m�n thu�c men kh�ng th� b�n cho ngo�i nh�n !") 
end 
end; 

function yes() 
Sale(56) 
end; 

function no() 
end; 
