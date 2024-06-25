-- script viet hoa By http://tranhba.com  chøc n¨ng # mµu tİm trang bŞ hÖ thèng - hoµng kim trang bŞ ®İch gi¸ trŞ l­îng tİnh to¸n 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.15 

IncludeLib( "FILESYS" ); 
Include( "\\script\\item\\item_header.lua" );
Include( "\\script\\item\\itemvalue\\magicattriblevel.lua" );

FILE_EQUIP_GOLD_VAL = "itemvalue\\equip_gold.txt"; 

loadItemTabFiles( FILE_EQUIP_GOLD_VAL ); 

-- script viet hoa By http://tranhba.com  chøc n¨ng # bŞ tr×nh tù pháng vÊn ®İch tiÕp lêi hµm sè , tİnh to¸n chØ ®Şnh vËt phÈm tin tøc gi¸ trŞ l­îng 
-- script viet hoa By http://tranhba.com  tham sæ #nItemVer vËt phÈm b¶n bæn sè 
-- script viet hoa By http://tranhba.com  nQuality vËt phÈm phÈm chÊt 
-- script viet hoa By http://tranhba.com  nGenre, nDetailType, nParticular vËt phÈm lo¹i kh¸c 
-- script viet hoa By http://tranhba.com  nLevel vËt phÈm cÊp bËc 
-- script viet hoa By http://tranhba.com  nSeries vËt phÈm ngò hµnh 
-- script viet hoa By http://tranhba.com  nLuck vËt phÈm sinh thµnh tham sæ ®İch may m¾n trŞ gi¸ 
-- script viet hoa By http://tranhba.com  arynMagLvl vËt phÈm MagicLevel ®Õm tæ 
-- script viet hoa By http://tranhba.com  aryMagic vËt phÈm MagicID ®Õm tæ 
-- script viet hoa By http://tranhba.com  strParam [ hîp thµnh ] thao t¸c tham sæ 
-- script viet hoa By http://tranhba.com  trë vÒ # gi¸ trŞ l­îng kÕt qu¶ # sai lÇm trë vÒ 0# 
function CalcItemValue( nItemVer, nQuality, nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck, arynMagLvl, aryMagic, strParam ) 
local nEquipVal = 0; 
local strEquipValPath = makeItemFilePath( nItemVer, FILE_EQUIP_GOLD_VAL ); 
local nSearchRow = 1; 
local MAX_LOOP = 100; 
for i = 1, MAX_LOOP do 
		nSearchRow = TabFile_Search( strEquipValPath, "INDEX", nDetailType + 1, nSearchRow + 1 );
if( nSearchRow < 2 ) then 
break; 
end 
if( nGenre == tonumber( TabFile_GetCell( strEquipValPath, nSearchRow, "GENRE", -1 ) ) ) then 
nEquipVal = tonumber( TabFile_GetCell( strEquipValPath, nSearchRow, "VALUE", 0 ) ); 
break; 
end 
end 
return nEquipVal; 
end
