-- script viet hoa By http://tranhba.com  th�y kh�i c�a b�n trang b� ��ch �� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nh�p b�n ��o c� ch� b�n cho b�n bang 

function main(sel) 
Uworld36 = GetByte(GetTask(36),2) 
if (GetFaction() == "cuiyan") or (Uworld36 == 127) then 
Say("Mu�n nh�n c�c t� mu�i v� y ph�c sao ? b�n ngo�i kh�ng mua ���c .", 2,"Giao d�ch /yes","Kh�ng giao d�ch /no") 
else 
Talk(1,"","M�n ch� c� l�nh , b�n m�n trang b� ch� b�n cho ��ng m�n .") 
end 
end; 

function yes() 
Sale(67) 
end; 

function no() 
end; 
