-- script viet hoa By http://tranhba.com  ph�i Hoa s�n ��u m�i t�n ��i tho�i ch�n v�n 

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main() 
Uworld1050 = nt_getTask(1050) 
if ( Uworld1050 ~= 0 ) then 
branch_jiantou() 
else 
Talk(1,"","Nghe n�i v� l�m truy�n k� c� ho�ng kim nhi�m v� , Hoa S�n �� t� �� xu�ng n�i l�m nhi�m v� , ng��i m�t h�i ph�i v� t�i !"); 
end 
end 
