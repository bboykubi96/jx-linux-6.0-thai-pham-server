-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ®¹i lôc b¶n - tr¨m ng­êi l«i ®µi vai trß tö vong 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##player_death.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-04-26 16:50:30 

-- script viet hoa By http://tranhba.com  bÞ NPC giÕt chÕt 
-- script viet hoa By http://tranhba.com  bÞ Player giÕt chÕt 
-- script viet hoa By http://tranhba.com  . ng­êi chÕt lµ ®µi chñ 
-- script viet hoa By http://tranhba.com  . ng­êi chÕt lµ ng­êi khiªu chiÕn 
-- script viet hoa By http://tranhba.com  ====================================================== 
Include("\\script\\missions\\bairenleitai\\hundred_arena.lua");

function OnDeath(Launcher) 
local nKilledIndex = PlayerIndex; 
local szKilledName = CallPlayerFunction(nKilledIndex, GetName); 
local szKillerName = CallPlayerFunction(nKilledIndex, GetName); 
local ArenaID = HundredArena.tbPlayerList[szKilledName].nArenaId; 
local nRight = HundredArena.tbPlayerList[szKilledName].nRight; 
SetCurCamp(GetCamp()); 

local nKillerIndex = NpcIdx2PIdx(Launcher); 

if (nKillerIndex <= 0) then 
print(Launcher, GetNpcName(Launcher)); 
DelNpc(Launcher); 
HundredArena.tbArenaList[ArenaID]:PlayerDeath(3); -- script viet hoa By http://tranhba.com  bÞ NPC giÕt chÕt 
else 

if (nRight == 1) then 
HundredArena.tbArenaList[ArenaID]:PlayerDeath(2); -- script viet hoa By http://tranhba.com  ng­êi khiªu chiÕn th¾ng lîi 
else 
HundredArena.tbArenaList[ArenaID]:PlayerDeath(1); -- script viet hoa By http://tranhba.com  ®µi chñ th¾ng lîi 
end 
end 

-- script viet hoa By http://tranhba.com Modified by DinhHQ - 20110714 
ST_StopDamageCounter(); 
SetDeathScript(""); 
DisabledUseTownP(0) -- script viet hoa By http://tranhba.com  cã thÓ trë vÒ thµnh phï 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); -- script viet hoa By http://tranhba.com  chØ cã ®ang chñ ®éng lóc rêi ®i míi thiÕt trÝ v× 0 
DisabledStall(0) -- script viet hoa By http://tranhba.com  cã thÓ bµy s¹p 
SetFightState(0) -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ chiÕn ®Êu 
SetCurCamp(GetCamp()); 

SetRevPos(GetPlayerRev()) 
SetPKFlag(0); 
self:DelPlayer(PlayerIndex) 
local nMapId = GetTask(TSK_LEAVERMAPID); 
local nX = GetTask(TSK_LEAVERPOSX); 
local nY = GetTask(TSK_LEAVERPOSY); 
NewWorld(nMapId, nX, nY); 
end 
