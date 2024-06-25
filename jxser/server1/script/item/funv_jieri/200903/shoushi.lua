Include("\\script\\event\\funv_jieri\\200903\\class.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\basemission\\lib.lua")

local tbExpAward = 
{ 
{nMaxDetailId = 1967, tbAward = {nExp = 1e6}}, 
{nMaxDetailId = 1969, tbAward = {nExp = 3e6}}, 
} 
local tbItemAwardRate = 
{ 
{nMaxDetailId = 1967, nRate = 10}, 
{nMaxDetailId = 1969, nRate = 30}, 
} 
function main(nItemIndex) 
if GetItemParam(nItemIndex, 1) ~= 0 and GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","N�n v�t ph�m �� qua k� ") 
return 0 
end 
local _,_, nDetailId = GetItemProp(nItemIndex) 

local bRet, szFailMsg = tbFunv0903:IsPlayerEligible() 
if bRet ~= 1 then 
Talk(1, "", szFailMsg.." kh�ng ph� h�p �i�u ki�n s� d�ng n�n v�t ph�m .") 
return 1 
end 

if tbFunv0903.tbTask:CheckExpFromOther() ~= 1 then 
Talk(1, "", format(" � n�n ho�t ��ng v�t ph�m trung , m�i ng��i nhi�u nh�t ch� c� th� ��t ���c %u kinh nghi�m tr� gi� .", tbFunv0903.tbTask.nMaxExpFromOther)) 
return 1 
else 
for i=1, getn(%tbExpAward) do 

if nDetailId <= %tbExpAward[i].nMaxDetailId then 
local tbExp = %tbExpAward[i].tbAward 
tbAwardTemplet:GiveAwardByList(tbExp, "use "..GetItemName(nItemIndex)) 
tbFunv0903.tbTask:AddCurExpFromOther(tbExp.nExp) 
break 
end 
end 

for i=1, getn(%tbItemAwardRate) do 
if nDetailId <= %tbItemAwardRate[i].nMaxDetailId then 
local tbItem = {szName=" hoa h�ng t�p ", tbProp={6, 1, 1958, 1, 0, 0}, nExpiredTime = tbFunv0903.nItemExpiredTime} 
tbItem.nRate = %tbItemAwardRate[i].nRate 
tbAwardTemplet:GiveAwardByList({tbItem}, "use "..GetItemName(nItemIndex)) 
break 
end 
end 
end 
end