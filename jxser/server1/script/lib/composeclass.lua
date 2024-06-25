-- script viet hoa By http://tranhba.com  v« UI giíi mÆt ®Ých hîp thµnh lo¹i 
-- script viet hoa By http://tranhba.com  th«ng qua ®iÒu dông tbComposeClass:GetMaterialList(tbMaterial) tù ®éng sinh ra hîp thµnh tµi liÖu tin tøc 
-- script viet hoa By http://tranhba.com  c¸ch thøc # vËt phÈm tªn # vËt phÈm c¸ ®Õm / nhu cÇu c¸ ®Õm # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ®iÒu dông tbComposeClass:Compose(tbFormula, szLogTitle, pFun, ...) 
-- script viet hoa By http://tranhba.com  lµ ®­îc hîp thµnh , thÊt b¹i trë vÒ 0 , thµnh c«ng trë vÒ 1 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com tbFormula c¸ch thøc 
-- script viet hoa By http://tranhba.com tbFormula = {tbMaterial , tbProduct} 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com tbMaterial viÕt ph¸p cïng \script\lib\awardtemplet.lua ®Ých tbItem , tr­íc m¾t chØ cã thÓ ®iÒn ®¹o cô , cïng tiÒn 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com tbProduct viÕt ph¸p hoµn toµn cïng \script\lib\awardtemplet.lua cho phÐp v× nil 





Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\baseclass.lua")
Include("\\script\\lib\\string.lua")
if not tbComposeClass then 

tbComposeClass = tbBaseClass:new() 


-- script viet hoa By http://tranhba.com  chøc n¨ng : míi b¾t ®Çu hãa hîp thµnh lo¹i 
-- script viet hoa By http://tranhba.com  tham sæ # lo¹i tªn # ph¶i cïng ng­¬i dïng thay ®æi l­îng tªn nhÊt trÝ , h¬n n÷a lµ toµn côc ®Ých # , hîp thµnh c«ng thøc , ngµy chÝ tùa ®Ò 
-- script viet hoa By http://tranhba.com  v« 
function tbComposeClass:_init(szClassName, tbFormula, szLogTitle) 
szClassName = szClassName or "tbComposeClass" 

self.szClassName = szClassName 
self.tbFormula = tbFormula 

self.szLogTitle = szLogTitle or " cam chÞu hîp thµnh " 
setglobal(szClassName, self) 

self:MakeAskNumberFunction() 

end 

-- script viet hoa By http://tranhba.com  chøc n¨ng # c¨n cø tµi liÖu nãi râ biÓu kiÓm tra trªn ng­êi tµi liÖu t×nh huèng 
-- script viet hoa By http://tranhba.com  tham sæ # tµi liÖu nãi râ biÓu 
-- script viet hoa By http://tranhba.com  trë vÒ # cã hay kh«ng hoµn toµn thÊt xøng (1/0) , trªn ng­êi c¸ ®Õm t×nh huèng , lín nhÊt hîp thµnh c¸ ®Õm t×nh huèng 
function tbComposeClass:CheckMaterial(tbMaterial, nComposeCount) 
local i 
local flag = 1 
local tbCount = {} 
local tbMaxSetCount = {} 
nComposeCount = nComposeCount or 1 

for i=1,getn(tbMaterial) do 
local tbItem = tbMaterial[i] 
if tbItem.tbProp then 
tbItem.nCount = tbItem.nCount or 1 
local nItemNeedCount = tbItem.nCount * nComposeCount 
if nItemNeedCount > 0 then 
local tbProp = tbItem.tbProp 
tbProp[4] = tbProp[4] or -1 
local nCurCount = CalcEquiproomItemCount(tbProp[1], tbProp[2], tbProp[3], tbProp[4]) 
tbCount[i] = nCurCount 
tbMaxSetCount[i] = floor(nCurCount / nItemNeedCount) 
if nCurCount < nItemNeedCount then 
flag = 0; 
end 
end 
elseif tbItem.nJxb then 
local nCash = GetCash() 
tbCount[i] = nCash 
local nNeedJxb = tbItem.nJxb * nComposeCount 
tbMaxSetCount[i] = floor(nCash / nNeedJxb) 
if nCash < nNeedJxb then 
flag = 0 
end 
elseif tbItem.pGetCount then 
local nCurCount = tbItem:pGetCount() 
tbItem.nCount = tbItem.nCount or 1 
local nNeedCount = tbItem.nCount * nComposeCount 
tbCount[i] = nCurCount 
tbMaxSetCount[i] = floor(nCurCount / nNeedCount) 
if nCurCount < nNeedCount then 
flag = 0; 
end 
end 
end 
return flag, tbCount, tbMaxSetCount; 
end 

