-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� ti�u c�c l�o b�n ��i tho�i 
Include("\\script\\task\\newtask\\branch\\zhongli\\branch_zhonglitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(188) == 1 then 
allbrother_0801_FindNpcTaskDialog(188) 
return 0; 
end 

Uworld1055 = nt_getTask(1055) 
if ( Uworld1055 ~= 0 ) then 
branch_shuangying() 
else 
i = random(0,1) 
if (i == 0) then 
Say("Ti�u c�c l�o b�n # b�n ta song �ng ti�u c�c � t�y b�c m�t d�y ��ch h�c b�ch hai ��o ��u c� b�ng h�u , cho n�n h� v� ch�a t�ng thi�m th�t , c�i n�y d�a v�o t�t c� ��u l� tr�n giang h� b�ng h�u m�t m�i #",0) 
else 
Say("Ti�u c�c l�o b�n # b�n ta �n phi�u ���c c�m ng��i , tr� c�ng phu th�t , to�n d�a v�o h�c b�ch hai ��o ��ch c�c b�ng h�u n� m�t , c�i n�y � giao t�nh � hai ch� , c� l�c so ch�n ��t ch�n r�o ��ch c�ng phu c�n ph�i ch�c ch�t . ", 0) 
end; 
end 
end 
