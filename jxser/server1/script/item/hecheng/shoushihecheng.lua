/* 
if not AMULET then 
	Include ("\\script\\item\\hecheng\\amulet.lua")
end 

if not PENDANT then 
	Include ("\\script\\item\\hecheng\\pendant.lua")
end 

if not RING then 
	Include ("\\script\\item\\hecheng\\ring.lua")
end 
if not SHOSHI then 
SHOUSHI = 1 
end 
*/ 

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
	Include ("\\script\\item\\hecheng\\worthanalyse.lua")
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
self.__ringtabfile = new(KTabFile,"/settings/event/juanzhouhecheng/ringlist.txt","RING") 
self.__amulettabfile = new(KTabFile,"/settings/event/juanzhouhecheng/amuletlist.txt","AMULET") 
self.__pendanttabfile = new(KTabFile,"/settings/event/juanzhouhecheng/pendantlist.txt","PENDANT") 
self.__pendantWorth = new(WorthAnalyse,80) 
self.__amuletWorth = new(WorthAnalyse,80) 
self.__ringWorth = new(WorthAnalyse,80) 
return 
end, 


-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #:convert(worth) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  tõ gi¸ trŞ l­îng worth tİnh to¸n ra nhµ ch¬i ®em muèn ®Õn ®İch t­ëng th­ëng biªn sè . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  worth# thÇn bİ lÔ vËt ®İch gi¸ trŞ l­îng chi cïng . 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  nÕu nh­ thµnh c«ng , lµ trë vÒ ®o¹t ®­îc ®Õn t­ëng th­ëng ®İch t¸c dÉn , nÕu kh«ng v× nil 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
convertring = function(self,worth,mark) 
for i=1,self.__ringtabfile:getRow() do 
if (tonumber(self.__ringtabfile:getCell("Ngò hµnh ",i)) == mark or tonumber(self.__ringtabfile:getCell("Ngò hµnh ",i)) == 9) then 
self.__ringWorth:addWorth(i, tonumber(self.__ringtabfile:getCell("Worth",i)), tonumber(self.__ringtabfile:getCell("mID",i))) 
else 
self.__ringWorth:addWorth(i, 0, tonumber(self.__ringtabfile:getCell("mID",i))) 
end 
end 
self.__ringWorth:makeBaseP() 
self.__ringWorth:makeWorthP(worth) 
return self.__ringWorth:getFromWorth() 
end, 
convertpendant = function(self,worth, mark) 
for i=1,self.__pendanttabfile:getRow() do 
if (tonumber(self.__pendanttabfile:getCell("Ngò hµnh ",i)) == mark or tonumber(self.__pendanttabfile:getCell("Ngò hµnh ",i)) == 9) then 
self.__pendantWorth:addWorth(i, tonumber(self.__pendanttabfile:getCell("Worth",i)), tonumber(self.__pendanttabfile:getCell("mID",i))) 
else 
self.__pendantWorth:addWorth(i, 0, tonumber(self.__pendanttabfile:getCell("mID",i))) 
end 
end 
self.__pendantWorth:makeBaseP() 
self.__pendantWorth:makeWorthP(worth) 
return self.__pendantWorth:getFromWorth() 
end, 
convertamulet = function(self,worth, mark) 
for i=1,self.__amulettabfile:getRow() do 
if (tonumber(self.__amulettabfile:getCell("Ngò hµnh ",i)) == mark or tonumber(self.__amulettabfile:getCell("Ngò hµnh ",i)) == 9) then 
self.__amuletWorth:addWorth(i, tonumber(self.__amulettabfile:getCell("Worth",i)), tonumber(self.__amulettabfile:getCell("mID",i))) 
else 
self.__amuletWorth:addWorth(i, 0, tonumber(self.__amulettabfile:getCell("mID",i))) 
end 
end 
self.__amuletWorth:makeBaseP() 
self.__amuletWorth:makeWorthP(worth) 
return self.__amuletWorth:getFromWorth() 
end 
} 

