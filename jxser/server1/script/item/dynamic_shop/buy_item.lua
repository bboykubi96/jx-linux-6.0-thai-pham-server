-- script viet hoa By http://tranhba.com  kh¸ch hµng b­ng kh¸ch hµng b­ng mua xö lý 
Include("\\script\\lib\\common.lua");


local tbProcessRequest = 
{ 

}; 



-- script viet hoa By http://tranhba.com  kh¸ch hµng b­ng mua 
function BuyItem(nShopIdx, nSelItemIndex, nCurrencyType, nScale) 

local tbProcesser = %tbProcessRequest[nShopIdx]; 
if (tbProcesser == nil) then 
print("Error: DynamicShop Client BuyItem Process!"); 
return 
end 

-- script viet hoa By http://tranhba.com  giao phã xö lý hµm sè xö lý 
DynamicExecute(tbProcesser[1], tbProcesser[2], PlayerIndex, nShopIdx, nSelItemIndex, nCurrencyType, nScale); 
end 
