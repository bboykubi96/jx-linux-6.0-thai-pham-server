Include([[\script\missions\tong\collectgoods\head.lua]]); 

function bombout() 
local nOrder = GetMissionV(COLLG_MS_NEWSVALUE) - 1; 
local nOrgPlayer = PlayerIndex; 
local tabPlayer = {}; 
local tab_Player = {}; 
local i, j; 
local k = 1; 

for i = 1, COLLG_SMALLMAPCOUNT do 
nPCount = GetMSPlayerCount(COLLG_MISSIONID, i); 
if (nPCount <= 0) then 
break; 
end; 
tab_Player[i] = {}; 
local idx = 0; 
for j = 1, nPCount do 
idx, pidx = GetNextPlayer(COLLG_MISSIONID, idx, i); 
if (pidx > 0) then 
tab_Player[i][j] = pidx; 
PlayerIndex = pidx; 
if (GetTask(COLLG_TK_BOMB_MARK) == -1) then 
tabPlayer[k] = pidx; 
					k = k + 1;
end; 
end; 
if (idx == 0) then 
break; 
end; 
end; 
end; 

for i = 1, getn(tabPlayer) do 
PlayerIndex = tabPlayer[i]; 
bomb_out_pl(nOrder); 
end; 

makebomber(tab_Player, nOrder); 
PlayerIndex = nOrgPlayer; 
end; 

function bomb_out_pl(nOrder)-- script viet hoa By http://tranhba.com nOrder; l�n th� m�y b� n� ��n 
local nBeginMapID = GetMissionV(COLLG_MS_BEGINGMAPID); 
local nTotal = GetTask(COLLG_COUNT_ONETIME);-- script viet hoa By http://tranhba.com  �i r�i c�i r��ng 
local nCaseCount = nTotal; 
local nMax = random(1, 5); 
if (nCaseCount > nMax) then 
nCaseCount = nMax; 
end; 

collg_settonormal();-- script viet hoa By http://tranhba.com  thi�t tr� th�nh ng��i b�nh th��ng # 
SetTask(COLLG_COUNT_ONETIME, nTotal - nCaseCount); 
SetTask(COLLG_TK_BOMB_MARK, nOrder); 

w, x, y = GetWorldPos(); 
world = SubWorldID2Idx(w); 
for i = 1, nCaseCount do 
DropItem(world, x * 32, y * 32, -1, 6, 1, COLLG_GOODSIDX, 1, 0, 0, 0); 
end; 
go_other_place(nBeginMapID); 
AddSkillState(673, 20, 0, 30 * 18); 
AddSkillState(309, 10, 0, 30 * 18); -- script viet hoa By http://tranhba.com  kh�ng ch�u c�ng k�ch 

local str = " b� c�n tr�ng n� trung , <color=yellow> ng�t x�u 30 gi�y <color>!"; 
if (nCaseCount > 0) then 
str = str.." m�t �i <color=yellow>"..nCaseCount.."<color> h�ng h�a ��i , tr��c m�t c�n c� <color=yellow>"..(nTotal - nCaseCount).."<color> h�ng h�a ��i "; 
end; 
SubWorld = world 
Msg2Player(str); 
local sstr = GetName().." b� n� tung tr�ng k�ch ng�t 30 gi�y ! m�t �i "..nCaseCount.." h�ng h�a ��i ." 
Msg2MSGroup(COLLG_MISSIONID, "<color=yellow>"..GetName().."<color> n� tung tr�ng <color=yellow> k�ch ng�t 30 gi�y <color>! m�t �i <color=yellow>"..nCaseCount.."<color> h�ng h�a ��i .", GetTask(TK_GROUPID)) 
end; 

-- script viet hoa By http://tranhba.com  ng�u nhi�n ch�n l�y t�c ��n ng��i 
function makebomber(tab_Player, nOrder) 
local nOrgPlayer = PlayerIndex; 
local i, j, nPCount; 

local nPlayerCountInTeam; 
for i = 1, getn(tab_Player) do 
nPlayerCountInTeam = getn(tab_Player[i]); 
if (nPlayerCountInTeam > 1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i c� hai ng��i tr� l�n t� m�i c� t�c ��n ng��i 
nSeed = random(1, nPlayerCountInTeam); 
PlayerIndex = tab_Player[i][nSeed]; 
if (GetTask(COLLG_TK_BOMB_MARK) == nOrder) then-- script viet hoa By http://tranhba.com  n�u nh� ng�u nhi�n ��n ng��i c�a l� m�i v�a b� n� tung ng��i , l� ��i m�t . 
if (nSeed == 1) then 
nSeed = 2; 
else 
nSeed = nSeed - 1; 
end; 
PlayerIndex = tab_Player[i][nSeed]; 
end; 

collg_settobomber(); 
end; 
end; 
PlayerIndex = nOrgPlayer; 
end; 


function go_other_place(nBeginMapID) -- script viet hoa By http://tranhba.com  ng�u nhi�n truy�n t�i �i�m ban ��u 
local nGroupId = GetTask(TK_GROUPID); 

	local nMapId = nBeginMapID + nGroupId - 1;
	nMapId = mod(nMapId, COLLG_SMALLMAPCOUNT) + 1;
if (nMapId >= 20 and nMapId <= 23) then 
		nMapId = nMapId + 4;
end; 
local szFile = [[\settings\maps\dragonboatfestival_06\elf_]]..nMapId..[[.txt]]; 
local PosX, PosY = getadata(szFile); 
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 
