-- script viet hoa By http://tranhba.com  ch�c n�ng # m�u t�m trang b� h� th�ng - lam / b�ch trang b� ��ch gi� tr� l��ng t�nh to�n 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.15 

IncludeLib( "FILESYS" ); 
Include( "\\script\\item\\item_header.lua" );
Include( "\\script\\item\\itemvalue\\magicattriblevel.lua" );

FILE_EQUIP_MAG_VAL = "itemvalue\\equip_normal_magic.txt"; 

loadItemTabFiles( FILE_EQUIP_MAG_VAL ); 

-- script viet hoa By http://tranhba.com  ch�c n�ng # b� tr�nh t� ph�ng v�n ��ch ti�p l�i h�m s� , t�nh to�n ch� ��nh v�t ph�m tin t�c gi� tr� l��ng 
-- script viet hoa By http://tranhba.com  tham s� #nItemVer v�t ph�m b�n b�n s� 
-- script viet hoa By http://tranhba.com  nQuality v�t ph�m ph�m ch�t 
-- script viet hoa By http://tranhba.com  nGenre, nDetailType, nParticular v�t ph�m lo�i kh�c 
-- script viet hoa By http://tranhba.com  nLevel v�t ph�m c�p b�c 
-- script viet hoa By http://tranhba.com  nSeries v�t ph�m ng� h�nh 
-- script viet hoa By http://tranhba.com  nLuck v�t ph�m sinh th�nh tham s� ��ch may m�n tr� gi� 
-- script viet hoa By http://tranhba.com  arynMagLvl v�t ph�m MagicLevel ��m t� 
-- script viet hoa By http://tranhba.com  aryMagic v�t ph�m MagicID ��m t� 
-- script viet hoa By http://tranhba.com  strParam [ h�p th�nh ] thao t�c tham s� 
-- script viet hoa By http://tranhba.com  tr� v� # gi� tr� l��ng k�t qu� # sai l�m tr� v� 0# 
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
