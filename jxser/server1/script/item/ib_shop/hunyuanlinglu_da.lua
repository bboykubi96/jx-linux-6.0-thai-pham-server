-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##hunyuanlinglu_da.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  n�i dung ### h�n nguy�n linh l� # ��i # h�m h�u 1000 tinh luy�n th�ch , c�ng v�i 15 c� nhi�m v� l�nh b�i c�ng 15 c� c�p m��i ��ch tu luy�n m�c nh�n 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-07-12 14:53:11 

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\jingli.lua")

-- script viet hoa By http://tranhba.com  nhi�m v� l�nh b�i t�m ki�m qu�ng th�ch , nhi�m v� tr� gi� l� 211 - 216 
local renwuSetmagicLevel = function(nItemIndex) 
SetItemMagicLevel(nItemIndex, 1, random(211,216)) -- script viet hoa By http://tranhba.com  thi�t tr� ��o m� nhi�m v� 
end 


-- script viet hoa By http://tranhba.com  nhi�m v� l�nh b�i t�m ki�m qu�ng th�ch , nhi�m v� tr� gi� l� 211 - 216 
local tbMask = 
{ 
{szName = " l�nh b�i ", tbProp = {6,2,1020,1,0,0}, nExpiredTime = 7*24*60, CallBack = renwuSetmagicLevel}, 
{szName = " m�c nh�n ", tbProp = {6,1,2969,1,0,0}, nCount = 15, nExpiredTime = 7*24*60}, 
} 

function main(nItemIndex) 
do 
Say("Ng��i c�m u�ng h�t m�t h�i m� kh�ng c� g� x�y ra. H�nh nh� l� h�ng gi�.") 
return 1
end
-- script viet hoa By http://tranhba.com  local nWidth = 1 
-- script viet hoa By http://tranhba.com  local nHeight = 2 
-- script viet hoa By http://tranhba.com  local nCount = 16 
local nEnergy = 1000 
-- script viet hoa By http://tranhba.com  if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then 
-- script viet hoa By http://tranhba.com  Say(format("V� b�o ��m ��i hi�p ��ch t�i s�n an to�n , xin/m�i l�u l�i %d %dx%d trang b� ch� tr�ng ", nCount, nWidth, nHeight)) 
-- script viet hoa By http://tranhba.com  return 1 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  local nRenWuCount = 15 
-- script viet hoa By http://tranhba.com  local tbRealyAward = {} 

-- script viet hoa By http://tranhba.com  for i=1,nRenWuCount do 
-- script viet hoa By http://tranhba.com  tinsert(tbRealyAward, %tbMask[1]) 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  tinsert(tbRealyAward, %tbMask[2]) 

local player = Player:New(PlayerIndex) 
local potion = HunyuanPotion:New(player) 
if (potion:Use(nEnergy) == 1) then 
tbAwardTemplet:GiveAwardByList(tbRealyAward,"S� d�ng h�n nguy�n linh l� # ��i #", 1) 
return 0 
else 
return 1 
end 
end 
