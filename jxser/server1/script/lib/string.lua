-- script viet hoa By http://tranhba.com ======== v¨n kiÖn ®Þnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn #string.lua 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2004-6-1 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-24 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  ph¸t triÓn lua kh«ng cung cÊp tù phï chuçi xö lý hµm sè 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  trß ch¬i ch©n vèn # kiÕm hiÖp t×nh duyªn in tê nÕt b¶n 
-- script viet hoa By http://tranhba.com  kim s¬n nhuyÔn kiÖn (software) cæ phÇn c«ng ty h÷u h¹n , copyright 1992-2005 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  

if not STRING_HEAD then 
STRING_HEAD = 1 


-- script viet hoa By http://tranhba.com  trë xuèng ba hµm sè #replace()#split()#join()# tån t¹i mét Ýt tÖ ®oan , cè common.lua trung lÇn n÷a ®Þnh nghÜa liÔu ba cïng tªn hµm sè 
-- script viet hoa By http://tranhba.com  v× ®Ó tr¸nh cho bæn v¨n mãn ®em common.lua trung ®Ých hµm sè bao trïm r¬i , t¨ng thªm nµy ®iÒu kiÖn ph¸n ®o¸n 
-- script viet hoa By http://tranhba.com by fanzai 2005-12-28 20:46 
-- script viet hoa By http://tranhba.com  if (not COMMON_HEAD) then 
if (1) then 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Þnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #replace(str,pattern,s) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-27 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  dïng tù phï chuçi s thay thÕ tù phï chuçi str trung ®Ých pattern 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  str# nguyªn tù phï chuçi n 
-- script viet hoa By http://tranhba.com  pattern# muèn thay ®æi tù phï chuçi 
-- script viet hoa By http://tranhba.com  s# thay thÕ pattern ®Ých tù phï chuçi 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ # 
-- script viet hoa By http://tranhba.com  thay thÕ sau ®Ých tù phï chuçi . 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  v« 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function replace(str,pattern,s) 
/* 
local startS,endS = strfind(str,pattern) 
while(startS) do 
		str = strsub(str,1,startS-1)..s..strsub(str,endS+1,strlen(str))
startS,endS = strfind(str,pattern) 
end 
return str 
*/ 
PushString(str) 
ReplaceString(pattern, s) 
return PopString() 
end 
-- script viet hoa By http://tranhba.com ======== hµm sè ®Þnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #split(str,splitor) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2004-6-1 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2004-6-1 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  ®em tù phï chuçi str dïng ph©n liÖt phï splitor ph©n liÖt thµnh ®Õm tæ h×nh thøc 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  str# bÞ ph©n liÖt ®Ých tù phï chuçi 
-- script viet hoa By http://tranhba.com  splitor# ph©n liÖt phï , nÕu nh­ nªn tham sæ kh«ng cã , cam chÞu v× #,# 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ # 
-- script viet hoa By http://tranhba.com  bÞ ph©n liÖt ®Ých ®Õm tæ # nÕu nh­ tù phï chuçi str trung kh«ng cã bao hµm ph©n liÖt phï splitor , 
-- script viet hoa By http://tranhba.com  lµ trë vÒ ®Ých ®Õm tæ chØ cã # c¸ nguyªn tè , nguyªn tè néi dung chÝnh lµ str b¶n th©n # 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  local s = "aaa,bbb,ccc,ddd" 
-- script viet hoa By http://tranhba.com  local arr = splite(s,",") 
-- script viet hoa By http://tranhba.com  lµ , arr ®Ých néi dung v× # 
-- script viet hoa By http://tranhba.com  arr[1]#aaa 
-- script viet hoa By http://tranhba.com  arr[2]#bbb 
-- script viet hoa By http://tranhba.com  arr[3]#ccc 
-- script viet hoa By http://tranhba.com  arr[4]#ddd 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function split(str,splitor) 
if(splitor==nil) then 
splitor="," 
end 
local strArray={} 
local strStart=1 
local splitorLen = strlen(splitor) 
local index=strfind(str,splitor,strStart) 
if(index==nil) then 
strArray[1]=str 
return strArray 
end 
local i=1 
while index do 
strArray[i]=strsub(str,strStart,index-1) 
		i=i+1
		strStart=index+splitorLen
