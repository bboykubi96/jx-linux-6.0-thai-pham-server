-- script viet hoa By http://tranhba.com  nguy�n th�y thu�c t�nh qu�ng th�ch 
-- script viet hoa By http://tranhba.com  Fanghao_Wu 2004.1.28 

Include( "\\script\\lib\\string.lua" );

function main() 
Talk( 2, "","D�ng thu�c t�nh nguy�n th�ch c� th� l�y ra trang b� th��ng t��ng �ng v� tr� m�u xanh da tr�i thu�c t�nh . n�u nh� l� <color=yellow> th�m thu�c t�nh nguy�n th�ch <color> , l�y ra l�c nguy�n th�ch ��ch ng� h�nh thu�c t�nh c�n c�ng trang b� ��ch ng� h�nh thu�c t�nh gi�ng nhau ", " � c�c th�nh tr�n th� r�n ch� l� ���c ti�n h�nh m�u t�m trang b� c�ng ho�ng kim trang b� ch� t�o t��ng quan c�c lo�i thao t�c . " ); 
return 1; 
end 

function GetDesc( nItemIdx ) 
local strDesc = ""; 
local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( nItemIdx ); 
if( mod( nParticular, 2 ) == 0 ) then 
strDesc = strDesc.." ng� h�nh thu�c t�nh #"..toSeries( nSeries ).."\n"; 
end 
return strDesc; 
end
