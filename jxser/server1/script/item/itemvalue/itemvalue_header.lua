-- script viet hoa By http://tranhba.com  gi¸ trÞ l­îng ch©n vèn ®Çu v¨n kiÖn 
-- script viet hoa By http://tranhba.com  Fanghao_Wu 2005.1.12 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  chøc n¨ng # vËt phÈm gi¸ trÞ l­îng x¸c suÊt dêi ®i hµm sè ®èi ngo¹i tiÕp lêi 
-- script viet hoa By http://tranhba.com  tham sæ #dSrcItemVal nguyªn vËt phÈm gi¸ trÞ l­îng , arydDesItemVal môc tiªu vËt phÈm gi¸ trÞ l­îng ®Õm tæ 
-- script viet hoa By http://tranhba.com  trë vÒ # chän tróng ®Ých môc tiªu vËt phÈm t¸c dÉn #0 bµy tá bÞ lçi hoÆc lµ kh«ng cã chän tróng bÊt kú mét c¸i nµo môc tiªu vËt phÈm # , c¸c môc tiªu vËt phÈm ®Ých chän tróng x¸c suÊt ®Õm tæ , tÊt c¶ môc tiªu vËt phÈm ®Ých chän tróng x¸c suÊt chi cïng 
function TransItemVal( dSrcItemVal, arydDesItemVal ) 
if( dSrcItemVal <= 0 or getn( arydDesItemVal ) <= 0 ) then 
return 0, nil, 0; 
end 

local nDesItemCount = getn( arydDesItemVal ); 
local dProbRandNum = random(); 
local arydDesItemValSort = {}; 
local arynDesItemValIdx = {}; 
local arydDesItemValTemp = {}; 
local arydDesItemProbSort = {}; 
local arydDesItemProb = {}; 
local dDesItemProbSum = 0; 
local nSelDesItemIdx = 0; 

-- script viet hoa By http://tranhba.com  míi b¾t ®Çu hãa 
for i = 1, nDesItemCount do 
arydDesItemValSort[i] = arydDesItemVal[i]; 
arydDesItemValTemp[i] = arydDesItemVal[i]; 
arydDesItemProbSort[i] = 0; 
end 
-- script viet hoa By http://tranhba.com  tõ nhá ®Õn lín s¾p xÕp thø tù 
inssort( arydDesItemValSort, 1, nDesItemCount ); 
-- script viet hoa By http://tranhba.com  b¶o tån s¾p xÕp thø tù sau #arydDesItemValSort# ®Ých cïng s¾p xÕp thø tù tr­íc #arydDesItemVal# ®Ých t¸c dÉn ®èi øng quan hÖ # arynDesItemValIdx[ s¾p xÕp thø tù sau t¸c dÉn ] = s¾p xÕp thø tù tr­íc t¸c dÉn 
for i = 1, nDesItemCount do 
for j = 1, nDesItemCount do 
if( arydDesItemValSort[i] == arydDesItemValTemp[j] ) then 
arynDesItemValIdx[i] = j; 
arydDesItemValTemp[j] = -1; 
break; 
end 
end 
end 
-- script viet hoa By http://tranhba.com  tÝnh to¸n gi¸ trÞ l­îng dêi ®i x¸c suÊt 
transItemValImpl( dSrcItemVal, arydDesItemValSort, arydDesItemProbSort ); 
-- script viet hoa By http://tranhba.com  ngÉu nhiªn lùa chän môc tiªu vËt phÈm 
for i = 1, nDesItemCount do 
		dDesItemProbSum = dDesItemProbSum + arydDesItemProbSort[i];
if( nSelDesItemIdx == 0 and dDesItemProbSum > 0 and dProbRandNum <= dDesItemProbSum ) then 
nSelDesItemIdx = arynDesItemValIdx[i]; 
end 
end 
-- script viet hoa By http://tranhba.com  thiÕt trÝ s¾p xÕp thø tù tr­íc ®Ých x¸c suÊt ®Õm tæ 
for i = 1, nDesItemCount do 
arydDesItemProb[arynDesItemValIdx[i]] = arydDesItemProbSort[i]; 
end 

