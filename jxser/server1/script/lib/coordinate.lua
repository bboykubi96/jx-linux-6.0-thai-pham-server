IncludeLib("FILESYS"); 
-- script viet hoa By http://tranhba.com IncludeLib("TITLE"); 

-- script viet hoa By http://tranhba.com  c�n c� trapfile ��ch v�n ki�n ��ch t�a �� t�p h�p bi�u , sinh ra t�t c� trap �i�m , c�ng li�n h� scriptfile ch�n c�a v�n 
function addtrap(trapfile, scriptfile) 
local count = gettabfileheight(trapfile); 
scriptid = FileName2Id(scriptfile); 

ID = SubWorldIdx2ID(SubWorld); 

for i = 1, count - 1 do 
		x = gettabfiledata(trapfile, i + 1, 1);
		y = gettabfiledata(trapfile, i + 1, 2);
AddMapTrap(ID, x,y, scriptfile); 
end; 
end; 

-- script viet hoa By http://tranhba.com "123,234" -> 123 , 234, �em m�t ch� ph� chu�i vi�t th�nh t�a �� s� li�u chuy�n h�a th�nh hai con s� thay ��i l��ng 
function str2xydata(str) 
m = strfind(str,",") 
x = tonumber(strsub(str,0,m-1)) 
	y = tonumber(strsub(str,m+1))
return x,y 
end 

-- script viet hoa By http://tranhba.com  t� tab lo�i t�a �� v�n ki�n trung ng�u nhi�n l�y ���c nh�t ��nh c� ��m t��ng x�ch ��ch t�a �� tab, n�u nh� nCount l�n h�n 
-- script viet hoa By http://tranhba.com  v�n ki�n c� t�a �� ��ch c� ��m , l� tr� v� v�n ki�n ��ch t�t c� t�a �� # 
function getndata(tabfile, nCount) 
local nTotalCount = gettabfileheight(tabfile) - 1; 
local CoordinateTab = {}; 
local i; 
local nPosX, nPosY; 

if (nTotalCount <= nCount) then -- script viet hoa By http://tranhba.com  �em t�t c� t�a �� ti�n h�nh tr� v� # 
for i = 1, nTotalCount do 
CoordinateTab[i] = {}; 
			CoordinateTab[i][1] = gettabfiledata(tabfile, i + 1, 1); -- script viet hoa By http://tranhba.com nPosX
			CoordinateTab[i][2] = gettabfiledata(tabfile, i + 1, 2); -- script viet hoa By http://tranhba.com nPosY
end; 
else -- script viet hoa By http://tranhba.com  ng�u nhi�n nCount c� ��a �i�m # t�a �� �i�m ��ch c� ��m �t h�n so v�i 3W c� l�c th�ch d�ng # 
local nBeginPos = random(1, nTotalCount); 
local nDistance = floor(nTotalCount / nCount); 
local nPos; 

for i = 1, nCount do 
CoordinateTab[i] = {}; 
			nPos = nBeginPos + nDistance * (i - 1);
			nPos = mod(nPos, nTotalCount) + 1;
			CoordinateTab[i][1] = gettabfiledata(tabfile, nPos + 1, 1); -- script viet hoa By http://tranhba.com nPosX
			CoordinateTab[i][2] = gettabfiledata(tabfile, nPos + 1, 2); -- script viet hoa By http://tranhba.com nPosY
end; 
end; 

return CoordinateTab; 
end; 

-- script viet hoa By http://tranhba.com  t� tab lo�i t�a �� v�n ki�n trung ng�u nhi�n ��t ���c m�t t�a �� 
function getadata(tabfile) 
local totalcount = gettabfileheight(tabfile) - 1; 
id = random(totalcount); 
	x = gettabfiledata(tabfile, id + 1, 1);
	y = gettabfiledata(tabfile, id + 1, 2);
return x,y 
end 

