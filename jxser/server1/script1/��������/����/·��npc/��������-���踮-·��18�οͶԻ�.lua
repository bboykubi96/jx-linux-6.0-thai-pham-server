-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� ng��i �i ���ng 18 phi�u kh�ch ��i tho�i 
-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� Hoa S�n tuy�t ��nh truy�n t�ng NPC 199,201 
function main(sel) 
if(GetLevel() >= 60)then 
Say("V�a nh�n ng��i ch�nh l� tuy�t th� ��i hi�p . ng��i l� t� Hoa S�n ��nh xu�ng �i ? ch� c�n 500 hai , ta li�n �em ng��i mang t�i c�i n�y !",2,"C� th�t kh�ng , �i th� m�t ch�t nh�n ! /yes","Kh�ng quan t�m , kh�ng mu�n �i . /no") 
else 
Say("Phi�u kh�ch # c�i n�y v�n t� v��n ��ch mu�i t� th�t l� kh�ng t� a , �� cho ng��i ta tr� v� ch� v� c�ng , nh�ng l� n�u nh� ta s� kh�ng tr� v� , t�i nay li�n l�i mu�n qu� tha y b�n li�u #",0) 
end 
end; 

function yes() 
if(GetCash() >= 500)then 
Pay(500); 
NewWorld(2, 2600, 3600); 
else 
Say("500 hai c� th� l�m c�i g� a ?",0) 
end 
end; 

function no() 
Say("Xu�ng n�i mu�n t�i t�m ta a !",0) 
end; 
