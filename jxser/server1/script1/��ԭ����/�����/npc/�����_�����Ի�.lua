-- script viet hoa By http://tranhba.com description: tay m�i th�n _ hoa hoa 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/22 
-- script viet hoa By http://tranhba.com 73 UTask_world45 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 

function main() 
UTask_world45=GetTask(73) 
if (UTask_world45 == 0) then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng 
Say("Ng��i xem th�y ta ti�u Long li�u sao ? ta t�n l� h�n �i mua ���ng , ��i r�t l�u ��u kh�ng th�y tr� l�i , �i ��u t�m c�ng kh�ng th�y , ta lo l�ng mu�n ch�t ! ", 2,"Ta gi�p ng��i �i t�m /yes","Ta kh�ng th� gi�p ng��i /no") 
elseif (UTask_world45 == 1) then 
Talk(1,""," l�m phi�n ng��i gi�p ta t�m h�n !") 
elseif (UTask_world45 >= 10) then 
Talk(1,"","C�m �n ng��i gi�p ta t�m ���c h�n .") 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� ��i tho�i 
Talk(1,"","Ta ti�u Long th�t l� ngh�ch ng�m !") 
end 
end 

function yes() 
Talk(1,""," l�m phi�n ng��i ! ") 
SetTask(73,1) 
AddNote("Ti�p nh�n v� # tr� gi�p hoa hoa t�m v� ti�u Long . ") 
Msg2Player("Ti�p nh�n v� # tr� gi�p hoa hoa t�m v� ti�u Long . ") 
end 

function no() 
end 