-- script viet hoa By http://tranhba.com  t� tab lo�i t�a �� v�n ki�n trung ng�u nhi�n ��t ���c m�t t�a �� 
function getadatatow(tabfile, minline, maxline) 
local totalcount = gettabfileheight(tabfile) - 1; 

if (minline < 1) then 
minline = 1; 
end; 

if (maxline > totalcount) then 
print("maxline:"..maxline..",totalcount:"..totalcount) 
maxline = totalcount; 
end; 

id = random(minline, maxline); 
x = gettabfiledata(tabfile, id, 2); 
y = gettabfiledata(tabfile, id, 3); 
return x,y 
end 

-- script viet hoa By http://tranhba.com  c�n c� npcfile ��ch v�n ki�n ��ch t�a �� t�p h�p bi�u , sinh ra t�t c� npc m� b�n s� v� tnpcid ��ch ��i tho�i npc , c�ng li�n h� scriptfile ch�n c�a v�n 
function adddiagnpc(npcfile, scriptfile, tnpcid, name) 
addcount = 0; 
local count = gettabfileheight(npcfile); 

for i = 1, count - 1 do 
		x = gettabfiledata(npcfile, i + 1, 1);
		y = gettabfiledata(npcfile, i + 1, 2);
if (name ~= nil or name ~= "") then 
npcidx = AddNpc(tnpcid, 1, SubWorld, x * 32, y * 32, 1, name) 
else 
npcidx = AddNpc(tnpcid, 1, SubWorld, x * 32, y * 32); 
end 

if (npcidx > 0) then 
SetNpcScript(npcidx, scriptfile) 
			addcount = addcount + 1
end 
end; 
return addcount 
end; 

-- script viet hoa By http://tranhba.com  c�n c� NpcTab ��ch t�a �� t�p h�p bi�u , sinh ra t�t c� npc m� b�n s� v� tnpcid ��ch ��i tho�i npc , c�ng li�n h� scriptfile ch�n c�a v�n 
function tabadddiagnpc(NpcTab, scriptfile, tnpcid, name) 
if ("table" ~= type(NpcTab)) then 
print("chrismas actives error! function 'tabadddiagnpc()' param NpcTab is not a table value.") 
return 
end; 

local addcount = 0; 
local count = getn(NpcTab); 

local i; 
for i = 1, count - 1 do 
x = NpcTab[i][1]; 
y = NpcTab[i][2]; 
if (name ~= nil or name ~= "") then 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y, 1, name) 
else 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y); 
end 

if (npcidx > 0) then 
SetNpcScript(npcidx, scriptfile) 
SetNpcParam(npcidx,4,1) 
			addcount = addcount + 1
end 
end; 
return addcount 
end; 

-- script viet hoa By http://tranhba.com  c�n c� NpcTab ��ch t�a �� t�p h�p bi�u , sinh ra t�t c� npc m� b�n s� v� tnpcid ��ch ��i tho�i npc , c�ng li�n h� scriptfile ch�n c�a v�n 
function tabaddgoods(NpcTab) 
if ("table" ~= type(NpcTab)) then 
print("springfestival2006 actives error! function 'tabadddiagnpc()' param NpcTab is not a table value.") 
return 
end; 

local addcount = 0; 
local count = getn(NpcTab); 

local i; 
for i = 1, count - 1 do 
x = NpcTab[i][1]; 
y = NpcTab[i][2]; 
nItemIdx = DropItem(SubWorld, x, y, -1, 6, 1, 1086, 1, 0, 0, 0); 
if (nItemIdx >= 1) then 
SetSpecItemParam(nItemIdx, 1, 1); -- script viet hoa By http://tranhba.com 1 b�y t� th�t , 2 b�y t� gi� 
SetSpecItemParam(nItemIdx, 2, 1); -- script viet hoa By http://tranhba.com  ch� �� cho m�t nh� ch�i gi�n 
end; 
end; 
return addcount 
-- script viet hoa By http://tranhba.com nItemIdx = DropItem(subworld, x, y, -1, 6, 1, 1050, 1, 0, 0, 0); 
end; 