-- script viet hoa By http://tranhba.com  chøc n¨ng # c¨n cø tµi liÖu nãi râ biÓu ph¸n ®o¸n nhiÒu nhÊt cã thÓ hîp thµnh mÊy 
-- script viet hoa By http://tranhba.com  tham sæ # tµi liÖu nãi râ biÓu 
-- script viet hoa By http://tranhba.com  trë vÒ # nhiÒu nhÊt hîp thµnh c¸ ®Õm 
function tbComposeClass:CanMakeMaxCount(tbMaterial) 
local _, _, tbMaxCount = self:CheckMaterial(tbMaterial, 1) 
local nMinCount = tbMaxCount[1] 
for i=2, getn(tbMaxCount) do 
if nMinCount > tbMaxCount[i] then 
nMinCount = tbMaxCount[i] 
end 
end 
return nMinCount; 
end 

-- script viet hoa By http://tranhba.com  chøc n¨ng # c¨n cø tµi liÖu nãi râ biÓu tiªu hao hÕt t­¬ng øng vËt phÈm 
-- script viet hoa By http://tranhba.com  tham sæ # tµi liÖu nãi râ biÓu 
-- script viet hoa By http://tranhba.com  trë vÒ # cã thµnh c«ng hay kh«ng (1/0) 
function tbComposeClass:ConsumeMaterial(tbMaterial, nConsumeCount, szLogTitle) 
local i 
nConsumeCount = nConsumeCount or 1 
for i=1,getn(tbMaterial) do 
local tbItem = tbMaterial[i] 
if tbItem.tbProp then 
tbItem.nCount = tbItem.nCount or 1 
local nConsumeItemCount = tbItem.nCount * nConsumeCount 
if nConsumeItemCount > 0 then 
local tbProp = tbItem.tbProp 
tbProp[4] = tbProp[4] or -1 
-- script viet hoa By http://tranhba.com print(tbProp[1], tbProp[2], tbProp[3], tbProp[4]) 
if ConsumeEquiproomItem(nConsumeItemCount, tbProp[1], tbProp[2], tbProp[3], tbProp[4]) ~= 1 then 
return 0; 
end 
self:ConsumeLog(nConsumeItemCount.." "..tbItem.szName, szLogTitle) 
end 
elseif tbItem.nJxb then 
local nConsumeJxb = tbItem.nJxb * nConsumeCount 
if Pay(nConsumeJxb) == 0 then 
return 0; 
else 
Msg2Player(format("Tiªu tèn  <color=yellow>%d<color> l­îng ", nConsumeJxb)) 
self:ConsumeLog("Jxb "..nConsumeCount.." * "..tbItem.nJxb, szLogTitle) 
end 
elseif tbItem.pConsume then 
local nConsumeCount = tbItem.nCount * nConsumeCount 
if tbItem:pConsume(nConsumeCount) ~= 1 then 
return 0; 
end 
self:ConsumeLog(nConsumeCount.." "..tbItem.szName, szLogTitle) 
end 
end 
return 1; 
end 


-- script viet hoa By http://tranhba.com  chøc n¨ng # c¨n cø tµi liÖu nãi râ biÓu trë vÒ tµi liÖu t×nh huèng tin tøc 
-- script viet hoa By http://tranhba.com  tham sæ # tµi liÖu nãi râ biÓu 
-- script viet hoa By http://tranhba.com  trë vÒ # t×nh huèng tin tøc tù phï chuçi 
function tbComposeClass:GetMaterialList(tbMaterial) 
local szList = format("%-20s %s","VËt phÈm ","Sè l­îng ") 
local _, tbCount, tbMaxCount = self:CheckMaterial(tbMaterial, 1) 
local i; 
for i=1,getn(tbMaterial) do 

