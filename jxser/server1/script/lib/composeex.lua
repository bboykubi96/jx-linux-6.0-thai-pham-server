-- script viet hoa By http://tranhba.com  v� UI gi�i m�t ��ch h�p th�nh lo�i 
-- script viet hoa By http://tranhba.com  th�ng qua �i�u d�ng tbActivityCompose:GetMaterialList(tbMaterial) t� ��ng sinh ra h�p th�nh t�i li�u tin t�c 
-- script viet hoa By http://tranhba.com  c�ch th�c # v�t ph�m t�n # v�t ph�m c� ��m / nhu c�u c� ��m # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  �i�u d�ng tbComposeClass:Compose(tbFormula, szLogTitle, pFun, ...) 
-- script viet hoa By http://tranhba.com  l� ���c h�p th�nh , th�t b�i tr� v� 0 , th�nh c�ng tr� v� 1 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com tbFormula c�ch th�c 
-- script viet hoa By http://tranhba.com tbFormula = {tbMaterial , tbProduct} 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com tbMaterial vi�t ph�p c�ng \script\lib\awardtemplet.lua ��ch tbItem , tr��c m�t ch� c� th� �i�n ��o c� , c�ng ti�n 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com tbProduct vi�t ph�p ho�n to�n c�ng \script\lib\awardtemplet.lua cho ph�p v� nil 


Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\baseclass.lua")
Include("\\script\\lib\\string.lua")


INVENTORY_ROOM = {} 

INVENTORY_ROOM.room_equipment = 0 -- script viet hoa By http://tranhba.com  trang b� lan 
INVENTORY_ROOM.room_repositor = 1 -- script viet hoa By http://tranhba.com  tr� v�t r��ng 
INVENTORY_ROOM.room_trade = 2 -- script viet hoa By http://tranhba.com  giao d�ch lan 
INVENTORY_ROOM.room_tradeback = 3 -- script viet hoa By http://tranhba.com  giao d�ch trong qu� tr�nh trang b� lan ��ch b� ph�n 
INVENTORY_ROOM.room_trade1 = 4 -- script viet hoa By http://tranhba.com  giao d�ch trong qu� tr�nh ��i ph��ng giao d�ch lan 
INVENTORY_ROOM.room_immediacy = 5 -- script viet hoa By http://tranhba.com  kho�i ti�p v�t ph�m 
INVENTORY_ROOM.room_beset = 6 -- script viet hoa By http://tranhba.com  v�y quanh 
INVENTORY_ROOM.room_ext1 = 7 -- script viet hoa By http://tranhba.com  ph�t tri�n r��ng 1 
INVENTORY_ROOM.room_ext2 = 8 -- script viet hoa By http://tranhba.com  ph�t tri�n r��ng 2 
INVENTORY_ROOM.room_ext3 = 9 -- script viet hoa By http://tranhba.com  ph�t tri�n r��ng 3 
INVENTORY_ROOM.room_giveitem = 10 -- script viet hoa By http://tranhba.com  kh�ch h�ng b�ng cho gi�i m�t 
INVENTORY_ROOM.room_distill = 11 -- script viet hoa By http://tranhba.com  qu�ng th�ch l�y ra gi�i m�t 
INVENTORY_ROOM.room_enchase = 12 -- script viet hoa By http://tranhba.com  v�y quanh gi�i m�t 
INVENTORY_ROOM.room_atlas = 13 -- script viet hoa By http://tranhba.com  ho�ng kim �� ph� 
INVENTORY_ROOM.room_partnerbag = 14 -- script viet hoa By http://tranhba.com  ��ng b�n t�i �eo l�ng lan 
INVENTORY_ROOM.room_num = 15 -- script viet hoa By http://tranhba.com  kh�ng gian s� l��ng 




tbActivityCompose = tbBaseClass:new() 


-- script viet hoa By http://tranhba.com  ch�c n�ng : m�i b�t ��u h�a h�p th�nh lo�i 
-- script viet hoa By http://tranhba.com  tham s� # lo�i t�n # ph�i c�ng ng��i d�ng thay ��i l��ng t�n nh�t tr� , h�n n�a l� to�n c�c ��ch # , h�p th�nh c�ng th�c , ng�y ch� t�a �� 
-- script viet hoa By http://tranhba.com  v� 
function tbActivityCompose:_init(tbFormula, szLogTitle, nRoomType) 


