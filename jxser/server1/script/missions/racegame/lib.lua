-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##lib.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2008-04-16 09:29:13 
-- script viet hoa By http://tranhba.com  cïng mission kh«ng liªn quan ®Ých hµm sè 
IncludeLib("FILESYS") 
Include("\\script\\lib\\coordinate.lua");
-- script viet hoa By http://tranhba.com  chØ cã thÓ trë vÒ mét trë vÒ trÞ gi¸ 
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
tbNpc.nLevel or 1, -- script viet hoa By http://tranhba.com  cÊp bËc 
tbNpc.nSeries or random(0,4), -- script viet hoa By http://tranhba.com  ngò hµnh 
nMapIndex, -- script viet hoa By http://tranhba.com  b¶n ®å 
nPosX, -- script viet hoa By http://tranhba.com  X täa ®é 
nPosY, -- script viet hoa By http://tranhba.com  Y täa ®é 
1, -- script viet hoa By http://tranhba.com  kh«ng nÆng sinh 
tbNpc.szName, -- script viet hoa By http://tranhba.com  tªn 
tbNpc.nIsboss or 0 
); -- script viet hoa By http://tranhba.com  cã hay kh«ng BOSS 
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
-- script viet hoa By http://tranhba.com print("B¶n ®å "..nMapId.." kh«ng cã thªm t¸i ") 
end 
end
