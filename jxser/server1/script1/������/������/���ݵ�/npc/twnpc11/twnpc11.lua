-- script viet hoa By http://tranhba.com description: thanh loa ��o b�n t�u thuy�n phu 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 


function main() 

if (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i l� Thi�n v��ng gi�p �� t� , ng�i thuy�n kh�ng thu ti�n 
Say("Ng��i l� Thi�n v��ng gi�p ��ch �� t� ng�i thuy�n mi�n ph� ", 2,"T�n l�m !/yes","Kh�ng /no") 
else 
Say("N�i �� h�t s�c nguy hi�m # n�u nh� kh�ch quan mu�n �i l�i c�a mu�n th�m m�t ch�t ti�n !", 2,"Ng�i /yes1","Kh�ng ng�i /no") 
-- script viet hoa By http://tranhba.com  Talk(1,"","Thi�n v��ng bang ch�ng # ng��i kh�ng ph�i l� b�n bang �� t� , th� n�o l�n v�o ��n b�n bang c�m ��a t�i ? #") 
end; 

end; 


function yes() 
NewWorld(59, 1425, 3472) -- script viet hoa By http://tranhba.com  h�i thi�n v��ng ��o 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
end; 


function yes1() 
if (GetCash() >= 500) then -- script viet hoa By http://tranhba.com  tham kh�o tr� gi� 
Pay(500) 
NewWorld(59, 1425, 3472) -- script viet hoa By http://tranhba.com  h�i thi�n v��ng ��o 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
else 
Say("Kh�ng c� ti�n h�y mau �i !", 0) 
end; 
end; 


function no() 
end; 
