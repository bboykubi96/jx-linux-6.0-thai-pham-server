
-- script viet hoa By http://tranhba.com ======== lo¹i ®Şnh nghÜa ====================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  lo¹i tªn #Convert 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  phô tr¸ch tİnh to¸n gµ n¨m thÇn bİ lÔ vËt th¨ng cÊp quan hÖ gi¸ trŞ l­îng cïng dïng gµ n¨m thÇn bİ 
-- script viet hoa By http://tranhba.com  lÔ vËt ®æi phÇn th­ëng gi¸ trŞ l­îng . cïng víi lùa chän phÇn th­ëng . 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  thµnh viªn thay ®æi l­îng # 
-- script viet hoa By http://tranhba.com  __gifttabfile# thÇn bİ lÔ vËt gi¸ trŞ l­îng tabfile 
-- script viet hoa By http://tranhba.com  __bonustabfile# phÇn th­ëng tabfile 
-- script viet hoa By http://tranhba.com  __giftWorth# thÇn bİ lÔ vËt th¨ng cÊp ®İch gi¸ trŞ l­îng biÓu 
-- script viet hoa By http://tranhba.com  __bonusWorth# phÇn th­ëng gi¸ trŞ l­îng biÓu 
-- script viet hoa By http://tranhba.com  thµnh viªn hµm sè # 
-- script viet hoa By http://tranhba.com  :loadSettings()# t¸i nhËp gi¸ trŞ l­îng thiÕt ®Şnh v¨n kiÖn . 
-- script viet hoa By http://tranhba.com  :giftLevelup(worth)# thÇn bİ lÔ vËt th¨ng cÊp 
-- script viet hoa By http://tranhba.com  :convert(worth)# dïng worth ®æi lÊy phÇn th­ëng 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  

if not STRING_HEAD then 
	Include ("\\script\\lib\\string.lua")
end 

if not MEM_HEAD then 
	Include ("\\script\\lib\\mem.lua")
end 

if not KTABFILE_HEAD then 
	Include ("\\script\\class\\ktabfile.lua")
end 

if not WORTHANALYSE_HEAD then 
	Include ("\\script\\class\\worthanalyse.lua")
end 

Convert = { 
-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #:loadSettings() 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  t¸i nhËp phèi trİ v¨n kiÖn còng tiÕn hµnh gi¸ trŞ l­îng ®İch tİnh to¸n . nªn hµm sè ®Çu tiªn t¸i nhËp 
-- script viet hoa By http://tranhba.com settings/event/chinesenewyear/giftlvlup.txt cïng 
-- script viet hoa By http://tranhba.com settings/event/chinesenewyear/bounslist.txt v¨n kiÖn , 
-- script viet hoa By http://tranhba.com  sau ®ã c¨n cø c¸i nµy hai ph©n v¨n kiÖn chia ra tİnh to¸n thÇn bİ lÔ vËt th¨ng cÊp ®İch gi¸ trŞ l­îng biÓu cïng 
-- script viet hoa By http://tranhba.com  thÇn bİ lÔ vËt ®æi phÇn th­ëng gi¸ trŞ l­îng biÓu . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
loadSettings = function(self) 
self.__gifttabfile = new(KTabFile,"/settings/event/juanzhouhecheng/giftslvlup.txt","GIFT") 
self.__crystaltabfile = new(KTabFile,"/settings/event/juanzhouhecheng/crystal.txt","CRYSTAL") 
self.__giftWorth = new(WorthAnalyse,80) 
for i=1,self.__gifttabfile:getRow() do 
self.__giftWorth:addWorth(i,tonumber(self.__gifttabfile:getCell("Worth",i))) 
end 
self.__giftWorth:makeBaseP() 
return 
end, 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #:giftLevelup(worth) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  tõ gi¸ trŞ l­îng worth chän lùa ®em muèn th¨ng cÊp lÊy ®­îc thÇn bİ lÔ vËt ®İch t¸c dÉn sè . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  worth# gi¸ trŞ l­îng , n¬i nµy lµ tõ nhµ ch¬i ®Ò giao ®İch thÇn bİ lÔ vËt tİnh ra 
-- script viet hoa By http://tranhba.com  gi¸ trŞ l­îng tæng céng . 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  thµnh c«ng lµ trë vÒ ®em muèn th¨ng cÊp lÊy ®­îc thÇn bİ lÔ vËt t¸c dÉn , nÕu kh«ng v× nil 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
giftLevelup =function(self,worth) 
self.__giftWorth:makeWorthP(worth) 
return self.__giftWorth:getFromWorth() 
end, 
} 



TID_CLONECRYSTAL = 503 
MAX_CRYSTAL_WORTH = 50000000 -- script viet hoa By http://tranhba.com  lín h¬n 5000 v¹n , dİnh lİu cµ thñy tinh 

