-- script viet hoa By http://tranhba.com  v� UI gi�i m�t ��ch h�p th�nh lo�i 
-- script viet hoa By http://tranhba.com  th�ng qua �i�u d�ng tbComposeClass:GetMaterialList(tbMaterial) t� ��ng sinh ra h�p th�nh t�i li�u tin t�c 
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





Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\baseclass.lua")
Include("\\script\\lib\\string.lua")
if not tbComposeClass then 

tbComposeClass = tbBaseClass:new() 


-- script viet hoa By http://tranhba.com  ch�c n�ng : m�i b�t ��u h�a h�p th�nh lo�i 
-- script viet hoa By http://tranhba.com  tham s� # lo�i t�n # ph�i c�ng ng��i d�ng thay ��i l��ng t�n nh�t tr� , h�n n�a l� to�n c�c ��ch # , h�p th�nh c�ng th�c , ng�y ch� t�a �� 
-- script viet hoa By http://tranhba.com  v� 
function tbComposeClass:_init(szClassName, tbFormula, szLogTitle) 
szClassName = szClassName or "tbComposeClass" 

self.szClassName = szClassName 
self.tbFormula = tbFormula 

self.szLogTitle = szLogTitle or " cam ch�u h�p th�nh " 
setglobal(szClassName, self) 

self:MakeAskNumberFunction() 

end 

-- script viet hoa By http://tranhba.com  ch�c n�ng # c�n c� t�i li�u n�i r� bi�u ki�m tra tr�n ng��i t�i li�u t�nh hu�ng 
-- script viet hoa By http://tranhba.com  tham s� # t�i li�u n�i r� bi�u 
-- script viet hoa By http://tranhba.com  tr� v� # c� hay kh�ng ho�n to�n th�t x�ng (1/0) , tr�n ng��i c� ��m t�nh hu�ng , l�n nh�t h�p th�nh c� ��m t�nh hu�ng 
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

-- script viet hoa By http://tranhba.com  ch�c n�ng # c�n c� t�i li�u n�i r� bi�u ph�n �o�n nhi�u nh�t c� th� h�p th�nh m�y 
-- script viet hoa By http://tranhba.com  tham s� # t�i li�u n�i r� bi�u 
-- script viet hoa By http://tranhba.com  tr� v� # nhi�u nh�t h�p th�nh c� ��m 
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

-- script viet hoa By http://tranhba.com  ch�c n�ng # c�n c� t�i li�u n�i r� bi�u ti�u hao h�t t��ng �ng v�t ph�m 
-- script viet hoa By http://tranhba.com  tham s� # t�i li�u n�i r� bi�u 
-- script viet hoa By http://tranhba.com  tr� v� # c� th�nh c�ng hay kh�ng (1/0) 
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
Msg2Player(format("Ti�u t�n  <color=yellow>%d<color> l��ng ", nConsumeJxb)) 
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


-- script viet hoa By http://tranhba.com  ch�c n�ng # c�n c� t�i li�u n�i r� bi�u tr� v� t�i li�u t�nh hu�ng tin t�c 
-- script viet hoa By http://tranhba.com  tham s� # t�i li�u n�i r� bi�u 
-- script viet hoa By http://tranhba.com  tr� v� # t�nh hu�ng tin t�c t� ph� chu�i 
function tbComposeClass:GetMaterialList(tbMaterial) 
local szList = format("%-20s %s","V�t ph�m ","S� l��ng ") 
local _, tbCount, tbMaxCount = self:CheckMaterial(tbMaterial, 1) 
local i; 
for i=1,getn(tbMaterial) do 

local szColor = "<color=green>" 
if tbMaxCount[i] < 1 then 
szColor = "<color=red>" 
end 
local tbItem = tbMaterial[i] 
if tbItem.nJxb then 
szList = format("%s<enter><color=yellow>%-20s<color> %s(%d/%d)<color>",szList,"Ng�n l��ng ", szColor, tbCount[i], tbMaterial[i].nJxb) 
elseif tbItem.szName and tbItem.nCount then 
szList = format("%s<enter><color=yellow>%-20s<color> %s(%d/%d)<color>",szList,tbMaterial[i].szName, szColor, tbCount[i], tbMaterial[i].nCount) 
end 
end 
return szList 
end 



