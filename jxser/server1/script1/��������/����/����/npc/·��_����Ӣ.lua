-- script viet hoa By http://tranhba.com  ��i L� # ng��i �i ���ng # �ao li�n anh 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(187) == 1 then 
allbrother_0801_FindNpcTaskDialog(187) 
return 0; 
end 
Talk(3,"","Trong nh� c� kh�ch nh�n , ta �i mua m�y con c� tr� l�i l�m m�t ��o ��i L� c� .","B�t k� chuy�n n�y nh� th� n�o c�ng c� th� t�i nh� ta �n c�m , th��ng m�t c�i ta l�m c� , ��y l� ��i L� cho kh�ch nh�n l�m m�n �n , ng��i kh�ng c�n kh�ch kh� . #") 
end; 
