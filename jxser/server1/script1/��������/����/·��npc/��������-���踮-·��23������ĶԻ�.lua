-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� ng��i �i ���ng 23 b�n th�t heo ��ch ��i tho�i 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(189) == 1 then 
allbrother_0801_FindNpcTaskDialog(189) 
return 0; 
end 
Say("Chu �� phu # m�i m� th�t heo , kh�ng m�i m� kh�ng l�y ti�n a #",0) 

end;
