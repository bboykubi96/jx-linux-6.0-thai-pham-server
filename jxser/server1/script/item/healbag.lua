Include("\\script\\battles\\battlehead.lua")

POTION_MAXCOUNT = 300 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
cHealBag = {}
function main(nItemIdx) 
if  CalcFreeItemCellCount() < 10 then
Msg2Player("H�nh trang kh�ng �� 10 ch� tr�ng.")
return 1
end 
local n_param = tonumber(GetItemParam(nItemIdx,1))-- lay so mau con lai 1 tuong ung voi 10 binh
local tbItem = {szName="Ng� Hoa Ng�c L� Ho�n", tbProp={1, 2, 0, 5, 0, 0}, nCount = 10, nBindState = -2}
		tbAwardTemplet:GiveAwardByList(tbItem, "Lay mau ngu hoa")
n_param = n_param -1
if n_param <= 0 then
Msg2Player("T�i �� h�t thu�c. H� th�ng t� ��ng ti�u h�y.")
return
end
SetSpecItemParam(nItemIdx,1,n_param) 
SyncItem(nItemIdx) 
return 1
end

function GetDesc( nItemIdx ) 
local szDesc = "" 
local n_param = tonumber(GetItemParam( nItemIdx, 1 )) 
szDesc = szDesc..format("\n B�n trong c� ch�a <color=yellow>%d<color> b�nh Ng� hoa ng�c l� ho�n ", n_param*10); 
return szDesc; 
end