-- script viet hoa By http://tranhba.com eg. 
Convert:loadSettings() 
ringmsg = 
{ 
" hoµng ngäc chiÕc nhÉn ", 
" « liu th¹ch chiÕc nhÉn ", 
" phï dung th¹ch chiÕc nhÉn ", 
" phØ thóy chiÕc nhÉn ", 
" thóy l­u th¹ch chiÕc nhÉn ", 
" tæ mÉu xanh biÕc chiÕc nhÉn ", 
" h¶i lam b¶o th¹ch chiÕc nhÉn ", 
" hång b¶o th¹ch chiÕc nhÉn ", 
" lam b¶o th¹ch chiÕc nhÉn ", 
" nhÉn kim c­¬ng " 
} 

pendantmsg = 
{ 
{"Hu©n y h­¬ng nang ","Hoa lµi h­¬ng nang ","Nhò h­¬ng h­¬ng nang ","Hoa lan h­¬ng nang ","Hîp vui mõng h­¬ng nang ","Tö t« h­¬ng nang ","Ch×m ®µn h­¬ng nang ","Tiªn x¹ h­¬ng nang ","Giµ nam h­¬ng nang "," Long Tiªn H­¬ng nang "}, 
{"Xanh biÕc du ngäc béi ","Kinh b¹ch ngäc béi ","Hoa ®µo ngäc béi ","Hoa mai ngäc béi ","N¨m mµu ngäc béi ","Thanh ngäc ngäc béi ","Bİch ngäc ngäc béi ","Mùc ngäc ngäc béi ","Hoµng ngäc ngäc béi ","Dª chi b¹ch ngäc "} 
} 

amuletmsg = 
{ 
{"§ång gi©y chuyÒn ","Ng©n gi©y chuyÒn ","D©y chuyÒn vµng ","B¹ch kim gi©y chuyÒn ","Ngäc ch©u gi©y chuyÒn ","Xanh biÕc tïng th¹ch gi©y chuyÒn ","Thñy tinh gi©y chuyÒn ","Khæng t­íc th¹ch gi©y chuyÒn ","Tr©n ch©u gi©y chuyÒn ","Kim c­¬ng gi©y chuyÒn "}, 
{"Xanh biÕc tïng th¹ch hé th©n phï ","San h« hé th©n phï ","M¾t mÌo hé th©n phï ","Hæ t×nh hé th©n phï ","Thñy tinh hé th©n phï ","Hæ ph¸ch hé th©n phï ","B¹ch phØ thóy hé th©n phï ","Hång phØ thóy hé th©n phï ","Tö phØ thóy hé th©n phï ","Xanh biÕc phØ thóy hé th©n phï "} 
} 

MAXGIVENUM = 20 -- script viet hoa By http://tranhba.com  cã thÓ cho lÔ vËt ®İch lín nhÊt th­îng h¹n 
TF_GIFT_WORTH = 3 -- script viet hoa By http://tranhba.com giftlvl.txt trung worth h¹ng ®İch nhãm ®Õm 

TF_BONUS_WORTH = 3 
TF_BONUS_SEED = 4 
TF_BONUS_P1 = 5 
TF_BONUS_P2 = 6 
TF_BONUS_P3 = 7 
TF_BONUS_P4 = 8 
TF_BONUS_P5 = 9 
TF_BONUS_P6 = 10 
TF_BONUS_P7 = 11 
TF_BONUS_F = 12 



function main() 
Talk(1, "GiveUIForThing","Hîp thµnh chiÕc nhÉn # mçi lÇn nhiÒu nhÊt bá vµo <color=yellow>20<color> c¸ gµ n¨m thÇn bİ lÔ vËt cïng mét mãn mµu xanh nh¹t <color=yellow> vò khİ trang bŞ <color> , cã thÓ hîp thµnh ra thay v× t­¬ng øng cÊp bËc # ngò hµnh thuéc tİnh ®İch ®å trang søc ®eo tay . bá vµo ®İch gµ n¨m thÇn bİ lÔ vËt ®İch tiÒm chÊt cµng cao , chiÕc nhÉn ®İch thuéc tİnh l¹i cµng h¶o . <enter> ®æi ph­¬ng ph¸p # vò khİ ®æi chiÕc nhÉn # ®İnh ®¸i hoÆc giÇy ®æi yªu trôy # y phôc hoÆc ®ai l­ng ®æi c¶nh mang . ") 
end 