index = strfind(str,splitor,strStart) 
end 
strArray[i]=strsub(str,strStart,strlen(str)) 
return strArray 
end 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Þnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #join(arr,insertor) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2004-6-1 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-24 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  ®em mét duy ®Õm tæ arr bªn trong ®Ých nguyªn tè néi dung dïng insertor liªn tiÕp , arr ®Ých 
-- script viet hoa By http://tranhba.com  nguyªn tè tèt nhÊt v× tù phï chuçi lo¹i h×nh , con sè lo¹i h×nh còng cã thÓ # 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  arr# bÞ liªn tiÕp ®Ých ®Õm tæ 
-- script viet hoa By http://tranhba.com  insertor# c¾m vµo phï , nªn tham sæ kh«ng cã , cam chÞu c¾m vµo phï v× #,# 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ # 
-- script viet hoa By http://tranhba.com  trë vÒ liªn tiÕp sau ®Ých tù phï chuçi # nÕu nh­ arr kh«ng cã bÊt kú nguyªn tè , lµ trë vÒ 
-- script viet hoa By http://tranhba.com nil# 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  local sarr = {"a","b","c","d"} 
-- script viet hoa By http://tranhba.com  local s = join(sarr,",") 
-- script viet hoa By http://tranhba.com  lµ #s ®Ých kÕt qu¶ v× 
-- script viet hoa By http://tranhba.com  s#"a,b,c,d" 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function join(tb, str_sep) 
if (not str_sep) then 
str_sep = "," 
end 
local str = "" 
if (getn(tb) > 0) then 
PushString(tb[1]) 
for i = 2, getn(tb) do 
AppendString(str_sep) 
AppendString(tb[i]) 
end 
str = PopString() 
end 
return str 
end 

end -- script viet hoa By http://tranhba.com if (not COMMON_HEAD) then 

-- script viet hoa By http://tranhba.com ======== hµm sè ®Þnh nghÜa ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hµm sè nguyªn h×nh #trim(str) 
-- script viet hoa By http://tranhba.com  t¸c gi¶ #yfeng 
-- script viet hoa By http://tranhba.com  khai s¸ng nhËt kú #2004-6-1 
-- script viet hoa By http://tranhba.com  cuèi cïng söa ®æi nhËt kú #2005-1-24 
-- script viet hoa By http://tranhba.com  chøc n¨ng tù thuËt # 
-- script viet hoa By http://tranhba.com  thñ tiªu tù phï chuçi str l­ìng ®oan ®Ých trèng kh«ng ký hiÖu , nÕu nh­ kh«ng cã trèng kh«ng ký hiÖu , lµ 
-- script viet hoa By http://tranhba.com  kh«ng thñ tiªu # 
-- script viet hoa By http://tranhba.com  tham sæ # 
-- script viet hoa By http://tranhba.com  str# bÞ thñ tiªu trèng kh«ng ký hiÖu ®Ých tù phï chuçi 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ # 
-- script viet hoa By http://tranhba.com  bÞ thñ tiªu trèng kh«ng phï ®Ých tù phï chuçi 
-- script viet hoa By http://tranhba.com  dïng lÖ # 
-- script viet hoa By http://tranhba.com  local s = " dddd " 
-- script viet hoa By http://tranhba.com  s = trim(s) 
-- script viet hoa By http://tranhba.com  lµ , s ®Ých kÕt qu¶ v× # 
-- script viet hoa By http://tranhba.com  s#"dddd" 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
function trim(str) 
/* 
	local start,last = strfind(str,"%S+.*%S+")
print(tostring(start).."|"..tostring(last)) 
if(start==nil or last==nil) then 
return str 
end 
return strsub(str,start,last) 
*/ 
PushString(str) 
TrimString() 
return PopString() 
end 

-- script viet hoa By http://tranhba.com -RGB con sè chuyÓn ®æi thµnh 16 vµo chÕ bµy tá ®Ých tù phï chuçi 
function toColor(r,g,b) 
if(not tonumber(r)) then r=0 end 
if(not tonumber(g)) then g=0 end 
if(not tonumber(b)) then b=0 end 
if(r<0) then r=0 end 
if(g<0) then g=0 end 
if(b<0) then g=0 end 
if(r>255) then r=255 end 
if(g>255) then g=255 end 
if(b>255) then b=255 end 
	return r*65536+g*256+b
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com - ®em ngò hµnh trÞ sè chuyÓn ®æi thµnh mµu s¾c rùc rì ngò hµnh ch÷ h¸n 
SERIESWORD = { 
{ " kim ", "metal" }, 
{ " méc ", "wood" }, 
{ " n­íc ", "water" }, 
{ " löa ", "fire" }, 
{ " ®Êt ", "earth" } 
} 

