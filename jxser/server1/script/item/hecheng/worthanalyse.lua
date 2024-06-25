-- script viet hoa By http://tranhba.com ======== v¨n kiÖn ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn #worthanalyse.lua 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-25 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-25 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  ngµy lÔ ho¹t ®éng ®İch gi¸ trŞ l­îng ph©n tİch t­¬ng quan néi dung . chñ yÕu ph­¬ng ph¸p v× # 
-- script viet hoa By http://tranhba.com  chóng ta v× mçi phÇn th­ëng ngän mét c¸i gi¸ trŞ gi¸ l­îng Worth(i) , lµ lµm nªn gi¸ trŞ l­îng ®İch 
-- script viet hoa By http://tranhba.com  ®Õm ng­îc v× kú phÇn th­ëng xuÊt hiÖn c¨n b¶n x¸c suÊt nh©n tö . Factor(i) , trong ®ã i bµy tá 
-- script viet hoa By http://tranhba.com  thø i c¸ phÇn th­ëng ,Factor(i) bµy tá thø i c¸ phÇn th­ëng x¸c suÊt nh©n tö . 
-- script viet hoa By http://tranhba.com  nÕu tÊt c¶ phÇn th­ëng x¸c suÊt nh©n tö ®İch tæng céng v× # 
-- script viet hoa By http://tranhba.com 	FactorCount = Factor(1)+Factor(2)+...+Factor(n)
-- script viet hoa By http://tranhba.com  nh­ vËy , BaseP(i) = Factor(i)/FactorCount bµy tá v× thø i c¸ 
-- script viet hoa By http://tranhba.com  phÇn th­ëng xuÊt hiÖn c¨n b¶n x¸c suÊt . 
-- script viet hoa By http://tranhba.com 	BasePCount = BaseP(1)+BaseP(2)+...+BaseP(n) = 1
-- script viet hoa By http://tranhba.com  b©y giê nhµ ch¬i cÇn bá ra nhÊt ®Şnh gi¸ trŞ l­îng tíi m­u cÇu phÇn th­ëng , gi¶ thiÕt nhµ ch¬i së 
-- script viet hoa By http://tranhba.com  bá ra ®İch gi¸ trŞ l­îng v× #Worth , nh­ vËy WP(Worth,i) bµy tá v× nhµ ch¬i dïng 
-- script viet hoa By http://tranhba.com  gi¸ trŞ l­îng Worth lÊy ®­îc thø i c¸ phÇn th­ëng x¸c suÊt . 
-- script viet hoa By http://tranhba.com  chóng ta ®Ó cho <=Worth ®İch nhÊt ®Õn gÇn gi¸ trŞ l­îng lÔ phÈm tËp häp trung ®¶m nhiÖm chän j ®İch x¸c suÊt cã 
-- script viet hoa By http://tranhba.com  t¨ng lªn , kú t¨ng lªn phóc ®é tõ th× ra lµ BaseP(j) biÕn thµnh WorthP(j) , 
-- script viet hoa By http://tranhba.com  lµ , WP(Worth,j) = WorthP(j) 
-- script viet hoa By http://tranhba.com  ë chç nµy , chóng ta nhÊt ®Şnh ph¶i b¶o ®¶m WorthP(j) < 1 
-- script viet hoa By http://tranhba.com  v× b¶o ®¶m x¸c suÊt thñ h»ng , lµ 1-WorthP(j) ®İch x¸c suÊt cÇn bŞ nh÷ng kh¸c t­ëng 
-- script viet hoa By http://tranhba.com  phÈm tiªu hao hÕt . 
-- script viet hoa By http://tranhba.com  cho nªn , lµm trõ ®i cïng j phÇn th­ëng gi¸ trŞ l­îng t­¬ng ®¼ng ®İch phÇn th­ëng tËp häp ë ngoµi ®İch nh÷ng kh¸c 
-- script viet hoa By http://tranhba.com  phÇn th­ëng tÊt c¶ x¸c suÊt chi cïng v× # 
-- script viet hoa By http://tranhba.com  LeavePCount = 1 - BaseP(j) 
-- script viet hoa By http://tranhba.com  lµ cã nh÷ng kh¸c phÇn th­ëng cã Worth sinh ra míi x¸c suÊt v× 
-- script viet hoa By http://tranhba.com  WorthP(i) = (1-WorthP(j))*BaseP(i)/LeavePCount 
-- script viet hoa By http://tranhba.com  chóng ta gi¶ thiÕt WorthPjCount tæng cã thÓ v­ît qua x% ®İch x¸c suÊt , nh­ vËy , 
-- script viet hoa By http://tranhba.com  cung cÊp to¸n ph¸p m« h×nh # 
-- script viet hoa By http://tranhba.com  khi Min(Worth-Worth(j))>=0 tån t¹i , lµ 
-- script viet hoa By http://tranhba.com 	1:	WorthP(j) = BaseP(j)*(100-x)/100 + x/100
-- script viet hoa By http://tranhba.com  2: WorthP(i) = (1-WorthP(j)*BaseP(i)/LeavePCount 
-- script viet hoa By http://tranhba.com  thøc 1#2 chİnh lµ WP(Worth,n) ®İch biÓu hiÖn h×nh thøc 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  trß ch¬i ch©n vèn # kiÕm hiÖp t×nh duyªn in tê nÕt b¶n 
-- script viet hoa By http://tranhba.com  kim s¬n nhuyÔn kiÖn (software) cæ phÇn c«ng ty h÷u h¹n , copyright 1992-2005 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com DEBUG = 1 