local szColor = "<color=green>" 
if tbMaxCount[i] < 1 then 
szColor = "<color=red>" 
end 
local tbItem = tbMaterial[i] 
if tbItem.nJxb then 
szList = format("%s<enter><color=yellow>%-20s<color> %s(%d/%d)<color>",szList,"Ng©n l­îng ", szColor, tbCount[i], tbMaterial[i].nJxb) 
elseif tbItem.szName and tbItem.nCount then 
szList = format("%s<enter><color=yellow>%-20s<color> %s(%d/%d)<color>",szList,tbMaterial[i].szName, szColor, tbCount[i], tbMaterial[i].nCount) 
end 
end 
return szList 
end 



-- script viet hoa By http://tranhba.com  chøc n¨ng # c¨n cø c«ng thøc hîp thµnh vËt phÈm 
-- script viet hoa By http://tranhba.com  tham sæ # hîp thµnh c«ng thøc #table## ngµy chÝ tùa ®Ò #string## sau nµy xö lý hµm sè # hµm sè ®Ých tham sæ # kh«ng chõng tham sæ # 
-- script viet hoa By http://tranhba.com  trë vÒ # cã thµnh c«ng hay kh«ng (1/0) 
function tbComposeClass:Compose(tbFormula, szLogTitle, nComposeCount, pFun, ...) 
-- script viet hoa By http://tranhba.com  nÕu nh­ ®­a vµo v× v« Ých , sö dông cam chÞu trÞ gi¸ 
tbFormula = tbFormula or self.tbFormula 
szLogTitle = szLogTitle or self.szLogTitle 


local tbMaterial = tbFormula.tbMaterial 
local tbProduct = tbFormula.tbProduct 

nComposeCount = nComposeCount or 1 


if tbFormula.pLimitFun then 
if tbFormula:pLimitFun(nComposeCount) ~= 1 then 
return 0 
end 
end 

local nFreeItemCellLimit = tbFormula.nFreeItemCellLimit or 1 

nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount) 

if CalcFreeItemCellCount() < nFreeItemCellLimit then 
Say(format("V× b¶o ®¶m tµi s¶n an toµn , xin/mêi b¶o ®¶m trang bÞ cßn l¹i %d chç trèng .", nFreeItemCellLimit)) 
return 0 
end 


if self:CheckMaterial(tbMaterial, nComposeCount) ~=1 then 
local szMsg = tbFormula.szFailMsg or "<color=red> ®¹i hiÖp mang ®Ých nguyªn liÖu kh«ng ®ñ !<color>" 
Talk(1, "", szMsg) 
return 0; 
end 

if self:ConsumeMaterial(tbMaterial, nComposeCount, szLogTitle) ~= 1 then 
-- script viet hoa By http://tranhba.com Say(" luyÖn chÕ thÊt b¹i , bé phËn vËt phÈm mÊt . ",0) 
Msg2Player("ChÕ t¹o thÊt b¹i , mÊt ®i mét Ýt nguyªn liÖu .") 
return 0; 
end 
if type(tbProduct) == "table" then 
tbAwardTemplet:GiveAwardByList(tbProduct, szLogTitle, nComposeCount) 
end 

if type(pFun) == "function" then 
call(pFun, arg) 
end 
return 1; 
end 

-- script viet hoa By http://tranhba.com  chøc n¨ng # sinh ra hîp thµnh ®èi tho¹i 
-- script viet hoa By http://tranhba.com  tham sæ # hîp thµnh c«ng thøc , ®èi tho¹i ®Ých trë vÒ ®iÒu hµm sè ( tù phï chuçi c¸ch thøc ) , trë vÒ ®iÒu hµm sè tham sæ # kh«ng thÓ cã table# 
-- script viet hoa By http://tranhba.com  trë vÒ # v« 
function tbComposeClass:ComposeDailog(tbFormula, szFunctionFormat, bIsAskNumber) 
-- script viet hoa By http://tranhba.com  nÕu nh­ ®­a vµo v× v« Ých , sö dông cam chÞu trÞ gi¸ 
tbFormula = tbFormula or self.tbFormula 
local szDefaultFunctionFormat = format("#%s:Compose(nil,nil, 1)", self.szClassName) 
if bIsAskNumber then 
szDefaultFunctionFormat = format("#%s:AskNumber()", self.szClassName) 
end 
szFunctionFormat = szFunctionFormat or szDefaultFunctionFormat 
local tbMaterial = tbFormula.tbMaterial 
local tbProduct = tbFormula.tbProduct 
local szComposeTitle = tbFormula.szComposeTitle or format("§æi lÊy %s", tbProduct.szName) 
local szMsg = format("<dec>%s cÇn : <enter>%s", szComposeTitle ,self:GetMaterialList(tbMaterial)) 
local tbSay = 
{ 
szMsg, 
format("X¸c nhËn /%s", szFunctionFormat ), 
" Ta nghÜ l¹i chót ®· /OnCancel" 
} 
CreateTaskSay(tbSay) 
end 


