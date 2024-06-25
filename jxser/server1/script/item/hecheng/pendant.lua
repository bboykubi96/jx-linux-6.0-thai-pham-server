/* 
if not PENDANT then 
PENDANT = 1 
end 
if not SHOSHI then 
	Include ("\\script\\item\\hecheng\\shoushihecheng.lua")
end 
*/ 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #ComputeJewelWorth(nCount) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  c¨n cø cho cïng giíi mÆt ®İch vËt phÈm , tİnh to¸n ra kú gi¸ trŞ l­îng . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  nCount# cho cïng giíi mÆt trung vËt kiÖn ®İch tæng sè 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  thµnh c«ng lµ trë vÒ gi¸ trŞ l­îng , nÕu kh«ng trë vÒ nil 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function ComputePendantWorth(nCount) 
local worth = 0 -- script viet hoa By http://tranhba.com  lÔ vËt gi¸ trŞ l­îng 
local maxCount = 0 -- script viet hoa By http://tranhba.com  lÔ vËt ®İch tæng sè 
local wnum = 0 

if(nCount == 0) then 
Talk(1,"GiveUIForThing","<#> g× còng kh«ng cho , ng­¬i nghÜ lµm g× nha . ") 
return nil 
end 
for i=1,nCount do 
local itemIdx = GetGiveItemUnit( i ) 
local g, d, p, l, f = GetItemProp(itemIdx) 

if((g ~= 4 or (d < 508 or d > 518)) and (g ~= 0 or (d~= 5 and d~= 7 ))) then -- script viet hoa By http://tranhba.com  sai lÇm ®¹o cô 
Talk(1,"GiveUIForThing","<#> ng­¬i cho lµ t«m th­íc ®å nha , ng­êi xem kh«ng hiÓu chiÕp ? ") 
return nil 
end 
if(g == 0) then -- script viet hoa By http://tranhba.com  vò khİ 
			wnum = wnum + 1

if (wnum > 1) then -- script viet hoa By http://tranhba.com  chØ cã thÓ ®Ó mét mãn trang bŞ 
Talk(1,"GiveUIForThing","<#> ng­¬i kh«ng muèn ®em t«m th­íc r¸c r­íi ®«ng ®«ng còng cho thØnh tho¶ng a , thØnh tho¶ng còng kh«ng ph¶i lµ thïng r¸c , « …… . ") 
return nil 
end 
det = d 
par = p 
lvl = l 
five = f 
else -- script viet hoa By http://tranhba.com  thÇn bİ lÔ vËt 
function checkGiftCount(idx,count) -- script viet hoa By http://tranhba.com  kiÓm tr¾c thÇn bİ nãi cô ®İch sè l­îng 
local num = GetItemStackCount(idx) 
				if(count + num > MAXGIVENUM) then -- script viet hoa By http://tranhba.com  ÊıÁ¿Ì«¶à
Talk(1,"GiveUIForThing","<#> ng­¬i cho ®å qu¸ nhiÒu , kh«ng thÊy râ a . ") 
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
Talk(1,"GiveUIForThing","<#> thËt xin lçi , İt nhÊt cÇn mét gµ n¨m thÇn bİ lÔ vËt . ") 
return nil 
end 
if (wnum == 0) then 
Talk(1,"GiveUIForThing","<#> thËt xin lçi , nhÊt ®Şnh ph¶i mét mãn ®Çu ®éi # hoÆc giÇy # . ") 
return nil 
end 

return worth, det, par, lvl, five 
end 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #ConvertBonus(nCount) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  dïng gµ n¨m thÇn bİ lÔ vËt ®æi phÇn th­ëng . nµy hµm sè bŞ cho cïng giíi mÆt ®óng lµ ®Şnh c¸i nót 
-- script viet hoa By http://tranhba.com  trë vÒ ®iÒu . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  nCount# cho cïng giíi mÆt trung ®İch vËt phÈm tæng sè 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function ConvertPendant(nCount) 
local worth, d, p, lvl, five = ComputePendantWorth(nCount) 
local tt = 0 
if(not worth) then return end 
-- script viet hoa By http://tranhba.com  ®· lÊy ®­îc hîp lı ®İch gi¸ trŞ l­îng , thñ tiªu tÊt c¶ vËt phÈm , lùa chän ®èi øng t­ëng th­ëng 
local idx = Convert:convertpendant(worth, five) 
if(not idx) then -- script viet hoa By http://tranhba.com  thÊt b¹i , kh«ng cã chän lùa bÊt kú vËt g× 
Talk(1,"GiveUIForThing","<#> di , thÊt b¹i , ng­êi chuyÖn a , ng­êi chuyÖn a ……") 
return 
end 

for i=1,nCount do -- script viet hoa By http://tranhba.com  khÊu trõ tÊt c¶ ®¹o cô 
RemoveItemByIndex(GetGiveItemUnit(i)) 
end 
return PayPendant(idx, d, p, lvl, five) 
end 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #PayPendant(bonusIdx) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  cho nhµ ch¬i ph¸t ra settings/event/chinesenewyear/bonuslist.txt 
-- script viet hoa By http://tranhba.com  trung thø bonusIdx h¹ng ®İch phÇn th­ëng 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  bonusIdx# phÇn th­ëng h¹ng biªn sè , ë tabfile trung ®İch ®­îc ®Õm -1 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function PayPendant(bonusIdx, det, par, level, five) 
if (det == 5) then 
if (par == 0 or par == 1) then 
par = 1 
else 
par = 0 
end 
else 
if (par >= 0 and par <= 6) then 
par = 1 
else 
par = 0 
end 
end 

local num = tonumber(Convert.__pendanttabfile:getCell(TF_BONUS_SEED, bonusIdx)) 
local _nSeed = SetRandSeed(num) 
AddItem(0, 9, par, level, five, 
Convert.__pendanttabfile:getCell(TF_BONUS_P1,bonusIdx), 
Convert.__pendanttabfile:getCell(TF_BONUS_P2,bonusIdx), 
Convert.__pendanttabfile:getCell(TF_BONUS_P3,bonusIdx), 
Convert.__pendanttabfile:getCell(TF_BONUS_P4,bonusIdx), 
Convert.__pendanttabfile:getCell(TF_BONUS_P5,bonusIdx), 
Convert.__pendanttabfile:getCell(TF_BONUS_P6,bonusIdx), 
Convert.__pendanttabfile:getCell(TF_BONUS_P7,bonusIdx)) 
SetRandSeed(_nSeed) 
WriteLog(date("%H%M%S").."# tr­¬ng môc "..GetAccount().." , vai trß "..GetName().. 
			"£¬¶Ò»»µÃµ½"..pendantmsg[par + 1][level].."£¬¼ÛÖµÁ¿Îª£º"..
Convert.__pendanttabfile:getCell(TF_BONUS_WORTH,bonusIdx)) 
	Talk(1, "", "ÄãºÏ³É³öÁËÒ»¼ş"..pendantmsg[par + 1][level])
	Msg2Player("Äã»ñµÃÒ»¼ş"..pendantmsg[par + 1][level])
return 
end 