-- script viet hoa By http://tranhba.com 	local fileLog = openfile( "./Logs/KSG_CompoundLog_Prob.txt", "a+" );
-- script viet hoa By http://tranhba.com  local dDesItemProbSum = 0; 
-- script viet hoa By http://tranhba.com  local dGenVal = 0; 
-- script viet hoa By http://tranhba.com  print( format( "SrcVal\t%0.0f", dSrcItemVal ) ); 
-- script viet hoa By http://tranhba.com  Msg2Player( format( "SrcVal\t%0.0f", dSrcItemVal ) ); 
-- script viet hoa By http://tranhba.com  write( fileLog, format( "SrcVal\t%0.0f\r\n", dSrcItemVal ) ); 
-- script viet hoa By http://tranhba.com  for i = 1, nDesItemCount do 
-- script viet hoa By http://tranhba.com  print( format( "DesVal\t%0.0f\t%0.4f%%", arydDesItemVal[arynDesItemValIdx[i]], arydDesItemProbSort[i] * 100 ) ); 
-- script viet hoa By http://tranhba.com  Msg2Player( format( "DesVal\t%0.0f\t%0.4f%%", arydDesItemVal[arynDesItemValIdx[i]], arydDesItemProbSort[i] * 100 ) ); 
-- script viet hoa By http://tranhba.com  write( fileLog, format( "DesVal\t%0.0f\t%0.4f%%\r\n", arydDesItemVal[arynDesItemValIdx[i]], arydDesItemProbSort[i] * 100 ) ); 
-- script viet hoa By http://tranhba.com 		dDesItemProbSum = dDesItemProbSum + arydDesItemProbSort[i];
-- script viet hoa By http://tranhba.com 		dGenVal = dGenVal + arydDesItemVal[arynDesItemValIdx[i]] * arydDesItemProbSort[i];
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  Msg2Player( "ProbSum:"..dDesItemProbSum ); 
-- script viet hoa By http://tranhba.com  Msg2Player( "GenVal:"..dGenVal ); 
return nSelDesItemIdx, arydDesItemProb, dDesItemProbSum; 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  chøc n¨ng # gi¸ trÞ l­îng x¸c suÊt dêi ®i hµm sè tiÕp lêi 
-- script viet hoa By http://tranhba.com  c¨n cø cÇn lùa chän bÊt ®ång b¶n bæn sè ®Ých gi¸ trÞ l­îng x¸c suÊt dêi ®i hµm sè , gi¸ trÞ l­îng x¸c suÊt dêi ®i hµm sè ®Ých tham sæ cïng chøc n¨ng nhÊt ®Þnh ph¶i phï hîp nªn tiÕp lêi ®Þnh nghÜa 
-- script viet hoa By http://tranhba.com  tham sæ #dSrcItemVal nguyªn vËt phÈm gi¸ trÞ l­îng , arydDesItemValSort theo nh­ tõ thÊp ®Õn cao s¾p xÕp thø tù ®Ých môc tiªu vËt phÈm gi¸ trÞ l­îng ®Õm tæ , arydDesItemProbSort môc tiªu vËt phÈm bÞ chän tróng ®Ých x¸c suÊt 
-- script viet hoa By http://tranhba.com  transItemValImpl(dSrcItemVal, arydDesItemValSort, arydDesItemProbSort) = ... 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  chøc n¨ng # gi¸ trÞ l­îng x¸c suÊt dêi ®i hµm sè , b¶n bæn 1#2005.1.12## 
-- script viet hoa By http://tranhba.com  ë truyÒn vµo ®Ých toµn bé môc tiªu vËt phÈm ®Õm tæ tróng kÕ coi lµ chän lùa môc tiªu vËt phÈm 
-- script viet hoa By http://tranhba.com  cµng ®Õn gÇn nguyªn vËt phÈm gi¸ trÞ l­îng ®Ých môc tiªu vËt phÈm bÞ chän tróng ®Ých x¸c suÊt cµng lín , mµ cµng xa c¸ch nguyªn vËt phÈm gi¸ trÞ l­îng ®Ých môc tiªu vËt phÈm bÞ chän tróng ®Ých x¸c suÊt cµng nhanh chãng rít xuèng 
function _transItemValImpl_1(dSrcItemVal, arydDesItemValSort, arydDesItemProbSort) 
for i = 1, getn(arydDesItemValSort) do 
arydDesItemProbSort[i] = 1; 
end 
_calcProbLoop(arydDesItemValSort, arydDesItemProbSort, 1, getn(arydDesItemValSort), dSrcItemVal); 
end 
-- script viet hoa By http://tranhba.com  néi bé ®Ö thuéc vÒ hµm sè 
function _calcProbLoop( arydValue, arydProb, nStartIdx, nEndIdx, dDivVal ) 
-- script viet hoa By http://tranhba.com  nÕu nh­ toµn bé chê trÞ gi¸ th¶ t­¬ng ®­¬ng víi thiÕt ph©n trÞ gi¸ dDivVal , lµ ®Òu ph©n x¸c suÊt 
if( nStartIdx < nEndIdx and arydValue[nStartIdx] == arydValue[nEndIdx] and dDivVal == arydValue[nStartIdx] ) then 
for i = nStartIdx, nEndIdx do 
				arydProb[i] = arydProb[i] / ( nEndIdx - nStartIdx + 1 );