MAXGIVENUM = 20 -- script viet hoa By http://tranhba.com  cã thÓ cho lÔ vËt ®İch lín nhÊt th­îng h¹n 
TF_GIFT_WORTH = 3 -- script viet hoa By http://tranhba.com giftlvl.txt trung worth h¹ng ®İch nhãm ®Õm 
TF_GIFT_P1 = 4 
TF_GIFT_P2 = 5 
TF_GIFT_P3 = 6 
TF_GIFT_P4 = 7 
TF_GIFT_CRYPTIC = 8 
TF_CRYSTAL_WORTH = 2 

Convert:loadSettings() 


-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #ComputeWorth(nCount) 
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
function ComputeWorth(nCount) 
local worth = 0 -- script viet hoa By http://tranhba.com  lÔ vËt gi¸ trŞ l­îng 
local crystal = 0 -- script viet hoa By http://tranhba.com  thñy tinh gi¸ trŞ l­îng 
local maxCount = 0 -- script viet hoa By http://tranhba.com  lÔ vËt ®İch tæng sè 

if(nCount == 0) then 
Talk(1, "GiveUIForGift", "<#> g× còng kh«ng cho , ng­¬i nghÜ lµm g× nha . ") 
return nil 
end 
for i=1,nCount do 
local itemIdx = GetGiveItemUnit( i ) 
local g,d,_ = GetItemProp(itemIdx) 

if(g ~= 4 or d<468 or (d >486 and d < 508) or d > 518) then -- script viet hoa By http://tranhba.com  sai lÇm ®¹o cô 
Talk(1,"GiveUIForGift","<#> ng­¬i cho lµ t«m th­íc ®å nha , ng­êi xem kh«ng hiÓu chiÕp ? ") 
return nil 
end 
if(d > 467 and d < 487) then -- script viet hoa By http://tranhba.com  b¨ng tinh 
			crystal = crystal + GetItemStackCount(itemIdx)* tonumber(Convert.__crystaltabfile:getCell(TF_CRYSTAL_WORTH,(d-467)))
else -- script viet hoa By http://tranhba.com  thÇn bİ lÔ vËt 
function checkGiftCount(idx,count) -- script viet hoa By http://tranhba.com  kiÓm tr¾c thÇn bİ nãi cô ®İch sè l­îng 
local num = GetItemStackCount(idx) 
				if(count + num > MAXGIVENUM) then -- script viet hoa By http://tranhba.com  ÊıÁ¿Ì«¶à
Talk(1, "GiveUIForGift", "<#> ng­¬i cho ®å qu¸ nhiÒu , kh«ng thÊy râ a . ") 
return nil 
end 
return num 
end 
local num = checkGiftCount(itemIdx,maxCount) 
if(not num) then 
return nil 
else 
if (d == 518) then 
Say("Ng­¬i bá vµo ®İch gµ n¨m thÇn bİ lÔ vËt trung cã 10 cÊp ®İch gµ n¨m thÇn bİ lÔ vËt , kh¶ n¨ng nµy sÏ ®­a ®Õn hîp thµnh thÊt b¹i , cã muèn hay kh«ng lÇn n÷a hîp thµnh ? ", 2,"Tèt , lÇn n÷a hîp thµnh /GiveUIForGift","Tİnh / chän , lÇn sau ®i /onCancel") 
return nil 
end 
				maxCount = maxCount + num
local lvl = d - 507 
				worth = worth + num * tonumber(Convert.__gifttabfile:getCell(TF_GIFT_WORTH,lvl))
end 
end 
end 
if(crystal > MAX_CRYSTAL_WORTH) then -- script viet hoa By http://tranhba.com  gi¸ trŞ l­îng lín h¬n 5000w , dİnh lİu cµ b¨ng tinh 
		SetTask(TID_CLONECRYSTAL,GetTask(TID_CLONECRYSTAL)+1)
return -1 
end 
if(worth ==0) then 
Talk(1, "GiveUIForGift", "<#> thËt xin lçi , İt nhÊt cÇn mét gµ n¨m thÇn bİ lÔ vËt . ") 
return nil 
end 

	return worth + crystal
