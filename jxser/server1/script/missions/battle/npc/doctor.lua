Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\common.lua")

tbGoodsList = 
{ 
{ szName=" ®Æc biÖt hµnh qu©n ®an ", nJxb = 0, tbItem = { tbProp={6,1,1957,1,0,0},}}, 
{ szName=" trao ®æi thiªn ®Þa cÈm nang ", nJxb = 500000, tbItem = { tbProp={6,1,1781,1,0,0}, tbParam={60},}}, 
{ szName=" håi thiªn t¸i t¹o ®an ", nJxb = 10000, tbItem = { tbProp={1,8,0,4,0,0},}}, 
} 

-- script viet hoa By http://tranhba.com  quan tiÕp liÖu 
function main() 
local szTitle = " ng­¬i cÇn g× <enter>"..format("%s%s<enter>", strfill_left("VËt phÈm ", 30), strfill_left("Tæng giíi # hai #", 20)) 
local tbOpt = {} 
for i=1, getn(tbGoodsList) do 

local pGoods = tbGoodsList[i] 
local pOpt = {} 
szTitle = szTitle..format("%s%s<enter>", strfill_left(pGoods.szName, 30), strfill_left(pGoods.nJxb, 20)) 
pOpt = {pGoods.szName, _buy_ask_number, {pGoods}} 
tinsert(tbOpt, pOpt) 
end 
tinsert(tbOpt, {"Kh«ng cÇn # c¸m ¬n !"}) 
CreateNewSayEx(szTitle, tbOpt) 
end 

function _buy_ask_number(pGoods) 
local nMaxCount = CalcFreeItemCellCount() 
if pGoods.nJxb > 0 then 
local nCount = floor(GetCash() / pGoods.nJxb) 
if nMaxCount > nCount then 
nMaxCount = nCount 
end 
end 

g_AskClientNumberEx(1, nMaxCount,"Xin/mêi ®­a vµo d·y sè ", {_buy_call_back, {pGoods}}) 
end 

function _buy_call_back(pGoods, nCount) 
if CalcFreeItemCellCount() < nCount then 
return Talk(1, "", format(" Ýt nhÊt ph¶i cã <color=yellow>%d<color> tói ®eo l­ng v« Ých c¸ch ", nCount)) 
end 
if nCount <= 0 then 
return 
end 

local nMoney = nCount * pGoods.nJxb 
if GetCash() < nMoney then 
return Talk(1, "", format("§¹i hiÖp trong tói ®eo l­ng ®Ých ng©n l­îng kh«ng ®ñ mua %d c¸ %s", nCount, pGoods.szName)) 
end 
if nMoney == 0 or Pay(nMoney) == 1 then 
tbAwardTemplet:Give(pGoods.tbItem, nCount, {"TRIP", "BUY"}) 
end 
end
