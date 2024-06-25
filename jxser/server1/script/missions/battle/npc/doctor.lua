Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\common.lua")

tbGoodsList = 
{ 
{ szName=" ��c bi�t h�nh qu�n �an ", nJxb = 0, tbItem = { tbProp={6,1,1957,1,0,0},}}, 
{ szName=" trao ��i thi�n ��a c�m nang ", nJxb = 500000, tbItem = { tbProp={6,1,1781,1,0,0}, tbParam={60},}}, 
{ szName=" h�i thi�n t�i t�o �an ", nJxb = 10000, tbItem = { tbProp={1,8,0,4,0,0},}}, 
} 

-- script viet hoa By http://tranhba.com  quan ti�p li�u 
function main() 
local szTitle = " ng��i c�n g� <enter>"..format("%s%s<enter>", strfill_left("V�t ph�m ", 30), strfill_left("T�ng gi�i # hai #", 20)) 
local tbOpt = {} 
for i=1, getn(tbGoodsList) do 

local pGoods = tbGoodsList[i] 
local pOpt = {} 
szTitle = szTitle..format("%s%s<enter>", strfill_left(pGoods.szName, 30), strfill_left(pGoods.nJxb, 20)) 
pOpt = {pGoods.szName, _buy_ask_number, {pGoods}} 
tinsert(tbOpt, pOpt) 
end 
tinsert(tbOpt, {"Kh�ng c�n # c�m �n !"}) 
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

g_AskClientNumberEx(1, nMaxCount,"Xin/m�i ��a v�o d�y s� ", {_buy_call_back, {pGoods}}) 
end 

function _buy_call_back(pGoods, nCount) 
if CalcFreeItemCellCount() < nCount then 
return Talk(1, "", format(" �t nh�t ph�i c� <color=yellow>%d<color> t�i �eo l�ng v� �ch c�ch ", nCount)) 
end 
if nCount <= 0 then 
return 
end 

local nMoney = nCount * pGoods.nJxb 
if GetCash() < nMoney then 
return Talk(1, "", format("��i hi�p trong t�i �eo l�ng ��ch ng�n l��ng kh�ng �� mua %d c� %s", nCount, pGoods.szName)) 
end 
if nMoney == 0 or Pay(nMoney) == 1 then 
tbAwardTemplet:Give(pGoods.tbItem, nCount, {"TRIP", "BUY"}) 
end 
end
