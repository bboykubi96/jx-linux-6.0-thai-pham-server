TASKVALUE_BLEND = 2320
function main( nItemIdx ) 
if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then 
Say("Ng��i v�n c�n l�n ��i t�n m�.")
return 1; 
end 
SetTask(2320,SetBit(GetTask(2320), 1, 1))
-- local curzoneid = wl_zonename2zoneid(GetTong()) 
-- local zoneid = ITEM_GetItemExParam(nItemIdx,1) 
-- if ( zoneid ~= curzoneid or zoneid == 0 ) then 
-- Say("T� n�y phi�u gi�ng nh� kh�ng ph�i l� ng��i ch� � khu d�ng/u�ng ��ch , ng��i kh�ng th� s� d�ng . ", 0) 
-- return 1 
-- end 
-- local matchtype = ITEM_GetItemExParam(nItemIdx,2) 
-- Say("Ng��i mu�n ghi danh tham gia cu�c so t�i sao ? ", 2,"Ta mu�n x�y d�ng ta "..TAB_TICKETINFO[matchtype][1].."/#wl_createleague("..matchtype..")","Kh�ng , t�m v�o kh�ng t�nh to�n ghi danh , l�n sau �i /OnCancel") 
-- return 1; 
end