self.tbFormula = tbFormula 
self.nRoomType = nRoomType or INVENTORY_ROOM.room_equipment 
self.szLogTitle = szLogTitle or " cam ch�u h�p th�nh " 

end 


function tbActivityCompose:UseGiveUI() 

self.nRoomType = nRoomType or INVENTORY_ROOM.room_giveitem 


end 

-- script viet hoa By http://tranhba.com  ch�c n�ng # c�n c� t�i li�u n�i r� bi�u ki�m tra tr�n ng��i t�i li�u t�nh hu�ng 
-- script viet hoa By http://tranhba.com  tham s� # t�i li�u n�i r� bi�u 
-- script viet hoa By http://tranhba.com  tr� v� # c� hay kh�ng ho�n to�n th�t x�ng (1/0) , tr�n ng��i c� ��m t�nh hu�ng , l�n nh�t h�p th�nh c� ��m t�nh hu�ng 
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

-- script viet hoa By http://tranhba.com  ch�c n�ng # c�n c� t�i li�u n�i r� bi�u ph�n �o�n nhi�u nh�t c� th� h�p th�nh m�y 
-- script viet hoa By http://tranhba.com  tham s� # t�i li�u n�i r� bi�u 
-- script viet hoa By http://tranhba.com  tr� v� # nhi�u nh�t h�p th�nh c� ��m 
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

-- script viet hoa By http://tranhba.com  ch�c n�ng # c�n c� t�i li�u n�i r� bi�u ti�u hao h�t t��ng �ng v�t ph�m 
-- script viet hoa By http://tranhba.com  tham s� # t�i li�u n�i r� bi�u 
-- script viet hoa By http://tranhba.com  tr� v� # c� th�nh c�ng hay kh�ng (1/0) 
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
local tbRoomItems = self:GetRoomItems(self.nRoomType) -- script viet hoa By http://tranhba.com  m�i l�n c�ng l�n n�a l�y ���c , �� ng�a ch� c� bi�n h�a 
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
Msg2Player(format("C�n <color=yellow>%d<color> l#ng", nConsumeJxb)) 
self:ConsumeLog("Jxb "..nConsumeCount.." * "..tbItem.nJxb * tbItem.nCount, szLogTitle) 
end 
elseif tbItem.nTaskId then 
local nConsumeValue = tbItem.nCount * nConsumeCount 
if GetTask(tbItem.nTaskId) < nConsumeValue then 
return 0; 
else 
SetTask(tbItem.nTaskId, GetTask(tbItem.nTaskId) - nConsumeValue) 
Msg2Player(format("Ch� t�o <color=yellow>%d <color>%s", nConsumeValue, tbItem.szName)) 
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


-- script viet hoa By http://tranhba.com  ch�c n�ng # c�n c� t�i li�u n�i r� bi�u tr� v� t�i li�u t�nh hu�ng tin t�c 
-- script viet hoa By http://tranhba.com  tham s� # t�i li�u n�i r� bi�u 
-- script viet hoa By http://tranhba.com  tr� v� # t�nh hu�ng tin t�c t� ph� chu�i 
function tbActivityCompose:GetMaterialList(tbMaterial) 
local szList = format("%-20s %s","V�t ph�m ","S� l��ng ") 
local _, tbCount, tbMaxCount = self:CheckMaterial(tbMaterial, 1) 
local i; 
for i=1,getn(tbMaterial) do 
local tbItem = tbMaterial[i] 

local szColor = "<color=green>" 
if tbMaxCount[i] < 1 then 
szColor = "<color=red>" 
end 
if tbItem.nJxb then 
szList = format("%s<enter><color=yellow>%-20s<color> %s(%d/%d)<color>",szList,"Ng�n l��ng ", szColor, tbCount[i], tbMaterial[i].nJxb * tbMaterial[i].nCount) 
elseif tbItem.szName and tbItem.nCount then 
szList = format("%s<enter><color=yellow>%-20s<color> %s(%d/%d)<color>",szList,tbMaterial[i].szName, szColor, tbCount[i], tbMaterial[i].nCount) 
end 
end 
return szList 
end 


-- script viet hoa By http://tranhba.com  ch�c n�ng # c�n c� c�ng th�c h�p th�nh v�t ph�m 
-- script viet hoa By http://tranhba.com  tham s� # h�p th�nh c� ��m # sau n�y x� l� h�m s� # h�m s� ��ch tham s� # kh�ng ch�ng tham s� # 
-- script viet hoa By http://tranhba.com  tr� v� # c� th�nh c�ng hay kh�ng (1/0) 
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
Say(format("V� b�o ��m ��i hi�p ��ch t�i s�n an to�n , xin/m�i l�u l�i %d %dx%d trang b� ", nFreeItemCellLimit, self.tbFormula.nWidth, self.tbFormula.nHeight)) 
return 0 
end 

