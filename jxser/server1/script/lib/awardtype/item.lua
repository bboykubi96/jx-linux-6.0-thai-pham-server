IncludeLib("ITEM") 
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\lib\\log.lua")
-- script viet hoa By http://tranhba.com Ghi transaction log - Modified By DinhHQ - 20110816 
Include("\\script\\vng_lib\\VngTransLog.lua")

ItemType = {} 

ItemType.nPak = curpack() 
function ItemType:NewItemEx(tbItem) 
local nRow = 0 
if tbItem.nQuality and (tbItem.nQuality == 1 or tbItem.nQuality == 4) then 
nRow = 1 
end 
tbItem.tbParam = tbItem.tbParam or {} 
local nRan = {}
for i=2,5 do
if type(tbItem.tbProp[i])=="table" then
nRan[i] =  random(tbItem.tbProp[i][1],tbItem.tbProp[i][2])
print(nRan[i])
break
end
end
return NewItemEx( 
tbItem.nVersion or 4, 
format("%u", tbItem.nRandSeed or 0), 
tbItem.nQuality or 0, 
tbItem.tbProp[1] or 0, 
(nRan[2] or tbItem.tbProp[2] or 0) - nRow, 
nRan[3] or tbItem.tbProp[3] or 0, 
nRan[4] or tbItem.tbProp[4] or 1, 
tbItem.tbProp[5] or random(0,4), 
tbItem.tbProp[6] or 0, 
tbItem.tbParam[1] or 0, 
tbItem.tbParam[2] or 0, 
tbItem.tbParam[3] or 0, 
tbItem.tbParam[4] or 0, 
tbItem.tbParam[5] or 0, 
tbItem.tbParam[6] or 0, 
tbItem.nUpgradeLevel) 
end 

function ItemType:SetStackCount(nItemIndex, i, nAmount) 

if IsItemStackable(nItemIndex) == 1 then 
local nOrgStackCount = GetItemStackCount(nItemIndex) 
		local nStackCount = nOrgStackCount + nAmount - i
local nMaxStackCount = GetItemMaxStackCount(nItemIndex) 
if nStackCount >= nMaxStackCount then 
nStackCount = nMaxStackCount 
end 
SetItemStackCount(nItemIndex, nStackCount) 
		return i + nStackCount - nOrgStackCount
else 
return i 
end 
end 

function ItemType:Give(tbItem, nAmount, tbLogTitle) 
local nItemIndex = 0; 
nAmount = (nAmount or 1) * (tbItem.nCount or 1) 
local szName = "" 
local szCode = "" 
for i = 1, nAmount do 
nItemIndex = self:NewItemEx(tbItem) 
if nItemIndex < 0 then 
break; 
end 
if szName == "" then 
szName = GetItemName(nItemIndex) 
if GetItemCmd then 
szCode = GetItemCmd(nItemIndex) 
end 
end 
i = self:SetStackCount(nItemIndex, i, nAmount) 

if tbItem.nCurDurability then 
SetCurDurability(nItemIndex, tbItem.nCurDurability) 
end 

if tbItem.nMaxDurability then 
SetMaxDurability(nItemIndex, tbItem.nMaxDurability) 
end 

local nPak = usepack(self.nPak) 
if tbItem.nExpiredTime then 
ITEM_SetExpiredTime(nItemIndex, tbItem.nExpiredTime)-- script viet hoa By http://tranhba.com  thiÕt trÝ h÷u hiÖu kú 
end 

if tbItem.nExpiredTime2 then 
ITEM_SetExpiredTime2(nItemIndex, tbItem.nExpiredTime2)-- script viet hoa By http://tranhba.com  thiÕt trÝ h÷u hiÖu kú 
end 

if tbItem.nUsageTime then 
ITEM_SetLeftUsageTime(nItemIndex, tbItem.nUsageTime) -- script viet hoa By http://tranhba.com  thiÕt trÝ sö dông kú 
end 
usepack(nPak) 

if tbItem.nBindState then 
SetItemBindState(nItemIndex, tbItem.nBindState)-- script viet hoa By http://tranhba.com  c¨n cø nBindState trãi ®Þnh vËt phÈm 
end 
szName = tbItem.szName or GetItemName(nItemIndex)
if type(tbItem.CallBack) == "function" then 
tbItem.CallBack(nItemIndex,szName) 
end 
 -- script viet hoa By http://tranhba.com  ®ång lo¹i vËt phÈm v× vËy chän cuèi cïng Index tªn còng gièng vËy 
AddItemByIndex(nItemIndex) 
end 

Msg2Player(format("§¹t ®­îc %d %s.", nAmount, szName)) 
local nPlayerIndex = PlayerIndex 
local nPak = usepack(self.nPak) 
CallPlayerFunction(nPlayerIndex, self.WriteLog, self, szName, szCode, nAmount, tbLogTitle) 
usepack(nPak) 
end 

function ItemType:WriteLog(szName, szCode, nAmount, tbLogTitle) 
-- script viet hoa By http://tranhba.com local szCode = GetItemCmd(nItemIndex) 
if tbLogTitle then 
local szEventName = tbLogTitle[1] or "" 
local szAction = tbLogTitle[2] or "award" 
call(tbLog.PlayerAwardLog, {tbLog, szEventName, szAction, szName, szCode, nAmount}, "x") 
-- script viet hoa By http://tranhba.com Ghi transaction log - Modified By DinhHQ - 20110816 
if tbLogTitle[3] and type(tbLogTitle[3]) == "table" then 
local tb = tbLogTitle[3] 
local strAction = tb.strAction or szAction 
call(tbVngTransLog.Write, {tbVngTransLog, tb.strFolder, tb.nPromID, strAction, szName, tb.nResult}, "x") 
end 
end 
end 

tbAwardTemplet:RegType("tbProp", ItemType)
