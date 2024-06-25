Include("\\script\\missions\\tianchimijing\\floor1\\gamefloor1.lua")
function main() 
local nMapId, nX,nY = GetWorldPos() 
if GameFloor1.tbMapList[nMapId] ~= 1 then 
Msg2Player("ChØ cã thÓ ë thiªn tr× bİ c¶nh tÇng thø nhÊt sö dông ") 
return 1 
end 
SetFightState(0) 
end