
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online thÕ giíi chĞn ho¹t ®éng thËt thÓ xö lı v¨n kiÖn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/05/31 PM 16:13 

-- script viet hoa By http://tranhba.com  n¨m giê r¹ng s¸ng , c¶m gi¸c bªn ng­êi n»m c« g¸i muèn ®øng dËy rêi ®i . 
-- script viet hoa By http://tranhba.com  thËt dµi ph¸t biÖn quĞt qua , trªn ng­êi quÇn ®iÖp ph¸t ra tu«n r¬i tiÕng vang . 
-- script viet hoa By http://tranhba.com  tõ da t¶n m¸t ra ®İch Êm ¸p nh­ tiÓu thó ®İch h¬i thë , vÉn nh­ cò quen thuéc . 
-- script viet hoa By http://tranhba.com  h¾n giùt m×nh tØnh l¹i , thÊy nµng dùa l­ng vµo t­êng ngåi ë gi­êng ®İch bªn trong , l¼ng lÆng h­íng vÒ phİa chiÕu vµo ®İch ¸nh tr¨ng rót ra mét chi khãi . 
-- script viet hoa By http://tranhba.com  nh×n h¾n , nhÑ giäng mØm c­êi , 
-- script viet hoa By http://tranhba.com  nãi , ta ë chç nµy . 
-- script viet hoa By http://tranhba.com  ta cßn kh«ng ®i . 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  häc vµo DEBUG th©u xuÊt xö lı v¨n kiÖn 
Include("\\script\\task\\system\\task_debug.lua");

IncludeLib("ITEM"); 

-- script viet hoa By http://tranhba.com  sinh ra mét mãn cïng truyÒn vµo ®İch Index ®İch nMagicType t­¬ng tù hoµng kim trang bŞ 
-- script viet hoa By http://tranhba.com  truyÒn vµo tham sæ 
-- script viet hoa By http://tranhba.com  nIndex: nguyªn thñy trang bŞ ®İch Index 
-- script viet hoa By http://tranhba.com  nNeedGold: muèn sinh thµnh hoµng kim trang bŞ t¸c dÉn 
-- script viet hoa By http://tranhba.com  nMagicType: muèn cè ®Şnh trang bŞ ma ph¸p thuéc tİnh lo¹i h×nh 
-- script viet hoa By http://tranhba.com  nCount: tİnh to¸n ®İch sè lÇn 
-- script viet hoa By http://tranhba.com  trë vÒ trŞ gi¸ 
-- script viet hoa By http://tranhba.com  int: kh«ng ph¶i lµ sè kh«ng lµ v× ®ang phôc vô khİ trung sinh ra trang bŞ ®İch tù sè , 0 lµ v× thÊt b¹i 
-- script viet hoa By http://tranhba.com  ary: trë vÒ sinh ra tÊt c¶ trang bŞ ®İch Index ®Õm tæ 
function createLikeEquip(nIndex, nNeedGold, nNeedMagicType, nCount) 
local nGoldIndex = 0; 
local nCreateIndex = 0; 

local nMagicIndex = 0; 
local nNeedValue = 0; 

local aryIndex = {}; 

local nMagicType, nP1, nP2, nP3 
local i=0; 

if nIndex<1 or nIndex==nil then 
return 0; 
end; 

CDebug:MessageOut("B¾t ®Çu sinh ra t¹m thêi trang bŞ #"); 

nGoldIndex = GetGlodEqIndex(nIndex); 

CDebug:MessageOut(" lÊy ®­îc ®Õn truyÒn vµo ®İch hoµng kim trang bŞ tù sè v× #"..nGoldIndex); 

-- script viet hoa By http://tranhba.com  lÊy ®­îc chØ ®Şnh ma ph¸p thuéc tİnh ®İch trŞ gi¸ 
for i=1, 6 do 
nMagicType, nP1, nP2, nP3 = GetItemMagicAttrib(nIndex, i); 
if nMagicType==nNeedMagicType then 
nMagicIndex = i; 
nNeedValue = nP1; 
CDebug:MessageOut(" lÊy ®­îc ®Õn chØ ®Şnh thuéc tİnh vŞ trİ ë #"..i.." trŞ sè v× #"..nNeedValue); 
end; 
end; 

if nNeedValue==0 then 
return 0; 
end; 

-- script viet hoa By http://tranhba.com  // chøc n¨ng # gia t¨ng chØ ®Şnh cÆn kÏ tin tøc vËt phÈm ®Õn trß ch¬i thÕ giíi // 
-- script viet hoa By http://tranhba.com  // c¸ch thøc #NewItemEx( nVersion, uRandSeed, nQuality, nItemClass, nDetailType, nParticualrType, nLevel, nSeries, nLuck, nItemLevel..6 ) 
-- script viet hoa By http://tranhba.com // trë vÒ #nItemIdx // Fanghao_Wu 2006.06.01 //-- script viet hoa By http://tranhba.com  
for i=1, nCount do 

nCreateIndex = NewItemEx(4, 0, 1, 0, nNeedGold - 1, 0, 0, 0, 0, 0); 
nMagicType, nP1, nP2, nP3 = GetItemMagicAttrib(nCreateIndex, nMagicIndex); 

CDebug:MessageOut("Sinh ra vËt phÈm tù sè #"..nCreateIndex.." ma ph¸p thuéc tİnh v× #"..nP1); 

tinsert(aryIndex, nCreateIndex); 

if nMagicType==nNeedMagicType and nP1==nNeedValue then 
CDebug:MessageOut("Cïng chØ ®Şnh thuéc tİnh t­¬ng ®¼ng #"..nCreateIndex); 
return nCreateIndex, aryIndex; 
end; 
end; 

return 0, aryIndex; 
end;