end 
-- script viet hoa By http://tranhba.com  nÕu nh­ thiÕt ph©n trÞ gi¸ dDivVal Ýt h¬n t­¬ng ®­¬ng víi nhá nhÊt trÞ gi¸ 
elseif( dDivVal <= arydValue[nStartIdx] ) then 
local nEqualCount = 0; 
for i = nStartIdx, nEndIdx do 
if( arydValue[nStartIdx] == arydValue[i] ) then 
					nEqualCount = nEqualCount + 1;
else 
break; 
end 
end 
			for i = nStartIdx, nStartIdx + nEqualCount - 1 do
arydProb[i] = arydProb[i] * ( dDivVal / arydValue[i] ) / nEqualCount; 
end 
			for i = nStartIdx + nEqualCount, nEndIdx do
arydProb[i] = 0; 
end 
-- script viet hoa By http://tranhba.com  nÕu nh­ thiÕt ph©n trÞ gi¸ dDivVal lín h¬n t­¬ng ®­¬ng víi lín nhÊt trÞ gi¸ 
elseif( dDivVal >= arydValue[nEndIdx] ) then 
local nEqualCount = 0; 
for i = nEndIdx, nStartIdx, -1 do 
if( arydValue[nEndIdx] == arydValue[i] ) then 
					nEqualCount = nEqualCount + 1;
else 
break; 
end 
end 
for i = nStartIdx, nEndIdx - nEqualCount do 
arydProb[i] = 0; 
end 
			for i = nEndIdx - nEqualCount + 1, nEndIdx do
arydProb[i] = arydProb[i] / nEqualCount; 
end 
-- script viet hoa By http://tranhba.com  nÕu nh­ thiÕt ph©n trÞ gi¸ dDivVal giíi vu nhá nhÊt cïng lín nhÊt trÞ gi¸ gi÷a 
else 
local nDivIdx = nStartIdx; 
local dLessSum = 0; 
local dMoreSum = 0; 

for i = nStartIdx, nEndIdx do 
if( arydValue[i] <= dDivVal ) then 
					dLessSum = dLessSum + arydValue[i];
					nDivIdx = nDivIdx + 1;
else 
					dMoreSum = dMoreSum + arydValue[i];
end 
end 

			local dLessMean = ( dLessSum / (nDivIdx - nStartIdx) + arydValue[nDivIdx-1] ) / 2;
			local dMoreMean = ( dMoreSum / (nEndIdx - nDivIdx + 1) + arydValue[nDivIdx] ) / 2;
local dLessProb = ( dMoreMean - dDivVal ) / ( dMoreMean - dLessMean ); 
local dMoreProb = 1 - dLessProb; 

for i = nStartIdx, nDivIdx - 1 do 
arydProb[i] = arydProb[i] * dLessProb; 
end 
for i = nDivIdx, nEndIdx do 
arydProb[i] = arydProb[i] * dMoreProb; 
end 

