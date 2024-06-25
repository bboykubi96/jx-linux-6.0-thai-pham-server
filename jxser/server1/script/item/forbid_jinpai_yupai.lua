Include("\\script\\battles\\battlehead.lua");

tbForbidMap = 
{ 
-- script viet hoa By http://tranhba.com seven city 
926, 
927, 
928, 
929, 
930, 
931, 
932, 

336, -- script viet hoa By http://tranhba.com  phong l¨ng ®é # 
341, -- script viet hoa By http://tranhba.com  M¹c B¾c th¶o nguyªn 
337, -- script viet hoa By http://tranhba.com  bÕn tµu 1 
338, -- script viet hoa By http://tranhba.com  bÕn tµu 2 
339, -- script viet hoa By http://tranhba.com  bÕn tµu 3 
319, -- script viet hoa By http://tranhba.com  l©m du quan 
333, -- script viet hoa By http://tranhba.com  ph¸i Hoa s¬n 
37, -- script viet hoa By http://tranhba.com  biÖn kinh 
44, -- script viet hoa By http://tranhba.com  tèng kim chiÕn tr­êng 
} 

function ForbidMap() 
nSubWorldID = SubWorldIdx2ID(); 
W,X,Y = GetWorldPos(); 

local nMapId = W; 

for i = 1, getn(tbBATTLEMAP) do -- script viet hoa By http://tranhba.com map tèng kim 
if ( nMapId == tbBATTLEMAP[i] ) then 
Msg2Player("Ngµi b©y giê kh«ng thÓ sö dông vËt phÈm "); 
return 1; 
end 
end 

for i = 1, getn(tbForbidMap) do 
if (nSubWorldID == tbForbidMap[i]) then 
Msg2Player("ThËt xin lçi # ngµi b©y giê ë ®Æc biÖt khu vùc , kh«ng thÓ sö dông vËt phÈm !"); 
return 1 
end 
end 

if (nSubWorldID >= 375 and nSubWorldID <= 386) then -- script viet hoa By http://tranhba.com map tèng kim 
Msg2Player("ThËt xin lçi # ngµi b©y giê ë ®Æc biÖt khu vùc , kh«ng thÓ sö dông vËt phÈm !"); 
return 1 
end 

if (nSubWorldID >= 416 and nSubWorldID <= 511) then -- script viet hoa By http://tranhba.com  phong l¨ng ®é 
Msg2Player("ThËt xin lçi # ngµi b©y giê ë ®Æc biÖt khu vùc , kh«ng thÓ sö dông vËt phÈm !"); 
return 1 
end 

return 0 

end
