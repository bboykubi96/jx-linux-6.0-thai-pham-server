/* 
if not RING then 
RING = 1 
end 

if not SHOSHI then 
	Include ("\\script\\item\\hecheng\\shoushihecheng.lua")
end 
*/ 
-- script viet hoa By http://tranhba.com ======== hµm sè ®Þnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #ComputeJewelWorth(nCount) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  c¨n cø cho cïng giíi mÆt ®Ých vËt phÈm , tÝnh to¸n ra kú gi¸ trÞ l­îng . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  nCount# cho cïng giíi mÆt trung vËt kiÖn ®Ých tæng sè 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ # 
-- script viet hoa By http://tranhba.com  thµnh c«ng lµ trë vÒ gi¸ trÞ l­îng , nÕu kh«ng trë vÒ nil 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function ComputeRingWorth(nCount) 
local worth = 0 -- script viet hoa By http://tranhba.com  lÔ vËt gi¸ trÞ l­îng 
local maxCount = 0 -- script viet hoa By http://tranhba.com  lÔ vËt ®Ých tæng sè 
local wnum = 0 
if(nCount == 0) then 
Talk(1,"GiveUIForThing","<#> g× còng kh«ng cho , ng­¬i nghÜ lµm g× nha . ") 
return nil 
end 
for i=1,nCount do 
local itemIdx = GetGiveItemUnit( i ) 
local g, d, p, l, f = GetItemProp(itemIdx) 
if((g ~= 4 or (d < 508 or d > 518)) and (g ~= 0 or (d~=0 and d~=1 ))) then -- script viet hoa By http://tranhba.com  sai lÇm ®¹o cô -- script viet hoa By http://tranhba.com and d~=2 and d~=5 and d~=6 and d~=7 
Talk(1,"GiveUIForThing","<#> ng­¬i cho lµ t«m th­íc ®å nha , ng­êi xem kh«ng hiÓu chiÕp ? ") 
return nil 
end 
if(g == 0) then -- script viet hoa By http://tranhba.com  vò khÝ 
			wnum = wnum + 1
if (wnum > 1) then -- script viet hoa By http://tranhba.com  chØ cã thÓ ®Ó mét mãn trang bÞ 
Talk(1, "GiveUIForThing", "<#> nhiÒu nh­ vËy trang bÞ , ta kh«ng ph¶i lµ thïng r¸c a , tiªu hãa kh«ng ®­îc nhiÒu nh­ vËy ……") 
return nil 
end 
det = d 
par = p 
lvl = l 
five = f 
else -- script viet hoa By http://tranhba.com  thÇn bÝ lÔ vËt 
function checkGiftCount(idx,count) -- script viet hoa By http://tranhba.com  kiÓm tr¾c thÇn bÝ nãi cô ®Ých sè l­îng 
local num = GetItemStackCount(idx) 
				if(count + num > MAXGIVENUM) then -- script viet hoa By http://tranhba.com  ÊýÁ¿Ì«¶à
Talk(1,"GiveUIForRing","<#> ng­¬i cho ®å qu¸ nhiÒu , kh«ng thÊy râ a ……") 
return nil 
end 
return num 
end 
local num = checkGiftCount(itemIdx,maxCount) 
if(not num) then 
return nil 
else 
				maxCount = maxCount + num
local ll = d - 508 
if(ll ==0) then 
					worth = worth + num * 100000
else 
					worth = worth + num * Convert.__gifttabfile:getCell(TF_GIFT_WORTH,ll)
end 
end 
end 
end 
if(worth ==0) then 
Talk(1,"GiveUIForThing","<#> thËt xin lçi , Ýt nhÊt cÇn mét gµ n¨m thÇn bÝ lÔ vËt . ") 
return nil 
end 
if (wnum == 0) then 
Talk(1,"GiveUIForThing","<#> thËt xin lçi , nhÊt ®Þnh ph¶i mét mãn vò khÝ . ") 
return nil 
end 
return worth, det, par, lvl, five 
end 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Þnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #ConvertRing(nCount) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  dïng gµ n¨m thÇn bÝ lÔ vËt ®æi phÇn th­ëng . nµy hµm sè bÞ cho cïng giíi mÆt ®óng lµ ®Þnh c¸i nót 
-- script viet hoa By http://tranhba.com  trë vÒ ®iÒu . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  nCount# cho cïng giíi mÆt trung ®Ých vËt phÈm tæng sè 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function ConvertRing(nCount) 
local worth, d, p, lvl, five = ComputeRingWorth(nCount) 
if(not worth) then return end 
-- script viet hoa By http://tranhba.com  ®· lÊy ®­îc hîp lý ®Ých gi¸ trÞ l­îng , thñ tiªu tÊt c¶ vËt phÈm , lùa chän ®èi øng t­ëng th­ëng 
local idx = Convert:convertring(worth, five) 
if(not idx) then -- script viet hoa By http://tranhba.com  thÊt b¹i , kh«ng cã chän lùa bÊt kú vËt g× 
Talk(1,"GiveUIForThing", "<#> lµm sao sÏ thÊt b¹i a , kh«ng thÓ nµo ## vËy lµm sao chuyÖn ? lµm l¹i # lµm l¹i ……") 
return 
end 
for i=1,nCount do -- script viet hoa By http://tranhba.com  khÊu trõ tÊt c¶ ®¹o cô 
RemoveItemByIndex(GetGiveItemUnit(i)) 
end 
return PayRing(idx, lvl, five) 
end 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Þnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #PayBonus(bonusIdx) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  cho nhµ ch¬i ph¸t ra settings/event/chinesenewyear/bonuslist.txt 
-- script viet hoa By http://tranhba.com  trung thø bonusIdx h¹ng ®Ých phÇn th­ëng 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  bonusIdx# phÇn th­ëng h¹ng biªn sè , ë tabfile trung ®Ých ®­îc ®Õm -1 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function PayRing(ringIdx, level, five) 
local num = tonumber(Convert.__ringtabfile:getCell(TF_BONUS_SEED, ringIdx)) 
local _nSeed = SetRandSeed(num) 
AddItem(0, 3, 0, level, five, 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P1,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P2,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P3,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P4,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P5,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P6,ringIdx)), 
tonumber(Convert.__ringtabfile:getCell(TF_BONUS_P7,ringIdx))) 

WriteLog(date("%H%M%S").."# tr­¬ng môc "..GetAccount().." , vai trß "..GetName().. 
" , ®æi lÊy ®­îc "..ringmsg[level].." , gi¸ trÞ l­îng v× #".. 
Convert.__ringtabfile:getCell(TF_BONUS_WORTH,ringIdx)) 
Talk(1, "","Ng­¬i hîp thµnh ra khái mét qu¶ "..ringmsg[level]) 
Msg2Player("Ng­¬i ®¹t ®­îc mét qu¶ "..ringmsg[level]) 
return 
end 