if( nStartIdx < nDivIdx - 1 ) then 
calcProbLoop( arydValue, arydProb, nStartIdx, nDivIdx - 1, dLessMean ); 
end 
if( nDivIdx < nEndIdx ) then 
calcProbLoop( arydValue, arydProb, nDivIdx, nEndIdx, dMoreMean ); 
end 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  chøc n¨ng # gi¸ trÞ l­îng x¸c suÊt dêi ®i hµm sè , b¶n bæn 2#2006.9.16## 
-- script viet hoa By http://tranhba.com  chØ ë truyÒn vµo ®Ých toµn bé môc tiªu vËt phÈm ®Õm tæ trung gi¸ trÞ l­îng v× nguyªn vËt phÈm gi¸ trÞ l­îng cao thÊp 2 cÊp ®Ých 4 c¸ vËt phÈm tróng kÕ coi lµ chän lùa môc tiªu vËt phÈm 

-- script viet hoa By http://tranhba.com  [ c¸c vËt phÈm gi¸ trÞ l­îng thay ®æi l­îng quan hÖ ]# 
-- script viet hoa By http://tranhba.com  arydLowVal[1] <= arydLowVal[2] < #dSrcItemVal# <= arydHiVal[1] <= arydHiVal[2] 

-- script viet hoa By http://tranhba.com  [ tÝnh to¸n hµm sè ]# 
	-- script viet hoa By http://tranhba.com        dSrcItemVal = dLowProb * (arydLowVal[1] * (1 - LOW_NEAR_PERCENT) + arydLowVal[2] * LOW_NEAR_PERCENT) + 
	-- script viet hoa By http://tranhba.com                      dHiProb * (arydHiVal[1] * HI_NEAR_PERCENT + arydHiVal[2] * (1 - HI_NEAR_PERCENT))
	-- script viet hoa By http://tranhba.com        dLowProb + dHiProb = 1

-- script viet hoa By http://tranhba.com  [ c¸c môc tiªu vËt phÈm x¸c suÊt kÕt qu¶ ]# 
-- script viet hoa By http://tranhba.com  arydLowProb[1] = dLowProb * (1 - LOW_NEAR_PERCENT) 
-- script viet hoa By http://tranhba.com  arydLowProb[2] = dLowProb * LOW_NEAR_PERCENT 
-- script viet hoa By http://tranhba.com  arydHiProb[1] = dHiProb * HI_NEAR_PERCENT 
-- script viet hoa By http://tranhba.com  arydHiProb[2] = dHiProb * (1 - HI_NEAR_PERCENT) 

LOW_NEAR_PERCENT = 0.95; -- script viet hoa By http://tranhba.com  nguyªn vËt phÈm gi¸ trÞ l­îng thÊp 1 cÊp vËt phÈm chiÕm ®o¹t x¸c suÊt 
HI_NEAR_PERCENT = 0.95; -- script viet hoa By http://tranhba.com  nguyªn vËt phÈm gi¸ trÞ l­îng cao 1 cÊp vËt phÈm chiÕm ®o¹t x¸c suÊt 

function _transItemValImpl_2(dSrcItemVal, arydDesItemValSort, arydDesItemProbSort) 
-- script viet hoa By http://tranhba.com  t×m môc tiªu vËt phÈm trung gi¸ trÞ l­îng > nguyªn vËt phÈm gi¸ trÞ l­îng trung thÊp nhÊt mét c¸i môc tiªu vËt phÈm t¸c dÉn 
local nSrcItemValIdx = 0; 
for i = 1, getn(arydDesItemValSort) do 
if (arydDesItemValSort[i] > dSrcItemVal) then 
nSrcItemValIdx = i; 
break; 
end 
end 