if self:CheckMaterial(tbMaterial, nComposeCount) ~=1 then 
local szMsg = self.tbFormula.szFailMsg or "<color=red> ��i hi�p mang ��ch nguy�n li�u kh�ng �� !<color>" 
Talk(1, "", szMsg) 
return 0; 
end 

if self:ConsumeMaterial(tbMaterial, nComposeCount, self.szLogTitle) ~= 1 then 
-- script viet hoa By http://tranhba.com Say(" luy�n ch� th�t b�i , b� ph�n v�t ph�m m�t . ",0) 
Msg2Player("Ch� t�o th�t b�i , m�t �i m�t �t nguy�n li�u .") 
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

-- script viet hoa By http://tranhba.com  ch�c n�ng # sinh ra h�p th�nh GiveUI 
-- script viet hoa By http://tranhba.com  tham s� # c� hay kh�ng nh�m l��ng h�p th�nh 
-- script viet hoa By http://tranhba.com  tr� v� # v� 
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
return Talk(1, "", self.tbFormula.szFailMsg or "<color=red> ��i hi�p s� mang nguy�n li�u kh�ng �� !<color>") 
end 

self:Compose(1) 

end 
-- script viet hoa By http://tranhba.com  ch�c n�ng # sinh ra h�p th�nh ��i tho�i 
-- script viet hoa By http://tranhba.com  tham s� # h�p th�nh c�ng th�c , ��i tho�i ��ch tr� v� �i�u h�m s� ( t� ph� chu�i c�ch th�c ) , tr� v� �i�u h�m s� tham s� # kh�ng th� c� table# 
-- script viet hoa By http://tranhba.com  tr� v� # v� 
function tbActivityCompose:ComposeDailog(bIsAskNumber,nMaxCount) 
-- script viet hoa By http://tranhba.com  n�u nh� ��a v�o v� v� �ch , s� d�ng cam ch�u tr� gi� 

if self.nRoomType == INVENTORY_ROOM.room_giveitem then 
return self:ComposeGiveUI() 
end 
local tbMaterial = self.tbFormula.tbMaterial 
local tbProduct = self.tbFormula.tbProduct 

local szComposeTitle = self.tbFormula.szComposeTitle or format("#i %s", tbProduct.szName) 

local szMsg = format("%s y�u c�u : <enter>%s", szComposeTitle ,self:GetMaterialList(tbMaterial)) 
local tbOpt = {} 
if bIsAskNumber == 1 then 
tbOpt[1] = {"X�c nh�n ", self.AskNumber, {self, nMaxCount}} 
else 
tbOpt[1] = {"X�c nh�n ", self.Compose, {self, 1}} 
end 
tbOpt[2] = {"Bu�ng tha cho "} 
CreateNewSayEx(szMsg, tbOpt) 
end 


-- script viet hoa By http://tranhba.com  ch�c n�ng # vi�t ti�u hao nh�t k� 
-- script viet hoa By http://tranhba.com  tham s� # ti�u hao h�t ��ch v�t ph�m t�n # bao h�m c� ��m , string# , ng�y ch� t�a �� 
-- script viet hoa By http://tranhba.com  tr� v� # v� 
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
local szMsg = self.tbFormula.szFailMsg or "<color=red> ��i hi�p mang ��ch nguy�n li�u kh�ng �� !<color>" 
Talk(1, "", szMsg) 
else 

g_AskClientNumberEx(1, nMaxCount,"Xin/m�i ��a v�o d�y s� ", {self.ComposeCountComfirm, {self,nMaxCount}} ) 
end 
end 

function tbActivityCompose:ComposeCountComfirm(nMaxCount, nCount) 
-- script viet hoa By http://tranhba.com  print("nCount = " .. nCount) 
-- script viet hoa By http://tranhba.com  print("nMaxCount = " .. nMaxCount) 
if nCount > nMaxCount then 
Say(format("Ng��i thua v�o ��ch h�p th�nh s� l��ng v��t qua <color=red>%d<color>, xin/m�i n�a ��a v�o ", nMaxCount)) 
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