-- script viet hoa By http://tranhba.com  ch�c n�ng # c�n c� c�ng th�c h�p th�nh v�t ph�m 
-- script viet hoa By http://tranhba.com  tham s� # h�p th�nh c�ng th�c #table## ng�y ch� t�a �� #string## sau n�y x� l� h�m s� # h�m s� ��ch tham s� # kh�ng ch�ng tham s� # 
-- script viet hoa By http://tranhba.com  tr� v� # c� th�nh c�ng hay kh�ng (1/0) 
function tbComposeClass:Compose(tbFormula, szLogTitle, nComposeCount, pFun, ...) 
-- script viet hoa By http://tranhba.com  n�u nh� ��a v�o v� v� �ch , s� d�ng cam ch�u tr� gi� 
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
Say(format("V� b�o ��m t�i s�n an to�n , xin/m�i b�o ��m trang b� c�n l�i %d ch� tr�ng .", nFreeItemCellLimit)) 
return 0 
end 


if self:CheckMaterial(tbMaterial, nComposeCount) ~=1 then 
local szMsg = tbFormula.szFailMsg or "<color=red> ��i hi�p mang ��ch nguy�n li�u kh�ng �� !<color>" 
Talk(1, "", szMsg) 
return 0; 
end 

if self:ConsumeMaterial(tbMaterial, nComposeCount, szLogTitle) ~= 1 then 
-- script viet hoa By http://tranhba.com Say(" luy�n ch� th�t b�i , b� ph�n v�t ph�m m�t . ",0) 
Msg2Player("Ch� t�o th�t b�i , m�t �i m�t �t nguy�n li�u .") 
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

-- script viet hoa By http://tranhba.com  ch�c n�ng # sinh ra h�p th�nh ��i tho�i 
-- script viet hoa By http://tranhba.com  tham s� # h�p th�nh c�ng th�c , ��i tho�i ��ch tr� v� �i�u h�m s� ( t� ph� chu�i c�ch th�c ) , tr� v� �i�u h�m s� tham s� # kh�ng th� c� table# 
-- script viet hoa By http://tranhba.com  tr� v� # v� 
function tbComposeClass:ComposeDailog(tbFormula, szFunctionFormat, bIsAskNumber) 
-- script viet hoa By http://tranhba.com  n�u nh� ��a v�o v� v� �ch , s� d�ng cam ch�u tr� gi� 
tbFormula = tbFormula or self.tbFormula 
local szDefaultFunctionFormat = format("#%s:Compose(nil,nil, 1)", self.szClassName) 
if bIsAskNumber then 
szDefaultFunctionFormat = format("#%s:AskNumber()", self.szClassName) 
end 
szFunctionFormat = szFunctionFormat or szDefaultFunctionFormat 
local tbMaterial = tbFormula.tbMaterial 
local tbProduct = tbFormula.tbProduct 
local szComposeTitle = tbFormula.szComposeTitle or format("��i l�y %s", tbProduct.szName) 
local szMsg = format("<dec>%s c�n : <enter>%s", szComposeTitle ,self:GetMaterialList(tbMaterial)) 
local tbSay = 
{ 
szMsg, 
format("X�c nh�n /%s", szFunctionFormat ), 
" Ta ngh� l�i ch�t �� /OnCancel" 
} 
CreateTaskSay(tbSay) 
end 


-- script viet hoa By http://tranhba.com  ch�c n�ng # vi�t ti�u hao nh�t k� 
-- script viet hoa By http://tranhba.com  tham s� # ti�u hao h�t ��ch v�t ph�m t�n # bao h�m c� ��m , string# , ng�y ch� t�a �� 
-- script viet hoa By http://tranhba.com  tr� v� # v� 
function tbComposeClass:ConsumeLog(szItemName, szLogTitle) 
WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\t consume %s.",szLogTitle,GetLocalDate("%Y-%m-%d %H:%M"), GetAccount(), GetName(), szItemName)) 
end 


function tbComposeClass:AskNumber() 
local nMaxCount = self:CanMakeMaxCount(self.tbFormula.tbMaterial) 
if nMaxCount < 1 then 
local szMsg = self.tbFormula.szFailMsg or "<color=red> ��i hi�p mang ��ch nguy�n li�u kh�ng �� !<color>" 
Talk(1, "", szMsg) 
else 
AskClientForNumber(format("%s__AskNumberCallBack", self.szClassName), 1, nMaxCount,"Xin/m�i ��a v�o d�y s� "); 
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
-- script viet hoa By http://tranhba.com  return Say(format("V� ng�i ��ch t�i v�t an to�n , xin/m�i b�o ��m c� �t nh�t %d c� t�i �eo l�ng kh�ng gian ", nFreeItemCellLimit)) 
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
