-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n ng��i �i ���ng 7 l�i v�a v� ��i tho�i 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(200) == 1 then 
allbrother_0801_FindNpcTaskDialog(200) 
return 0; 
end 

i = random(0,2) 

if (i == 0) then 
Say(" l�i v�a v� # ch�ng ta ba l�ng huy�n l� m�t ��a ph��ng nh� , nh�ng d�n ch�ng ��ch ng�y qu� ng��c l�i c�ng an vui . ",0) 
return 
end; 

if (i == 1) then 
Say(" l�i v�a v� # Thi�n v��ng gi�p ch�nh l� ch�ng ta ��ch thanh thi�n , n�u nh� kh�ng c� b�n h� thay tr�i h�nh ��o , nh�ng th� kia tham quan � l�i c�n kh�ng bi�t mu�n th� n�o nghi�n �p ch�ng ta d�n ch�ng ��y !",0) 
return 
end; 

if (i == 2) then 
Say(" l�i v�a v� # � d�n ch�ng trong m�t , Thi�n v��ng trong bang ng��i ng��i c�ng l� l�n anh h�ng , th�t t�t h�n ! ch�ng ta n�i n�y tr� tu�i ti�u t� c�ng mu�n gia nh�p Thi�n v��ng gi�p ��y !",0) 
end; 

end; 
