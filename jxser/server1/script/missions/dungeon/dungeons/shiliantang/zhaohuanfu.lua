Include("\\script\\missions\\dungeon\\dungeons\\shiliantang\\shiliantang.lua")
Include("\\script\\missions\\dungeon\\npcdialog.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

local _CallTower = function() 
tbDungeonManager:DoTempletFun("Thö luyÖn ®­êng ", "CallTower") 
end 

local _CallBackTower = function() 
tbDungeonManager:DoTempletFun("Thö luyÖn ®­êng ", "CallBackTower") 
end 

function main() 
local szTitle = "<color=yellow> cho gäi phï <color> ë chØ ®Þnh ®Þa ®iÓm , cã thÓ cho gäi <color=red> cung tiÕn thñ <color>, còng cã thÓ cho gäi <color=red> nh÷ng vÞ trÝ kh¸c ®Ých cung tiÕn thñ <color> ." 

if tbDungeonManager:DoTempletFun("Thö luyÖn ®­êng ", "CheckOwnerInDungeon") then 
local tbOpt = 
{ 
{" ë chç nµy cho gäi cung tiÕn thñ ", %_CallTower}, 
{" ë chç nµy cho gäi cung tiÕn thñ ", %_CallBackTower}, 
{"Hñy bá "} 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 

return 1 
end