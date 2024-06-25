Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\missions\\dungeon\\npcdialog.lua")
Include("\\script\\missions\\dungeon\\dungeonmanager.lua")

function main() 
local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 

local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<#><npc> ng­¬i m¹nh kháe , ®¹i hiÖp . ng­¬i cã thÓ tham gia thö luyÖn , cã bæn m«n ®Ých thö luyÖn t¹p liÔu sao ?" 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 

tbDailog:AddOptEntry("§óng vËy , xin/mêi ®¹i nh©n mang ta ®i vµo .",enter_shiliantang) 

-- script viet hoa By http://tranhba.com  b¾n ra ®èi tho¹i khu«ng 
tbDailog:Show() 
end 

function enter_shiliantang_callback(nPlayerIndex, tbDungeonData, bSaved) 
local nOldPlayer = PlayerIndex; 
PlayerIndex = nPlayerIndex; 
if (tbDungeonData == nil) then 
if (PlayerFunLib:CheckItemInBag("return {tbProp={6,1,2317,-1,-1,0},}", 1, " lÇn nµy lùa chän v« cïng träng yÕu , xin lÊy ra thö luyÖn t¹p míi cã thÓ tham gia .") ~= 1) then 
return 
end 
end 

tbDungeonManager:OpenDungeon("Thö luyÖn ®­êng "); 

PlayerIndex = nOldPlayer; 
end 
function enter_shiliantang() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Thö luyÖn ®­êng ", 1); 
if (tbDungeon == nil) then 
		RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CheckExist", {925, GetName()},
			"\\script\\missions\\dungeon\\dungeons\\shiliantang\\jieyinren.lua", "enter_shiliantang_callback", {PlayerIndex});
else 
tbDungeonManager:EnterDungeon(tbDungeon.nDungeonId, PlayerIndex); 
end 
end
