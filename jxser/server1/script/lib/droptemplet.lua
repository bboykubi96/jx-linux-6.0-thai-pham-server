
-- script viet hoa By http://tranhba.com  droptemplet.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2008-03-20 18:55:45 

-- script viet hoa By http://tranhba.com  cho nhµ ch¬i t­ëng th­ëng , cã thÓ lµ kinh nghiÖm ®¹o cô tiÒn , CallBack 
-- script viet hoa By http://tranhba.com  th«ng qua GiveAwardByList hµm sè cho nhµ ch¬i t­ëng th­ëng , thø nhÊt tham sæ lµ t­ëng th­ëng biÓu , thø hai tham sæ lµ log ®Ých title , kh«ng ®iÒn lµ kh«ng viÕt log 

-- script viet hoa By http://tranhba.com  vËt phÈm biÓu ®Ých ®Þnh nghÜa 
-- script viet hoa By http://tranhba.com tbItem = {} 
-- script viet hoa By http://tranhba.com tbItem = {tbItem, tbItem, tbItem} 

-- script viet hoa By http://tranhba.com  nãi râ [] bªn trong ®Ých v× cã thÓ chän bé m«n 
-- script viet hoa By http://tranhba.com szName vËt phÈm tªn , v× v« Ých lµ ®iÒu dông GetItemName( nItemIndex ) ®èi víi nh­ng ®iÖp gia ®Ých vËt phÈm nªn hµm sè trë vÒ v« Ých , ®Ò nghÞ muèn thñ ®éng ®iÒn viÕt 
-- script viet hoa By http://tranhba.com tbProp vËt phÈm ®Ých ID G D P chi lo¹i , ®èi víi hoµng kim b¹ch kim v× {0,nRow}nRow lµ chç ë ®­îc ®Õm 
-- script viet hoa By http://tranhba.com nQuality vËt phÈm ®Ých phÈm chÊt , cam chÞu v× 0 
-- script viet hoa By http://tranhba.com nRate nh­ cã nªn bé m«n nãi râ nªn biÓu lµ ngÉu nhiªn chän mét ®Ých biÓu 
-- script viet hoa By http://tranhba.com nCount vËt phÈm c¸ ®Õm , cam chÞu v× 1 c¸ 
-- script viet hoa By http://tranhba.com nExp_tl phô thªm chøc n¨ng cho vËt phÈm ®ång thêi cho nh­ng ®iÖp gia kinh nghiÖm 
-- script viet hoa By http://tranhba.com nJxb cho vËt phÈm ®ång thêi cho kinh nghiÖm 
-- script viet hoa By http://tranhba.com nExp cho vËt phÈm ®ång thêi cho kh«ng ®iÖp gia kinh nghiÖm 

-- script viet hoa By http://tranhba.com CallBack trë vÒ ®iÒu hµm sè 
-- script viet hoa By http://tranhba.com nExpiredTime vËt phÈm h÷u hiÖu kú c¸ch dïng cïng IB ®Ých ITEM_SetExpiredTime 
-- script viet hoa By http://tranhba.com nBindState trãi ®Þnh tr¹ng th¸i -2 v× vÜnh cöu -1 v× b×nh th­êng trãi ®Þnh 

-- script viet hoa By http://tranhba.com  khi tbProp v× v« Ých lóc kh«ng cho víi vËt phÈm 
IncludeLib("ITEM"); 
Include ("\\script\\lib\\common.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\item\\battles\\songjinskill.lua");
WLLS_TASKID_HONOUR = 2501 
if not tbDropTemplet then 

tbDropTemplet = {} 

function tbDropTemplet:Debug(szMsg) 
-- script viet hoa By http://tranhba.com  print(szMsg) 

end 

function tbDropTemplet:GiveAwardByRate(nNpcIndex, nBelongerIndex, tbItem, szLogTitle, nAwardCount) 
if tbItem == nil then 
return 0 
end 
local rtotal = 10000000 
local rcur=random(1,rtotal); 
local rstep=0; 
for i=1,getn(tbItem) do 
		rstep=rstep+floor(tbItem[i].nRate*rtotal/100);
if(rcur <= rstep) then 

return self:GiveAwardByList(nNpcIndex, nBelongerIndex, tbItem[i], szLogTitle, nAwardCount),i 
end 
end 
end 

-- script viet hoa By http://tranhba.com DropItemEx( nSubWorldIdx, nMpsX, nMpsY, nBelonger, nVersion, uRandSeed, nQuality, nItemGenre, nItemDetailType, nItemParticularType, nItemLevel, nItemSeries, nItemLuck, nItemMagicLevel..6 ) 
function tbDropTemplet:DropItem(nNpcIndex, nBelongerIndex, tbItem) 
local nRow = 0 
if tbItem.nQuality and (tbItem.nQuality == 1 or tbItem.nQuality == 4) then 
nRow = 1 
end 
tbItem.tbParam = tbItem.tbParam or {} 
local wuxing = tbItem.tbProp[5] or 0 
if wuxing == -1 then 
wuxing = random(0,4) 
end 
local nX32,nY32,nMapIndex = GetNpcPos(nNpcIndex) 
local nRan = {}
for i=2,4 do
if type(tbItem.tbProp[i])=="table" then
nRan[i] = random(tbItem.tbProp[i][1],tbItem.tbProp[i][2])
end
end
return DropItemEx( 
nMapIndex, 
nX32, 
nY32, 
nBelongerIndex, 
tbItem.nVersion or 4, 
format("%u", tbItem.nRandSeed or 0), 
tbItem.nQuality or 0, 
tbItem.tbProp[1] or 0, 
(nRan[2] or tbItem.tbProp[2] or 0) - nRow, 
nRan[3] or tbItem.tbProp[3] or 0, 
nRan[4] or tbItem.tbProp[4] or 0, 
wuxing, 
tbItem.tbProp[6] or 0, 
tbItem.tbParam[1] or 0, 
tbItem.tbParam[2] or 0, 
tbItem.tbParam[3] or 0, 
tbItem.tbParam[4] or 0, 
tbItem.tbParam[5] or 0, 
tbItem.tbParam[6] or 0) 
end 


