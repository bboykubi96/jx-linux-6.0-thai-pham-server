MONEY_ADDLIFETIME = 1000000 

function main() 
Say("N�i chuy�n phi�m th�t "..",".." xin/m�i thi�t tr� t�n h� ".."!", 2,"C� th� , ta ��a v�o /pay_chatroom_enter","K�t th�c ��i tho�i /OnCancel"); 
return 1; 
end 

function pay_chatroom_enter() 
AskClientForString("pay_chatroom_time", "", 1, 20,"Xin/m�i ��a v�o n�i chuy�n phi�m th�t t�n "); 
end 

function pay_chatroom_time(roomname) 

-- script viet hoa By http://tranhba.com  n�i chuy�n phi�m th�t sung tr� gi� kh�ng c�n ��ng ph� 
if (ChatRoom_FindRoom(roomname) == 0) then 
Msg2Player("<#> n�i chuy�n phi�m th�t " .. roomname .. " kh�ng t�n t�i ") 
else 
ChatRoom_AddTime(roomname) 
end 
end 


function OnCancel() 
end 
