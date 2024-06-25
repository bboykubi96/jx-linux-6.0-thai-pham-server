-- Include("\\script\\lib\\file.lua");
-- Include("\\script\\lib\\string.lua");
IncludeLib("TIMER")
-- local tbMapRec = {
-- { 6, 11 },
-- { 30, 78 },
-- { 1, 1 },
-- { 64, 162 },
-- { 24, 37 },
-- { 35, 80 },
-- { 68, 176 },
-- { 19, 53 },
-- { 10, 20 },
-- { 43, 99 },
-- { 45, 100 },
-- { 47, 101 },
-- { 55, 121 },
-- { 59, 153 },
-- { 65, 174 },
-- { 58, 131 },
-- { 40, 81 },
-- { 53, 115 },
-- { 28, 49 },
-- { 61, 154 },
-- { 13, 13 },
-- { 71, 183 },
-- { 15, 25 },
-- { 52, 103 },
-- { 21, 59 },
-- }
function OnDeath(nNpcIndex)
-- Msg2Player("Tù ®éng vÒ thµnh d­ìng søc")
TM_SetTimer( 30 * 18,116,1,0);
-- KickOutSelf()
-- SetDeathScript("")
-- local nSub = GetPlayerRev()

	-- local file = [[\settings\RevivePos.ini]];
	-- ini_loadfile(file, 0)
	-- local nWorldIdx,nIdx =  GetRevicePos(nSub)
	-- local szData = ini_getdata(file,nWorldIdx, nIdx);
	-- local szArr = split(szData);
	-- local nPosX = floor(tonumber(szArr[1]) / 32);
	-- local nPosY = floor(tonumber(szArr[2]) / 32);
	-- if (not nPosX or not nPosY) then
		-- return NewWorld (53,1600,3200)
	-- end;
	-- NewWorld(nWorldIdx,nPosX,nPosY)
-- NewWorld(53,1600,3200)
end
function OnTimer()
OfflineLive(PlayerIndex); 
KickOutSelf()
end
-- function GetRevicePos(nSub)
-- for _,tbTab in %tbMapRec do
-- if tbTab[2] == nSub then
-- return nSub,tbTab[1]
-- end
-- end
-- return 53,19
-- end
