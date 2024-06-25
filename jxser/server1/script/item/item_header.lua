-- script viet hoa By http://tranhba.com  v�t ph�m t��ng quan h� th�ng h�m s� 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.21 

IncludeLib( "ITEM" ); 
IncludeLib( "FILESYS" ); 

function makeItemFilePath( nItemVer, strFileName ) 
if( strFileName ~= nil ) then 
		return format( "\\settings\\item\\%03d\\%s", nItemVer, strFileName );
end 
end 

function loadItemTabFiles( strFileName ) 
local nLatestItemVer = ITEM_GetLatestItemVersion(); 
for i = 0, nLatestItemVer do 
local strFullPath = makeItemFilePath( i, strFileName ); 
TabFile_Load( strFullPath, strFullPath ); 
end 
end
