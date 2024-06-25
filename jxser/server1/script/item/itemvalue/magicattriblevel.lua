-- script viet hoa By http://tranhba.com  ch�c n�ng # m�u t�m trang b� h� th�ng - ma ph�p thu�c t�nh ��ch gi� tr� l��ng t�nh to�n 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.15 

IncludeLib( "FILESYS" ); 
Include( "\\script\\item\\item_header.lua" );

FILE_MAGIC_VAL = "magicattriblevel.txt"; 
FILE_MAGIC_INDEX = "magicattriblevel_index.txt"; 
FILE_MAGIC_COMBINE_VAL = "itemvalue\\magicattrib_combine.txt"; 
FILE_MAGIC_POS_VAL = "itemvalue\\equip_enchasable_magic_pos.txt"; 

loadItemTabFiles( FILE_MAGIC_VAL ); 
loadItemTabFiles( FILE_MAGIC_INDEX ); 
loadItemTabFiles( FILE_MAGIC_COMBINE_VAL ); 
loadItemTabFiles( FILE_MAGIC_POS_VAL ); 

-- script viet hoa By http://tranhba.com  c�c trang b� lo�i h�nh � ma ph�p c�p b�c thu�c t�nh bi�u trung ��i �ng nh�m t�n 
EQUIP_COLUMNS = 
{ 
{ "SWORD", -- script viet hoa By http://tranhba.com  ki�m 0, 0, 0 
"BLADE", -- script viet hoa By http://tranhba.com  ��n �ao 0, 0, 1 
"WAND", -- script viet hoa By http://tranhba.com  c�n 0, 0, 2 
"SPEAR", -- script viet hoa By http://tranhba.com  s�ng 0, 0, 3 
"HAMMER", -- script viet hoa By http://tranhba.com  ch�y 0, 0, 4 
"DUALBLADES", -- script viet hoa By http://tranhba.com  song �ao 0, 0, 5 
}, 
{ "DARTS", -- script viet hoa By http://tranhba.com  phi ti�u 0, 1, 0 
"KNIFE", -- script viet hoa By http://tranhba.com  phi �ao 0, 1, 1 
"CROSSBOW", -- script viet hoa By http://tranhba.com  n� 0, 1, 2 
}, 
{ "ARMOR" -- script viet hoa By http://tranhba.com  kh�i gi�p 0, 2, * 
}, 
{ "RING" -- script viet hoa By http://tranhba.com  chi�c nh�n 0, 3, * 
}, 
{ "NECKLACE", -- script viet hoa By http://tranhba.com  gi�y chuy�n 0, 4, 0 
"AMULET", -- script viet hoa By http://tranhba.com  h� th�n ph� 0, 4, 1 
}, 
{ "BOOT" -- script viet hoa By http://tranhba.com  ngoa t� 0, 5, * 
}, 
{ "BELT" -- script viet hoa By http://tranhba.com  �ai l�ng 0, 6, * 
}, 
{ "HELM" -- script viet hoa By http://tranhba.com  n�n an to�n 0, 7, * 
}, 
{ "CUFF" -- script viet hoa By http://tranhba.com  h� c� tay 0, 8, * 
}, 
{ "SACHET", -- script viet hoa By http://tranhba.com  h��ng nang 0, 9, 0 
"PENDANT", -- script viet hoa By http://tranhba.com  y�u tr�y 0, 9, 1 
}, 
}; 

-- script viet hoa By http://tranhba.com  ng� h�nh � ma ph�p c�p b�c thu�c t�nh bi�u trung ��i �ng nh�m t�n 
SERIES_COLUMNS = 
{ 
"METAL", -- script viet hoa By http://tranhba.com  0 kim 
"WOOD", -- script viet hoa By http://tranhba.com  1 m�c 
"WATER", -- script viet hoa By http://tranhba.com  2 n��c 
"FIRE", -- script viet hoa By http://tranhba.com  3 l�a 
"EARTH" -- script viet hoa By http://tranhba.com  4 ��t 
}; 

