-- script viet hoa By http://tranhba.com  Ng� ��c gi�o b�n thu�c ��ch �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),2) 
if (GetFaction() == "wudu") or (Uworld37 == 127) then 
Say("M�c d� b�n ph�i c�ng phu l�y ��c l�m ch� , nh�ng l� di�u th� h�i xu�n ��ch h�o d��c c�ng kh�ng c� thi�u , mu�n th� nh�n m�t ch�t sao ", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","Gi�o ch� c� l�nh : ng��i thu�c kh�ng th� b�n cho ngo�i nh�n ") 
end 
end; 

function yes() 
Sale(80) 
end; 

function no() 
end; 
