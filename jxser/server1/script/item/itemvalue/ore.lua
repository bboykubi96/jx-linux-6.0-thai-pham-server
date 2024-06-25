-- script viet hoa By http://tranhba.com  chøc n¨ng # mµu tÝm trang bÞ hÖ thèng - qu¸ng th¹ch ®Ých gi¸ trÞ l­îng tÝnh to¸n 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.15 

IncludeLib( "FILESYS" ); 
Include( "\\script\\item\\item_header.lua" );

FILE_ORE_VAL = "itemvalue\\ore.txt"; 

loadItemTabFiles( FILE_ORE_VAL ); 

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
local strOreValPath = makeItemFilePath( nItemVer, FILE_ORE_VAL ); 
local nSearchRow = TabFile_Search( strOreValPath, "LEVEL", nLevel ); 
if( nSearchRow >= 2 ) then 
nItemVal = tonumber( TabFile_GetCell( strOreValPath, nSearchRow, "VALUE", 0 ) ); 
end 
return nItemVal; 
end