end 
-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #GiveUIForGift() 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  më ra cho cïng giíi mÆt , dïng cho hîp thµnh gµ n¨m thÇn bİ lÔ vËt . bŞ lÔ quan ®İch ®èi tho¹i 
-- script viet hoa By http://tranhba.com  ®iÒu dông . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function GiveUIForGift() 
GiveItemUI("Gµ n¨m thÇn bİ lÔ vËt hîp thµnh ","Ng­¬i nhiÒu nhÊt bá vµo 20 c¸ gµ n¨m thÇn bİ lÔ vËt cïng nhiÒu gi¸ng sinh ho¹t ®éng lóc cßn d­ l¹i b¨ng tinh . ", "GiftLevelUp", "onCancel" ); 
end 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #GiftLevelUp(nCount) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  nhµ ch¬i lùa chän th¨ng cÊp thÇn bİ vËt phÈm sau , b¾n ra cho cïng giíi mÆt , nµy hµm sè v× 
-- script viet hoa By http://tranhba.com  nªn cho cïng giíi mÆt ®iÓm kİch x¸c ®Şnh c¸i nót sau ®İch trë vÒ ®iÒu hµm sè . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  cho cïng giíi mÆt trung ®¹o cô vËt phÈm ®İch tæng sè , nªn sè l­îng bÊt kÓ coi lµ ®iÖp gia ®İch sè l­îng . 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function GiftLevelUp(nCount) 
local worth = ComputeWorth(nCount) 
if(not worth) then return end 
-- script viet hoa By http://tranhba.com  ®· lÊy ®­îc hîp lı ®İch gi¸ trŞ l­îng , thñ tiªu tÊt c¶ vËt phÈm , lùa chän ®èi øng ®Æc thï thÇn bİ lÔ vËt 
for i=1,nCount do 
RemoveItemByIndex(GetGiveItemUnit( i )) 
end 
if(worth < 0) then 
-- script viet hoa By http://tranhba.com  dİnh lİu cµ thñy tinh , cóp tÊt c¶ vËt phÈm , còng ghi chĞp ngµy chİ 
WriteLog(date("%H%M%S").."# tr­¬ng môc "..GetAccount().." , vai trß "..GetName().. 
" ë hîp thµnh thÇn bİ lÔ vËt ®İch thêi ®iÓm , sö dông v­ît qua 5000 v¹n gi¸ trŞ l­îng ®İch b¨ng tinh , dİnh lİu cµ b¨ng tinh , cÆn kÏ kiÓm tra sau , c©n nh¾c ®«ng nªn sè tr­¬ng môc . ") 
if(GetTask(TID_CLONECRYSTAL) > 3) then 
WriteLog(date("%H%M%S").."# tr­¬ng môc "..GetAccount().." , vai trß "..GetName().. 
" ®· thø "..GetTask(TID_CLONECRYSTAL).." lÇn sö dông gi¸ trŞ l­îng ®İch cùc kú ngän b¨ng tinh , kú sao chĞp b¨ng tinh ®İch cã thÓ tİnh lín v« cïng , ®Ò nghŞ gia nhËp danh s¸ch ®en ") 
end 
-- script viet hoa By http://tranhba.com  lêi nãi thÇn sao tho¹i ®©y ? mª hoÆc mét c¸i 
Talk(1,"","<#> di , thÊt b¹i , ng­êi chuyÖn a ? ng­êi nµy # ng­êi c¶ nha ……") 
return 
end 
local idx = Convert:giftLevelup(worth) 
if(not idx) then -- script viet hoa By http://tranhba.com  thÊt b¹i , kh«ng cã chän lùa bÊt kú vËt g× 
Talk(1,"","<#> di , thÊt b¹i , ng­êi chuyÖn a ? ng­êi nµy # ng­êi c¶ nha ……") 
return 
end 
if (idx == 1) then 
Talk(1,"","<#> di , thÊt b¹i , ng­êi chuyÖn a ? ng­êi nµy # ng­êi c¶ nha ……") 
return 
end 

AddItem(tonumber(Convert.__gifttabfile:getCell(TF_GIFT_P1,idx)), 
tonumber(Convert.__gifttabfile:getCell(TF_GIFT_P2,idx)), 
tonumber(Convert.__gifttabfile:getCell(TF_GIFT_P3,idx)), 
tonumber(Convert.__gifttabfile:getCell(TF_GIFT_P4,idx)), 
0,0,0,0,0,0,0,0) 
WriteLog(date("%H%M%S").."# tr­¬ng môc "..GetAccount().." , vai trß "..GetName().. 
" , dïng "..worth.." gi¸ trŞ l­îng ®İch thÇn bİ lÔ vËt , hîp thµnh lÊy ®­îc ".. 
Convert.__gifttabfile:getCell(TF_GIFT_WORTH,idx).." gi¸ trŞ l­îng ®İch thÇn bİ lÔ vËt , hÖ thèng lÊy ®­îc ".. 
tostring(worth-Convert.__gifttabfile:getCell(TF_GIFT_WORTH,idx)).." cßn thõa l¹i gi¸ trŞ l­îng . ") 
Talk(1, "","<#> ng­¬i hîp thµnh ra khái mét tiÒm chÊt v× "..Convert.__gifttabfile:getCell(TF_GIFT_CRYPTIC,idx).." ®İch gµ n¨m thÇn bİ lÔ vËt ") 
Msg2Player("Ng­¬i thu ®­îc mét gµ n¨m thÇn bİ lÔ vËt ") 
return 
end 

function main() 
Talk(1, "GiveUIForGift","Hîp thµnh gµ n¨m thÇn bİ lÔ vËt # chØ cã thÓ bá vµo nhiÒu nhÊt 20 c¸ <color=yellow> gµ n¨m thÇn bİ lÔ vËt <color> , liÒn cã thÓ cã thÓ hîp thµnh cao cÊp h¬n ®İch gµ n¨m thÇn bİ lÔ vËt . nÕu nh­ ng­¬i cã gi¸ng sinh ho¹t ®éng lóc cßn d­ l¹i <color=yellow> b¨ng tinh <color> còng cã thÓ bá vµo nh¾c tíi cao hîp thµnh tû lÖ . ") 
end 

function onCancel() 
end
