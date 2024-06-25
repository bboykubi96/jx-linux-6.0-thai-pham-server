-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu sa m¹c mª cung to kho¸i ho¹t l©m 
-- script viet hoa By http://tranhba.com TrapID# sa m¹c mª cung 1 

function main(sel) 

local nSubWorldId = SubWorldIdx2ID(SubWorld); 
if nSubWorldId == 919 or nSubWorldId == 920 then 
local nW, nX, nY = RevID2WXY(GetPlayerRev()); 
NewWorld(nW, nX/32, nY/32); 
return 
end 

SetFightState(1); 
NewWorld(136, 1716, 3144) 
AddTermini(195) -- script viet hoa By http://tranhba.com  mÆc dï tÊt c¶ mäi ng­êi l­u trë vÒ ®iÓm ghi chÐp , nh­ng chØ cã 80 cÊp trë lªn míi cã thÓ trùc tiÕp ®i tíi 
end; 
