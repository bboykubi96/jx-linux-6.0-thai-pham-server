Include( "\\script\\lib\\string.lua" )
Include( "\\script\\event\\laborday\\labordayhead.lua" )
-- script viet hoa By http://tranhba.com  gia nh�p n�m m�t ti�t ho�t ��ng 
-- script viet hoa By http://tranhba.com By LiuKuo 2005.4.21 

if LABORDAYSWITCH then 
	Include( "\\script\\event\\laborday\\laborday.lua" )
end 

function main( nItemIdx ) 
local nowDate = tonumber(date("%Y%m%d%H%M%S")); 
if(nowDate >= 20051006080000) then 
Msg2Player("Ho�ng kim Boss ��m nhi�m ng��i Call ho�t ��ng �� k�t th�c "); 
return 1 
end 
if LABORDAYSWITCH then 
local _, _, _, nLevel, nSeries = GetItemProp( nItemIdx ); 
return CallBoss( nLevel, nSeries ) 
else 
Msg2Player("Ho�ng kim Boss ��m nhi�m ng��i Call ho�t ��ng �� k�t th�c "); 
return 1 
end 
end 

function GetDesc( nItemIdx ) 
local strDesc = ""; 
local _, _, _, nLevel, nSeries = GetItemProp( nItemIdx ); 
strDesc = "<enter>"..strDesc.." ng� h�nh thu�c t�nh #"..toSeries( nSeries ).."\n"; 
return strDesc; 
end
