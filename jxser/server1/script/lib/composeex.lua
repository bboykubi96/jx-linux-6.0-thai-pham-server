-- script viet hoa By http://tranhba.com  v« UI giíi mÆt ®Ých hîp thµnh lo¹i 
-- script viet hoa By http://tranhba.com  th«ng qua ®iÒu dông tbActivityCompose:GetMaterialList(tbMaterial) tù ®éng sinh ra hîp thµnh tµi liÖu tin tøc 
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


Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\baseclass.lua")
Include("\\script\\lib\\string.lua")


INVENTORY_ROOM = {} 

INVENTORY_ROOM.room_equipment = 0 -- script viet hoa By http://tranhba.com  trang bÞ lan 
INVENTORY_ROOM.room_repositor = 1 -- script viet hoa By http://tranhba.com  tr÷ vËt r­¬ng 
INVENTORY_ROOM.room_trade = 2 -- script viet hoa By http://tranhba.com  giao dÞch lan 
INVENTORY_ROOM.room_tradeback = 3 -- script viet hoa By http://tranhba.com  giao dÞch trong qu¸ tr×nh trang bÞ lan ®Ých bÞ ph©n 
INVENTORY_ROOM.room_trade1 = 4 -- script viet hoa By http://tranhba.com  giao dÞch trong qu¸ tr×nh ®èi ph­¬ng giao dÞch lan 
INVENTORY_ROOM.room_immediacy = 5 -- script viet hoa By http://tranhba.com  kho¸i tiÖp vËt phÈm 
INVENTORY_ROOM.room_beset = 6 -- script viet hoa By http://tranhba.com  v©y quanh 
INVENTORY_ROOM.room_ext1 = 7 -- script viet hoa By http://tranhba.com  ph¸t triÓn r­¬ng 1 
INVENTORY_ROOM.room_ext2 = 8 -- script viet hoa By http://tranhba.com  ph¸t triÓn r­¬ng 2 
INVENTORY_ROOM.room_ext3 = 9 -- script viet hoa By http://tranhba.com  ph¸t triÓn r­¬ng 3 
INVENTORY_ROOM.room_giveitem = 10 -- script viet hoa By http://tranhba.com  kh¸ch hµng b­ng cho giíi mÆt 
INVENTORY_ROOM.room_distill = 11 -- script viet hoa By http://tranhba.com  qu¸ng th¹ch lÊy ra giíi mÆt 
INVENTORY_ROOM.room_enchase = 12 -- script viet hoa By http://tranhba.com  v©y quanh giíi mÆt 
INVENTORY_ROOM.room_atlas = 13 -- script viet hoa By http://tranhba.com  hoµng kim ®å phæ 
INVENTORY_ROOM.room_partnerbag = 14 -- script viet hoa By http://tranhba.com  ®ång b¹n tói ®eo l­ng lan 
INVENTORY_ROOM.room_num = 15 -- script viet hoa By http://tranhba.com  kh«ng gian sè l­îng 




tbActivityCompose = tbBaseClass:new() 


-- script viet hoa By http://tranhba.com  chøc n¨ng : míi b¾t ®Çu hãa hîp thµnh lo¹i 
-- script viet hoa By http://tranhba.com  tham sæ # lo¹i tªn # ph¶i cïng ng­¬i dïng thay ®æi l­îng tªn nhÊt trÝ , h¬n n÷a lµ toµn côc ®Ých # , hîp thµnh c«ng thøc , ngµy chÝ tùa ®Ò 
-- script viet hoa By http://tranhba.com  v« 
function tbActivityCompose:_init(tbFormula, szLogTitle, nRoomType) 


self.tbFormula = tbFormula 
self.nRoomType = nRoomType or INVENTORY_ROOM.room_equipment 
self.szLogTitle = szLogTitle or " cam chÞu hîp thµnh " 

end 


function tbActivityCompose:UseGiveUI() 

self.nRoomType = nRoomType or INVENTORY_ROOM.room_giveitem 


end 

