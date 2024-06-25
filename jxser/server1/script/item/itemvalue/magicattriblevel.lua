-- script viet hoa By http://tranhba.com  chøc n¨ng # mµu tÝm trang bÞ hÖ thèng - ma ph¸p thuéc tÝnh ®Ých gi¸ trÞ l­îng tÝnh to¸n 
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

-- script viet hoa By http://tranhba.com  c¸c trang bÞ lo¹i h×nh ë ma ph¸p cÊp bËc thuéc tÝnh biÓu trung ®èi øng nhãm tªn 
EQUIP_COLUMNS = 
{ 
{ "SWORD", -- script viet hoa By http://tranhba.com  kiÕm 0, 0, 0 
"BLADE", -- script viet hoa By http://tranhba.com  ®¬n ®ao 0, 0, 1 
"WAND", -- script viet hoa By http://tranhba.com  c«n 0, 0, 2 
"SPEAR", -- script viet hoa By http://tranhba.com  sóng 0, 0, 3 
"HAMMER", -- script viet hoa By http://tranhba.com  chïy 0, 0, 4 
"DUALBLADES", -- script viet hoa By http://tranhba.com  song ®ao 0, 0, 5 
}, 
{ "DARTS", -- script viet hoa By http://tranhba.com  phi tiªu 0, 1, 0 
"KNIFE", -- script viet hoa By http://tranhba.com  phi ®ao 0, 1, 1 
"CROSSBOW", -- script viet hoa By http://tranhba.com  nç 0, 1, 2 
}, 
{ "ARMOR" -- script viet hoa By http://tranhba.com  kh«i gi¸p 0, 2, * 
}, 
{ "RING" -- script viet hoa By http://tranhba.com  chiÕc nhÉn 0, 3, * 
}, 
{ "NECKLACE", -- script viet hoa By http://tranhba.com  gi©y chuyÒn 0, 4, 0 
"AMULET", -- script viet hoa By http://tranhba.com  hé th©n phï 0, 4, 1 
}, 
{ "BOOT" -- script viet hoa By http://tranhba.com  ngoa tö 0, 5, * 
}, 
{ "BELT" -- script viet hoa By http://tranhba.com  ®ai l­ng 0, 6, * 
}, 
{ "HELM" -- script viet hoa By http://tranhba.com  nãn an toµn 0, 7, * 
}, 
{ "CUFF" -- script viet hoa By http://tranhba.com  hé cæ tay 0, 8, * 
}, 
{ "SACHET", -- script viet hoa By http://tranhba.com  h­¬ng nang 0, 9, 0 
"PENDANT", -- script viet hoa By http://tranhba.com  yªu trôy 0, 9, 1 
}, 
}; 

-- script viet hoa By http://tranhba.com  ngò hµnh ë ma ph¸p cÊp bËc thuéc tÝnh biÓu trung ®èi øng nhãm tªn 
SERIES_COLUMNS = 
{ 
"METAL", -- script viet hoa By http://tranhba.com  0 kim 
"WOOD", -- script viet hoa By http://tranhba.com  1 méc 
"WATER", -- script viet hoa By http://tranhba.com  2 n­íc 
"FIRE", -- script viet hoa By http://tranhba.com  3 löa 
"EARTH" -- script viet hoa By http://tranhba.com  4 ®Êt 
}; 

-- script viet hoa By http://tranhba.com  tÝnh to¸n MagicLevel ®Õm tæ ma ph¸p thuéc tÝnh tæng gi¸ trÞ l­îng 
-- script viet hoa By http://tranhba.com  nDetailType, nParticular, nSeries v× MagicLevel chç ë trang bÞ ®Ých lo¹i kh¸c # ngò hµnh 
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

-- script viet hoa By http://tranhba.com  tÝnh to¸n ®an c¸ ma ph¸p thuéc tÝnh ®Ých gi¸ trÞ l­îng 
function calcMagicVal_Single( nItemVer, nMagAttrLvl, nDetailType, nParticular, nSeries, nMagicPos ) 
local nEquipVal = getMagAttrLvlEquipVal( nItemVer, nMagAttrLvl, nDetailType, nParticular ); 
-- script viet hoa By http://tranhba.com  print("Equip:"..nEquipVal ); 
local nSeriesVal = getMagAttrLvlSeriesVal( nItemVer, nMagAttrLvl, nSeries ); 
-- script viet hoa By http://tranhba.com  print("Series:"..nSeriesVal ); 
local nPosVal = getMagAttrLvlPosVal( nItemVer, nMagicPos ); 
-- script viet hoa By http://tranhba.com  print("Pos:"..nMagicPos.." "..nPosVal ); 
return nEquipVal * nSeriesVal * nPosVal; 
end 

-- script viet hoa By http://tranhba.com  tÝnh to¸n hai ma ph¸p thuéc tÝnh ®Ých thªm ®­îc gi¸ trÞ l­îng % 
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

