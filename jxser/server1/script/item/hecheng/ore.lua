if not STRING_HEAD then 
	Include ("\\script\\lib\\string.lua")
end 

if not KTABFILE_HEAD then 
	Include ("\\script\\class\\ktabfile.lua")
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
self.__oretabfile = new(KTabFile,"/settings/item/004/itemvalue/ore.txt","ORE") 
end 
} 

MAXGIVENUM = 50 -- script viet hoa By http://tranhba.com  cã thÓ cho lín nhÊt th­îng h¹n 
TF_ORE_WORTH = 2 

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
local maxCount = 0 -- script viet hoa By http://tranhba.com  lÔ vËt ®İch tæng sè 
local mark = 0 

if(nCount == 0) then 
Talk(1,"GiveUIForOre","<#> ng­¬i g× th­íc ®Òu kh«ng ®Ó , thÕ nµo hîp thµnh chiÕp ? ") 
return nil 
end 
for i=1,nCount do 
local itemIdx = GetGiveItemUnit(i) 
local g,d,p,lvl = GetItemProp(itemIdx) 

if (mark ~= 0) then 
if (mark ~= lvl) then 

Talk(1,"GiveUIForOre","<#> ng­¬i bá vµo ®İch ®Òu lµ g× th­íc ®å ? gièng nh­ cÊp bËc ®Òu kh«ng cïng sao . ") 
return nil 
end 
end 
mark = lvl 

if (lvl > 4) then 
Talk(1, "GiveUIForOre", "<#> ng­¬i bá vµo ®İch huyÒn tinh qu¸ng th¹ch cÊp bËc qu¸ cao , v­ît ra khái n¨ng lùc cña ta ph¹m vi . ") 
return nil 
end 
if(g ~= 6 or p ~= 147) then -- script viet hoa By http://tranhba.com  sai lÇm ®¹o cô 
Talk(1, "GiveUIForOre", "<#> ng­¬i bá vµo ®İch ®Òu lµ g× th­íc ®å ? lµ huyÒn tinh qu¸ng th¹ch sao ? ") 
return nil 
end 
function checkGiftCount(idx,count) -- script viet hoa By http://tranhba.com  kiÓm tr¾c thÇn bİ nãi cô ®İch sè l­îng 
local num = GetItemStackCount(idx) 
			if(count + num > MAXGIVENUM) then -- script viet hoa By http://tranhba.com  ÊıÁ¿Ì«¶à
Talk(1,"GiveUIForOre","<#> ng­¬i cho ®å qu¸ nhiÒu , kh«ng thÊy râ a , h«n mª ……") 
return nil 
end 
return num 
end 
local num = checkGiftCount(itemIdx,maxCount) 
if(not num) then 
return nil 
else 
			maxCount = maxCount + num
			worth = worth + num * tonumber(Convert.__oretabfile:getCell(TF_ORE_WORTH,lvl))
end 

end 

return worth, mark 
end 
-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #GiveUIForOre() 
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
function GiveUIForOre() 
GiveItemUI("HuyÒn tinh qu¸ng th¹ch hîp thµnh ","§em nhiÒu nhÊt 50 c¸ cïng mét ®¼ng cÊp ®İch huyÒn tinh qu¸ng th¹ch bá vµo vËt phÈm lan bªn trong , liÒn cã thÓ hîp thµnh ra t­¬ng øng gi¸ trŞ ®èi øng c¸ ®Õm ®İch líp m­êi cÊp bËc ®İch huyÒn tinh qu¸ng th¹ch . ", "OreLevelUp", "onCancel" ); 
end 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #OreLevelUp(nCount) 
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
function OreLevelUp(nCount) 
local worth, lvl = ComputeWorth(nCount) 
if(not worth) then return end 
-- script viet hoa By http://tranhba.com  ®· lÊy ®­îc hîp lı ®İch gi¸ trŞ l­îng , thñ tiªu tÊt c¶ vËt phÈm , lùa chän ®èi øng ®Æc thï thÇn bİ lÔ vËt 
local num, worth2 = ConvertWorth(worth, lvl) 
	local lvl2 = lvl + 1

for i=1,nCount do 
RemoveItemByIndex(GetGiveItemUnit( i )) 
end 
if (num < 1) then 
Talk(1, "","Ai nha nha , hîp thµnh thÊt b¹i , cÇm İt nh­ vËy ®İch huyÒn tinh qu¸ng th¹ch tíi hîp thµnh cao cÊp nh­ng lµ cã rÊt lín nguy hiÓm tİnh ®©y #") 
return 
end 

if(not num) then -- script viet hoa By http://tranhba.com  thÊt b¹i , kh«ng cã chän lùa bÊt kú vËt g× 
Talk(1,"","<#> di , thÊt b¹i , ng­êi chuyÖn a ? c¸i nµy # c¸i nµy # ng­¬i h­íng GM håi b¸o mét chót ®i , ta kh«ng biÕt lµm sao b©y giê a #") 
print("Error: the number of ore is non.") 
return 
end 

AddStackItem(num, 6, 1, 147, lvl2, 1, 1, 1) 
WriteLog(date("%H%M%S").."# tr­¬ng môc "..GetAccount().." , vai trß "..GetName().. 
" , dïng céng "..worth.." gi¸ trŞ l­îng ®İch "..lvl.." cÊp bËc ®İch huyÒn tinh qu¸ng th¹ch , hîp thµnh lÊy ®­îc ".. 
num.." c¸ "..lvl2.." cÊp bËc ®İch huyÒn tinh qu¸ng th¹ch , hÖ thèng lÊy ®­îc ".. 
worth-worth2.." cßn thõa l¹i gi¸ trŞ l­îng . ") 
Talk(1, "","Ng­¬i hîp thµnh ra khái <color=yellow>"..num.."<color> c¸ <color=yellow>"..lvl2.."<color> cÊp bËc ®İch huyÒn tinh qu¸ng th¹ch #") 
Msg2Player("Ng­¬i thu ®­îc "..num.." c¸ huyÒn tinh qu¸ng th¹ch ") 
return 
end 

function ConvertWorth(worth, lvl) 
	local lvlworth = tonumber(Convert.__oretabfile:getCell(TF_ORE_WORTH,lvl + 1))
count = floor(worth / lvlworth) 
	value = count * tonumber(Convert.__oretabfile:getCell(TF_ORE_WORTH,lvl + 1))
if ( random( lvlworth) < (worth - value) and (worth - value) ~= 0) then 
		count = count + 1
end 
return count, value 
end 


function main() 
Talk(1, "GiveUIForOre","Hîp thµnh cao cÊp huyÒn tinh qu¸ng th¹ch # mçi lÇn nhiÒu nhÊt bá vµo <color=yellow>50<color> c¸ <color=yellow> cïng mét ®¼ng cÊp <color> ®İch huyÒn tinh qu¸ng th¹ch , liÒn cã thÓ hîp thµnh ra líp m­êi cÊp bËc ®İch huyÒn tinh qu¸ng th¹ch . nh­ng lµ , cao nhÊt chØ cã thÓ hîp thµnh ra cÊp bËc v× <color=yellow>5<color> ®İch huyÒn tinh qu¸ng th¹ch . ") 
return 
end 

function onCancel() 
end