-- script viet hoa By http://tranhba.com  gia t�ng m�t ch�c n�ng NPC 
function add_a_diagnpc(scriptfile, tnpcid, x, y, name) 
if (name ~= nil or name ~= "") then 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y, 1 , name); 
else 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y ) 
end 

if (npcidx > 0) then 
SetNpcScript(npcidx, scriptfile) 
end 
return npcidx 
end 

-- script viet hoa By http://tranhba.com  c�n c� npcfile ��ch v�n ki�n ��ch t�a �� t�p h�p bi�u , sinh ra t�t c� npc m� b�n s� v� tnpcid ��ch chi�n ��u lo�i h�nh npc 
function addfightnpc (npcfile, tnpcid, level, camp, removewhendeath, name, boss) 
addcount = 0; 
local count = gettabfileheight(npcfile) - 1; 

l_removedeath = 1; 
l_name = ""; 
l_boss = 0; 

if (removewhendeath ~= nil) then 
l_removedeath = removewhendeath 
end; 

if (name ~= nil or name ~= "" ) then 
l_name = name 
end 

if (boss ~= nil) then 
l_boss = boss 
end 

for i = 1, count do 
		x = gettabfiledata(npcfile, i + 1, 1);
		y = gettabfiledata(npcfile, i + 1, 2);
npcidx = AddNpc(tnpcid, level, SubWorld, x, y, l_removedeath, l_name, l_boss); 
if (npcidx > 0) then 
SetNpcCurCamp(npcidx, camp) 
			addcount = addcount + 1
end 
end; 
return addcount 
end; 

-- script viet hoa By http://tranhba.com  �em t� ph� chu�i theo nh� ph�n chia ph� ph�n chia , tr� v� c�c ph�n chia �o�n t�o th�nh ��m t� 
-- script viet hoa By http://tranhba.com  l� 1#strsplit( "abc,bcd,efg", "," ) -> { "abc", "bcd", "efg" } 
-- script viet hoa By http://tranhba.com  l� 2#strsplit( ",abc,,bcd,,,efg,,", ",," ) -> { ",abc", "bcd", ",efg" } 
function strsplit( strText, strSeparator ) 
local arySlice = {}; 
local nSliceCount = 0; 
local nStartIdx, nEndIdx; 
while( 1 ) do 
nStartIdx, nEndIdx = strfind( strText, strSeparator, 1, 1 ); 
if( nStartIdx == nil ) then 
break 
end 
if( nStartIdx > 1 ) then 
			nSliceCount = nSliceCount + 1;
arySlice[nSliceCount] = strsub( strText, 1, nStartIdx - 1 ); 
end 
		strText = strsub( strText, nEndIdx + 1 );
end 
if( strlen( strText ) > 0 ) then 
		arySlice[nSliceCount+1] = strText;
end 
return arySlice; 
end 

-- script viet hoa By http://tranhba.com  l�y ra Ini v�n ki�n ��ch n�i dung 
function getinifiledata(mapfile, sect, key) 
if (IniFile_Load(mapfile, mapfile) == 0) then 
print("Load IniFile Error!"..mapfile) 
return "" 
else 
return IniFile_GetData(mapfile, sect, key) 
end 
end 

-- script viet hoa By http://tranhba.com  l�y ra tab v�n ki�n ��ch ghi ch�p ��m 
function gettabfileheight(mapfile) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFileError!"..mapfile); 
return 0 
end 
return TabFile_GetRowCount(mapfile) 
end; 

-- script viet hoa By http://tranhba.com  l�y ra tab v�n ki�n ��ch n�i dung 
function gettabfiledata(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end 

function gettabfilestring(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tostring(TabFile_GetCell(mapfile, row, col)) 
end 
end 