function tbDropTemplet:GiveAwardByList(nNpcIndex, nBelongerIndex, tbItem, szLogTitle, nAwardCount) 
if not tbItem then -- script viet hoa By http://tranhba.com  vËt phÈm biÓu v× v« Ých 
self:Debug("VËt phÈm biÓu v« Ých .") 
return 0 
end 
nAwardCount = nAwardCount or 1 
if type(tbItem[1]) == "table" then -- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÒu vËt phÈm 
if tbItem[1].nRate then -- script viet hoa By http://tranhba.com  theo nh­ x¸c suÊt cho mét c¸ 
for i = 1, nAwardCount do 
self:GiveAwardByRate(nNpcIndex, nBelongerIndex, tbItem, szLogTitle, 1) 
end 
return 1 
else -- script viet hoa By http://tranhba.com  theo nh­ thø tù cho toµn bé 
for i = 1, getn(tbItem) do 
self:GiveAwardByList(nNpcIndex, nBelongerIndex, tbItem[i], szLogTitle, nAwardCount) 
end 
return 1; 
end 
end 
local tbItemProp = tbItem.tbProp; 
local nItemCount = tbItem.nCount or 1 
nItemCount = nItemCount * nAwardCount 

local szNpcName = GetNpcName(nNpcIndex) 
if tbItemProp then -- script viet hoa By http://tranhba.com  vËt phÈm 
local nItemIndex = 0; 
for i = 1, nItemCount do 

nItemIndex = self:DropItem(nNpcIndex, nBelongerIndex, tbItem) 

if nItemIndex > 0 then 
if tbItem.nExpiredTime then 
ITEM_SetExpiredTime(nItemIndex, tbItem.nExpiredTime)-- script viet hoa By http://tranhba.com  thiÕt trÝ h÷u hiÖu kú 
-- script viet hoa By http://tranhba.com SyncItem(nItemIndex) -- script viet hoa By http://tranhba.com  cïng b­íc kh¸ch hµng b­ng kh«ng cÇn cïng b­íc 
end 

if tbItem.nLeftUsageTime then 
ITEM_SetLeftUsageTime(nItemIndex,tbItem.nLeftUsageTime) 
-- script viet hoa By http://tranhba.com SyncItem(nItemIndex) -- script viet hoa By http://tranhba.com  cïng b­íc kh¸ch hµng b­ng kh«ng cÇn cïng b­íc 
end 

if tbItem.nUsageTime then 
ITEM_SetLeftUsageTime(nItemIndex,tbItem.nLeftUsageTime) 
end 

if tbItem.nBindState then 
SetItemBindState(nItemIndex, tbItem.nBindState)-- script viet hoa By http://tranhba.com  c¨n cø nBindState trãi ®Þnh vËt phÈm 
end 
if type(tbItem.CallBack) == "function" then 
tbItem.CallBack(nItemIndex) 
end 

szItemName = tbItem.szName or GetItemName(nItemIndex) 
end 
end 

self:WriteLog(szLogTitle, format("npcname(%s) drop %d item %s", szNpcName, nItemCount, szItemName)) 
end 
if tbItem.nJxb then -- script viet hoa By http://tranhba.com  kiÕm hiÖp tiÒn 
local nAddJxb = tbItem.nJxb * nItemCount 

NpcDropMoney(nNpcIndex, nAddJxb, nBelongerIndex) 
self:WriteLog(szLogTitle, format("npcname(%s) drop %d Jxb", szNpcName, nAddJxb )) 
end 

if type(tbItem.pFun) == "function" then 
tbItem:pFun(nItemCount, szLogTitle, nBelongerIndex) 
end 
return 1 
end 

function tbDropTemplet:WriteLog(szLogTitle, szMsg) 
if szLogTitle then 

if type(szLogTitle) == "table" then 
local event_name = szLogTitle.szEventName or "" 
local action = szLogTitle.szAction or "" 
local quantity = szLogTitle.szQuantity or "" 
local item_name = szLogTitle.szItemName or "" 
local item_code = szLogTitle.szItemCode or "" 
local tong_name = GetTongName() 
local bug_desc = szbug_desc or "" 
local string_1 = szstring_1 or "" 
local string_2 = szstring_2 or "" 
local string_3 = szstring_3 or "" 

local strLogs = "["..event_name.."]".."\t"..GetAccount().."\t"..GetName().."\t"..action.."\t"..quantity.."\t"..item_name.."\t"..item_code.."\t"..tong_name.."\t"..bug_desc.."\t"..string_1.."\t"..string_2.."\t"..string_3; 

else 
WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\t%s.",szLogTitle,GetLocalDate("%Y-%m-%d %H:%M"), GetAccount(), GetName(), szMsg)) 
end 



else 
self:Debug("VËt phÈm r¬i xuèng hµm kh«ng cã log") 
end 
end 


end
