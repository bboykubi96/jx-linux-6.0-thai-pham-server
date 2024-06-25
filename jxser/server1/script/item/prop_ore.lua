-- script viet hoa By http://tranhba.com  thuéc tİnh qu¸ng th¹ch 
-- script viet hoa By http://tranhba.com  Fanghao_Wu 2004.12.15 

IncludeLib( "ITEM" ); 
IncludeLib( "FILESYS" ); 
Include( "\\script\\lib\\string.lua" );
Include( "\\script\\item\\item_header.lua" );

FILE_MAGIC_INDEX = "magicattriblevel_index.txt"; 

loadItemTabFiles( FILE_MAGIC_INDEX ); 

function main( nItemIdx ) 
Talk( 2, "","Dïng thuéc tİnh nguyªn th¹ch cã thÓ lÊy ra trang bŞ th­îng t­¬ng øng vŞ trİ mµu xanh da trêi thuéc tİnh . nÕu nh­ lµ <color=yellow> thÇm thuéc tİnh nguyªn th¹ch <color> , lÊy ra lóc nguyªn th¹ch ®İch ngò hµnh thuéc tİnh cÇn cïng trang bŞ ®İch ngò hµnh thuéc tİnh gièng nhau ", " ë c¸c thµnh trÊn thî rÌn chç lµ ®­îc tiÕn hµnh mµu tİm trang bŞ cïng hoµng kim trang bŞ chÕ t¹o t­¬ng quan c¸c lo¹i thao t¸c . " ); 
return 1; 
end 

function GetDesc( nItemIdx ) 
local strDesc = ""; 
local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( nItemIdx ); 
if( mod( nParticular, 2 ) == 1 ) then 
strDesc = strDesc.." ngò hµnh thuéc tİnh #"..toSeries( nSeries ).."\n"; 
end 
strDesc = strDesc.."<color=blue> thuéc tİnh #"..getMagicDesc( nItemIdx ).."\n"; 
strDesc = strDesc.."<color=blue> thuéc tİnh phÈm chÊt #<color=yellow>"..nLevel.."\n"; 
strDesc = strDesc.."<color=orange> nh­ng v©y quanh trang bŞ lo¹i h×nh #"..getMagicFitEquip( nItemIdx ); 
return strDesc; 
end 

function getMagicDesc( nItemIdx ) 
local nItemVer = ITEM_GetItemVersion( nItemIdx ); 
local nMagicID = GetItemParam( nItemIdx, 1 ); 
local strMagIdxPath = makeItemFilePath( nItemVer, FILE_MAGIC_INDEX ); 
local nSearchRow = TabFile_Search( strMagIdxPath, "MAGIC_ID", nMagicID ); 
if( nSearchRow > 1 ) then 
return TabFile_GetCell( strMagIdxPath, nSearchRow, "DESC", "" ); 
else 
return ""; 
end 
end 

function getMagicFitEquip( nItemIdx ) 
local nItemVer = ITEM_GetItemVersion( nItemIdx ); 
local nMagicID = GetItemParam( nItemIdx, 1 ); 
local strMagIdxPath = makeItemFilePath( nItemVer, FILE_MAGIC_INDEX ); 
local nSearchRow = TabFile_Search( strMagIdxPath, "MAGIC_ID", nMagicID ); 
if( nSearchRow > 1 ) then 
return TabFile_GetCell( strMagIdxPath, nSearchRow, "FIT_EQUIP", "" ); 
else 
return ""; 
end 
end
