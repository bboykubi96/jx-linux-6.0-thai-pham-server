-- script viet hoa By http://tranhba.com  Trung Nguy�n nam khu ��o h��ng th�n tr� �i�m l�o b�n ��i tho�i 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(204) == 1 then 
allbrother_0801_FindNpcTaskDialog(204) 
return 0; 
end 

Say("U�ng tr� �� cho th�n th� kh�e m�nh , kh�ch quan mu�n u�ng m�t ch�n sao ?",0) 

end; 
