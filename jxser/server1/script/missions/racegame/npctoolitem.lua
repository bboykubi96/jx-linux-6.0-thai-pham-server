-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##npctoolitem.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2008-04-18 10:42:54 
-- script viet hoa By http://tranhba.com  h� tr� ��o c� npc 
Include ("\\script\\lib\\common.lua")
Include("\\script\\missions\\racegame\\racegame.lua")
function main() 
local nNpcIndex = GetLastDiagNpc(); 
local nCount = getn(racegame_tbMission.tbItemList) 
local nRandId = random(1, nCount) 

local tbItem = racegame_tbMission.tbItemList[nRandId] 
AddItem(unpack(tbItem.tbProp)) 
Msg2Player(format("��t ���c 1 <color=yellow>%s<color>", tbItem.szName)) 
DelNpc(nNpcIndex); 
end