-- script viet hoa By http://tranhba.com  t�nh to�n MagicLevel ��m t� ma ph�p thu�c t�nh t�ng gi� tr� l��ng 
-- script viet hoa By http://tranhba.com  nDetailType, nParticular, nSeries v� MagicLevel ch� � trang b� ��ch lo�i kh�c # ng� h�nh 
function calcMagicArrayValue( nItemVer, arynMagAttrLvl, nDetailType, nParticular, nSeries ) 
local arynMagAttrLvlVal = {}; 
local arynMagAttrLvlType = {}; 
local arynMagAttrLvlLevel = {}; 
local nMagAttrCount = 0; 
local nMagValSum = 0; 
for i = 1, 6 do 
if( arynMagAttrLvl[i] <= 0 ) then 
break; 
end 
-- script viet hoa By http://tranhba.com  print( nItemVer, arynMagAttrLvl[i], nDetailType, nParticular, nSeries ); 
arynMagAttrLvlVal[i] = calcMagicVal_Single( nItemVer, arynMagAttrLvl[i], nDetailType, nParticular, nSeries, i ); 
arynMagAttrLvlType[i] = getMagAttrLvlType( nItemVer, arynMagAttrLvl[i] ); 
arynMagAttrLvlLevel[i] = getMagAttrLvlLevel( nItemVer, arynMagAttrLvl[i] ); 
-- script viet hoa By http://tranhba.com  print( arynMagAttrLvlType[i]..": "..arynMagAttrLvlVal[i] ); 
		nMagAttrCount = nMagAttrCount + 1;
end 
if( nMagAttrCount == 1 ) then 
nMagValSum = arynMagAttrLvlVal[1]; 
elseif( nMagAttrCount > 1 ) then 
for i = 1, nMagAttrCount - 1 do 
			for j = i + 1, nMagAttrCount do
local nCombineVal = calcMagicVal_Combine( nItemVer, arynMagAttrLvlType[i], arynMagAttrLvlType[j] ); 
-- script viet hoa By http://tranhba.com  print( "Combine "..i.." "..j..": "..nCombineVal ); 
				nMagValSum = nMagValSum + ( arynMagAttrLvlVal[i] + arynMagAttrLvlVal[j] ) * ( nCombineVal - 1 ) * arynMagAttrLvlLevel[i]/10 * arynMagAttrLvlLevel[j]/10;
end 
end 
for i = 1, nMagAttrCount do 
			nMagValSum = nMagValSum + arynMagAttrLvlVal[i];
end 
end 
return nMagValSum; 
end 

-- script viet hoa By http://tranhba.com  t�nh to�n �an c� ma ph�p thu�c t�nh ��ch gi� tr� l��ng 
function calcMagicVal_Single( nItemVer, nMagAttrLvl, nDetailType, nParticular, nSeries, nMagicPos ) 
local nEquipVal = getMagAttrLvlEquipVal( nItemVer, nMagAttrLvl, nDetailType, nParticular ); 
-- script viet hoa By http://tranhba.com  print("Equip:"..nEquipVal ); 
local nSeriesVal = getMagAttrLvlSeriesVal( nItemVer, nMagAttrLvl, nSeries ); 
-- script viet hoa By http://tranhba.com  print("Series:"..nSeriesVal ); 
local nPosVal = getMagAttrLvlPosVal( nItemVer, nMagicPos ); 
-- script viet hoa By http://tranhba.com  print("Pos:"..nMagicPos.." "..nPosVal ); 
return nEquipVal * nSeriesVal * nPosVal; 
end 

-- script viet hoa By http://tranhba.com  t�nh to�n hai ma ph�p thu�c t�nh ��ch th�m ���c gi� tr� l��ng % 
function calcMagicVal_Combine( nItemVer, nMagicAttrib1, nMagicAttrib2 ) 
local nCombineVal = 1; 
local strMagIdxPath = makeItemFilePath( nItemVer, FILE_MAGIC_COMBINE_VAL ); 
local nMagic1Index = TabFile_Search( strMagIdxPath, 2, nMagicAttrib1, 3 ); 
local nMagic2Index = TabFile_Search( strMagIdxPath, 2, nMagicAttrib2, 3 ); 
if( nMagic1Index > nMagic2Index ) then 
nMagic1Index, nMagic2Index = nMagic2Index, nMagic1Index; 
end 
if( nMagic1Index >= 3 and nMagic2Index >= 3 ) then 
nCombineVal = tonumber( TabFile_GetCell( strMagIdxPath, nMagic1Index, nMagic2Index, 100 ) ) / 100; 
end 
return nCombineVal; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c ch� ��nh ma ph�p thu�c t�nh ID ��ch ma ph�p c�p b�c thu�c t�nh ph�m vi 
-- script viet hoa By http://tranhba.com  bDiffOpera b�y t� c� hay kh�ng kh�c nhau �ang b�/cha/ch�u 
function getMagAttrLvlRange( nItemVer, nMagicID, bDiffOpera ) 
local aryMagAttrLvlRange = {}; 
local nRangeCount = 0; 
local nSearchRow = 1; 
local strMagIdxPath = makeItemFilePath( nItemVer, FILE_MAGIC_INDEX ); 
local MAX_LOOP = 100; 
for i = 1, MAX_LOOP do 
		nSearchRow = TabFile_Search( strMagIdxPath, "MAGIC_ID", nMagicID, nSearchRow + 1 );
