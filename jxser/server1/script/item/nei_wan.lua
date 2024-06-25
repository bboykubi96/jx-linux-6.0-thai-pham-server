-- script viet hoa By http://tranhba.com  bªn trong phæ hoµn # bªn trong ®éc hoµn # bªn trong b¨ng hoµn # néi háa hoµn # bªn trong ®iÖn hoµn tæng céng cã hµm sè 
-- script viet hoa By http://tranhba.com  n¨m lo¹i hoµn nÕu nh­ t¸i diÔn ¨n , tr­íc ¨n råi ®Ých hoµn ®Ých c«ng hiÖu ®em biÕn mÊt , chØ cÊt gi÷ cuèi cïng ¨n hoµn ®Ých c«ng hiÖu 
-- script viet hoa By http://tranhba.com  Fanghao_Wu 2004.9.13 

aryWan = { {"<#> bªn trong phæ hoµn ", 453}, 
{"<#> bªn trong ®éc hoµn ", 454}, 
{"<#> bªn trong b¨ng hoµn ", 455}, 
{"<#> néi háa hoµn ", 456}, 
{"<#> bªn trong ®iÖn hoµn ", 457} }; 

function EatNei_Wan( eatIndex, level, statetype, time ) 
local nCount = getn( aryWan ); 
for i = 1, nCount do 
if( i ~= eatIndex ) then 
local nLeftTime = AddSkillState( aryWan[i][2], 1, 1, 0 ); 
if( nLeftTime > 0 ) then 
Msg2Player( aryWan[i][1].."<#> c«ng hiÖu ®· biÕn mÊt " ); 
end 
end 
end 
AddSkillState( aryWan[eatIndex][2], level, statetype, time ); 
Msg2Player( "<#> ng­¬i ¨n "..aryWan[eatIndex][1] ); 
end
