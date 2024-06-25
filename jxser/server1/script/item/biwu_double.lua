Include("\\script\\event\\wulin_final_match\\createleague.lua") 
IncludeLib("ITEM") 
function main( nItemIdx ) 
local curzoneid = wl_zonename2zoneid(GetTong()) 
local zoneid = ITEM_GetItemExParam(nItemIdx,1) 
if ( zoneid ~= curzoneid or zoneid == 0 ) then 
Say("Tê nµy phiÕu gièng nh­ kh«ng ph¶i lµ ng­¬i chç ë khu dïng/uèng ®Ých , ng­¬i kh«ng thÓ sö dông . ", 0) 
return 1 
end 
matchtype = ITEM_GetItemExParam(nItemIdx,2) 
Say("Ng­¬i muèn ghi danh tham gia cuéc so tµi sao ? ", 2,"Ta muèn x©y dùng ta "..TAB_TICKETINFO[matchtype][1].."/#wl_createleague("..matchtype..")","Kh«ng , t¹m vµo kh«ng tÝnh to¸n ghi danh , lÇn sau ®i /OnCancel") 
return 1; 
end 