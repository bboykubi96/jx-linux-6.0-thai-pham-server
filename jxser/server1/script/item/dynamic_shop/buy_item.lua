-- script viet hoa By http://tranhba.com  kh�ch h�ng b�ng kh�ch h�ng b�ng mua x� l� 
Include("\\script\\lib\\common.lua");


local tbProcessRequest = 
{ 

}; 



-- script viet hoa By http://tranhba.com  kh�ch h�ng b�ng mua 
function BuyItem(nShopIdx, nSelItemIndex, nCurrencyType, nScale) 

local tbProcesser = %tbProcessRequest[nShopIdx]; 
if (tbProcesser == nil) then 
print("Error: DynamicShop Client BuyItem Process!"); 
return 
end 

-- script viet hoa By http://tranhba.com  giao ph� x� l� h�m s� x� l� 
DynamicExecute(tbProcesser[1], tbProcesser[2], PlayerIndex, nShopIdx, nSelItemIndex, nCurrencyType, nScale); 
end 
