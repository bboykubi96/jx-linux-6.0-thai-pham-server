Include( "\\script\\item\\checkmapid.lua" )
IncludeLib("SETTING") 
SJ_TRAPITEM_COUNT = 50 
function EatMedicine(nItemIdx) 
local _,_,detail = GetItemProp(nItemIdx) 
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
local s_name = GetItemName(nItemIdx) 
local n_curtime = GetGameTime(); -- script viet hoa By http://tranhba.com  gi©y 
local n_lasttime = GetTaskTemp(113); 

if (ST_IsRideHorse() == 1) then 
Msg2Player("Cìi ngùa kh«ng thÓ sö dông nªn vËt phÈm !") 
return -1 
end; 

if (n_curtime <= n_lasttime) then 
Msg2Player("1 gi©y sau míi cã thÓ tiÕp tôc sö dông !") 
return -1 
end; 

if(detail == 393) then -- script viet hoa By http://tranhba.com  xuyªn tim lµm 
if ( GetLevel() >= 40 and GetLevel() <= 79) then 
CastSkill( 343,7); 
Msg2Player("Ng­¬i sö dông mét xuyªn tim lµm "); 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then 
CastSkill( 343,9); 
Msg2Player("Ng­¬i sö dông mét xuyªn tim lµm "); 
else 
CastSkill( 343,14); 
Msg2Player("Ng­¬i sö dông mét xuyªn tim lµm "); 
end 
end 

if(detail == 394) then -- script viet hoa By http://tranhba.com  gai ®éc lµm 
if ( GetLevel() >= 40 and GetLevel() <= 79) then 
CastSkill( 303,5); 
Msg2Player("Ng­¬i sö dông mét gai ®éc lµm "); 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then 
CastSkill( 303,8); 
Msg2Player("Ng­¬i sö dông mét gai ®éc lµm "); 
else 
CastSkill( 303,12); 
Msg2Player("Ng­¬i sö dông mét gai ®éc lµm "); 
end 
end 

if(detail == 395) then -- script viet hoa By http://tranhba.com  hµn b¨ng lµm 
if ( GetLevel() >= 40 and GetLevel() <= 79) then 
CastSkill(345 ,7); 
Msg2Player("Ng­¬i sö dông mét hµn b¨ng lµm "); 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then 
CastSkill(345 ,9); 
Msg2Player("Ng­¬i sö dông mét hµn b¨ng lµm "); 
else 
CastSkill( 345,14); 
Msg2Player("Ng­¬i sö dông mét hµn b¨ng lµm "); 
end 
end 

if(detail == 396) then -- script viet hoa By http://tranhba.com  ®Þa háa lµm 
if ( GetLevel() >= 40 and GetLevel() <= 79) then 
CastSkill( 347,7); 
Msg2Player("Ng­¬i sö dông mét chç háa lÖnh "); 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then 
CastSkill( 347,9); 
Msg2Player("Ng­¬i sö dông mét chç háa lÖnh "); 
else 
CastSkill( 347,14); 
Msg2Player("Ng­¬i sö dông mét chç háa lÖnh "); 
end 
end 

if(detail == 397) then -- script viet hoa By http://tranhba.com  sÐt ®¸nh lµm 
if ( GetLevel() >= 40 and GetLevel() <= 79) then 
CastSkill( 349,7); 
Msg2Player("Ng­¬i sö dông mét sÐt ®¸nh lµm "); 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then 
CastSkill( 349,9); 
Msg2Player("Ng­¬i sö dông mét sÐt ®¸nh lµm "); 
else 
CastSkill( 349,14); 
Msg2Player("Ng­¬i sö dông mét sÐt ®¸nh lµm "); 
end 
end 

SetTaskTemp(113, GetGameTime()); -- script viet hoa By http://tranhba.com  ghi nhí cuèi cïng lÇn sö dông thêi gian 

if ((n_param) >= SJ_TRAPITEM_COUNT) then 
RemoveItemByIndex(nItemIdx) 
Msg2Player("<#> "..s_name.."<#> ®· sö dông "..SJ_TRAPITEM_COUNT.."<#> lÇn , kh«ng thÓ sö dông n÷a liÔu !") 
else 
SetSpecItemParam(nItemIdx,1,n_param) 
SyncItem(nItemIdx) 
Msg2Player("<#> "..s_name.."<#> cßn cã thÓ sö dông "..(SJ_TRAPITEM_COUNT - n_param).."<#> lÇn ") 
end 
return -1 
end 

function GetDesc( nItemIdx ) 
local szDesc = "" 
local n_param = tonumber(GetItemParam( nItemIdx, 1 )) 
szDesc = szDesc..format("\n cã thÓ sö dông <color=yellow>%d<color> lÇn ", (SJ_TRAPITEM_COUNT - n_param)); 
return szDesc; 
end 