if( nSearchRow > 1 ) then 
			nRangeCount = nRangeCount + 1;
aryMagAttrLvlRange[nRangeCount] = {}; 
aryMagAttrLvlRange[nRangeCount][1] = tonumber( TabFile_GetCell( strMagIdxPath, nSearchRow, "MAGATTRLVL_START", -1 ) ); 
aryMagAttrLvlRange[nRangeCount][2] = tonumber( TabFile_GetCell( strMagIdxPath, nSearchRow, "MAGATTRLVL_END", -1 ) ); 
else 
if( bDiffOpera == 1 ) then 
break; 
else 
nMagicID = -nMagicID; 
nSearchRow = 1; 
end 
end 
end 
return aryMagAttrLvlRange; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c ch� ��nh ma ph�p thu�c t�nh # bao g�m tr� s� # ��ch ma ph�p c�p b�c thu�c t�nh 
-- script viet hoa By http://tranhba.com  bDiffOpera b�y t� c� hay kh�ng kh�c nhau �ang b�/cha/ch�u 
function getMagAttrLvl( nItemVer, nMagicID, nMagicParam1, nMagicParam2, nMagicParam3, bDiffOpera ) 
local aryMagAttrLvlRange = getMagAttrLvlRange( nItemVer, nMagicID, bDiffOpera ); 
local nRangeCount = getn( aryMagAttrLvlRange ); 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
local arynMagP1 = {}; 
local arynMagP2 = {}; 
local arynMagP3 = {}; 
for i = 1, nRangeCount do 
for j = aryMagAttrLvlRange[i][1], aryMagAttrLvlRange[i][2] do 
if( j >= 1 ) then 
				arynMagP1[1] = tonumber( TabFile_GetCell( strMagValPath, j + 1, "MAG_P1_MIN", -1 ) );
				arynMagP1[2] = tonumber( TabFile_GetCell( strMagValPath, j + 1, "MAG_P1_MAX", -1 ) );
				arynMagP2[1] = tonumber( TabFile_GetCell( strMagValPath, j + 1, "MAG_P2_MIN", -1 ) );
				arynMagP2[2] = tonumber( TabFile_GetCell( strMagValPath, j + 1, "MAG_P2_MAX", -1 ) );
				arynMagP3[1] = tonumber( TabFile_GetCell( strMagValPath, j + 1, "MAG_P3_MIN", -1 ) );
				arynMagP3[2] = tonumber( TabFile_GetCell( strMagValPath, j + 1, "MAG_P3_MAX", -1 ) );
if( ( arynMagP1[1] < 0 or arynMagP1[2] < 0 or ( arynMagP1[1] <= nMagicParam1 and nMagicParam1 <= arynMagP1[2] ) ) and 
( arynMagP2[1] < 0 or arynMagP2[2] < 0 or ( arynMagP2[1] <= nMagicParam2 and nMagicParam2 <= arynMagP2[2] ) ) and 
( arynMagP3[1] < 0 or arynMagP3[2] < 0 or ( arynMagP3[1] <= nMagicParam3 and nMagicParam3 <= arynMagP3[2] ) ) ) then 
return j; 
end 
end 
end 
end 
-- script viet hoa By http://tranhba.com  ma ph�p thu�c t�nh MagicID ch�nh x�c , nh�ng thu�c t�nh tr� gi� kh�ng c� � ��y bi�u trung n�n MagicID ��ch b�t k� tr� gi� v�c b�n trong 
if( nRangeCount > 0 ) then 
if( nMagicParam1 > arynMagP1[2] ) then -- script viet hoa By http://tranhba.com  th� nh�t thu�c t�nh tr� gi� so n�n MagicID ��ch cao c�p nh�t ma ph�p c�p b�c thu�c t�nh ��ch th� nh�t thu�c t�nh tr� gi� cao , l� l�y cao c�p nh�t ��ch ma ph�p c�p b�c thu�c t�nh 
return aryMagAttrLvlRange[getn(aryMagAttrLvlRange)][2]; 
else -- script viet hoa By http://tranhba.com  n�u kh�ng l�y n�n Magic ��ch c�p th�p nh�t ma ph�p c�p b�c thu�c t�nh 
return aryMagAttrLvlRange[1][1]; 
end 
end 
return 0; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c ch� ��nh ma ph�p c�p b�c thu�c t�nh ��ch ma ph�p thu�c t�nh ID 
function getMagAttrLvlType( nItemVer, nMagAttrLvl ) 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
	return tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "MAGIC_ID", -1 ) );
end 

