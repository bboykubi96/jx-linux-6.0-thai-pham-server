-- script viet hoa By http://tranhba.com  ®«ng b¾c khu \ Tr­êng b¹ch s¬n \ Tr­êng b¹ch s¬n nam léc \trap\ Tr­êng b¹ch s¬n nam léc to Tr­êng b¹ch s¬n ch©n 2.lua 
-- script viet hoa By http://tranhba.com  TrapId 2 
-- script viet hoa By http://tranhba.com  by liukuo @20040915 

function main(sel) 

local nSubWorldId = SubWorldIdx2ID(SubWorld); 
if nSubWorldId  == 998 then
AddTermini(227) 
end

if nSubWorldId == 921 or nSubWorldId == 922 or nSubWorldId == 998 then 
local nW, nX, nY = RevID2WXY(GetPlayerRev()); 
NewWorld(nW, nX/32, nY/32); 
return 
end 
if nSubWorldId  == 998 then
AddTermini(227) 
end

SetFightState(1); 
NewWorld(320, 1562, 2981); 
end;
