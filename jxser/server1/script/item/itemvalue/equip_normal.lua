-- script viet hoa By http://tranhba.com  chøc n¨ng # mµu tÝm trang bÞ hÖ thèng - lam / b¹ch trang bÞ ®Ých gi¸ trÞ l­îng tÝnh to¸n 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.15 

IncludeLib( "FILESYS" ); 
Include( "\\script\\item\\item_header.lua" );
Include( "\\script\\item\\itemvalue\\magicattriblevel.lua" );

FILE_EQUIP_MAG_VAL = "itemvalue\\equip_normal_magic.txt"; 

loadItemTabFiles( FILE_EQUIP_MAG_VAL ); 

-- script viet hoa By http://tranhba.com  chøc n¨ng # bÞ tr×nh tù pháng vÊn ®Ých tiÕp lêi hµm sè , tÝnh to¸n chØ ®Þnh vËt phÈm tin tøc gi¸ trÞ l­îng 
-- script viet hoa By http://tranhba.com  tham sæ #nItemVer vËt phÈm b¶n bæn sè 
-- script viet hoa By http://tranhba.com  nQuality vËt phÈm phÈm chÊt 
-- script viet hoa By http://tranhba.com  nGenre, nDetailType, nParticular vËt phÈm lo¹i kh¸c 
-- script viet hoa By http://tranhba.com  nLevel vËt phÈm cÊp bËc 
-- script viet hoa By http://tranhba.com  nSeries vËt phÈm ngò hµnh 
-- script viet hoa By http://tranhba.com  nLuck vËt phÈm sinh thµnh tham sæ ®Ých may m¾n trÞ gi¸ 
-- script viet hoa By http://tranhba.com  arynMagLvl vËt phÈm MagicLevel ®Õm tæ 
-- script viet hoa By http://tranhba.com  aryMagic vËt phÈm MagicID ®Õm tæ 
-- script viet hoa By http://tranhba.com  strParam [ hîp thµnh ] thao t¸c tham sæ 
-- script viet hoa By http://tranhba.com  trë vÒ # gi¸ trÞ l­îng kÕt qu¶ # sai lÇm trë vÒ 0# 
function CalcItemValue( nItemVer, nQuality, nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck, arynMagLvl, aryMagic, strParam ) 
local nItemVal = 0; 
if( strParam == "XUANJING_COMPOUND" ) then 
if( nDetailType == 3 or nDetailType == 4 or nDetailType == 9 ) then 
local nMagicCount = 0; 
if( aryMagic ~= nil ) then 
for i = 1, 6 * 4, 4 do 
if( aryMagic[i] > 0 ) then 
						nMagicCount = nMagicCount + 1;
end 
end 
end 
local strMagValPath = makeItemFilePath( nItemVer, FILE_EQUIP_MAG_VAL ); 
local nSearchRow = TabFile_Search( strMagValPath, "MAGIC_COUNT", nMagicCount ); 
if( nSearchRow >= 2 ) then 
nItemVal = tonumber( TabFile_GetCell( strMagValPath, nSearchRow, "VALUE", 0 ) ); 
end 
end 
elseif( strfind( strParam, "MAGIC_DISTILL" ) ) then 
local _, nParamEnd = strfind( strParam, "MAGIC_DISTILL" ); 
		local nMagicIdx = tonumber( strsub( strParam, nParamEnd + 1 ) );
local nAryMagIdx = ( nMagicIdx - 1 ) * 4; 
		local nMagAttrLvl = getMagAttrLvl( nItemVer, aryMagic[nAryMagIdx+1], aryMagic[nAryMagIdx+2], aryMagic[nAryMagIdx+3], aryMagic[nAryMagIdx+4], 0 );
local nMagicVal = 0; 
if( nMagAttrLvl > 0 ) then 
nMagicVal = getMagAttrLvlBaseVal( nItemVer, nMagAttrLvl ); 
end 
nItemVal = nMagicVal; 
end 
return nItemVal; 
end
