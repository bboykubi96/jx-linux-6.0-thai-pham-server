-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n ��i l�c b�n - tr�m ng��i l�i ��i vai tr� t� vong 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##player_death.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-04-26 16:50:30 

-- script viet hoa By http://tranhba.com  b� NPC gi�t ch�t 
-- script viet hoa By http://tranhba.com  b� Player gi�t ch�t 
-- script viet hoa By http://tranhba.com  . ng��i ch�t l� ��i ch� 
-- script viet hoa By http://tranhba.com  . ng��i ch�t l� ng��i khi�u chi�n 
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
HundredArena.tbArenaList[ArenaID]:PlayerDeath(3); -- script viet hoa By http://tranhba.com  b� NPC gi�t ch�t 
else 

if (nRight == 1) then 
HundredArena.tbArenaList[ArenaID]:PlayerDeath(2); -- script viet hoa By http://tranhba.com  ng��i khi�u chi�n th�ng l�i 
else 
HundredArena.tbArenaList[ArenaID]:PlayerDeath(1); -- script viet hoa By http://tranhba.com  ��i ch� th�ng l�i 
end 
end 

-- script viet hoa By http://tranhba.com Modified by DinhHQ - 20110714 
ST_StopDamageCounter(); 
SetDeathScript(""); 
DisabledUseTownP(0) -- script viet hoa By http://tranhba.com  c� th� tr� v� th�nh ph� 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); -- script viet hoa By http://tranhba.com  ch� c� �ang ch� ��ng l�c r�i �i m�i thi�t tr� v� 0 
DisabledStall(0) -- script viet hoa By http://tranhba.com  c� th� b�y s�p 
SetFightState(0) -- script viet hoa By http://tranhba.com  kh�ng ph�i l� chi�n ��u 
SetCurCamp(GetCamp()); 

SetRevPos(GetPlayerRev()) 
SetPKFlag(0); 
self:DelPlayer(PlayerIndex) 
local nMapId = GetTask(TSK_LEAVERMAPID); 
local nX = GetTask(TSK_LEAVERPOSX); 
local nY = GetTask(TSK_LEAVERPOSY); 
NewWorld(nMapId, nX, nY); 
end 
