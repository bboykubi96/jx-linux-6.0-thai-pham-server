Include( "\\script\\item\\checkmapid.lua" )
IncludeLib("SETTING") 
SJ_TRAPITEM_COUNT = 50 
function EatMedicine(nItemIdx) 
local _,_,detail = GetItemProp(nItemIdx) 
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
local s_name = GetItemName(nItemIdx) 
local n_curtime = GetGameTime(); -- script viet hoa By http://tranhba.com  gi�y 
local n_lasttime = GetTaskTemp(113); 

if (ST_IsRideHorse() == 1) then 
Msg2Player("C�i ng�a kh�ng th� s� d�ng n�n v�t ph�m !") 
return -1 
end; 

if (n_curtime <= n_lasttime) then 
Msg2Player("1 gi�y sau m�i c� th� ti�p t�c s� d�ng !") 
return -1 
end; 

if(detail == 393) then -- script viet hoa By http://tranhba.com  xuy�n tim l�m 
if ( GetLevel() >= 40 and GetLevel() <= 79) then 
CastSkill( 343,7); 
Msg2Player("Ng��i s� d�ng m�t xuy�n tim l�m "); 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then 
CastSkill( 343,9); 
Msg2Player("Ng��i s� d�ng m�t xuy�n tim l�m "); 
else 
CastSkill( 343,14); 
Msg2Player("Ng��i s� d�ng m�t xuy�n tim l�m "); 
end 
end 

if(detail == 394) then -- script viet hoa By http://tranhba.com  gai ��c l�m 
if ( GetLevel() >= 40 and GetLevel() <= 79) then 
CastSkill( 303,5); 
Msg2Player("Ng��i s� d�ng m�t gai ��c l�m "); 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then 
CastSkill( 303,8); 
Msg2Player("Ng��i s� d�ng m�t gai ��c l�m "); 
else 
CastSkill( 303,12); 
Msg2Player("Ng��i s� d�ng m�t gai ��c l�m "); 
end 
end 

if(detail == 395) then -- script viet hoa By http://tranhba.com  h�n b�ng l�m 
if ( GetLevel() >= 40 and GetLevel() <= 79) then 
CastSkill(345 ,7); 
Msg2Player("Ng��i s� d�ng m�t h�n b�ng l�m "); 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then 
CastSkill(345 ,9); 
Msg2Player("Ng��i s� d�ng m�t h�n b�ng l�m "); 
else 
CastSkill( 345,14); 
Msg2Player("Ng��i s� d�ng m�t h�n b�ng l�m "); 
end 
end 

if(detail == 396) then -- script viet hoa By http://tranhba.com  ��a h�a l�m 
if ( GetLevel() >= 40 and GetLevel() <= 79) then 
CastSkill( 347,7); 
Msg2Player("Ng��i s� d�ng m�t ch� h�a l�nh "); 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then 
CastSkill( 347,9); 
Msg2Player("Ng��i s� d�ng m�t ch� h�a l�nh "); 
else 
CastSkill( 347,14); 
Msg2Player("Ng��i s� d�ng m�t ch� h�a l�nh "); 
end 
end 

if(detail == 397) then -- script viet hoa By http://tranhba.com  s�t ��nh l�m 
if ( GetLevel() >= 40 and GetLevel() <= 79) then 
CastSkill( 349,7); 
Msg2Player("Ng��i s� d�ng m�t s�t ��nh l�m "); 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then 
CastSkill( 349,9); 
Msg2Player("Ng��i s� d�ng m�t s�t ��nh l�m "); 
else 
CastSkill( 349,14); 
Msg2Player("Ng��i s� d�ng m�t s�t ��nh l�m "); 
end 
end 

SetTaskTemp(113, GetGameTime()); -- script viet hoa By http://tranhba.com  ghi nh� cu�i c�ng l�n s� d�ng th�i gian 

if ((n_param) >= SJ_TRAPITEM_COUNT) then 
RemoveItemByIndex(nItemIdx) 
Msg2Player("<#> "..s_name.."<#> �� s� d�ng "..SJ_TRAPITEM_COUNT.."<#> l�n , kh�ng th� s� d�ng n�a li�u !") 
else 
SetSpecItemParam(nItemIdx,1,n_param) 
SyncItem(nItemIdx) 
Msg2Player("<#> "..s_name.."<#> c�n c� th� s� d�ng "..(SJ_TRAPITEM_COUNT - n_param).."<#> l�n ") 
end 
return -1 
end 

function GetDesc( nItemIdx ) 
local szDesc = "" 
local n_param = tonumber(GetItemParam( nItemIdx, 1 )) 
szDesc = szDesc..format("\n c� th� s� d�ng <color=yellow>%d<color> l�n ", (SJ_TRAPITEM_COUNT - n_param)); 
return szDesc; 
end 
