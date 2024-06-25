Include("\\script\\battles\\battlehead.lua")

POTION_MAXCOUNT = 300 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
cHealBag = {}
function main(nItemIdx) 
if  CalcFreeItemCellCount() < 10 then
Msg2Player("Hµnh trang kh«ng ®ñ 10 chç trèng.")
return 1
end 
local n_param = tonumber(GetItemParam(nItemIdx,1))-- lay so mau con lai 1 tuong ung voi 10 binh
local tbItem = {szName="Ngò Hoa Ngäc Lé Hoµn", tbProp={1, 2, 0, 5, 0, 0}, nCount = 10, nBindState = -2}
		tbAwardTemplet:GiveAwardByList(tbItem, "Lay mau ngu hoa")
n_param = n_param -1
if n_param <= 0 then
Msg2Player("Tói ®· hÕt thuèc. HÖ thèng tù ®éng tiªu hñy.")
return
end
SetSpecItemParam(nItemIdx,1,n_param) 
SyncItem(nItemIdx) 
return 1
end

function GetDesc( nItemIdx ) 
local szDesc = "" 
local n_param = tonumber(GetItemParam( nItemIdx, 1 )) 
szDesc = szDesc..format("\n Bªn trong cã chøa <color=yellow>%d<color> b×nh Ngò hoa ngäc lé hoµn ", n_param*10); 
return szDesc; 
end