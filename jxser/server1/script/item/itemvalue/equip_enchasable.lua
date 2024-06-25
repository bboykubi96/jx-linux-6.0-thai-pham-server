-- script viet hoa By http://tranhba.com  ch�c n�ng # m�u t�m trang b� h� th�ng - m�u t�m trang b� ��ch gi� tr� l��ng t�nh to�n 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.15 

IncludeLib( "FILESYS" ); 
Include( "\\script\\item\\item_header.lua" );
Include( "\\script\\item\\itemvalue\\magicattriblevel.lua" );

FILE_EQUIP_SOCKET_VAL = "itemvalue\\equip_enchasable_socket.txt"; 
FILE_EQUIP_LEVEL_VAL = "itemvalue\\equip_enchasable_level.txt"; 
FILE_EQUIP_TYPE_VAL = "itemvalue\\equip_enchasable_type.txt"; 

loadItemTabFiles( FILE_EQUIP_SOCKET_VAL ); 
loadItemTabFiles( FILE_EQUIP_LEVEL_VAL ); 
loadItemTabFiles( FILE_EQUIP_TYPE_VAL ); 

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
local nValue_Socket = calcItemValue_Socket( nItemVer, arynMagLvl ); 
-- script viet hoa By http://tranhba.com  print( "SocketVal:"..nValue_Socket ); 
local nValue_Level = calcItemValue_Level( nItemVer, nLevel, arynMagLvl ); 
-- script viet hoa By http://tranhba.com  print( "LevelVal:"..nValue_Level ); 
local nValue_Type = calcItemValue_Type( nItemVer, nGenre, nDetailType, nParticular ); 
-- script viet hoa By http://tranhba.com  print( "TypeVal:"..nValue_Type ); 
local nValue_Magic = calcMagicArrayValue( nItemVer, arynMagLvl, nDetailType, nParticular, nSeries ); 
-- script viet hoa By http://tranhba.com  print( "MagicVal:"..nValue_Magic ); 
	return nValue_Socket + nValue_Level * nValue_Type * nValue_Magic;
end 

-- script viet hoa By http://tranhba.com  t�nh to�n v� �ch l� ��ch gi� tr� l��ng 
function calcItemValue_Socket( nItemVer, arynMagLvl ) 
local nValue_Socket = 0; 
local nSocketCount = 0; 
for i = 1, 6 do 
if( arynMagLvl[i] == -1 ) then 
			nSocketCount = nSocketCount + 1;
elseif( arynMagLvl[i] == 0 ) then 
break; 
end 
end 
local strSocketValPath = makeItemFilePath( nItemVer, FILE_EQUIP_SOCKET_VAL ); 
local nSearchRow = TabFile_Search( strSocketValPath, "SOCKET_COUNT", nSocketCount ); 
if( nSearchRow >= 2 ) then 
nValue_Socket = tonumber( TabFile_GetCell( strSocketValPath, nSearchRow, "VALUE", 0 ) ); 
end 
return nValue_Socket; 
end 

-- script viet hoa By http://tranhba.com  t�nh to�n trang b� c�p b�c gi� tr� l��ng th�m quy�n % 
function calcItemValue_Level( nItemVer, nLevel, arynMagLvl ) 
local nValue_Level = 1; 
local strLevelValPath = makeItemFilePath( nItemVer, FILE_EQUIP_LEVEL_VAL ); 
local nSearchRow = TabFile_Search( strLevelValPath, "LEVEL", nLevel ); 
if( nSearchRow >= 2 ) then 
local strValueColumn= "VALUE%_1"; 
for i = 1, 6 do 
if( arynMagLvl[i] <= 0 ) then 
break; 
end 
local nMagicID = getMagAttrLvlType( nItemVer, arynMagLvl[i] ); 
if( nMagicID >=168 and nMagicID <= 172 ) then -- script viet hoa By http://tranhba.com  n�i c�ng h� t�n th��ng 
strValueColumn= "VALUE%_2"; 
break; 
end 
end 
nValue_Level = tonumber( TabFile_GetCell( strLevelValPath, nSearchRow, strValueColumn, 100 ) ) / 100; 
end 
return nValue_Level; 
end 

-- script viet hoa By http://tranhba.com  t�nh to�n trang b� lo�i h�nh gi� tr� l��ng th�m quy�n % 
function calcItemValue_Type( nItemVer, nGenre, nDetailType, nParticular ) 
local nValue_Type = 1; 
local strTypeValPath = makeItemFilePath( nItemVer, FILE_EQUIP_TYPE_VAL ); 
local nRowCount = TabFile_GetRowCount( strTypeValPath ); 
for i = 2, nRowCount do 
local nCurGenre = tonumber( TabFile_GetCell( strTypeValPath, i, "GENRE", -1 ) ); 
local nCurDetailType = tonumber( TabFile_GetCell( strTypeValPath, i, "DETAILTYPE", -1 ) ); 
local nCurParticular = tonumber( TabFile_GetCell( strTypeValPath, i, "PARTICULAR", -1 ) ); 
if( ( nCurParticular < 0 or nParticular == nCurParticular ) and 
( nCurDetailType < 0 or nDetailType == nCurDetailType ) and 
( nCurGenre < 0 or nGenre == nCurGenre ) ) then 
nValue_Type = tonumber( TabFile_GetCell( strTypeValPath, i, "VALUE%", 100 ) ) / 100; 
break; 
end 
end 
return nValue_Type; 
end
