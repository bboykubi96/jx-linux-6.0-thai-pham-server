Include( "\\script\\lib\\string.lua" );

function main( nItemIdx ) 
return 1; 
end 

function GetDesc( nItemIdx ) 
local strDesc = ""; 
local _, _, _, _, nSeries = GetItemProp( nItemIdx ); 
strDesc = "<enter>"..strDesc.." ng� h�nh thu�c t�nh #"..toSeries( nSeries ).."\n"; 
return strDesc; 
end