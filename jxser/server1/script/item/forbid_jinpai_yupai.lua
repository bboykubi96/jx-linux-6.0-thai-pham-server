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

336, -- script viet hoa By http://tranhba.com  phong l�ng �� # 
341, -- script viet hoa By http://tranhba.com  M�c B�c th�o nguy�n 
337, -- script viet hoa By http://tranhba.com  b�n t�u 1 
338, -- script viet hoa By http://tranhba.com  b�n t�u 2 
339, -- script viet hoa By http://tranhba.com  b�n t�u 3 
319, -- script viet hoa By http://tranhba.com  l�m du quan 
333, -- script viet hoa By http://tranhba.com  ph�i Hoa s�n 
37, -- script viet hoa By http://tranhba.com  bi�n kinh 
44, -- script viet hoa By http://tranhba.com  t�ng kim chi�n tr��ng 
} 

function ForbidMap() 
nSubWorldID = SubWorldIdx2ID(); 
W,X,Y = GetWorldPos(); 

local nMapId = W; 

for i = 1, getn(tbBATTLEMAP) do -- script viet hoa By http://tranhba.com map t�ng kim 
if ( nMapId == tbBATTLEMAP[i] ) then 
Msg2Player("Ng�i b�y gi� kh�ng th� s� d�ng v�t ph�m "); 
return 1; 
end 
end 

for i = 1, getn(tbForbidMap) do 
if (nSubWorldID == tbForbidMap[i]) then 
Msg2Player("Th�t xin l�i # ng�i b�y gi� � ��c bi�t khu v�c , kh�ng th� s� d�ng v�t ph�m !"); 
return 1 
end 
end 

if (nSubWorldID >= 375 and nSubWorldID <= 386) then -- script viet hoa By http://tranhba.com map t�ng kim 
Msg2Player("Th�t xin l�i # ng�i b�y gi� � ��c bi�t khu v�c , kh�ng th� s� d�ng v�t ph�m !"); 
return 1 
end 

if (nSubWorldID >= 416 and nSubWorldID <= 511) then -- script viet hoa By http://tranhba.com  phong l�ng �� 
Msg2Player("Th�t xin l�i # ng�i b�y gi� � ��c bi�t khu v�c , kh�ng th� s� d�ng v�t ph�m !"); 
return 1 
end 

return 0 

end
