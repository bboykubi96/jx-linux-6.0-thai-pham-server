Include("\\script\\lib\\common.lua")
Include("\\script\\missions\\racegame\\lib.lua")
TAB_ACTION = 
{-- script viet hoa By http://tranhba.com { b�n �� #missionid#grouptaskid#maxplayercount# c� hay kh�ng v� ��nh n�m th� ho�t ��ng #{ kinh nghi�m b�i s� # kinh nghi�m th�i gian }# chui xu�ng ��t ph� c�n kh�n na di ph� v�n m�n } 
{583, 28, 2330, 10, {0}, 10, {2331, 2332}, [[\settings\maps\chrismas\player.txt]], 12}, 
{822, 38, 2399, 10, {0}, 10, {2400, 2401}, [[\settings\maps\chrismas\player.txt]], 12}, 
{824, 40, 2399, 10, {1, 19}, 10, {2410, 2411}, [[\settings\maps\springfestival2006\player.txt]], 19}, 
-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 
{585, 31, 1130, 10, {1, 19}, 10, {1131, 1132}, [[\settings\maps\springfestival2006\player.txt]], 19}, 
{828, 45, 2399, 10, {0}, 10, {0, 0}, [[\settings\maps\dragonboatfestival_06\player.txt]], 23}, 
{826, 43, 2430, 10, {0}, 10, {0, 0}, [[\settings\maps\dragonboatfestival_06\player.txt]], 23}, 
} 

RACE_TAB_ACTION = 
{ 
{nMapId = 863, nMissionId = 53, pPosList = [[\settings\battles\maps\river\outside.txt]]} 
} 


-- script viet hoa By http://tranhba.com  ki�m tra ��o c� c� ���c hay kh�ng b� s� d�ng 
function itemmapcheck(TAB_ACTION) 
if (TAB_ACTION == nil or type(TAB_ACTION) ~= "table") then 
return 0; 
end; 
local ww, xx, yy = GetWorldPos(); 
for i = 1, getn(TAB_ACTION) do 
if (TAB_ACTION[i][1] == ww) then 
return i; 
end; 
end; 
return 0; 
end; 

-- script viet hoa By http://tranhba.com  m�i bi�u tu�n tra 
function race_ItemMapCheck() 
if (RACE_TAB_ACTION == nil or type(RACE_TAB_ACTION) ~= "table") then 
return 0; 
end; 
local ww, xx, yy = GetWorldPos(); 
for i = 1, getn(RACE_TAB_ACTION) do 
if (RACE_TAB_ACTION[i].nMapId == ww) then 
return i; 
end; 
end; 
return 0; 
end 


-- script viet hoa By http://tranhba.com  ki�m tra n�n nh� ch�i c� hay kh�ng c�n �ang trong tr� ch�i , th�nh c�ng tr� v� PlayerIndex n�u kh�ng tr� v� nil 
function check_pl(szPlayName, nMissionID) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � tr��c m�t ph�c v� kh� 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(nMissionID, nPlIdx) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � ch� ��nh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 

-- script viet hoa By http://tranhba.com  sinh th�nh m�t t��ng ��i vu tr��c m�t nh� ch�i ��ch ch�n h�ng 
function make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 

-- script viet hoa By http://tranhba.com  t�m ���c ��i l�p tr�n doanh , n�m th� ��> nh� ch�i , nh� ch�i ��> n�m th� 
function getgroupid(nGroupId, SMALLMAPCOUNT) 
if (nGroupId < 1) then 
return nil 
end; 

if (nGroupId > SMALLMAPCOUNT) then 
return nGroupId - SMALLMAPCOUNT; 
else 
        return nGroupId + SMALLMAPCOUNT;
end; 
end;
