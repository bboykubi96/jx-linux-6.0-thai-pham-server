Include("\\script\\missions\\dungeon\\dungeons\\shiliantang\\shiliantang.lua")
Include("\\script\\missions\\dungeon\\npcdialog.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

local _CallTower = function() 
tbDungeonManager:DoTempletFun("Th� luy�n ���ng ", "CallTower") 
end 

local _CallBackTower = function() 
tbDungeonManager:DoTempletFun("Th� luy�n ���ng ", "CallBackTower") 
end 

function main() 
local szTitle = "<color=yellow> cho g�i ph� <color> � ch� ��nh ��a �i�m , c� th� cho g�i <color=red> cung ti�n th� <color>, c�ng c� th� cho g�i <color=red> nh�ng v� tr� kh�c ��ch cung ti�n th� <color> ." 

if tbDungeonManager:DoTempletFun("Th� luy�n ���ng ", "CheckOwnerInDungeon") then 
local tbOpt = 
{ 
{" � ch� n�y cho g�i cung ti�n th� ", %_CallTower}, 
{" � ch� n�y cho g�i cung ti�n th� ", %_CallBackTower}, 
{"H�y b� "} 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 

return 1 
end