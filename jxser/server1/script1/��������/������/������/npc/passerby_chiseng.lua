-- script viet hoa By http://tranhba.com  thi�n long t� si t�ng ��i tho�i ch�n v�n 

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main() 
Uworld1050 = nt_getTask(1050) 
if ( Uworld1050 ~= 0 ) then 
branch_chiseng() 
else 
Talk(1,"","Nh�ng n�m g�n ��y nh�t , nh�ng ��a ph��ng kh�c t�i �� t� c�ng ng�y c�ng �t , ph��ng tr��ng kh�ng lo l�ng trong ch�a chuy�n c�a , ch� t�nh tu . �� t� ng��i ng��i c�ng cu�ng qu�t , tr��c m�t �� xu�ng n�i chi�u m� m�i �� t� . th� ch� ch� sau m�t th�i gian ng�n tr� l�i �i !"); 
end 
end 
