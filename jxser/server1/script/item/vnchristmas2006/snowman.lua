Include([[\script\item\vnchristmas2006\xmas_head.lua]]) 

function main(nItemIdx) 
local nDate = tonumber(GetLocalDate("%Y%m%d%H")); 
if (nDate >= 2007011524) then 
Say("Kh� tr�i n�ng b�c , ng��i tuy�t �� h�a th�nh n��c .", 0); 
return 0; 
end; 

local nG, nD, nP = GetItemProp(nItemIdx); 
if (not TB_SNOWMAN_ID[nP]) then 
return 1; 
end; 
dostring(TB_SNOWMAN_ID[nP].."()"); 
end; 

function GetDesc(nItemIdx) 
local szDesc = "\n s� d�ng th�i h�n : <color=blue>2007 n�m 1 th�ng 31 ng�y 0 l�c <color>" 
return szDesc; 
end