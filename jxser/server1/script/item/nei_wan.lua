-- script viet hoa By http://tranhba.com  b�n trong ph� ho�n # b�n trong ��c ho�n # b�n trong b�ng ho�n # n�i h�a ho�n # b�n trong �i�n ho�n t�ng c�ng c� h�m s� 
-- script viet hoa By http://tranhba.com  n�m lo�i ho�n n�u nh� t�i di�n �n , tr��c �n r�i ��ch ho�n ��ch c�ng hi�u �em bi�n m�t , ch� c�t gi� cu�i c�ng �n ho�n ��ch c�ng hi�u 
-- script viet hoa By http://tranhba.com  Fanghao_Wu 2004.9.13 

aryWan = { {"<#> b�n trong ph� ho�n ", 453}, 
{"<#> b�n trong ��c ho�n ", 454}, 
{"<#> b�n trong b�ng ho�n ", 455}, 
{"<#> n�i h�a ho�n ", 456}, 
{"<#> b�n trong �i�n ho�n ", 457} }; 

function EatNei_Wan( eatIndex, level, statetype, time ) 
local nCount = getn( aryWan ); 
for i = 1, nCount do 
if( i ~= eatIndex ) then 
local nLeftTime = AddSkillState( aryWan[i][2], 1, 1, 0 ); 
if( nLeftTime > 0 ) then 
Msg2Player( aryWan[i][1].."<#> c�ng hi�u �� bi�n m�t " ); 
end 
end 
end 
AddSkillState( aryWan[eatIndex][2], level, statetype, time ); 
Msg2Player( "<#> ng��i �n "..aryWan[eatIndex][1] ); 
end