-- script viet hoa By http://tranhba.com  chøc n¨ng # c¨n cø tµi liÖu nãi râ biÓu kiÓm tra trªn ng­êi tµi liÖu t×nh huèng 
-- script viet hoa By http://tranhba.com  tham sæ # tµi liÖu nãi râ biÓu 
-- script viet hoa By http://tranhba.com  trë vÒ # cã hay kh«ng hoµn toµn thÊt xøng (1/0) , trªn ng­êi c¸ ®Õm t×nh huèng , lín nhÊt hîp thµnh c¸ ®Õm t×nh huèng 
function tbActivityCompose:CheckMaterial(tbMaterial, nComposeCount) 
local i 
local flag = 1 
local tbCount = {} 
local tbMaxSetCount = {} 
nComposeCount = nComposeCount or 1 
local tbRoomItems = self:GetRoomItems(self.nRoomType) 
for i=1,getn(tbMaterial) do 
local tbItem = tbMaterial[i] 
if tbItem.tbProp then 
tbItem.nCount = tbItem.nCount or 1 
local nItemNeedCount = tbItem.nCount * nComposeCount 
if nItemNeedCount > 0 then 
local tbProp = tbItem.tbProp 
tbProp[4] = tbProp[4] or -1 
local nCurCount = self:CalcItemCount(tbRoomItems, tbItem) 
tbCount[i] = nCurCount 
tbMaxSetCount[i] = floor(nCurCount / nItemNeedCount) 
if nCurCount < nItemNeedCount then 
flag = 0; 
end 
end 
elseif tbItem.nJxb then 
local nCash = GetCash() 
tbCount[i] = nCash 
local nNeedJxb = tbItem.nJxb * tbItem.nCount * nComposeCount 
tbMaxSetCount[i] = floor(nCash / nNeedJxb) 
if nCash < nNeedJxb then 
flag = 0 
end 
elseif tbItem.nTaskId then 
local nTaskValue = GetTask(tbItem.nTaskId) 
tbCount[i] = nTaskValue 
local nNeedValue = tbItem.nCount * nComposeCount 
tbMaxSetCount[i] = floor(nTaskValue / nNeedValue) 
if nTaskValue < nNeedValue then 
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
function tbActivityCompose:CanMakeMaxCount(tbMaterial) 
local _, _, tbMaxCount = self:CheckMaterial(tbMaterial, 1) 
local nMinCount = tbMaxCount[1] 
for i=2, getn(tbMaxCount) do 
if nMinCount > tbMaxCount[i] then 
nMinCount = tbMaxCount[i] 
end 
end 
return nMinCount; 
end 

function tbActivityCompose:MakeItem(nItemIndex) 
local tbItem = {} 
tbItem.nQuality = GetItemQuality(nItemIndex) 
tbItem.tbProp = {} 

if tbItem.nQuality == 1 then 
tbItem.tbProp = {0, GetGlodEqIndex(nItemIndex)} 
elseif tbItem.nQuality == 4 then 
tbItem.tbProp = {0, GetPlatinaEquipIndex(nItemIndex)} 
else 
local nG,nD,nP,nL,nS, nLuk = GetItemProp(nItemIndex) 
tbItem.tbProp = {nG,nD,nP,nL,nS, nLuk} 
end 
return tbItem 
end 

function tbActivityCompose:CheckItem(tbItem ,nItemIndex) 
if IsMyItem(nItemIndex) ~= 1 then 
return 
end 
local tbRecItem = self:MakeItem(nItemIndex) 
for k,v in tbItem do 
if k ~= "szName" and type(v) ~= "table" and v ~= -1 and tbRecItem[k] and v~= tbRecItem[k] then 
return 
elseif k == "tbProp" and type(v) == "table" then 
local tbProp = tbRecItem[k] 
for k1,v1 in v do 
if k1 ~= "n" and v1 ~= -1 and tbProp[k1] and v1~= tbProp[k1] then 
return 
end 
end 
end 
end 

for key, value in tbItem do 
if strfind(key, "Limit") and type(value) == "function" then 
if value(tbItem, nItemIndex) ~= 1 then 
return 
end 
end 
end 
return 1 
end 

function tbActivityCompose:GetRoomItems(nRoomType) 

local tbRoomItems = {} 
if nRoomType == INVENTORY_ROOM.room_giveitem then 
for i=1, 24 do 
local nItemIndex = GetGiveItemUnit(i) 
if nItemIndex and nItemIndex > 0 then 
tinsert(tbRoomItems, nItemIndex) 
end 
end 
else 
tbRoomItems = GetRoomItems(nRoomType) 
end 
return tbRoomItems 
end 