-- script viet hoa By http://tranhba.com  lÊy ®­îc chØ ®Þnh ma ph¸p thuéc tÝnh ID ®Ých ma ph¸p cÊp bËc thuéc tÝnh ph¹m vi 
-- script viet hoa By http://tranhba.com  bDiffOpera bµy tá cã hay kh«ng kh¸c nhau ®ang bÞ/cha/chÞu 
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

-- script viet hoa By http://tranhba.com  lÊy ®­îc chØ ®Þnh ma ph¸p thuéc tÝnh # bao gåm trÞ sè # ®Ých ma ph¸p cÊp bËc thuéc tÝnh 
-- script viet hoa By http://tranhba.com  bDiffOpera bµy tá cã hay kh«ng kh¸c nhau ®ang bÞ/cha/chÞu 
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
-- script viet hoa By http://tranhba.com  ma ph¸p thuéc tÝnh MagicID chÝnh x¸c , nh­ng thuéc tÝnh trÞ gi¸ kh«ng cã ë ®©y biÓu trung nªn MagicID ®Ých bÊt kú trÞ gi¸ vùc bªn trong 
if( nRangeCount > 0 ) then 
if( nMagicParam1 > arynMagP1[2] ) then -- script viet hoa By http://tranhba.com  thø nhÊt thuéc tÝnh trÞ gi¸ so nªn MagicID ®Ých cao cÊp nhÊt ma ph¸p cÊp bËc thuéc tÝnh ®Ých thø nhÊt thuéc tÝnh trÞ gi¸ cao , lµ lÊy cao cÊp nhÊt ®Ých ma ph¸p cÊp bËc thuéc tÝnh 
return aryMagAttrLvlRange[getn(aryMagAttrLvlRange)][2]; 
else -- script viet hoa By http://tranhba.com  nÕu kh«ng lÊy nªn Magic ®Ých cÊp thÊp nhÊt ma ph¸p cÊp bËc thuéc tÝnh 
return aryMagAttrLvlRange[1][1]; 
end 
end 
return 0; 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc chØ ®Þnh ma ph¸p cÊp bËc thuéc tÝnh ®Ých ma ph¸p thuéc tÝnh ID 
function getMagAttrLvlType( nItemVer, nMagAttrLvl ) 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
	return tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "MAGIC_ID", -1 ) );
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc chØ ®Þnh ma ph¸p cÊp bËc thuéc tÝnh ®Ých cÊp bËc 
function getMagAttrLvlLevel( nItemVer, nMagAttrLvl ) 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
	return tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "LEVEL", -1 ) );
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc chØ ®Þnh ma ph¸p cÊp bËc thuéc tÝnh ®Ých trô cét gi¸ trÞ l­îng 
function getMagAttrLvlBaseVal( nItemVer, nMagAttrLvl ) 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
	return tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "BASE_VALUE", 0 ) );
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc chØ ®Þnh ma ph¸p cÊp bËc thuéc tÝnh ®Ých ë ®Æc ®Þnh trang bÞ lo¹i h×nh th­îng ®Ých gi¸ trÞ l­îng 
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

-- script viet hoa By http://tranhba.com  lÊy ®­îc chØ ®Þnh ma ph¸p cÊp bËc thuéc tÝnh ®Ých ë ®Æc ®Þnh trong ngò hµnh ®Ých gi¸ trÞ l­îng 
function getMagAttrLvlSeriesVal( nItemVer, nMagAttrLvl, nSeries ) 
local strMagValPath = makeItemFilePath( nItemVer, FILE_MAGIC_VAL ); 
	return tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, SERIES_COLUMNS[nSeries+1], 100 ) ) / 100;
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc chØ ®Þnh ma ph¸p cÊp bËc thuéc tÝnh ®Ých ®ang gi¶ bé bÞ MagicLevel bÊt ®ång vÞ trÝ gi¸ trÞ l­îng 
function getMagAttrLvlPosVal( nItemVer, nMagicPos ) 
local nValue_MagicPos = 1; 
local strMagPosValPath = makeItemFilePath( nItemVer, FILE_MAGIC_POS_VAL ); 
local nSearchRow = TabFile_Search( strMagPosValPath, "MAGIC_POS", nMagicPos ); 
if( nSearchRow >= 2 ) then 
nValue_MagicPos = tonumber( TabFile_GetCell( strMagPosValPath, nSearchRow, "VALUE%", 100 ) ) / 100; 
end 
return nValue_MagicPos; 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n chØ ®Þnh ma ph¸p thuéc tÝnh cã hay kh«ng thÝch hîp xuÊt hiÖn ë ®Æc ®Þnh trang bÞ lo¹i h×nh th­îng 
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

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n chØ ®Þnh ma ph¸p thuéc tÝnh cã hay kh«ng thÝch hîp xuÊt hiÖn ë ®Æc ®Þnh trong ngò hµnh 
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
