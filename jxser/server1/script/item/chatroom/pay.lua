MONEY_ADDLIFETIME = 1000000 

function main() 
Say("Nãi chuyÖn phiÕm thÊt "..",".." xin/mêi thiÕt trİ tªn hä ".."!", 2,"Cã thÓ , ta ®­a vµo /pay_chatroom_enter","KÕt thóc ®èi tho¹i /OnCancel"); 
return 1; 
end 

function pay_chatroom_enter() 
AskClientForString("pay_chatroom_time", "", 1, 20,"Xin/mêi ®­a vµo nãi chuyÖn phiÕm thÊt tªn "); 
end 

function pay_chatroom_time(roomname) 

-- script viet hoa By http://tranhba.com  nãi chuyÖn phiÕm thÊt sung trŞ gi¸ kh«ng cÇn ®ãng phİ 
if (ChatRoom_FindRoom(roomname) == 0) then 
Msg2Player("<#> nãi chuyÖn phiÕm thÊt " .. roomname .. " kh«ng tån t¹i ") 
else 
ChatRoom_AddTime(roomname) 
end 
end 


function OnCancel() 
end 
