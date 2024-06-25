if (not __FESTIVAL_FILE_NPC_HEAD__) then 
__FESTIVAL_FILE_NPC_HEAD__ = 1; 

IncludeLib("FILESYS"); 
-- script viet hoa By http://tranhba.com IncludeLib("TITLE"); 

-- script viet hoa By http://tranhba.com  c¨n cø trapfile ®İch v¨n kiÖn ®İch täa ®é tËp häp biÓu , sinh ra tÊt c¶ trap ®iÓm , còng liªn hÖ scriptfile ch©n cña vèn 
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

-- script viet hoa By http://tranhba.com "123,234" -> 123 , 234, ®em mét ch÷ phï chuçi viÕt thµnh täa ®é sè liÖu chuyÓn hãa thµnh hai con sè thay ®æi l­îng 
function str2xydata(str) 
m = strfind(str,",") 
x = tonumber(strsub(str,0,m-1)) 
		y = tonumber(strsub(str,m+1))
return x,y 
end 

-- script viet hoa By http://tranhba.com  tõ tab lo¹i täa ®é v¨n kiÖn trung ngÉu nhiªn lÊy ®­îc nhÊt ®Şnh c¸ ®Õm t­¬ng xİch ®İch täa ®é tab, nÕu nh­ nCount lín h¬n 
-- script viet hoa By http://tranhba.com  v¨n kiÖn cã täa ®é ®İch c¸ ®Õm , lµ trë vÒ v¨n kiÖn ®İch tÊt c¶ täa ®é # 
function getndata(tabfile, nCount) 
local nTotalCount = gettabfileheight(tabfile) - 1; 
local CoordinateTab = {}; 
local i; 
local nPosX, nPosY; 

if (nTotalCount <= nCount) then -- script viet hoa By http://tranhba.com  ®em tÊt c¶ täa ®é tiÕn hµnh trë vÒ # 
for i = 1, nTotalCount do 
CoordinateTab[i] = {}; 
				CoordinateTab[i][1] = gettabfiledata(tabfile, i + 1, 1); -- script viet hoa By http://tranhba.com nPosX
				CoordinateTab[i][2] = gettabfiledata(tabfile, i + 1, 2); -- script viet hoa By http://tranhba.com nPosY
end; 
else -- script viet hoa By http://tranhba.com  ngÉu nhiªn nCount c¸ ®Şa ®iÓm # täa ®é ®iÓm ®İch c¸ ®Õm İt h¬n so víi 3W c¸ lóc thİch dïng # 
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

-- script viet hoa By http://tranhba.com  tõ tab lo¹i täa ®é v¨n kiÖn trung ngÉu nhiªn ®¹t ®­îc mét täa ®é 
function getadata(tabfile) 
local totalcount = gettabfileheight(tabfile) - 1; 
id = random(totalcount); 
		x = gettabfiledata(tabfile, id + 1, 1);
		y = gettabfiledata(tabfile, id + 1, 2);
return x,y 
end 

-- script viet hoa By http://tranhba.com  tõ tab lo¹i täa ®é v¨n kiÖn trung ngÉu nhiªn ®¹t ®­îc mét täa ®é 
function getadatabetween(tabfile, minline, maxline) 
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

-- script viet hoa By http://tranhba.com  c¨n cø npcfile ®İch v¨n kiÖn ®İch täa ®é tËp häp biÓu , sinh ra tÊt c¶ npc m« b¶n sè v× tnpcid ®İch ®èi tho¹i npc , còng liªn hÖ scriptfile ch©n cña vèn 
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

-- script viet hoa By http://tranhba.com  c¨n cø NpcTab ®İch täa ®é tËp häp biÓu , sinh ra tÊt c¶ npc m« b¶n sè v× tnpcid ®İch ®èi tho¹i npc , còng liªn hÖ scriptfile ch©n cña vèn 
function tabadddiagnpc(NpcTab, scriptfile, tnpcid, name) 
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

-- script viet hoa By http://tranhba.com  gia t¨ng mét chøc n¨ng NPC 
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

-- script viet hoa By http://tranhba.com  c¨n cø npcfile ®İch v¨n kiÖn ®İch täa ®é tËp häp biÓu , sinh ra tÊt c¶ npc m« b¶n sè v× tnpcid ®İch chiÕn ®Êu lo¹i h×nh npc 
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

-- script viet hoa By http://tranhba.com  ®em tù phï chuçi theo nh­ ph©n chia phï ph©n chia , trë vÒ c¸c ph©n chia ®o¹n t¹o thµnh ®Õm tæ 
-- script viet hoa By http://tranhba.com  lÖ 1#strsplit( "abc,bcd,efg", "," ) -> { "abc", "bcd", "efg" } 
-- script viet hoa By http://tranhba.com  lÖ 2#strsplit( ",abc,,bcd,,,efg,,", ",," ) -> { ",abc", "bcd", ",efg" } 
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

-- script viet hoa By http://tranhba.com  lÊy ra Ini v¨n kiÖn ®İch néi dung 
function getinifiledata(mapfile, sect, key) 
if (IniFile_Load(mapfile, mapfile) == 0) then 
print("Load IniFile Error!"..mapfile) 
return "" 
else 
return IniFile_GetData(mapfile, sect, key) 
end 
end 

-- script viet hoa By http://tranhba.com  lÊy ra tab v¨n kiÖn ®İch ghi chĞp ®Õm 
function gettabfileheight(mapfile) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFileError!"..mapfile); 
return 0 
end 
return TabFile_GetRowCount(mapfile) 
end; 

-- script viet hoa By http://tranhba.com  lÊy ra tab v¨n kiÖn ®İch néi dung 
function gettabfiledata(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end 

end;
