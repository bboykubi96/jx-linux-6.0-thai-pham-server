Include("\\script\\lib\\progressbar.lua")
Include("\\script\\missions\\caiji\\head.lua")
Include("\\script\\missions\\basemission\\dungeon.lua")
Include("\\script\\lib\\awardtemplet.lua")

function calc_tool_count(szToolType) 
local tbTool = ITEM_TOOL[szToolType] 
if not tbTool then 
return 0 
end 
local tbProp = tbTool.tbProp 
return CalcEquiproomItemCount(tbProp[1],tbProp[2],tbProp[3],-1) 
end 

function get_progress() 
local szToolType = nil 
if calc_tool_count("platinum") > 0 then 
szToolType = "platinum" 
elseif calc_tool_count("nomal") > 0 then 
szToolType = "nomal" 
end 
if szToolType ~= nil then 
return szToolType, TOOL2PROGRESSID[szToolType] 
else 
return nil 
end 
end 

function on_collection(nSettingIdx, szToolType, nMapId) 
local tbTool = ITEM_TOOL[szToolType] 
if not tbTool then 
return 
end 
local szPlantType = NPCID2PLANTTYPE[nSettingIdx] 
if not szPlantType then 
return 
end 
local tbItemPlant = ITEM_PLANT[szPlantType] 
if not tbItemPlant then 
return 
end 

local pDungeon = DungeonList[nMapId] 
if not pDungeon then 
return 
end 

local tbProp = tbTool.tbProp 
if ConsumeEquiproomItem(1, tbProp[1], tbProp[2], tbProp[3], -1) ~= 1 then 
return Talk(1, "", format("Ng­¬i kh«ng cã mang %s", tbTool.szName)) 
end 
-- script viet hoa By http://tranhba.com  cho t­ëng th­ëng 

local pPlant = ITEM_PLANT[szPlantType] 
if pPlant then 
%tbAwardTemplet:Give(pPlant, 1, {"Event_Thang6", "collect rice plant"}) 
pDungeon:AddPoint(GetName(), szPlantType) 
end 
end 


local _OnBreak = function(nNpcIndex) 
Msg2Player("Thu tËp c¾t ®øt ") 
end 

local _GetAward = function(nNpcIndex, dwNpcID, szToolType) 
if nNpcIndex == nil then 
Msg2Player("Ng­¬i thu tËp thÊt b¹i .") 
return 
end 

if nNpcIndex <= 0 or GetNpcId(nNpcIndex) ~= dwNpcID then 
Msg2Player("Ng­¬i thu tËp thÊt b¹i .") 
return 
end 

if GetNpcParam(nNpcIndex, NPC_PARAM_COLLECTED) == 1 then 
Msg2Player("Ng­¬i thu tËp thÊt b¹i .") 
return 
end 
local nMapId = GetNpcParam(nNpcIndex, NPC_PARAM_MAPID) 

if nMapId <= 0 then 
return 
end 

local nSettingIdx = GetNpcSettingIdx(nNpcIndex) 
SetNpcParam(nNpcIndex, NPC_PARAM_COLLECTED, 1) 
if CalcFreeItemCellCount() < 1 then 
return Talk(1, "","Tói ®eo l­ng kh«ng gian kh«ng ®ñ ") 
end 

on_collection(nSettingIdx, szToolType, nMapId) 
DelNpc(nNpcIndex) 
end 

function main() 
local nNpcIndex = GetLastDiagNpc() 
local dwNpcIndex = GetNpcId(nNpcIndex) 
local szNpcName = GetNpcName(nNpcIndex) 
local nSettingIdx = GetNpcSettingIdx(nNpcIndex) 

if CalcFreeItemCellCount() < 1 then 
return Talk(1, "","Tói ®eo l­ng kh«ng gian kh«ng ®ñ ") 
end 

local szToolType, nProgressBarId = get_progress() 
if nProgressBarId then 
tbProgressBar:OpenByConfig(nProgressBarId, %_GetAward, {nNpcIndex, dwNpcIndex, szToolType}, %_OnBreak, {nNpcIndex}) 
else 
Talk(1, "", format("Ng­¬i kh«ng cã mang %s hoÆc %s","ThiÕt l­ìi h¸i ","B¹ch kim l­ìi h¸i ")) 
end 

end