function toSeriesColorText(text, sno) 
if (sno < 0 or sno >= getn(SERIESWORD)) then 
return text; 
else 
		return "<color="..SERIESWORD[sno+1][2]..">"..text.."<color>";
end 
end 

function toSeries(sno, bUnColorful) 
if(not tonumber(sno)) then return "error" end 
if(sno < 0 or sno > 4) then return " v« " end 
if (bUnColorful == 1) then 
		return SERIESWORD[sno+1][1];
else 
		return toSeriesColorText(SERIESWORD[sno+1][1], sno);
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com - ®em cÊp bËc con sè chuyÓn ®æi thµnh mµu s¾c rùc rì cÊp bËc ch÷ h¸n 
LEVELWORD = { 
"<color="..toColor(200,200,200).."> 1 cÊp <color>", 
"<color="..toColor(0,200,0).."> 2 cÊp <color>", 
"<color="..toColor(200,0,0).."> 3 cÊp <color>", 
"<color="..toColor(200,0,200).."> 4 cÊp <color>", 
"<color="..toColor(200,200,0).."> 5 cÊp <color>", 
"<color="..toColor(0,0,255).."> 6 cÊp <color>", 
"<color="..toColor(0,255,0).."> 7 cÊp <color>", 
"<color="..toColor(255,0,0).."> 8 cÊp <color>", 
"<color="..toColor(255,0,255).."> 9 cÊp <color>", 
"<color="..toColor(255,255,0)..">10 cÊp <color>", 
} 

function toLevel(lvl) 
if(not tonumber(lvl)) then return "error" end 
if(lvl < 0 or lvl > 10) then return " kh«ng biÕt " end 
return LEVELWORD[lvl] 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function transferDigit2CnNum(nDigit) 
local tbModelUnit = { 
[1] = "", 
[2] = " v¹n ", 
[3] = " øc ", 
}; 

local nDigitTmp = nDigit; -- script viet hoa By http://tranhba.com  t¹m thêi thay ®æi l­îng , 
local n4LenNum = 0; -- script viet hoa By http://tranhba.com  mçi mét lÇn ®èi víi nDigit lÊy 4 vÞ thao t¸c ,n4LenNum bµy tá lÊy ra ®Ých ®Õm ®Ých trÞ gi¸ 
local nPreNum = 0; -- script viet hoa By http://tranhba.com  ghi chÐp tr­íc mét lÇn tiÕn hµnh lÊy 4 vÞ thao t¸c n4LenNum ®Ých trÞ gi¸ 
local szCnNum = ""; -- script viet hoa By http://tranhba.com  chÝnh lµ muèn cÇu kÕt qu¶ 
local szNumTmp = ""; -- script viet hoa By http://tranhba.com  t¹m thêi thay ®æi l­îng , mçi lÊy bèn vÞ ®Ých thao t¸c trung lÊy ®­îc Trung v¨n con sè 

if (nDigit == 0) then 
szCnNum = "0"; 
return szCnNum; 
end 

if (nDigit < 0) then 
nDigitTmp = -nDigit; 
end 

-- script viet hoa By http://tranhba.com  chia ra tõ c¸ , v¹n , øc ba ®o¹n c©n nh¾c , bëi v× nDigit ®Ých trÞ gi¸ Ýt h¬n 1 v¹n øc , cho nªn mçi mét ®o¹n ®Òu kh«ng v­ît qua 4 vÞ 
for i = 1, getn(tbModelUnit) do 
szNumTmp = ""; 
n4LenNum = mod(nDigitTmp , 10000); 
if (n4LenNum ~= 0) then 
-- script viet hoa By http://tranhba.com szNumTmp = transfer4LenDigit2CnNum(n4LenNum); -- script viet hoa By http://tranhba.com  lÊy ®­îc nªn bèn vÞ ®Ých Trung v¨n biÓu ®¹t thøc 
szNumTmp = n4LenNum 
szNumTmp = szNumTmp..tbModelUnit[i]; -- script viet hoa By http://tranhba.com  céng thªm ®¬n vÞ 
end 
szCnNum = szNumTmp..szCnNum; 

nPreNum = n4LenNum; 
nDigitTmp = floor(nDigitTmp / 10000); 
if (nDigitTmp == 0) then 
break; 
end 
end 
if (nDigit < 0) then 
szCnNum = "-"..szCnNum; 
end 
return szCnNum; 
end 

end 
