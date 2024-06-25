Include("\\script\\missions\\killbossmatch\\class.lua")

Include("\\script\\lib\\droptemplet.lua")

function OnDeath(nNpcIndex) 

tbKillBossMatch:OnKillNpc(nNpcIndex, 0) 

local tbItem = {szName=" n®m hoa ng‰c lÈ hoµn ", tbProp={1, 2, 0, 5, 0, 0}} 
local tbAward = 
{ 
{szName=" ßπi t≠Ìng qu©n m∆t nπ ", tbProp={0, 11, 446, 1, 0, 0}, nRate = 2}, 
{szName=" h∂i long ch©u ", tbProp={6, 1, 2115, 1, 0, 0}, nRate = 2}, 
{szName=" long huy’t hoµn ", tbProp={6, 1, 2117, 1, 0, 0}, nRate = 3}, 
} 

tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem, "KillBossMatch,npcdrop", 20) 

tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbAward, "KillBossMatch,npcdrop", 1) 
end