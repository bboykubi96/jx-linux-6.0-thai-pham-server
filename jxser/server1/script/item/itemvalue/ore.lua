-- script viet hoa By http://tranhba.com  ch�c n�ng # m�u t�m trang b� h� th�ng - qu�ng th�ch ��ch gi� tr� l��ng t�nh to�n 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.15 

IncludeLib( "FILESYS" ); 
Include( "\\script\\item\\item_header.lua" );

FILE_ORE_VAL = "itemvalue\\ore.txt"; 

loadItemTabFiles( FILE_ORE_VAL ); 

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
local strOreValPath = makeItemFilePath( nItemVer, FILE_ORE_VAL ); 
local nSearchRow = TabFile_Search( strOreValPath, "LEVEL", nLevel ); 
if( nSearchRow >= 2 ) then 
nItemVal = tonumber( TabFile_GetCell( strOreValPath, nSearchRow, "VALUE", 0 ) ); 
end 
return nItemVal; 
end
