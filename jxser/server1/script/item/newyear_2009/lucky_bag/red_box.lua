Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\newyear_2009\\head.lua");

tb_redbox_item = 
{ 
[1] = {szName=" léc ", tbProp={6, 1, 1913, 1, 0, 0}, nRate = 100, nExpiredTime = newyear0901_item_expiredtime}, 
}; 

function main() 
local ndate = tonumber(GetLocalDate("%Y%m%d")); 
if (ndate >= newyear0901_item_expiredtime) then 
Msg2Player("Nªn vËt phÈm ®· qua kú ."); 
return 0; 
end 
if (CalcFreeItemCellCount() < 6) then 
Msg2Player("§¹i hiÖp ®Ých trang bÞ ch­a ®ñ chç trèng !"); 
return 1; 
end 
tbAwardTemplet:GiveAwardByList(tb_redbox_item,"Hång b¶o r­¬ng "); 
end 

function IsPickable( nItemIndex, nPlayerIndex ) 
local ndate = tonumber(GetLocalDate("%Y%m%d")); 
if (ndate >= newyear0901_item_expiredtime) then 
return 0; 
end 
if( IsMyItem( nItemIndex ) ) then 
if (ITEM_GetExpiredTime(nItemIndex) == 0) then 
ITEM_SetExpiredTime(nItemIndex,newyear0901_item_expiredtime); 
SyncItem(nItemIndex); 
end 
return 1; 
end 
end