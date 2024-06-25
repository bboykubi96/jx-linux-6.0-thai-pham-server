-- script viet hoa By http://tranhba.com  nguyªn thñy thuéc tİnh qu¸ng th¹ch 
-- script viet hoa By http://tranhba.com  Fanghao_Wu 2004.1.28 

Include( "\\script\\lib\\string.lua" );

function main() 
Talk( 2, "","Dïng thuéc tİnh nguyªn th¹ch cã thÓ lÊy ra trang bŞ th­îng t­¬ng øng vŞ trİ mµu xanh da trêi thuéc tİnh . nÕu nh­ lµ <color=yellow> thÇm thuéc tİnh nguyªn th¹ch <color> , lÊy ra lóc nguyªn th¹ch ®İch ngò hµnh thuéc tİnh cÇn cïng trang bŞ ®İch ngò hµnh thuéc tİnh gièng nhau ", " ë c¸c thµnh trÊn thî rÌn chç lµ ®­îc tiÕn hµnh mµu tİm trang bŞ cïng hoµng kim trang bŞ chÕ t¹o t­¬ng quan c¸c lo¹i thao t¸c . " ); 
return 1; 
end 

function GetDesc( nItemIdx ) 
local strDesc = ""; 
local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( nItemIdx ); 
if( mod( nParticular, 2 ) == 0 ) then 
strDesc = strDesc.." ngò hµnh thuéc tİnh #"..toSeries( nSeries ).."\n"; 
end 
return strDesc; 
end
