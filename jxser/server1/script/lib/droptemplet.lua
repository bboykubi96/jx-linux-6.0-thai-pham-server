
-- script viet hoa By http://tranhba.com  droptemplet.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2008-03-20 18:55:45 

-- script viet hoa By http://tranhba.com  cho nh� ch�i t��ng th��ng , c� th� l� kinh nghi�m ��o c� ti�n , CallBack 
-- script viet hoa By http://tranhba.com  th�ng qua GiveAwardByList h�m s� cho nh� ch�i t��ng th��ng , th� nh�t tham s� l� t��ng th��ng bi�u , th� hai tham s� l� log ��ch title , kh�ng �i�n l� kh�ng vi�t log 

-- script viet hoa By http://tranhba.com  v�t ph�m bi�u ��ch ��nh ngh�a 
-- script viet hoa By http://tranhba.com tbItem = {} 
-- script viet hoa By http://tranhba.com tbItem = {tbItem, tbItem, tbItem} 

-- script viet hoa By http://tranhba.com  n�i r� [] b�n trong ��ch v� c� th� ch�n b� m�n 
-- script viet hoa By http://tranhba.com szName v�t ph�m t�n , v� v� �ch l� �i�u d�ng GetItemName( nItemIndex ) ��i v�i nh�ng �i�p gia ��ch v�t ph�m n�n h�m s� tr� v� v� �ch , �� ngh� mu�n th� ��ng �i�n vi�t 
-- script viet hoa By http://tranhba.com tbProp v�t ph�m ��ch ID G D P chi lo�i , ��i v�i ho�ng kim b�ch kim v� {0,nRow}nRow l� ch� � ���c ��m 
-- script viet hoa By http://tranhba.com nQuality v�t ph�m ��ch ph�m ch�t , cam ch�u v� 0 
-- script viet hoa By http://tranhba.com nRate nh� c� n�n b� m�n n�i r� n�n bi�u l� ng�u nhi�n ch�n m�t ��ch bi�u 
-- script viet hoa By http://tranhba.com nCount v�t ph�m c� ��m , cam ch�u v� 1 c� 
-- script viet hoa By http://tranhba.com nExp_tl ph� th�m ch�c n�ng cho v�t ph�m ��ng th�i cho nh�ng �i�p gia kinh nghi�m 
-- script viet hoa By http://tranhba.com nJxb cho v�t ph�m ��ng th�i cho kinh nghi�m 
-- script viet hoa By http://tranhba.com nExp cho v�t ph�m ��ng th�i cho kh�ng �i�p gia kinh nghi�m 

-- script viet hoa By http://tranhba.com CallBack tr� v� �i�u h�m s� 
-- script viet hoa By http://tranhba.com nExpiredTime v�t ph�m h�u hi�u k� c�ch d�ng c�ng IB ��ch ITEM_SetExpiredTime 
-- script viet hoa By http://tranhba.com nBindState tr�i ��nh tr�ng th�i -2 v� v�nh c�u -1 v� b�nh th��ng tr�i ��nh 

-- script viet hoa By http://tranhba.com  khi tbProp v� v� �ch l�c kh�ng cho v�i v�t ph�m 
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
if not tbItem then -- script viet hoa By http://tranhba.com  v�t ph�m bi�u v� v� �ch 
self:Debug("V�t ph�m bi�u v� �ch .") 
return 0 
end 
nAwardCount = nAwardCount or 1 
if type(tbItem[1]) == "table" then -- script viet hoa By http://tranhba.com  n�u nh� l� nhi�u v�t ph�m 
if tbItem[1].nRate then -- script viet hoa By http://tranhba.com  theo nh� x�c su�t cho m�t c� 
for i = 1, nAwardCount do 
self:GiveAwardByRate(nNpcIndex, nBelongerIndex, tbItem, szLogTitle, 1) 
end 
return 1 
else -- script viet hoa By http://tranhba.com  theo nh� th� t� cho to�n b� 
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
if tbItemProp then -- script viet hoa By http://tranhba.com  v�t ph�m 
local nItemIndex = 0; 
for i = 1, nItemCount do 

nItemIndex = self:DropItem(nNpcIndex, nBelongerIndex, tbItem) 

if nItemIndex > 0 then 
if tbItem.nExpiredTime then 
ITEM_SetExpiredTime(nItemIndex, tbItem.nExpiredTime)-- script viet hoa By http://tranhba.com  thi�t tr� h�u hi�u k� 
-- script viet hoa By http://tranhba.com SyncItem(nItemIndex) -- script viet hoa By http://tranhba.com  c�ng b��c kh�ch h�ng b�ng kh�ng c�n c�ng b��c 
end 

if tbItem.nLeftUsageTime then 
ITEM_SetLeftUsageTime(nItemIndex,tbItem.nLeftUsageTime) 
-- script viet hoa By http://tranhba.com SyncItem(nItemIndex) -- script viet hoa By http://tranhba.com  c�ng b��c kh�ch h�ng b�ng kh�ng c�n c�ng b��c 
end 

if tbItem.nUsageTime then 
ITEM_SetLeftUsageTime(nItemIndex,tbItem.nLeftUsageTime) 
end 

if tbItem.nBindState then 
SetItemBindState(nItemIndex, tbItem.nBindState)-- script viet hoa By http://tranhba.com  c�n c� nBindState tr�i ��nh v�t ph�m 
end 
if type(tbItem.CallBack) == "function" then 
tbItem.CallBack(nItemIndex) 
end 

szItemName = tbItem.szName or GetItemName(nItemIndex) 
end 
end 

self:WriteLog(szLogTitle, format("npcname(%s) drop %d item %s", szNpcName, nItemCount, szItemName)) 
end 
if tbItem.nJxb then -- script viet hoa By http://tranhba.com  ki�m hi�p ti�n 
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
self:Debug("V�t ph�m r�i xu�ng h�m kh�ng c� log") 
end 
end 


end
