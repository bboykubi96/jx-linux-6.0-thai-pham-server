Include([[\script\item\vnchristmas2006\xmas_head.lua]]) 
function main() 
local nDate = tonumber(GetLocalDate("%Y%m%d%H")); 
if (nDate >= 2007013124) then 
Say("Nªn bÝnh ®· qua kú , kh«ng thÓ sö dông !", 0); 
return 0; 
end; 
if (isAddExp_Xmasgift(500000) == 1) then 
Msg2Player("Ngµi ®· ¨n råi mét b¸nh ngät "); 
else 
Msg2Player("Tæng kinh nghiÖm kh«ng thÓ v­ît qua 3 øc , ngµi kh«ng thÓ tiÕp tôc sö dông ."); 
return 1; 
end; 
end; 

function GetDesc(nItemIdx) 
local szDesc = "\n sö dông thêi h¹n : <color=blue>2007 n¨m 1 th¸ng 31 ngµy 0 lóc <color>" 
return szDesc; 
end