-- script viet hoa By http://tranhba.com  nguyªn vËt phÈm gi¸ trÞ l­îng >= tÊt c¶ ®an c¸ môc tiªu vËt phÈm ®Ých gi¸ trÞ l­îng , lµ 100% chän tróng gi¸ cao nhÊt trÞ gi¸ l­îng ®Ých môc tiªu vËt phÈm 
if (nSrcItemValIdx == 0) then 
arydDesItemProbSort[getn(arydDesItemValSort)] = 1; 
return 
end 
-- script viet hoa By http://tranhba.com  nguyªn vËt phÈm gi¸ trÞ l­îng < tÊt c¶ ®an c¸ môc tiªu vËt phÈm ®Ých gi¸ trÞ l­îng , lµ chän kh«ng tróng bÊt kú môc tiªu vËt phÈm , tÊt c¶ môc tiªu vËt phÈm x¸c suÊt còng gi÷ v÷ng 0% 
if (nSrcItemValIdx == 1) then 
return 
end 

-- script viet hoa By http://tranhba.com  tÝnh to¸n thÊp 2 cÊp môc tiªu vËt phÈm gi¸ trÞ l­îng hçn hîp trÞ gi¸ 
local dLowValSum = 0; 
if (nSrcItemValIdx > 2) then 
			dLowValSum = arydDesItemValSort[nSrcItemValIdx - 1] * LOW_NEAR_PERCENT + 
arydDesItemValSort[nSrcItemValIdx - 2] * (1 - LOW_NEAR_PERCENT); 
else 
dLowValSum = arydDesItemValSort[1]; 
end 
-- script viet hoa By http://tranhba.com  tÝnh to¸n cao 2 cÊp môc tiªu vËt phÈm gi¸ trÞ l­îng hçn hîp trÞ gi¸ 
local dHiValSum = 0; 
if (nSrcItemValIdx < getn(arydDesItemValSort)) then 
			dHiValSum = arydDesItemValSort[nSrcItemValIdx] * HI_NEAR_PERCENT +
						arydDesItemValSort[nSrcItemValIdx + 1] * (1 - HI_NEAR_PERCENT);
else 
dHiValSum = arydDesItemValSort[getn(arydDesItemValSort)]; 
end 

-- script viet hoa By http://tranhba.com  tÝnh to¸n thÊp 2 cÊp môc tiªu vËt phÈm x¸c suÊt cïng 
local dLowProb = (dHiValSum - dSrcItemVal) / (dHiValSum - dLowValSum); 
-- script viet hoa By http://tranhba.com  tÝnh to¸n cao 2 cÊp môc tiªu vËt phÈm x¸c suÊt cïng 
local dHiProb = 1 - dLowProb; 

-- script viet hoa By http://tranhba.com  tÝnh to¸n thÊp 2 cÊp môc tiªu vËt phÈm ®Ých cuèi cïng x¸c suÊt 
if (nSrcItemValIdx > 2) then 
arydDesItemProbSort[nSrcItemValIdx - 1] = dLowProb * LOW_NEAR_PERCENT; 
arydDesItemProbSort[nSrcItemValIdx - 2] = dLowProb * (1 - LOW_NEAR_PERCENT); 
else 
arydDesItemProbSort[1] = dLowProb; 
end 
-- script viet hoa By http://tranhba.com  tÝnh to¸n cao 2 cÊp môc tiªu vËt phÈm ®Ých cuèi cïng x¸c suÊt 
if (nSrcItemValIdx < getn(arydDesItemValSort)) then 
arydDesItemProbSort[nSrcItemValIdx] = dHiProb * HI_NEAR_PERCENT; 
			arydDesItemProbSort[nSrcItemValIdx + 1] = dHiProb * (1 - HI_NEAR_PERCENT);
else 
arydDesItemProbSort[getn(arydDesItemValSort)] = dHiProb; 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com  sö dông b¶n bæn 2 ®Ých gi¸ trÞ l­îng x¸c suÊt dêi ®i hµm sè 
transItemValImpl = _transItemValImpl_2; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com  c¾m vµo s¾p xÕp thø tù 
function inssort( aryNumber, nStartIdx, nEndIdx ) 
if( nStartIdx >= nEndIdx ) then 
return 
end 
	for i = nStartIdx + 1, nEndIdx do
		for j = i, nStartIdx + 1, -1 do
if( aryNumber[j] < aryNumber[j-1] ) then 
aryNumber[j-1], aryNumber[j] = aryNumber[j], aryNumber[j-1]; 
end 
end 
end 
end