function tbActivityCompose:CalcItemCount(tbRoomItems, tbItem) 
local nTotalCount = 0 
for i=1, getn(tbRoomItems) do 
local nItemIndex = tbRoomItems[i] 
if nItemIndex and nItemIndex > 0 then 
local nCount = GetItemStackCount(nItemIndex) 
if self:CheckItem(tbItem ,nItemIndex) == 1 then 
				nTotalCount = nTotalCount + nCount
end 
end 
end 
return nTotalCount 
end 

function tbActivityCompose:ConsumeItem(tbRoomItems, nConsumeItemCount, tbItem) 


local nTotalCount = nConsumeItemCount 
for i=1, getn(tbRoomItems) do 
local nItemIndex = tbRoomItems[i] 
if nItemIndex > 0 then 
local nCount = GetItemStackCount(nItemIndex) 
if self:CheckItem(tbItem ,nItemIndex) == 1 then 

if nCount <= nTotalCount then 
if RemoveItemByIndex(nItemIndex) == 1 then 
nTotalCount = nTotalCount - nCount 
nIdx = nPrevIdx 
end 
else 
SetItemStackCount( nItemIndex, nCount - nTotalCount ); 
nTotalCount = 0; 
end 

if nTotalCount == 0 then 
return 1; 
end 
end 
end 
end 
return nil 
end 

-- script viet hoa By http://tranhba.com  chøc n¨ng # c¨n cø tµi liÖu nãi râ biÓu tiªu hao hÕt t­¬ng øng vËt phÈm 
-- script viet hoa By http://tranhba.com  tham sæ # tµi liÖu nãi râ biÓu 
-- script viet hoa By http://tranhba.com  trë vÒ # cã thµnh c«ng hay kh«ng (1/0) 
function tbActivityCompose:ConsumeMaterial(tbMaterial, nConsumeCount, szLogTitle) 
local i 
nConsumeCount = nConsumeCount or 1 
for i=1,getn(tbMaterial) do 
local tbItem = tbMaterial[i] 
if tbItem.tbProp then 
tbItem.nCount = tbItem.nCount or 1 
local nConsumeItemCount = tbItem.nCount * nConsumeCount 
if nConsumeItemCount > 0 then 
local tbProp = tbItem.tbProp 
local tbRoomItems = self:GetRoomItems(self.nRoomType) -- script viet hoa By http://tranhba.com  mçi lÇn còng lÇn n÷a lÊy ®­îc , ®Ó ngõa chØ cã biÕn hãa 
if self:ConsumeItem(tbRoomItems, nConsumeItemCount, tbItem) ~= 1 then 
return 0; 
end 
self:ConsumeLog(nConsumeItemCount.." "..tbItem.szName, szLogTitle) 
end 
elseif tbItem.nJxb then 
local nConsumeJxb = tbItem.nJxb * tbItem.nCount * nConsumeCount 
if Pay(nConsumeJxb) == 0 then 
return 0; 
else 
Msg2Player(format("CÇn <color=yellow>%d<color> l#ng", nConsumeJxb)) 
self:ConsumeLog("Jxb "..nConsumeCount.." * "..tbItem.nJxb * tbItem.nCount, szLogTitle) 
end 
elseif tbItem.nTaskId then 
local nConsumeValue = tbItem.nCount * nConsumeCount 
if GetTask(tbItem.nTaskId) < nConsumeValue then 
return 0; 
else 
SetTask(tbItem.nTaskId, GetTask(tbItem.nTaskId) - nConsumeValue) 
Msg2Player(format("ChÕ t¹o <color=yellow>%d <color>%s", nConsumeValue, tbItem.szName)) 
self:ConsumeLog("nTask "..nConsumeCount.." * "..tbItem.nCount, szLogTitle) 
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
function tbActivityCompose:GetMaterialList(tbMaterial) 
local szList = format("%-20s %s","VËt phÈm ","Sè l­îng ") 
local _, tbCount, tbMaxCount = self:CheckMaterial(tbMaterial, 1) 
local i; 
for i=1,getn(tbMaterial) do 
local tbItem = tbMaterial[i] 

