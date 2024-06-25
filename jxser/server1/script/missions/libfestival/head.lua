if (not __FESTIVAL_HEAD__) then 
__FESTIVAL_HEAD__ = 1; 

function no() 

end; 

function festival_log(str) 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ v« Ých trÞ gi¸ lµ kh«ng viÕt vµo 
if (str == nil) then 
return 
end; 

WriteLog("["..FESTIVAL_SHREWMOUSE.." ho¹t ®éng ]"..GetLocalDate(" [%y n¨m %m th¸ng %d ngµy %H lóc %M ph©n ]").." [ mËt m· "..GetAccount().."] [ nh©n vËt :"..GetName().."]"..str); 
end; 

-- script viet hoa By http://tranhba.com  trß ch¬i kÕt thóc 
function festival_gameover(nMapID, nMissionID) 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(nMapID); 

local pidx; 
local idx = 0; 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local i; 
for i = 1, 400 do 
idx, pidx = GetNextPlayer(nMissionID, idx, 0); 
if (pidx > 0) then 
tabPlayer[i] = pidx; 
end; 

if (0 == idx) then 
break; 
end; 

end; 

local nLoop = getn(tabPlayer); 
for i = 1, nLoop do 
PlayerIndex = tabPlayer[i]; 
NewWorld(GetTask(TK_CO_LEAVERMAPID), GetTask(TK_CO_LEAVERPOSX), GetTask(TK_CO_LEAVERPOSY)); 
end; 
PlayerIndex = OldPlayer; 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  kiÓm tra nªn nhµ ch¬i cã hay kh«ng cßn ®ang trong trß ch¬i , thµnh c«ng trë vÒ PlayerIndex nÕu kh«ng trë vÒ nil 
function festival_check_pl(szPlayName) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë tr­íc mÆt phôc vô khÝ 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(CO_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë chØ ®Þnh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 

-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù hµm sè ( c¨n cø ®iÓm kÝch c¸ ®Õm tõ nhiÒu ®Õn thiÓu x¸c ®Þnh ®em mét tæ thµnh viªn ®Ých h¹ng )# 
function groupsort(nGroupId) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CO_MAPID[2]); 


local OldPlayer = PlayerIndex; 
local tabNormalPlayer = {}; 
tabNormalPlayer = festival_sort(nGroupId); 
local tabMsg = {} 
local nMsgCount; 
tabMsg, nMsgCount = festival_getsz(tabMsg, 0, tabNormalPlayer, nGroupId); 


festival_broadcast(tabMsg, nMsgCount, tabNormalPlayer); 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 

function festival_sort(nGroupId) 
local tabPlayer = {}; 
local idx = 0; 
local pidx; 
local i; 
for i = 1, CO_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(CO_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(TK_CO_COUNT_ONETIME); 
end; 

if (0 == idx) then 
break; 
end; 
end; 

local j; 
local temptab = {}; 
local nCount = getn(tabPlayer); 
for i = 2, nCount do -- script viet hoa By http://tranhba.com  ¸p dông mét m¹o phao s¾p xÕp thø tù 
for j = nCount, i, -1 do 
if (tabPlayer[j][2] > tabPlayer[j - 1][2]) then -- script viet hoa By http://tranhba.com  ¸p dông hµng tù s¾p xÕp thø tù 
temptab = tabPlayer[j]; 
tabPlayer[j] = tabPlayer[j - 1]; 
tabPlayer[j - 1] = temptab; 
end; 
end; 
end; 
return tabPlayer; 
end; 

function festival_go_other_place() -- script viet hoa By http://tranhba.com  ngÉu nhiªn truyÒn tíi ®iÓm ban ®Çu 
local nBeginMapID = GetMissionV(MS_CO_BEGINGMAPID); 
local nGroupId = GetTask(TK_CO_GROUPID); 

	local nMapId = nBeginMapID + nGroupId - 1;
	nMapId = mod(nMapId, CO_SMALLMAPCOUNT) + 1;
local szFile = [[\settings\maps\]]..CO_MAPPOINTFLORDER..[[\elf_]]..nMapId..[[.txt]]; 
local PosX, PosY = getadata(szFile); 
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_go_back(nBeginMapID) -- script viet hoa By http://tranhba.com  ngÉu nhiªn truyÒn tíi ®iÓm ban ®Çu 
local nGroupId = GetTask(TK_CO_GROUPID); 

	local nMapId = nBeginMapID + nGroupId - 1;
	nMapId = mod(nMapId, CO_SMALLMAPCOUNT) + 1;
local szFile = [[\settings\maps\]]..CO_MAPPOINTFLORDER..[[\player.txt]]; 
	local PosX, PosY = getadatatow(szFile, 8 + 8 * nMapId, 15 + 8 * nMapId);
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

-- script viet hoa By http://tranhba.com  kiÓm so¸t tr¹ng th¸i cña m×nh 
function festival_get_exptimes() 
local exp_time = GetTask(TK_CO_EXP_TIME) 
if (exp_time >= GetCurServerTime()) then 
return GetTask(TK_CO_EXP_BEISHU); 
else 
return 1; 
end 
end 

end; -- script viet hoa By http://tranhba.com  end of __FESTIVAL_HEAD__ 