if not WORTHANALYSE_HEAD then 
WORTHANALYSE_HEAD =1 

if not MEM_HEAD then 
	Include ("\\script\\lib\\mem.lua")
end 
if not LERROR_HEAD then 
	Include ("\\script\\class\\lerror.lua")
end 

-- script viet hoa By http://tranhba.com ======== lo¹i ®Şnh nghÜa ====================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  lo¹i tªn #WorthAnalyse 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-25 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-25 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  nªn lo¹i dïng cho xö lı dùa theo gi¸ trŞ l­îng ph¸t t­ëng ®İch t­¬ng quan thao t¸c . 
-- script viet hoa By http://tranhba.com  thµnh viªn thay ®æi l­îng # 
-- script viet hoa By http://tranhba.com  __maxP# phï hîp thµnh c«ng x¸c suÊt , tøc x% 
-- script viet hoa By http://tranhba.com  __worth# gi¸ trŞ l­îng liÖt biÓu 
-- script viet hoa By http://tranhba.com  __factors# x¸c suÊt nh©n tö liÖt biÓu , kú vi mét vµi tæ , ®Õm tæ t¸c dÉn 
-- script viet hoa By http://tranhba.com  ®èi øng t­¬ng quan gi¸ trŞ l­îng ®İch vËt phÈm t¸c dÉn , kú trŞ gi¸ lµ x¸c suÊt nh©n tö . 
-- script viet hoa By http://tranhba.com  __factorCount# x¸c suÊt nh©n tö tæng céng 
-- script viet hoa By http://tranhba.com  __baseP# vËt phÈm c¨n cø x¸c suÊt nh©n tö ®İch c¨n b¶n x¸c suÊt liÖt biÓu 
-- script viet hoa By http://tranhba.com  __worthP# vËt phÈm c¨n cø Worth biÕn ®æi sau ®İch x¸c suÊt liÖt biÓu 
-- script viet hoa By http://tranhba.com  __concern# ®Õn gÇn cho ra gi¸ trŞ l­îng Worth ®İch bé m«n 
-- script viet hoa By http://tranhba.com  __leavePC# cßn thõa l¹i vËt phÈm ®İch x¸c suÊt tæng céng 
-- script viet hoa By http://tranhba.com  thµnh viªn hµm sè # 
-- script viet hoa By http://tranhba.com  :addWorth(idx,worth)# gia nhËp thø idx vËt phÈm ®İch gi¸ trŞ l­îng 
-- script viet hoa By http://tranhba.com  :makeBaseP()# sinh thµnh c¨n b¶n x¸c suÊt liÖt biÓu 
-- script viet hoa By http://tranhba.com  :makeWorthP(worth)# c¨n cø worth sinh thµnh míi x¸c suÊt liÖt biÓu 
-- script viet hoa By http://tranhba.com  :getFromBase()# tõ c¨n b¶n x¸c suÊt biÓu trung chän lùa mét vËt phÈm 
-- script viet hoa By http://tranhba.com  :getFromWorth()# tõ Worth biÓu trung chän lùa mét vËt phÈm 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
WorthAnalyse = inherit(LError,{ 
__factorCount = 0, 
__maxP = 50, 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #:__new(maxP) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-2-1 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-2-1 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  cÊu t¹o hµm sè , còng míi b¾t ®Çu hãa maxP 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  maxP# mÖnh trung bé m«n gi¸ trŞ l­îng t¨ng lªn x¸c suÊt kh«ng nhá n¬i nµy trŞ gi¸ , nÕu nh­ kh«ng viÕt 
-- script viet hoa By http://tranhba.com  nµy trŞ gi¸ , lµ maxP = 50 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
__new = function(self,arg) 
if(not arg) then return end 
if(not arg[1]) then return end 
if(arg[1]<=0) then return end 
if(arg[1]>100) then 
self.__maxP = 100 
return 
end 
self.__maxP = arg[1] 
return 
end, 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #:addWorth 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-25 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-25 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  cho t¸c dÉn idx gia t¨ng mét c¸i gi¸ trŞ gi¸ l­îng , còng tİnh to¸n kú t­¬ng øng x¸c suÊt nh©n tö , 
-- script viet hoa By http://tranhba.com  khi liªn tôc sö dông nªn hµm sè gia t¨ng gi¸ trŞ l­îng ®İch thêi ®iÓm , t¸c dÉn sè tèt nhÊt lµ tõ 1 khai 
-- script viet hoa By http://tranhba.com  míi ®İch liªn tôc sè , lÊy b¶o ®¶m hiÖu suÊt cïng chİnh x¸c tİnh , khi gi¸ trŞ l­îng v× nil hoÆc 0 lóc , 
-- script viet hoa By http://tranhba.com  kú x¸c suÊt nh©n tö v× 0 , x¸c suÊt nh©n tö v× 0 ®İch bé m«n sÏ kh«ng bŞ getFromXXX hµm 
-- script viet hoa By http://tranhba.com  ®Õm lÊy ®­îc ®Õn . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  idx# t¸c dÉn sè , chØnh sæ 
-- script viet hoa By http://tranhba.com  worth# gi¸ trŞ l­îng lín h¬n 0 ®İch chØnh sæ , nÕu nh­ nªn tham sæ v× nil , lµ cam chŞu v× 0 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  bŞ lçi v× nil , nÕu kh«ng v× 1 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  local myworth = new(WorthAnalyse) 
-- script viet hoa By http://tranhba.com  for i=1,100 do 
-- script viet hoa By http://tranhba.com  wroth:addWorth(i,i) 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
addWorth = function(self,idx,worth,index) 
if(not worth) then worth = 0 end 
-- script viet hoa By http://tranhba.com  nµy vËn to¸n (operation) thiÖp cËp lÊy ®Õm ng­îc , cho nªn kh«ng thÓ nhá ®Õm ,0 bŞ ®Æc thï xö lı 
if(worth>0 and worth < 1) then 
self:__notify(1000,"Gi¸ trŞ l­îng kh«ng thÓ v× con sè nhá . ") 
return nil 
end 
if(not self.__worth) then 
self.__worth = {} 
self.__factors= {} 
end 
if(not self.__worth[idx]) then -- script viet hoa By http://tranhba.com  nµy h¹ng th­îng v« bÊt kú gi¸ trŞ g× l­îng 
self.__worth[idx] = {} 
self.__worth[idx][1] = worth 
self.__worth[idx][2] = index 
if(worth == 0) then 
self.__factors[idx] = 0 
else 
self.__factors[idx] = 1/worth -- script viet hoa By http://tranhba.com  vµo lóc nµy tİnh to¸n x¸c suÊt nh©n tö 
				self.__factorCount = self.__factorCount + 1/worth -- script viet hoa By http://tranhba.com ÔÚ´ËÊ±¼ÆËã__factorCount
end 
else -- script viet hoa By http://tranhba.com  nµy h¹ng ®· cã gi¸ trŞ l­îng , 
self.__factorCount = self.__factorCount - self.__factors[idx] 
self.__worth[idx][1] = worth 
if(worth == 0) then 
self.__factors[idx] = 0 
else 
self.__factors[idx] = 1/worth 
				self.__factorCount = self.__factorCount + 1/worth
end 
end 
self.__baseP = nil 
return 1 
end, 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #:makeBaseP 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-25 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-25 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  tõ x¸c suÊt nh©n tö tİnh to¸n lÊy ®­îc c¨n b¶n x¸c suÊt , còng b¶o tån ®Õn __baseP trung . nµy 
-- script viet hoa By http://tranhba.com  thao t¸c nhÊt ®Şnh ph¶i ë tÊt c¶ :addFactor sau míi cã thÓ sö dông , lÊy b¶o ®¶m chİnh x¸c tİnh , 
-- script viet hoa By http://tranhba.com  nÕu kh«ng , getFromXXX hÖ liÖt hµm sè sÏ kh«ng thµnh c«ng . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  thÊt b¹i v× nil , thµnh c«ng v× 1 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
makeBaseP = function(self) 
if(not self.__worth) then 
self:__notify(100,"no any worth.") 
return nil 
end 
if(not self.__baseP) then 
self.__baseP = {} 
for i = 1,getn(self.__factors) do 
if(self.__factors[i]) then 
self.__baseP[i] = self.__factors[i]/self.__factorCount 
else -- script viet hoa By http://tranhba.com nil 
self.__baseP[i] = 0 
end 
end 
end 
return 1 
end, 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #:makeWorthP 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-25 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-25 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  c¨n cø worth lÇn n÷a tİnh to¸n __baseP trung ®İch x¸c suÊt , còng cÊt gi÷ ®Õn __worthP 
-- script viet hoa By http://tranhba.com  trung . tr¶i qua söa sang l¹i sau ®İch __worthP sÏ ®em cïng cËn İt h¬n t­¬ng ®­¬ng víi worth ®İch bé m«n 
-- script viet hoa By http://tranhba.com  x¸c suÊt ®iÒu chØnh v­ît qua 50% . chó ı , thi hµnh nµy hµm sè tr­íc , nhÊt ®Şnh ph¶i tr­íc thi hµnh 
-- script viet hoa By http://tranhba.com :makeBaseP() , nÕu kh«ng , thi hµnh nªn hµm sè sÏ thÊt b¹i 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  worth# gi¸ trŞ l­îng , nµy ®Õm kh«ng thÓ v× 0 hoÆc nil 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  thÊt b¹i v× nil , thµnh c«ng v× 1 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
makeWorthP = function(self,worth) 
if(not self.__baseP) then 
self:__notify(100,"no any baseP.") 
return nil 
end 
local concern = nil -- script viet hoa By http://tranhba.com  míi b¾t ®Çu trŞ gi¸ 
for i=1,getn(self.__worth) do 
if(worth >= self.__worth[i][1]) then -- script viet hoa By http://tranhba.com i cã thÓ lµ chóng ta muèn t×m nhÊt ®Õn gÇn worth ®İch h¹ng 
if(not concern) then -- script viet hoa By http://tranhba.com  cßn kh«ng cã nhá nhÊt h¹ng 
concern={i} -- script viet hoa By http://tranhba.com  cËn <=worth ®İch tËp häp trung ®İch lín nhÊt h¹ng t¹m thêi lµ i 
else 
if(self.__worth[i][1] > self.__worth[concern[1]][1]) then -- script viet hoa By http://tranhba.com  nªn h¹ng lín h¬n , nh­ng <=worth 
concern = {i} -- script viet hoa By http://tranhba.com  nÆng ®­a __concern 
elseif(self.__worth[i][1] == self.__worth[concern[1]][1]) then 
						concern[getn(concern)+1] = i
end 
end 
end 
end 
if(not concern) then -- script viet hoa By http://tranhba.com  kh«ng cã İt h¬n t­¬ng ®­¬ng víi worth ®İch h¹ng ,__worthP = __baseP 
self.__worthP = self.__baseP 
return 1 
end 
self.__concern = concern[random(getn(concern))] -- script viet hoa By http://tranhba.com  ngÉu nhiªn chän lÊy tháa m·n ®iÒu kiÖn ®İch tïy ı h¹ng , t¨ng lªn kú x¸c suÊt 
self.__leavePC = 1 - self.__baseP[self.__concern] 
-- script viet hoa By http://tranhba.com  sinh thµnh __worthP 
self.__worthP = {} 
		-- script viet hoa By http://tranhba.com 	1:	WorthP(j) = BaseP(j)*(100-x)/100 + x/100
		self.__worthP[self.__concern] = self.__maxP/100 + self.__baseP[self.__concern]*(100-self.__maxP)/100
for i=1,getn(self.__baseP) do 
if(i~=self.__concern) then -- script viet hoa By http://tranhba.com i lµ x¸c suÊt bŞ t¨ng lªn h¹ng 
-- script viet hoa By http://tranhba.com  2: WorthP(i) = (1-WorthP(j))*BaseP(i)/LeavePCount 
self.__worthP[i] = (1-self.__worthP[self.__concern])*self.__baseP[i]/self.__leavePC 
end 
end -- script viet hoa By http://tranhba.com endfor i 
return 1 
end, 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #:getFromBase 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  tõ c¨n b¶n x¸c suÊt biÓu trung ngÉu nhiªn rót ra lÊy mét bé m«n . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  nÕu nh­ thµnh c«ng , trë vÒ bé m«n biªn sè , nÕu kh«ng trë vÒ nil 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
getFromBase = function(self) 
if(not self.__baseP) then 
self:__notify(300,"C¨n b¶n x¸c suÊt biÓu kh«ng tån t¹i . ") 
return nil 
end 
local rnd = random() 
local p = 0 
for i=1,getn(self.__baseP) do 
			p = p + self.__baseP[i]
if(rnd <= p and self.__worth[i][1]~=0) then 
return i 
end 
end 
self:__notify(500,"Kh«ng c¸ch nµo chän lùa thİch hîp bé m«n . ") 
return nil 
end, 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Şnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #getFromWorth 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-26 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  tõ gi¸ trŞ x¸c suÊt biÓu trung , ngÉu nhiªn chän lÊy mét bé m«n , gi¸ trŞ x¸c suÊt biÓu lµ theo theo 
-- script viet hoa By http://tranhba.com  cho cïng ®İch gi¸ trŞ l­îng worth tİnh ra , cho nªn , thi hµnh nµy hµm sè tr­íc , İt nhÊt 
-- script viet hoa By http://tranhba.com  cÇn thi hµnh mét lÇn :makeWorthP(worth) , lµ , ë makeWorthP sau 
-- script viet hoa By http://tranhba.com  ®İch getFromWorth ®Òu lµ tõ worth tİnh ra gi¸ trŞ x¸c suÊt biÓu trung lÊy ®­îc ®Õn ®İch 
-- script viet hoa By http://tranhba.com  bé m«n . 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  worth# gi¸ trŞ l­îng , nªn tham sæ sÏ ®em gi¸ trŞ l­îng biÓu trung İt h¬n t­¬ng ®­¬ng víi th¶ cïng h¾n 
-- script viet hoa By http://tranhba.com  nhÊt tiÕp cËn gi¸ trŞ l­îng ®İch bé m«n x¸c suÊt t¨ng lªn tíi 50% trë lªn 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ # 
-- script viet hoa By http://tranhba.com  nÕu nh­ thµnh c«ng , lµ trë vÒ lùa chän bé m«n biªn sè , nÕu kh«ng trë vÒ nil 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
getFromWorth = function(self) 
if(not self.__worthP) then 
self:__notify(400,"have no baseP.") 
return nil 
end 
local rnd = random() 
local p = 0 
for i=1,getn(self.__baseP) do 
			p = p + self.__worthP[i]
if(rnd <= p and self.__worth[i][1]~=0) then 
return self.__worth[i][2] 
end 
end 
self:__notify(500,"Kh«ng c¸ch nµo chän lùa thİch hîp bé m«n . ") 
return nil 
end, 

}) 