local szColor = "<color=green>" 
if tbMaxCount[i] < 1 then 
szColor = "<color=red>" 
end 
if tbItem.nJxb then 
szList = format("%s<enter><color=yellow>%-20s<color> %s(%d/%d)<color>",szList,"Ng©n l­îng ", szColor, tbCount[i], tbMaterial[i].nJxb * tbMaterial[i].nCount) 
elseif tbItem.szName and tbItem.nCount then 
szList = format("%s<enter><color=yellow>%-20s<color> %s(%d/%d)<color>",szList,tbMaterial[i].szName, szColor, tbCount[i], tbMaterial[i].nCount) 
end 
end 
return szList 
end 


-- script viet hoa By http://tranhba.com  chøc n¨ng # c¨n cø c«ng thøc hîp thµnh vËt phÈm 
-- script viet hoa By http://tranhba.com  tham sæ # hîp thµnh c¸ ®Õm # sau nµy xö lý hµm sè # hµm sè ®Ých tham sæ # kh«ng chõng tham sæ # 
-- script viet hoa By http://tranhba.com  trë vÒ # cã thµnh c«ng hay kh«ng (1/0) 
function tbActivityCompose:Compose(nComposeCount) 


local tbMaterial = self.tbFormula.tbMaterial 
local tbProduct = self.tbFormula.tbProduct 

nComposeCount = nComposeCount or 1 


if type(self.tbFormula.pLimitFun) == "function" then 
if self.tbFormula:pLimitFun(nComposeCount) ~= 1 then 
return 0 
end 
end 

local nFreeItemCellLimit = self.tbFormula.nFreeItemCellLimit or 1 

nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount) 

if self.tbFormula.nWidth ~= 0 and self.tbFormula.nHeight ~= 0 and CountFreeRoomByWH(self.tbFormula.nWidth, self.tbFormula.nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then 
Say(format("V× b¶o ®¶m ®¹i hiÖp ®Ých tµi s¶n an toµn , xin/mêi l­u l¹i %d %dx%d trang bÞ ", nFreeItemCellLimit, self.tbFormula.nWidth, self.tbFormula.nHeight)) 
return 0 
end 

if self:CheckMaterial(tbMaterial, nComposeCount) ~=1 then 
local szMsg = self.tbFormula.szFailMsg or "<color=red> ®¹i hiÖp mang ®Ých nguyªn liÖu kh«ng ®ñ !<color>" 
Talk(1, "", szMsg) 
return 0; 
end 

if self:ConsumeMaterial(tbMaterial, nComposeCount, self.szLogTitle) ~= 1 then 
-- script viet hoa By http://tranhba.com Say(" luyÖn chÕ thÊt b¹i , bé phËn vËt phÈm mÊt . ",0) 
Msg2Player("ChÕ t¹o thÊt b¹i , mÊt ®i mét Ýt nguyªn liÖu .") 
return 0; 
end 
if type(tbProduct) == "table" then 
tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount) 
end 

if type(self.tbFormula.pProductFun) == "function" then 

self.tbFormula:pProductFun(nComposeCount) 

end 
return 1; 
end 

-- script viet hoa By http://tranhba.com  chøc n¨ng # sinh ra hîp thµnh GiveUI 
-- script viet hoa By http://tranhba.com  tham sæ # cã hay kh«ng nhãm l­îng hîp thµnh 
-- script viet hoa By http://tranhba.com  trë vÒ # v« 
function tbActivityCompose:ComposeGiveUI() 

local tbMaterial = self.tbFormula.tbMaterial 
local tbProduct = self.tbFormula.tbProduct 

local szTitle = self.tbFormula.szComposeTitle or format("#i %s", tbProduct.szName) 
local szContent = self:GetMaterialList(tbMaterial) 

szContent = gsub(szContent, "<color=?%w*>", "") 

	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")

g_GiveItemUI(szTitle, szContent, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem) 
end 

function tbActivityCompose:GiveUIOk(nCount) 
if nCount < getn(self.tbFormula.tbMaterial) then 
return Talk(1, "", self.tbFormula.szFailMsg or "<color=red> ®¹i hiÖp së mang nguyªn liÖu kh«ng ®ñ !<color>") 
end 

self:Compose(1) 

