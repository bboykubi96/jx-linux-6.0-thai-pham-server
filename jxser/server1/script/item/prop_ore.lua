-- script viet hoa By http://tranhba.com  thu�c t�nh qu�ng th�ch 
-- script viet hoa By http://tranhba.com  Fanghao_Wu 2004.12.15 

IncludeLib( "ITEM" ); 
IncludeLib( "FILESYS" ); 
Include( "\\script\\lib\\string.lua" );
Include( "\\script\\item\\item_header.lua" );

FILE_MAGIC_INDEX = "magicattriblevel_index.txt"; 

loadItemTabFiles( FILE_MAGIC_INDEX ); 

function main( nItemIdx ) 
Talk( 2, "","D�ng thu�c t�nh nguy�n th�ch c� th� l�y ra trang b� th��ng t��ng �ng v� tr� m�u xanh da tr�i thu�c t�nh . n�u nh� l� <color=yellow> th�m thu�c t�nh nguy�n th�ch <color> , l�y ra l�c nguy�n th�ch ��ch ng� h�nh thu�c t�nh c�n c�ng trang b� ��ch ng� h�nh thu�c t�nh gi�ng nhau ", " � c�c th�nh tr�n th� r�n ch� l� ���c ti�n h�nh m�u t�m trang b� c�ng ho�ng kim trang b� ch� t�o t��ng quan c�c lo�i thao t�c . " ); 
return 1; 
end 

function GetDesc( nItemIdx ) 
local strDesc = ""; 
local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( nItemIdx ); 
if( mod( nParticular, 2 ) == 1 ) then 
strDesc = strDesc.." ng� h�nh thu�c t�nh #"..toSeries( nSeries ).."\n"; 
end 
strDesc = strDesc.."<color=blue> thu�c t�nh #"..getMagicDesc( nItemIdx ).."\n"; 
strDesc = strDesc.."<color=blue> thu�c t�nh ph�m ch�t #<color=yellow>"..nLevel.."\n"; 
strDesc = strDesc.."<color=orange> nh�ng v�y quanh trang b� lo�i h�nh #"..getMagicFitEquip( nItemIdx ); 
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
