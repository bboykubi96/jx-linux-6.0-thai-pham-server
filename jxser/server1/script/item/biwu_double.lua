Include("\\script\\event\\wulin_final_match\\createleague.lua") 
IncludeLib("ITEM") 
function main( nItemIdx ) 
local curzoneid = wl_zonename2zoneid(GetTong()) 
local zoneid = ITEM_GetItemExParam(nItemIdx,1) 
if ( zoneid ~= curzoneid or zoneid == 0 ) then 
Say("T� n�y phi�u gi�ng nh� kh�ng ph�i l� ng��i ch� � khu d�ng/u�ng ��ch , ng��i kh�ng th� s� d�ng . ", 0) 
return 1 
end 
matchtype = ITEM_GetItemExParam(nItemIdx,2) 
Say("Ng��i mu�n ghi danh tham gia cu�c so t�i sao ? ", 2,"Ta mu�n x�y d�ng ta "..TAB_TICKETINFO[matchtype][1].."/#wl_createleague("..matchtype..")","Kh�ng , t�m v�o kh�ng t�nh to�n ghi danh , l�n sau �i /OnCancel") 
return 1; 
end 