end 
-- script viet hoa By http://tranhba.com  chøc n¨ng # sinh ra hîp thµnh ®èi tho¹i 
-- script viet hoa By http://tranhba.com  tham sæ # hîp thµnh c«ng thøc , ®èi tho¹i ®Ých trë vÒ ®iÒu hµm sè ( tù phï chuçi c¸ch thøc ) , trë vÒ ®iÒu hµm sè tham sæ # kh«ng thÓ cã table# 
-- script viet hoa By http://tranhba.com  trë vÒ # v« 
function tbActivityCompose:ComposeDailog(bIsAskNumber,nMaxCount) 
-- script viet hoa By http://tranhba.com  nÕu nh­ ®­a vµo v× v« Ých , sö dông cam chÞu trÞ gi¸ 

if self.nRoomType == INVENTORY_ROOM.room_giveitem then 
return self:ComposeGiveUI() 
end 
local tbMaterial = self.tbFormula.tbMaterial 
local tbProduct = self.tbFormula.tbProduct 

local szComposeTitle = self.tbFormula.szComposeTitle or format("#i %s", tbProduct.szName) 

local szMsg = format("%s yªu cÇu : <enter>%s", szComposeTitle ,self:GetMaterialList(tbMaterial)) 
local tbOpt = {} 
if bIsAskNumber == 1 then 
tbOpt[1] = {"X¸c nhËn ", self.AskNumber, {self, nMaxCount}} 
else 
tbOpt[1] = {"X¸c nhËn ", self.Compose, {self, 1}} 
end 
tbOpt[2] = {"Bu«ng tha cho "} 
CreateNewSayEx(szMsg, tbOpt) 
end 


-- script viet hoa By http://tranhba.com  chøc n¨ng # viÕt tiªu hao nhËt ký 
-- script viet hoa By http://tranhba.com  tham sæ # tiªu hao hÕt ®Ých vËt phÈm tªn # bao hµm c¸ ®Õm , string# , ngµy chÝ tùa ®Ò 
-- script viet hoa By http://tranhba.com  trë vÒ # v« 
function tbActivityCompose:ConsumeLog(szItemName, szLogTitle) 
WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\t consume %s.",szLogTitle,GetLocalDate("%Y-%m-%d %H:%M"), GetAccount(), GetName(), szItemName)) 
end 


function tbActivityCompose:AskNumber(nMaxCount) 
if nMaxCount then 
nMaxCount = min(self:CanMakeMaxCount(self.tbFormula.tbMaterial),nMaxCount) 
else 
nMaxCount = self:CanMakeMaxCount(self.tbFormula.tbMaterial) 
end 

if nMaxCount < 1 then 
local szMsg = self.tbFormula.szFailMsg or "<color=red> ®¹i hiÖp mang ®Ých nguyªn liÖu kh«ng ®ñ !<color>" 
Talk(1, "", szMsg) 
else 

g_AskClientNumberEx(1, nMaxCount,"Xin/mêi ®­a vµo d·y sè ", {self.ComposeCountComfirm, {self,nMaxCount}} ) 
end 
end 

function tbActivityCompose:ComposeCountComfirm(nMaxCount, nCount) 
-- script viet hoa By http://tranhba.com  print("nCount = " .. nCount) 
-- script viet hoa By http://tranhba.com  print("nMaxCount = " .. nMaxCount) 
if nCount > nMaxCount then 
Say(format("Ng­¬i thua vµo ®Ých hîp thµnh sè l­îng v­ît qua <color=red>%d<color>, xin/mêi n÷a ®­a vµo ", nMaxCount)) 
return 0 
end 

local nMaxCount = self:CanMakeMaxCount(self.tbFormula.tbMaterial) 
if nCount > nMaxCount then 
nCount = nMaxCount 
end 

if self:Compose(nCount) == 0 then 
return 0; 
end 


return 1; 
end 




function tbActivityCompose:GetProductName() 
return self.tbFormula.tbProduct.szName 
end 

function tbActivityCompose:GetFormulaByString() 
local tbMaterial = self.tbFormula.tbMaterial 
local szMsg = nil 
for i=1, getn(tbMaterial) do 
local szName 
if tbMaterial[i].nJxb then 
szName = transferDigit2CnNum(tbMaterial[i].nJxb).." l#ng" 
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
