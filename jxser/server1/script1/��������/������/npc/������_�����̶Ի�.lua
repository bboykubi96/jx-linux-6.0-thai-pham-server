-- script viet hoa By http://tranhba.com  t�y b�c nam khu v�nh nh�c tr�n Th� n�i n�i ��i tho�i 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(198) == 1 then 
allbrother_0801_FindNpcTaskDialog(198) 
return 0; 
end 
Say(" L� l�o c�ng c�t l�o Nh� ng��i c� n�m ��u gi�ng nh� h�i t� m�t d�ng l�n nhau ��u !",0) 

end; 
