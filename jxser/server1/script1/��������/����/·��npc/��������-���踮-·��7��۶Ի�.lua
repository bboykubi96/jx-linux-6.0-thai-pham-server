-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� ng��i �i ���ng 7 s�m h�ng ��i tho�i 

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel) 
Uworld1050 = nt_getTask(1050) 
if ( Uworld1050 ~= 0 ) then 
branch_cenxiong() 
else 
Say("S�m h�ng # ta ��y sanh � ph��ng t��ng , sinh tr��ng � ph��ng t��ng , c�ng kh�ng bi�t th� gi�i b�n ngo�i l� m�t x� d�ng m� , d�u g� c� m�t ng�y mu�n �i ra ngo�i ki�n th�c ki�n th�c . ",0) 
end 
end;
