-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: npcdeath.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-09-01 
-- script viet hoa By http://tranhba.com Comment: cu�i tu�n ho�t ��ng # v� qu�c chi�n tranh chi gi� l�a li�n th�nh 
-- script viet hoa By http://tranhba.com  ch�c n�ng #NPC t� vong ch�n v�n 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com rank = 1, 2, 3, 4, 5 
Include("\\script\\missions\\newcitydefence\\head.lua")

ITEM_DROPRATE_TABLE = { -- script viet hoa By http://tranhba.com  k�n hi�u 
{ { 6,1,1686,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  kim cu�c chi�n h�n 
{ { 6,1,1687,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  m�c cu�c chi�n h�n 
{ { 6,1,1688,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  n��c cu�c chi�n h�n 
{ { 6,1,1689,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  l�a cu�c chi�n h�n 
{ { 6,1,1690,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  ��t cu�c chi�n h�n 
{ { 6,1,1691,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  kim chi h� gi�p 
{ { 6,1,1692,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  m�c chi h� gi�p 
{ { 6,1,1693,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  n��c chi h� gi�p 
{ { 6,1,1694,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  l�a chi h� gi�p 
{ { 6,1,1695,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  ��t chi h� gi�p 
{ { 6,1,1696,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  kim chi l��i dao s�c b�n 
{ { 6,1,1697,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  m�c chi l��i dao s�c b�n 
{ { 6,1,1698,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  n��c chi l��i dao s�c b�n 
{ { 6,1,1699,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  l�a chi l��i dao s�c b�n 
{ { 6,1,1700,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  ��t chi l��i dao s�c b�n 
{ { 6,1,1701,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  h�nh qu�n �an 
{ { 6,1,1702,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  ti�u ho�n �an 
{ { 6,1,1703,1,0,0 }, { 0.0005,0.0010,0.0020,0.0100,0.0200 } }, -- script viet hoa By http://tranhba.com  n�m hoa l� 
} 
TB_EXP = {20000,80000,200000,10000000,150000}
NPC_RANK_DROPRATE_TABLE = { 1, 2, 3, 4, 5 } -- script viet hoa By http://tranhba.com  r�i xu�ng s� l�n 

function OnDeath( nNpcIndex ) 
local state = GetMissionV(MS_STATE) ; 
if (state ~= 2) then 
return 
end; 
local citycamp = GetMissionV( MS_CITYCAMP ) 
local npccamp = 1 
local npcname = " t�ng qu�n " 
if ( citycamp == 1 ) then 
npccamp = 2 
npcname = " kim qu�n " 
end 
local nAddZhanGong = tbKILLNPC_AWARD[rank] 
local nAddShareZhanGong = tbKILLNPC_SHAREAWARD[rank] 
-- script viet hoa By http://tranhba.com  local nZhanGong = 0 
-- script viet hoa By http://tranhba.com  if GetTeamSize() <= 0 then 
-- script viet hoa By http://tranhba.com  nZhanGong = GetTask(TSKID_PLAYER_ZHANGONG) 
-- script viet hoa By http://tranhba.com 		SetTask(TSKID_PLAYER_ZHANGONG,nZhanGong + nAddZhanGong)
-- script viet hoa By http://tranhba.com  Msg2Player(format("Ng�i gi�t ch�t m�t ��ch qu�n <color=yellow>%s<color> , thu ���c <color=yellow>%s<color> chi�n c�ng tr� gi� ",tbSOLDIER_NAME[rank],nAddZhanGong)) 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  cd_AddSkillTitle() 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  local pPlayerIndex = PlayerIndex; 
-- script viet hoa By http://tranhba.com  for i = 1, GetTeamSize() do 
-- script viet hoa By http://tranhba.com  PlayerIndex = GetTeamMember(i); 
-- script viet hoa By http://tranhba.com  nZhanGong = GetTask(TSKID_PLAYER_ZHANGONG) 
-- script viet hoa By http://tranhba.com  if PlayerIndex == pPlayerIndex then 
-- script viet hoa By http://tranhba.com 				SetTask(TSKID_PLAYER_ZHANGONG,nZhanGong + nAddZhanGong)
-- script viet hoa By http://tranhba.com  Msg2Player(format("Ng�i gi�t ch�t m�t ��ch qu�n <color=yellow>%s<color> , thu ���c <color=yellow>%s<color> chi�n c�ng tr� gi� ",tbSOLDIER_NAME[rank],nAddZhanGong)) 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com 				SetTask(TSKID_PLAYER_ZHANGONG,nZhanGong + nAddShareZhanGong)
-- script viet hoa By http://tranhba.com  Msg2Player(format("Ng�i ��ch ��i h�u gi�t ch�t m�t ��ch qu�n <color=yellow>%s<color> , ng�i chia x� thu ���c <color=yellow>%s<color> chi�n c�ng tr� gi� ",tbSOLDIER_NAME[rank],nAddShareZhanGong)) 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  cd_AddSkillTitle() 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  PlayerIndex = pPlayerIndex 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  BT_SortLadder() 
-- script viet hoa By http://tranhba.com  BT_BroadSelf() 
-- local nRan = random(10000)
-- local nCoin
-- if nRan < 4000 then
	-- nCoin = 1
-- elseif nRan < 6000 then
	-- nCoin = 2
-- elseif nRan < 8000 then
	-- nCoin = 3
-- elseif nRan < 9500 then
	-- nCoin = 4
-- else
	-- nCoin = 5
-- end
-- if nCoin > 0 then
-- AddStackItem(nCoin,4,417,1,0,0,0)
-- Msg2Player(format("Ng��i nh�n ���c %d ti�n ��ng. Th�t may m�n",nCoin))
-- end
local nTeamSize = GetTeamSize()
		local nOld = PlayerIndex
		if nTeamSize > 0 then
			for i=1, nTeamSize do
				PlayerIndex = GetTeamMember(i)
				AddOwnExp(TB_EXP[rank])
			end
				PlayerIndex = nOld
		else
			AddOwnExp(TB_EXP[rank])
		end
if rank == 6 then -- script viet hoa By http://tranhba.com  t�c ��n xe 
local state = GetMissionV(MS_STATE) ; 
if (state ~= 2) then 
return 
end; 
Msg2MSAll(MISSIONID, format("<color=yellow>%s ��i ph��ng �� b� ph� h� !!!<color>",tbSOLDIER_NAME[6])) 
return 
end 
dropItem( nNpcIndex, rank, PlayerIndex ); 
	if ( GetMissionV( MS_MAXCOUNTNPC_1 + rank - 1 ) ~= 0 ) then
		SetMissionV( MS_RESTCOUNTNPC_1 + rank - 1, GetMissionV( MS_RESTCOUNTNPC_1 + rank - 1 ) - 1 )
		SetMissionV( MS_MAXCOUNTNPC_1 + rank - 1, GetMissionV( MS_MAXCOUNTNPC_1 + rank - 1 ) - 1 )
end 
local count = 0 
for i = 1, 5 do 
		count = count + GetMissionV(MS_MAXCOUNTNPC_1 + i - 1)
end 
if ( (count <= 0 and GetMissionV(MS_BOSS5_DOWN) == 1) or GetMissionV(MS_MAXCOUNTNPC_5) <= 0) then 
Msg2MSAll(MISSIONID, "<color=yellow> ��ch qu�n ch� so�i �� b� s�t h�i !!!") 
SetMissionV(MS_CITYDEFENCE, 1) 
CloseMission(MISSIONID) 
end 
end 

function dropItem( nNpcIndex, nNpcRank, nBelongPlayerIdx ) 
local nItemCount = getn( ITEM_DROPRATE_TABLE ); 
local nMpsX, nMpsY, nSubWorldIdx = GetNpcPos( nNpcIndex ); 

for nDropTimes = 1, NPC_RANK_DROPRATE_TABLE[nNpcRank] do 
local nRandNum = random(); 
local nSum = 0; 
for i = 1, nItemCount do 
			nSum = nSum + ITEM_DROPRATE_TABLE[i][2][nNpcRank];
if( nSum > nRandNum ) then 
DropItem( nSubWorldIdx, nMpsX, nMpsY, nBelongPlayerIdx, ITEM_DROPRATE_TABLE[i][1][1], ITEM_DROPRATE_TABLE[i][1][2], ITEM_DROPRATE_TABLE[i][1][3], ITEM_DROPRATE_TABLE[i][1][4], ITEM_DROPRATE_TABLE[i][1][5], ITEM_DROPRATE_TABLE[i][1][6], ITEM_DROPRATE_TABLE[i][1][7] ); 
break 
end 
end 
end 
end
