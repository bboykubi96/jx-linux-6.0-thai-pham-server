-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##hunyuanlinglu_da.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  néi dung ### hçn nguyªn linh lé # ®¹i # hµm h÷u 1000 tinh luyÖn th¹ch , cïng víi 15 c¸ nhiÖm vô lÖnh bµi cïng 15 c¸ cÊp m­êi ®Ých tu luyÖn méc nh©n 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-07-12 14:53:11 

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\jingli.lua")

-- script viet hoa By http://tranhba.com  nhiÖm vô lÖnh bµi t×m kiÕm qu¸ng th¹ch , nhiÖm vô trÞ gi¸ lµ 211 - 216 
local renwuSetmagicLevel = function(nItemIndex) 
SetItemMagicLevel(nItemIndex, 1, random(211,216)) -- script viet hoa By http://tranhba.com  thiÕt trÝ ®µo má nhiÖm vô 
end 


-- script viet hoa By http://tranhba.com  nhiÖm vô lÖnh bµi t×m kiÕm qu¸ng th¹ch , nhiÖm vô trÞ gi¸ lµ 211 - 216 
local tbMask = 
{ 
{szName = " lÖnh bµi ", tbProp = {6,2,1020,1,0,0}, nExpiredTime = 7*24*60, CallBack = renwuSetmagicLevel}, 
{szName = " méc nh©n ", tbProp = {6,1,2969,1,0,0}, nCount = 15, nExpiredTime = 7*24*60}, 
} 

function main(nItemIndex) 
do 
Say("Ng­¬i cÇm uèng hÕt mét h¬i mµ kh«ng cã g× x¶y ra. H×nh nh­ lµ hµng gi¶.") 
return 1
end
-- script viet hoa By http://tranhba.com  local nWidth = 1 
-- script viet hoa By http://tranhba.com  local nHeight = 2 
-- script viet hoa By http://tranhba.com  local nCount = 16 
local nEnergy = 1000 
-- script viet hoa By http://tranhba.com  if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then 
-- script viet hoa By http://tranhba.com  Say(format("V× b¶o ®¶m ®¹i hiÖp ®Ých tµi s¶n an toµn , xin/mêi l­u l¹i %d %dx%d trang bÞ chç trèng ", nCount, nWidth, nHeight)) 
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
tbAwardTemplet:GiveAwardByList(tbRealyAward,"Sö dông hçn nguyªn linh lé # ®¹i #", 1) 
return 0 
else 
return 1 
end 
end 
