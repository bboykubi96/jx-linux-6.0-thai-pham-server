-- script viet hoa By http://tranhba.com  gi� tr� l��ng ch�n v�n ��u v�n ki�n 
-- script viet hoa By http://tranhba.com  Fanghao_Wu 2005.1.12 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ch�c n�ng # v�t ph�m gi� tr� l��ng x�c su�t d�i �i h�m s� ��i ngo�i ti�p l�i 
-- script viet hoa By http://tranhba.com  tham s� #dSrcItemVal nguy�n v�t ph�m gi� tr� l��ng , arydDesItemVal m�c ti�u v�t ph�m gi� tr� l��ng ��m t� 
-- script viet hoa By http://tranhba.com  tr� v� # ch�n tr�ng ��ch m�c ti�u v�t ph�m t�c d�n #0 b�y t� b� l�i ho�c l� kh�ng c� ch�n tr�ng b�t k� m�t c�i n�o m�c ti�u v�t ph�m # , c�c m�c ti�u v�t ph�m ��ch ch�n tr�ng x�c su�t ��m t� , t�t c� m�c ti�u v�t ph�m ��ch ch�n tr�ng x�c su�t chi c�ng 
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

-- script viet hoa By http://tranhba.com  m�i b�t ��u h�a 
for i = 1, nDesItemCount do 
arydDesItemValSort[i] = arydDesItemVal[i]; 
arydDesItemValTemp[i] = arydDesItemVal[i]; 
arydDesItemProbSort[i] = 0; 
end 
-- script viet hoa By http://tranhba.com  t� nh� ��n l�n s�p x�p th� t� 
inssort( arydDesItemValSort, 1, nDesItemCount ); 
-- script viet hoa By http://tranhba.com  b�o t�n s�p x�p th� t� sau #arydDesItemValSort# ��ch c�ng s�p x�p th� t� tr��c #arydDesItemVal# ��ch t�c d�n ��i �ng quan h� # arynDesItemValIdx[ s�p x�p th� t� sau t�c d�n ] = s�p x�p th� t� tr��c t�c d�n 
for i = 1, nDesItemCount do 
for j = 1, nDesItemCount do 
if( arydDesItemValSort[i] == arydDesItemValTemp[j] ) then 
arynDesItemValIdx[i] = j; 
arydDesItemValTemp[j] = -1; 
break; 
end 
end 
end 
-- script viet hoa By http://tranhba.com  t�nh to�n gi� tr� l��ng d�i �i x�c su�t 
transItemValImpl( dSrcItemVal, arydDesItemValSort, arydDesItemProbSort ); 
-- script viet hoa By http://tranhba.com  ng�u nhi�n l�a ch�n m�c ti�u v�t ph�m 
for i = 1, nDesItemCount do 
		dDesItemProbSum = dDesItemProbSum + arydDesItemProbSort[i];
if( nSelDesItemIdx == 0 and dDesItemProbSum > 0 and dProbRandNum <= dDesItemProbSum ) then 
nSelDesItemIdx = arynDesItemValIdx[i]; 
end 
end 
-- script viet hoa By http://tranhba.com  thi�t tr� s�p x�p th� t� tr��c ��ch x�c su�t ��m t� 
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
-- script viet hoa By http://tranhba.com  ch�c n�ng # gi� tr� l��ng x�c su�t d�i �i h�m s� ti�p l�i 
-- script viet hoa By http://tranhba.com  c�n c� c�n l�a ch�n b�t ��ng b�n b�n s� ��ch gi� tr� l��ng x�c su�t d�i �i h�m s� , gi� tr� l��ng x�c su�t d�i �i h�m s� ��ch tham s� c�ng ch�c n�ng nh�t ��nh ph�i ph� h�p n�n ti�p l�i ��nh ngh�a 
-- script viet hoa By http://tranhba.com  tham s� #dSrcItemVal nguy�n v�t ph�m gi� tr� l��ng , arydDesItemValSort theo nh� t� th�p ��n cao s�p x�p th� t� ��ch m�c ti�u v�t ph�m gi� tr� l��ng ��m t� , arydDesItemProbSort m�c ti�u v�t ph�m b� ch�n tr�ng ��ch x�c su�t 
-- script viet hoa By http://tranhba.com  transItemValImpl(dSrcItemVal, arydDesItemValSort, arydDesItemProbSort) = ... 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ch�c n�ng # gi� tr� l��ng x�c su�t d�i �i h�m s� , b�n b�n 1#2005.1.12## 
-- script viet hoa By http://tranhba.com  � truy�n v�o ��ch to�n b� m�c ti�u v�t ph�m ��m t� tr�ng k� coi l� ch�n l�a m�c ti�u v�t ph�m 
-- script viet hoa By http://tranhba.com  c�ng ��n g�n nguy�n v�t ph�m gi� tr� l��ng ��ch m�c ti�u v�t ph�m b� ch�n tr�ng ��ch x�c su�t c�ng l�n , m� c�ng xa c�ch nguy�n v�t ph�m gi� tr� l��ng ��ch m�c ti�u v�t ph�m b� ch�n tr�ng ��ch x�c su�t c�ng nhanh ch�ng r�t xu�ng 
function _transItemValImpl_1(dSrcItemVal, arydDesItemValSort, arydDesItemProbSort) 
for i = 1, getn(arydDesItemValSort) do 
arydDesItemProbSort[i] = 1; 
end 
_calcProbLoop(arydDesItemValSort, arydDesItemProbSort, 1, getn(arydDesItemValSort), dSrcItemVal); 
end 
-- script viet hoa By http://tranhba.com  n�i b� �� thu�c v� h�m s� 
function _calcProbLoop( arydValue, arydProb, nStartIdx, nEndIdx, dDivVal ) 
-- script viet hoa By http://tranhba.com  n�u nh� to�n b� ch� tr� gi� th� t��ng ���ng v�i thi�t ph�n tr� gi� dDivVal , l� ��u ph�n x�c su�t 
if( nStartIdx < nEndIdx and arydValue[nStartIdx] == arydValue[nEndIdx] and dDivVal == arydValue[nStartIdx] ) then 
for i = nStartIdx, nEndIdx do 
				arydProb[i] = arydProb[i] / ( nEndIdx - nStartIdx + 1 );