-- script viet hoa By http://tranhba.com  l�y ���c ch� ��nh ma ph�p c�p b�c thu�c t�nh ��ch c�p b�c 
function getMagAttrLvlLevel( nItemVer, nMagAttrLvl ) 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
	return tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "LEVEL", -1 ) );
end 

-- script viet hoa By http://tranhba.com  l�y ���c ch� ��nh ma ph�p c�p b�c thu�c t�nh ��ch tr� c�t gi� tr� l��ng 
function getMagAttrLvlBaseVal( nItemVer, nMagAttrLvl ) 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
	return tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "BASE_VALUE", 0 ) );
end 

-- script viet hoa By http://tranhba.com  l�y ���c ch� ��nh ma ph�p c�p b�c thu�c t�nh ��ch � ��c ��nh trang b� lo�i h�nh th��ng ��ch gi� tr� l��ng 
function getMagAttrLvlEquipVal( nItemVer, nMagAttrLvl, nDetailType, nParticular ) 
local nMagEquipVal = 0; 
if( nDetailType >= 0 and nDetailType < getn( EQUIP_COLUMNS ) and nParticular >= 0 ) then 
		local nParticularCount = getn( EQUIP_COLUMNS[nDetailType+1] );
local nParticularCol = nParticular; 
if( nParticular >= nParticularCount ) then 
nParticularCol = 0; 
end 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
		nMagEquipVal = tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, EQUIP_COLUMNS[nDetailType+1][nParticularCol+1], 0 ) );
end 
return nMagEquipVal; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c ch� ��nh ma ph�p c�p b�c thu�c t�nh ��ch � ��c ��nh trong ng� h�nh ��ch gi� tr� l��ng 
function getMagAttrLvlSeriesVal( nItemVer, nMagAttrLvl, nSeries ) 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
	return tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, SERIES_COLUMNS[nSeries+1], 100 ) ) / 100;
end 

-- script viet hoa By http://tranhba.com  l�y ���c ch� ��nh ma ph�p c�p b�c thu�c t�nh ��ch �ang gi� b� b� MagicLevel b�t ��ng v� tr� gi� tr� l��ng 
function getMagAttrLvlPosVal( nItemVer, nMagicPos ) 
local nValue_MagicPos = 1; 
local strMagPosValPath = makeItemFilePath( nItemVer, FILE_MAGIC_POS_VAL ); 
local nSearchRow = TabFile_Search( strMagPosValPath, "MAGIC_POS", nMagicPos ); 
if( nSearchRow >= 2 ) then 
nValue_MagicPos = tonumber( TabFile_GetCell( strMagPosValPath, nSearchRow, "VALUE%", 100 ) ) / 100; 
end 
return nValue_MagicPos; 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n ch� ��nh ma ph�p thu�c t�nh c� hay kh�ng th�ch h�p xu�t hi�n � ��c ��nh trang b� lo�i h�nh th��ng 
function isMagicMatchEquip( nItemVer, nMagicID, nDetailType, nParticular ) 
local aryMagAttrLvlRange = getMagAttrLvlRange( nItemVer, nMagicID, 1 ); 
if( getn( aryMagAttrLvlRange ) > 0 ) then 
if( nDetailType >= 0 and nDetailType < getn( EQUIP_COLUMNS ) and nParticular >= 0 ) then 
			local nParticularCount = getn( EQUIP_COLUMNS[nDetailType+1] );
local nParticularCol = nParticular; 
if( nParticular >= nParticularCount ) then 
nParticularCol = 0; 
end 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
			if( tonumber( TabFile_GetCell( strMagValPath, aryMagAttrLvlRange[1][1]+1, EQUIP_COLUMNS[nDetailType+1][nParticularCol+1], 0 ) ) ~= 0 ) then
return 1; 
end 
end 
end 
return 0; 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n ch� ��nh ma ph�p thu�c t�nh c� hay kh�ng th�ch h�p xu�t hi�n � ��c ��nh trong ng� h�nh 
function isMagicMatchSeries( nItemVer, nMagicID, nSeries ) 
local aryMagAttrLvlRange = getMagAttrLvlRange( nItemVer, nMagicID, 1 ); 
if( getn( aryMagAttrLvlRange ) > 0 ) then 
-- script viet hoa By http://tranhba.com  print( nSeries ); 
if( nSeries >= 0 and nSeries < getn( SERIES_COLUMNS ) ) then 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
-- script viet hoa By http://tranhba.com 			print( aryMagAttrLvlRange[1][1]+1, SERIES_COLUMNS[nSeries+1] );
			if( tonumber( TabFile_GetCell( strMagValPath, aryMagAttrLvlRange[1][1]+1, SERIES_COLUMNS[nSeries+1], 0 ) ) ~= 0 ) then
return 1; 
end 
end 
end 
return 0; 
end
