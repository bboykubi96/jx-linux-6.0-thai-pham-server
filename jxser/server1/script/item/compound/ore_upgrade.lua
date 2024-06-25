-- script viet hoa By http://tranhba.com  ch�c n�ng # m�u t�m trang b� h� th�ng - qu�ng th�ch th�ng c�p 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.15 

Include( "\\script\\item\\compound\\compound_header.lua" );

-- script viet hoa By http://tranhba.com  [ h�p th�nh ] ph� d�ng 
COMPOUND_COST = 5000; 

-- script viet hoa By http://tranhba.com  huy�n tinh qu�ng th�ch v�t ph�m tham s� # sau n�y n�u nh� gia t�ng b�n m�i v�n v�t ph�m c�n l�m t��ng �ng x� l� # 
XUANJING = { 6, 1, 147 }; 
-- script viet hoa By http://tranhba.com  ma ph�p thu�c t�nh qu�ng th�ch ��ch v�t ph�m tham s� # sau n�y n�u nh� gia t�ng b�n m�i v�n v�t ph�m c�n l�m t��ng �ng x� l� # 
MAGIC_ORE = { 
	{ 6, 1, 200 }, 
	{ 6, 1, 201 }, 
	{ 6, 1, 202 }, 
	{ 6, 1, 203 }, 
	{ 6, 1, 204 }, 
	{ 6, 1, 205 } 
}; 


-- script viet hoa By http://tranhba.com  m�i b�t ��u h�a s� li�u 
function initData() 
g_nOreGenre = 0; 
g_nOreDetailType = 0; 
g_nOreParticular = 0; 
g_nOreLevel = 0; 
g_nOreSeries = 0; 
g_nOreMagicID = 0; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c [ h�p th�nh ] thao t�c tham s� # d�ng cho truy�n l�i cho ITEM_CalcItemValue t�nh to�n v�t ph�m gi� tr� l��ng # 
function getCompoundParam() 
return "ORE_UPGRADE"; 
end 

-- script viet hoa By http://tranhba.com  gi�o nghi�m nguy�n li�u c� hay kh�ng ph� h�p [ h�p th�nh ] quy t�c # ��ng th�i t�n tr� m�t �t nguy�n li�u s� li�u # 
function verifySrcItems( arynNecessaryItemIdx, arynAlternativeItemIdx ) 
	Msg2Player("T�nh n�ng n�y ch�a m�.")
	do return RESULT_LACK_RESOURCE end -- HT
local nNecessaryItemCount = getn( arynNecessaryItemIdx ); 
if( nNecessaryItemCount ~= 3 ) then 
return RESULT_LACK_RESOURCE; 
end 
local bIsXuanjing = 0; 
local nGenre, nDetailType, nParticular, nLevel, nSeries = GetItemProp( arynNecessaryItemIdx[1] ); 
if( nGenre == XUANJING[1] and nDetailType ==XUANJING[2] and nParticular == XUANJING[3] ) then 
bIsXuanjing = 1; 
else 
for i = 1, getn( MAGIC_ORE ) do 
if( nGenre == MAGIC_ORE[i][1] and nDetailType == MAGIC_ORE[i][2] and nParticular == MAGIC_ORE[i][3] ) then 
g_nOreMagicID = GetItemParam( arynNecessaryItemIdx[1], 1 ); 
break; 
end 
end 
end 
if( bIsXuanjing ~= 1 and g_nOreMagicID <= 0 ) then 
return RESULT_LACK_RESOURCE; 
end 
if( nLevel >= 10 ) then 
return RESULT_LEVEL_FULL; 
end 
g_nOreGenre = nGenre; 
g_nOreDetailType = nDetailType; 
g_nOreParticular = nParticular; 
g_nOreLevel = nLevel; 
g_nOreSeries = nSeries; 
for i = 2, 3 do 
local nGenre, nDetailType, nParticular, nLevel, nSeries = GetItemProp( arynNecessaryItemIdx[i] ); 
if( g_nOreGenre ~= nGenre or g_nOreDetailType ~= nDetailType or g_nOreParticular ~= nParticular ) then 
return RESULT_LACK_RESOURCE; 
end 
if( g_nOreLevel ~= nLevel ) then 
return RESULT_LEVEL_ERROR; 
end 
if( g_nOreMagicID > 0 ) then 
if( mod( nParticular, 2 ) ~= 0 and g_nOreSeries ~= nSeries ) then 
return RESULT_SERIES_ERROR; 
end 
if( GetItemParam( arynNecessaryItemIdx[i], 1 ) ~= g_nOreMagicID ) then 
return RESULT_MAGIC_ERROR; 
end 
end 
end 
return RESULT_SUCCEED; 
end 

-- script viet hoa By http://tranhba.com  sinh th�nh m�c ti�u v�t ph�m tin t�c 
function genDesItemsInfo( arynNecessaryItemIdx ) 
local aryDesItemInfo = {}; 
local nLatestItemVer = ITEM_GetLatestItemVersion(); 
local arynMagLvl = { g_nOreMagicID, 0, 0, 0, 0, 0 }; 
	aryDesItemInfo[1] = { nLatestItemVer, 0, 0, g_nOreGenre, g_nOreDetailType, g_nOreParticular, g_nOreLevel + 1, g_nOreSeries, 0, arynMagLvl, nil, getCompoundParam() };
return aryDesItemInfo; 
end 

-- script viet hoa By http://tranhba.com  ho�n th�nh l�a ch�n m�c ti�u v�t ph�m # th� ti�u nguy�n li�u ch� k�t th�c thao t�c 
function finalCompound( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo, arydDesItemVal ) 
-- do return -1, RESULT_FAIL end --by ZhuYingTai
local dDesProb = (nSrcItemValSum/3) / (arydDesItemVal[1]-(nSrcItemValSum/3)*2); 
if( random() < dDesProb ) then 
local nDesItemValCut = floor( arydDesItemVal[1] / SUM_UNIT ); 
if( nDesItemValCut >= COMMON_SUM_BASE_VAL ) then 
local nCommonItemVal = GetGlbValue( GLBID_COMMON_VAL_SUM ); 
SetGlbValue( GLBID_COMMON_VAL_SUM, nCommonItemVal ); 
			if( nCommonItemVal + nDesItemValCut >= COMMON_SUM_MAX_VAL ) then
				local strMsg = format( "[����] %s ����[�ϳ�]����ɫװ�������Ʒ�ļ�ֵ������%0.2fE�����ѳ�����ֵ����������ֵ��%0.2fE�������ܳ���ˢ��Ʒ�����뾡����ϵ�з���������", date( "%Y-%m-%d %H:%M:%S" ), ( nCommonItemVal + nDesItemValCut ) * SUM_UNIT / 100000000, COMMON_SUM_MAX_VAL * SUM_UNIT / 100000000 );

WriteLog( strMsg ); 
end 
end 
writeCompoundLog( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo[1], arydDesItemVal[1], dDesProb ); 
local nResultDesItemIdx = addItemByInfo( aryDesItemInfo[1] ); 
if( nResultDesItemIdx > 0 ) then 
removeItems( arynNecessaryItemIdx ); 
removeItems( arynAlternativeItemIdx ); 
return nResultDesItemIdx, RESULT_SUCCEED; 
end 
end 
writeCompoundLog( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, nil, 0, 1 - dDesProb ); 
RemoveItemByIndex( arynNecessaryItemIdx[1] ); 
removeItems( arynAlternativeItemIdx ); 
return -1, RESULT_FAIL; 
end
