-- script viet hoa By http://tranhba.com  Ng� ��c gi�o b�n trang b� ��ch �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),2) 
if (GetFaction() == "wudu") or (Uworld37 == 127) then 
Say("Ch�ng ta kh�ng mu�n qu� n�ng coi c�i n�y , t�t nh�t trang b� ch�nh l� s� d�ng linh ho�t .", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","Gi�o ch� c� l�nh : m�n ph�i trang b� kh�ng th� b�n cho ngo�i nh�n ") 
end 
end; 

function yes() 
Sale(79) 
end; 

function no() 
end; 