end 
-- script viet hoa By http://tranhba.com  n�u nh� thi�t ph�n tr� gi� dDivVal �t h�n t��ng ���ng v�i nh� nh�t tr� gi� 
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
-- script viet hoa By http://tranhba.com  n�u nh� thi�t ph�n tr� gi� dDivVal l�n h�n t��ng ���ng v�i l�n nh�t tr� gi� 
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
-- script viet hoa By http://tranhba.com  n�u nh� thi�t ph�n tr� gi� dDivVal gi�i vu nh� nh�t c�ng l�n nh�t tr� gi� gi�a 
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
-- script viet hoa By http://tranhba.com  ch�c n�ng # gi� tr� l��ng x�c su�t d�i �i h�m s� , b�n b�n 2#2006.9.16## 
-- script viet hoa By http://tranhba.com  ch� � truy�n v�o ��ch to�n b� m�c ti�u v�t ph�m ��m t� trung gi� tr� l��ng v� nguy�n v�t ph�m gi� tr� l��ng cao th�p 2 c�p ��ch 4 c� v�t ph�m tr�ng k� coi l� ch�n l�a m�c ti�u v�t ph�m 

-- script viet hoa By http://tranhba.com  [ c�c v�t ph�m gi� tr� l��ng thay ��i l��ng quan h� ]# 
-- script viet hoa By http://tranhba.com  arydLowVal[1] <= arydLowVal[2] < #dSrcItemVal# <= arydHiVal[1] <= arydHiVal[2] 

-- script viet hoa By http://tranhba.com  [ t�nh to�n h�m s� ]# 
	-- script viet hoa By http://tranhba.com        dSrcItemVal = dLowProb * (arydLowVal[1] * (1 - LOW_NEAR_PERCENT) + arydLowVal[2] * LOW_NEAR_PERCENT) + 
	-- script viet hoa By http://tranhba.com                      dHiProb * (arydHiVal[1] * HI_NEAR_PERCENT + arydHiVal[2] * (1 - HI_NEAR_PERCENT))
	-- script viet hoa By http://tranhba.com        dLowProb + dHiProb = 1

-- script viet hoa By http://tranhba.com  [ c�c m�c ti�u v�t ph�m x�c su�t k�t qu� ]# 
-- script viet hoa By http://tranhba.com  arydLowProb[1] = dLowProb * (1 - LOW_NEAR_PERCENT) 
-- script viet hoa By http://tranhba.com  arydLowProb[2] = dLowProb * LOW_NEAR_PERCENT 
-- script viet hoa By http://tranhba.com  arydHiProb[1] = dHiProb * HI_NEAR_PERCENT 
-- script viet hoa By http://tranhba.com  arydHiProb[2] = dHiProb * (1 - HI_NEAR_PERCENT) 

LOW_NEAR_PERCENT = 0.95; -- script viet hoa By http://tranhba.com  nguy�n v�t ph�m gi� tr� l��ng th�p 1 c�p v�t ph�m chi�m �o�t x�c su�t 
HI_NEAR_PERCENT = 0.95; -- script viet hoa By http://tranhba.com  nguy�n v�t ph�m gi� tr� l��ng cao 1 c�p v�t ph�m chi�m �o�t x�c su�t 

