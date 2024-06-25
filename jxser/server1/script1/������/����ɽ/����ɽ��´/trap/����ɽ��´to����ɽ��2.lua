-- script viet hoa By http://tranhba.com  ®«ng b¾c khu \ Tr­êng b¹ch s¬n \ Tr­êng b¹ch s¬n b¾c léc \trap\ Tr­êng b¹ch s¬n b¾c léc to Tr­êng b¹ch s¬n ch©n 2.lua 
-- script viet hoa By http://tranhba.com  TrapId 2 
-- script viet hoa By http://tranhba.com  by liukuo @20040915 

function main(sel) 

local nSubWorldId = SubWorldIdx2ID(SubWorld); 
if nSubWorldId == 923 or nSubWorldId == 924 then 
local nW, nX, nY = RevID2WXY(GetPlayerRev()); 
NewWorld(nW, nX/32, nY/32); 
return 
end 

SetFightState(1); 
NewWorld(320,1570,2337); 
end;
