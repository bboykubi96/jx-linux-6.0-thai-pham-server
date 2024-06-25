-- script viet hoa By http://tranhba.com  kh∏ch hµng b≠ng hi÷p nghﬁ xˆ l˝ 
Include("\\script\\lib\\common.lua");


local tbProcessRequest = 
{ 

}; 


-- script viet hoa By http://tranhba.com  c u tπo 
function NewDynamicShopItemInfo(Protoid, nDynamicShopID, nRequestPage) 
local tb = {}; 
tb.nPlayerIndex = PlayerIndex; 
tb.nProtoid = Protoid; 
tb.nDynamicShopID = nDynamicShopID; 
tb.nRequestPage = nRequestPage; 
tb.nItemCount = 0; 
return tb; 
end 

-- script viet hoa By http://tranhba.com  sinh thµnh mÌi vÀt ph»m toµn bÈ sˆ dÙng cam chﬁu trﬁ gi∏ 
function CreateNewDynamicShopItem(tb) 
	tb.nItemCount = tb.nItemCount + 1;
tb[tb.nItemCount] = 
{ 
Index = 0, -- script viet hoa By http://tranhba.com  th≠¨ng ph»m duy nh t ID 
Price = 0, -- script viet hoa By http://tranhba.com  gi∏ c∂ 
G = -1, 
D = -1, 
P = -1, 
Level = 1, 
Series = 0, 
Luck = 0, 
}; 
return tb.nItemCount; 
end 

-- script viet hoa By http://tranhba.com  ph∏t trÎ v“ sË li÷u cho kh∏ch hµng b≠ng 
function SendDynamicShopItem2Client(tb) 
local nResultHandle = OB_Create(); 
OB_PushInt(nResultHandle, tb.nDynamicShopID - 1); 
OB_PushInt(nResultHandle, tb.nRequestPage); 
OB_PushInt(nResultHandle, tb.nItemCount); 

for i = 1,tb.nItemCount do 
OB_PushInt(nResultHandle, tb[i].Index); 
OB_PushInt(nResultHandle, tb[i].Price); 
OB_PushInt(nResultHandle, tb[i].G); 
OB_PushInt(nResultHandle, tb[i].D); 
OB_PushInt(nResultHandle, tb[i].P); 
OB_PushInt(nResultHandle, tb[i].Level); 
OB_PushInt(nResultHandle, tb[i].Series); 
OB_PushInt(nResultHandle, tb[i].Luck); 
end 

SendScriptData(tb.nProtoid, nResultHandle); 
OB_Release(nResultHandle); 
end 

-- script viet hoa By http://tranhba.com  th™m vµo vÀt ph»m 
function AddDynamicShopItem(tb, G, D, P, Price, Index) 
local nItemIndex = CreateNewDynamicShopItem(tb); 
tb[nItemIndex].G = G; 
tb[nItemIndex].D = D; 
tb[nItemIndex].P = P; 
tb[nItemIndex].Price = Price; 
tb[nItemIndex].Index = Index; 
return nItemIndex; 
end 


-- script viet hoa By http://tranhba.com  thÿnh c«u vÀt ph»m sË li÷u 
function RequestItemInfo(SenderPlayerIndex, Protoid, Handle) 

if Handle == 0 then 
return 
end 

local nOldIdx = PlayerIndex; 
PlayerIndex = SenderPlayerIndex; 

local nDynamicShopID = GetDynamicShopID(); 
local nRequestPage = OB_PopInt(Handle); 
local tbProcesser = %tbProcessRequest[nDynamicShopID]; 

if (nDynamicShopID <= 0 or type(nRequestPage) ~= "number" or tbProcesser == nil) then 
print("Error: DynamicShop Client Protocol Process!"); 
print(nDynamicShopID) 
print(type(nRequestPage)) 
print(tbProcesser) 
PlayerIndex = nOldIdx; 
return 
end 

-- script viet hoa By http://tranhba.com  giao ph„ xˆ l˝ hµm sË xˆ l˝ 
local tbItemInfo = NewDynamicShopItemInfo(Protoid, nDynamicShopID, nRequestPage); 
tbItemInfo = DynamicExecute(tbProcesser[1], tbProcesser[2], tbItemInfo); 
SendDynamicShopItem2Client(tbItemInfo); 

PlayerIndex = nOldIdx; 
end 
