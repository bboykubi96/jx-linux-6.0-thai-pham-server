Include("\\script\\lib\\awardtemplet.lua")
Include ("\\script\\lib\\pay.lua")
Include("\\script\\event\\pingzi\\200805\\head.lua")
ruyijixiangdangao_tbItemList= 

{ 
[1761] = {szName=" nh� � b�nh ng�t ", nExp = 1500000 }, 
[1762] = {szName=" c�t t��ng b�nh ng�t ", nExp = 3000000 }, 

} 

function main(nItemIndex) 
pingzi0805:ResetTask() 
local nItemData = 20080731; 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
local nCurExp = GetTask(pingzi0805.TSK_ExpLimit) 
if nDate > nItemData then 
Msg2Player("V�t ph�m qua s� d�ng k� , t� ��ng bi�n m�t .") 
return 0; 
end 

local _, _, nId = GetItemProp(nItemIndex); 

if GetLevel() < 50 or IsCharged() == 0 then 
Say("50 c�p �� sung tr� gi� nh� ch�i m�i c� th� s� d�ng .", 0) 
return 1; 
end 

if nCurExp >= pingzi0805.nMaxExpLimit then 
Say("�� ��t l�n n�y ho�t ��ng kinh nghi�m th��ng h�n , kh�ng th� ti�p t�c s� d�ng .", 0) 
return 1 
end 
local tbItem = ruyijixiangdangao_tbItemList[nId] 
tbAwardTemplet:GiveAwardByList(tbItem,"Ch�c m�ng v� l�m truy�n k� 3 tu�i ch�n b�nh ng�t .") 
	SetTask(pingzi0805.TSK_ExpLimit, nCurExp + tbItem.nExp)
return 0 
end 

function GetDesc(nItemIndex) 
local nYear = 2008 
local nMonth = 07 
local nDay = 31 
if nYear == 0 and nMonth == 0 and nDay == 0 then 
return "<color=red> v�t ph�m �� qua s� d�ng k� <color>" 
end 
return format("<color=green> s� d�ng k� h�n g: %d-%d-%d<color>",nDay, nMonth, nYear) 
end