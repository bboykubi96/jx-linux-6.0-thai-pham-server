Include([[\script\item\vnchristmas2006\xmas_head.lua]]) 

function main(nItemIdx) 
local nDate = tonumber(GetLocalDate("%Y%m%d%H")); 
if (nDate >= 2007011524) then 
Say("KhÝ trêi nãng bøc , ng­êi tuyÕt ®· hãa thµnh n­íc .", 0); 
return 0; 
end; 

local nG, nD, nP = GetItemProp(nItemIdx); 
if (not TB_SNOWMAN_ID[nP]) then 
return 1; 
end; 
dostring(TB_SNOWMAN_ID[nP].."()"); 
end; 

function GetDesc(nItemIdx) 
local szDesc = "\n sö dông thêi h¹n : <color=blue>2007 n¨m 1 th¸ng 31 ngµy 0 lóc <color>" 
return szDesc; 
end