function GiveUIForThing() 
GiveItemUI("§å trang søc ®eo tay hîp thµnh giíi mÆt ","T¹i h¹ mÆt ®İch vËt phÈm lan trong bá vµo nhiÒu nhÊt 20 c¸ gµ n¨m thÇn bİ lÔ vËt cïng mét mãn vò khİ trang bŞ . ", "ConvertThing", "onCancel" ); 
end 

function ConvertThing(nCount) 
local worth = 0 -- script viet hoa By http://tranhba.com  lÔ vËt gi¸ trŞ l­îng 
local maxCount = 0 -- script viet hoa By http://tranhba.com  lÔ vËt ®İch tæng sè 
local wnum = 0 
local thindex = 0 
if(nCount == 0) then 
Talk(1,"GiveUIForThing","<#> g× còng kh«ng cho , ng­¬i nghÜ lµm g× nha . ") 
return nil 
end 
for i=1,nCount do 
itemIdx = GetGiveItemUnit( i ) 
g, d, p, l, f = GetItemProp(itemIdx) 
if((g ~= 4 or (d < 508 or d > 518)) and (g ~= 0 or (d~=0 and d~=1 and d ~= 2 and d ~= 5 and d ~= 6 and d ~= 7 ))) then -- script viet hoa By http://tranhba.com  sai lÇm ®¹o cô -- script viet hoa By http://tranhba.com and d~=2 and d~=5 and d~=6 and d~=7 
Talk(1,"GiveUIForThing","<#> ng­¬i cho lµ t«m th­íc ®å nha , ng­êi xem kh«ng hiÓu chiÕp ? ") 
return nil 
end 
if(g == 0 ) then -- script viet hoa By http://tranhba.com  vò khİ trang bŞ 
magictype = GetItemMagicAttrib(itemIdx, 1) 
if (not magictype) then 
Talk(1, "GiveUIForThing", "<#> ng­¬i cho ta ph¶i lµ mét mãn cã mµu xanh da trêi thuéc tİnh ®İch vò khİ trang bŞ . ") 
return 
end 
if (magictype == 0 ) then 
Talk(1, "GiveUIForThing", "<#> ng­¬i cho ta ph¶i lµ mét mãn cã mµu xanh da trêi thuéc tİnh ®İch vò khİ trang bŞ . ") 
return 
end 
			wnum = wnum + 1
thindex = itemIdx 
else -- script viet hoa By http://tranhba.com  thÇn bİ lÔ vËt 

end 
end 
if (wnum > 1) then -- script viet hoa By http://tranhba.com  chØ cã thÓ ®Ó mét mãn trang bŞ 
Talk(1, "GiveUIForThing", "<#> nhiÒu nh­ vËy trang bŞ , ta kh«ng ph¶i lµ thïng r¸c a , tiªu hãa kh«ng ®­îc nhiÒu nh­ vËy ……") 
return nil 
end 
if (wnum < 1) then 
Talk(1, "GiveUIForThing", "<#> c¸i nµy …… ng­¬i c¸i g× vò khİ trang bŞ ®Òu kh«ng ®Ó , muèn ®æi ra ®å trang søc ®eo tay tíi ? ") 
return 
end 
gg, dd = GetItemProp(thindex) 
if(gg == 0 and (dd == 0 or dd == 1)) then -- script viet hoa By http://tranhba.com  chiÕc nhÉn 
ConvertRing(nCount) 
elseif (gg == 0 and (dd == 2 or dd == 6)) then -- script viet hoa By http://tranhba.com  c¶nh mang 
ConvertAmulet(nCount) 
elseif (gg == 0 and (dd == 7 or dd == 5)) then -- script viet hoa By http://tranhba.com  yªu trôy 
ConvertPendant(nCount) 
end 
end 

function onCancel() 
end