-- script viet hoa By http://tranhba.com eg. 
-- script viet hoa By http://tranhba.com Include("script/lib/string.lua") 
-- script viet hoa By http://tranhba.com local myworth = new(WorthAnalyse) 
-- script viet hoa By http://tranhba.com for i=1,200 do 
-- script viet hoa By http://tranhba.com  myworth:addWorth(i,random(200000)) 
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com myworth:makeBaseP() 
-- script viet hoa By http://tranhba.com h = openfile("settings/tmp.txt","w") 
-- script viet hoa By http://tranhba.com for i=1,1000 do 
-- script viet hoa By http://tranhba.com  local worth = random(200000) 
-- script viet hoa By http://tranhba.com  myworth:makeWorthP(worth) 
-- script viet hoa By http://tranhba.com  local idx = myworth:getFromWorth() 
-- script viet hoa By http://tranhba.com  if(idx) then 
-- script viet hoa By http://tranhba.com  local arr = { 
-- script viet hoa By http://tranhba.com  worth,myworth.__worth[idx][1],myworth.__worthP[idx] 
-- script viet hoa By http://tranhba.com  } 
-- script viet hoa By http://tranhba.com  write(h,join(arr,"\t").."\n") 
-- script viet hoa By http://tranhba.com  flush(h) 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com closefile(h) 

end 
