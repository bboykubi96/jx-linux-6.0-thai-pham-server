Include([[\script\item\chrismas\chrismasitem.lua]]); 
Include([[\script\lib\coordinate.lua]]); 

function main() 
local tabidx = itemmapcheck(TAB_ACTION); 
if (0 ~= tabidx) then 
local OldSubWorld = SubWorld; 
local nBeginMapID = GetMissionV(TAB_ACTION[tabidx][6]); 
local nGroupId = GetTask(TAB_ACTION[tabidx][3]); 

		local nMapId = nBeginMapID + nGroupId - 1;
		nMapId = mod(nMapId, TAB_ACTION[tabidx][9]) + 1;
		local PosX, PosY = getadatatow(TAB_ACTION[tabidx][8], 8 + 8 * nMapId, 15 + 8 * nMapId);
SetPos(floor(PosX / 32), floor(PosY / 32)); 

Msg2Player("<#> ng��i s� d�ng m�t <color=0xB5FDD7> chui xu�ng ��t ph� <color> , nh�y ��n b�n �� ��ch nh�ng v� tr� kh�c . "); 
SubWorld = OldSubWorld; 
return 0; 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tu�n tra m�i bi�u 
tabidx = race_ItemMapCheck() 

if tabidx ~= 0 then -- script viet hoa By http://tranhba.com  m�i bi�u trong c� ��nh ngh�a 
local tbRace = RACE_TAB_ACTION[tabidx] 
local tbPosList = {} 

if type(tbRace.pPosList) == "function" then 
tbPosList = tbRace:pPosList() 
elseif type(tbRace.pPosList) == "string" then 

tbPosList[1] = {} 
tbPosList[1][1], tbPosList[1][2] = getadata(tbRace.pPosList) 
end 

local nRandId = random(1, getn(tbPosList)) 
SetPos(floor(tbPosList[nRandId][1]/ 32), floor(tbPosList[nRandId][2] / 32)); 
Msg2Player("<#> ng��i s� d�ng m�t <color=0xB5FDD7> chui xu�ng ��t ph� <color> , nh�y ��n b�n �� ��ch nh�ng v� tr� kh�c . "); 
return 0; 
end 
Talk(1, "","N�i ��y �� kh�ng th� s� d�ng chui xu�ng ��t ph� ."); 
return 1 


end;
