-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##lib.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2008-04-16 09:29:13 
-- script viet hoa By http://tranhba.com  c�ng mission kh�ng li�n quan ��ch h�m s� 
IncludeLib("FILESYS") 
Include("\\script\\lib\\coordinate.lua");
-- script viet hoa By http://tranhba.com  ch� c� th� tr� v� m�t tr� v� tr� gi� 
function doFunByPlayer(nPlayerIndex, fun, ...) 
local nOldPlayer = PlayerIndex; 
PlayerIndex = nPlayerIndex 
local re = call(fun, arg); 
PlayerIndex = nOldPlayer; 
return re 
end 


-- script viet hoa By http://tranhba.com  
function doFunInWorld(nSubWorld, fun, ...) 
local nOldSubWorld = SubWorld; 
SubWorld = nSubWorld 
local re = call(fun, arg); 
SubWorld = nOldSubWorld; 
return re 
end 

function racegame_CallNpc(tbNpc, nMapId, nPosX, nPosY) 
nMapId = nMapId or tbNpc.nMapId 
nPosX = nPosX or tbNpc.nPosX 
nPosY = nPosY or tbNpc.nPosY 
local nMapIndex = SubWorldID2Idx(nMapId) 
if nMapIndex >= 0 then 
local nNpcIndex = AddNpcEx( 
tbNpc.nNpcId, -- script viet hoa By http://tranhba.com npc Id 
tbNpc.nLevel or 1, -- script viet hoa By http://tranhba.com  c�p b�c 
tbNpc.nSeries or random(0,4), -- script viet hoa By http://tranhba.com  ng� h�nh 
nMapIndex, -- script viet hoa By http://tranhba.com  b�n �� 
nPosX, -- script viet hoa By http://tranhba.com  X t�a �� 
nPosY, -- script viet hoa By http://tranhba.com  Y t�a �� 
1, -- script viet hoa By http://tranhba.com  kh�ng n�ng sinh 
tbNpc.szName, -- script viet hoa By http://tranhba.com  t�n 
tbNpc.nIsboss or 0 
); -- script viet hoa By http://tranhba.com  c� hay kh�ng BOSS 
if tbNpc.szDeathScript then 
SetNpcDeathScript(nNpcIndex, tbNpc.szDeathScript); 
end 

if tbNpc.szScriptPath then 
SetNpcScript(nNpcIndex, tbNpc.szScriptPath) 
end 
if tbNpc.nTime then 
SetNpcTimer(nNpcIndex, 18*tbNpc.nTime); 
end 
else 
-- script viet hoa By http://tranhba.com print("B�n �� "..nMapId.." kh�ng c� th�m t�i ") 
end 
end