-- script viet hoa By http://tranhba.com  chøc n¨ng # viÕt tiªu hao nhËt ký 
-- script viet hoa By http://tranhba.com  tham sæ # tiªu hao hÕt ®Ých vËt phÈm tªn # bao hµm c¸ ®Õm , string# , ngµy chÝ tùa ®Ò 
-- script viet hoa By http://tranhba.com  trë vÒ # v« 
function tbComposeClass:ConsumeLog(szItemName, szLogTitle) 
WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\t consume %s.",szLogTitle,GetLocalDate("%Y-%m-%d %H:%M"), GetAccount(), GetName(), szItemName)) 
end 


function tbComposeClass:AskNumber() 
local nMaxCount = self:CanMakeMaxCount(self.tbFormula.tbMaterial) 
if nMaxCount < 1 then 
local szMsg = self.tbFormula.szFailMsg or "<color=red> ®¹i hiÖp mang ®Ých nguyªn liÖu kh«ng ®ñ !<color>" 
Talk(1, "", szMsg) 
else 
AskClientForNumber(format("%s__AskNumberCallBack", self.szClassName), 1, nMaxCount,"Xin/mêi ®­a vµo d·y sè "); 
end 
end 

function tbComposeClass:ComposeCountComfirm(nCount) 

local nMaxCount = self:CanMakeMaxCount(self.tbFormula.tbMaterial) 
if nCount > nMaxCount then 
nCount = nMaxCount 
end 

-- script viet hoa By http://tranhba.com  local nFreeItemCellLimit = self.tbFormula.nFreeItemCellLimit or 1 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  nFreeItemCellLimit = ceil(nFreeItemCellLimit * nCount) 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if CalcFreeItemCellCount() < nFreeItemCellLimit then 
-- script viet hoa By http://tranhba.com  return Say(format("V× ngµi ®Ých tµi vËt an toµn , xin/mêi b¶o ®¶m cã Ýt nhÊt %d c¸ tói ®eo l­ng kh«ng gian ", nFreeItemCellLimit)) 
-- script viet hoa By http://tranhba.com  end 

if self:Compose(nil, nil, nCount) == 0 then 
return 0; 
end 


return 1; 
end 

function tbComposeClass:MakeAskNumberFunction() 
local szFunctionName = format("%s__AskNumberCallBack", self.szClassName) 
local szMsg = format("function %s(nCount) local self = getglobal([[%s]]) return self:ComposeCountComfirm(nCount) end", 
szFunctionName, self.szClassName) 
dostring(szMsg) 
end 


function tbComposeClass:GetProductName(tbFormula) 
tbFormula = tbFormula or self.tbFormula 
local tbProduct = tbFormula.tbProduct 
return tbProduct.szName 
end 

function tbComposeClass:GetFormulaByString(tbFormula) 
tbFormula = tbFormula or self.tbFormula 
local tbMaterial = tbFormula.tbMaterial 
local szMsg = nil 
for i=1, getn(tbMaterial) do 
local szName 
if tbMaterial[i].nJxb then 
szName = transferDigit2CnNum(tbMaterial[i].nJxb).." hai " 
else 
szName = tbMaterial[i].szName.."X"..(tbMaterial[i].nCount or 1) 
end 

if not szMsg then 
szMsg = szName 
else 
			szMsg = szMsg.."+"..szName	
end 
end 
return szMsg 
end 


tbComposeClass:_init() 

end
