Include("\\script\\missions\\tianchimijing\\floor1\\gamefloor1.lua")
function main() 
local nMapId, nX,nY = GetWorldPos() 
if GameFloor1.tbMapList[nMapId] ~= 1 then 
Msg2Player("Ch� c� th� � thi�n tr� b� c�nh t�ng th� nh�t s� d�ng ") 
return 1 
end 
SetFightState(0) 
end