function _transItemValImpl_2(dSrcItemVal, arydDesItemValSort, arydDesItemProbSort) 
-- script viet hoa By http://tranhba.com  t�m m�c ti�u v�t ph�m trung gi� tr� l��ng > nguy�n v�t ph�m gi� tr� l��ng trung th�p nh�t m�t c�i m�c ti�u v�t ph�m t�c d�n 
local nSrcItemValIdx = 0; 
for i = 1, getn(arydDesItemValSort) do 
if (arydDesItemValSort[i] > dSrcItemVal) then 
nSrcItemValIdx = i; 
break; 
end 
end 

-- script viet hoa By http://tranhba.com  nguy�n v�t ph�m gi� tr� l��ng >= t�t c� �an c� m�c ti�u v�t ph�m ��ch gi� tr� l��ng , l� 100% ch�n tr�ng gi� cao nh�t tr� gi� l��ng ��ch m�c ti�u v�t ph�m 
if (nSrcItemValIdx == 0) then 
arydDesItemProbSort[getn(arydDesItemValSort)] = 1; 
return 
end 
-- script viet hoa By http://tranhba.com  nguy�n v�t ph�m gi� tr� l��ng < t�t c� �an c� m�c ti�u v�t ph�m ��ch gi� tr� l��ng , l� ch�n kh�ng tr�ng b�t k� m�c ti�u v�t ph�m , t�t c� m�c ti�u v�t ph�m x�c su�t c�ng gi� v�ng 0% 
if (nSrcItemValIdx == 1) then 
return 
end 

-- script viet hoa By http://tranhba.com  t�nh to�n th�p 2 c�p m�c ti�u v�t ph�m gi� tr� l��ng h�n h�p tr� gi� 
local dLowValSum = 0; 
if (nSrcItemValIdx > 2) then 
			dLowValSum = arydDesItemValSort[nSrcItemValIdx - 1] * LOW_NEAR_PERCENT + 
arydDesItemValSort[nSrcItemValIdx - 2] * (1 - LOW_NEAR_PERCENT); 
else 
dLowValSum = arydDesItemValSort[1]; 
end 
-- script viet hoa By http://tranhba.com  t�nh to�n cao 2 c�p m�c ti�u v�t ph�m gi� tr� l��ng h�n h�p tr� gi� 
local dHiValSum = 0; 
if (nSrcItemValIdx < getn(arydDesItemValSort)) then 
			dHiValSum = arydDesItemValSort[nSrcItemValIdx] * HI_NEAR_PERCENT +
						arydDesItemValSort[nSrcItemValIdx + 1] * (1 - HI_NEAR_PERCENT);
else 
dHiValSum = arydDesItemValSort[getn(arydDesItemValSort)]; 
end 

-- script viet hoa By http://tranhba.com  t�nh to�n th�p 2 c�p m�c ti�u v�t ph�m x�c su�t c�ng 
local dLowProb = (dHiValSum - dSrcItemVal) / (dHiValSum - dLowValSum); 
-- script viet hoa By http://tranhba.com  t�nh to�n cao 2 c�p m�c ti�u v�t ph�m x�c su�t c�ng 
local dHiProb = 1 - dLowProb; 

-- script viet hoa By http://tranhba.com  t�nh to�n th�p 2 c�p m�c ti�u v�t ph�m ��ch cu�i c�ng x�c su�t 
if (nSrcItemValIdx > 2) then 
arydDesItemProbSort[nSrcItemValIdx - 1] = dLowProb * LOW_NEAR_PERCENT; 
arydDesItemProbSort[nSrcItemValIdx - 2] = dLowProb * (1 - LOW_NEAR_PERCENT); 
else 
arydDesItemProbSort[1] = dLowProb; 
end 
-- script viet hoa By http://tranhba.com  t�nh to�n cao 2 c�p m�c ti�u v�t ph�m ��ch cu�i c�ng x�c su�t 
if (nSrcItemValIdx < getn(arydDesItemValSort)) then 
arydDesItemProbSort[nSrcItemValIdx] = dHiProb * HI_NEAR_PERCENT; 
			arydDesItemProbSort[nSrcItemValIdx + 1] = dHiProb * (1 - HI_NEAR_PERCENT);
else 
arydDesItemProbSort[getn(arydDesItemValSort)] = dHiProb; 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com  s� d�ng b�n b�n 2 ��ch gi� tr� l��ng x�c su�t d�i �i h�m s� 
transItemValImpl = _transItemValImpl_2; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com  c�m v�o s�p x�p th� t� 
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
