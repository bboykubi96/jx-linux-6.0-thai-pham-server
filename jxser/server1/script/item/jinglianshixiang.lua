Include( "\\script\\lib\\string.lua" );
Include("\\script\\misc\\itemexchangevalue\\jinglianshixiang.lua")

function main( nItemIdx ) 
return BaoxiangCompose(nItemIdx); 
end 

function GetDesc( nItemIdx ) 
local nCount = GetItemMagicLevel(nItemIdx, 1); 
local strDesc = ""; 
strDesc = format("<color=yellow> n�y trong r��ng trang b� #<color=green>%d<color> c� tinh luy�n th�ch <color>", nCount); 
return strDesc; 
end 