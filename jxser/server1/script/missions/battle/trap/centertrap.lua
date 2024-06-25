Include("\\script\\missions\\battle\\rule.lua")
Include("\\script\\missions\\basemission\\dungeon.lua")
function main(nAreaId) 

local nMapId = GetWorldPos() 
local szName = GetName() 
local pDungeon = DungeonList[nMapId] 
if not pDungeon then 
return 
end 
if pDungeon.pBattle.nState ~= RUN_STATE then 
local nCamp = pDungeon.pBattle:GetPlayerCamp(szName) 
if nCamp then 
local nX, nY = pDungeon:GetRandomAPos(CAMP2AREA[nCamp], "homepos") 
SetPos(floor(nX/32), floor(nY/32)) 
Msg2Player("B©y giê cßn kh«ng khai chiÕn , kh«ng thÓ rêi ®i ®¹i doanh ! ") 
SetFightState(0) 
end 
end 
end