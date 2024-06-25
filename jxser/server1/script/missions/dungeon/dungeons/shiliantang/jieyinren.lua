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
tbDailog.szTitleMsg = "<#><npc> ng��i m�nh kh�e , ��i hi�p . ng��i c� th� tham gia th� luy�n , c� b�n m�n ��ch th� luy�n t�p li�u sao ?" 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 

tbDailog:AddOptEntry("��ng v�y , xin/m�i ��i nh�n mang ta �i v�o .",enter_shiliantang) 

-- script viet hoa By http://tranhba.com  b�n ra ��i tho�i khu�ng 
tbDailog:Show() 
end 

function enter_shiliantang_callback(nPlayerIndex, tbDungeonData, bSaved) 
local nOldPlayer = PlayerIndex; 
PlayerIndex = nPlayerIndex; 
if (tbDungeonData == nil) then 
if (PlayerFunLib:CheckItemInBag("return {tbProp={6,1,2317,-1,-1,0},}", 1, " l�n n�y l�a ch�n v� c�ng tr�ng y�u , xin l�y ra th� luy�n t�p m�i c� th� tham gia .") ~= 1) then 
return 
end 
end 

tbDungeonManager:OpenDungeon("Th� luy�n ���ng "); 

PlayerIndex = nOldPlayer; 
end 
function enter_shiliantang() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Th� luy�n ���ng ", 1); 
if (tbDungeon == nil) then 
		RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CheckExist", {925, GetName()},
			"\\script\\missions\\dungeon\\dungeons\\shiliantang\\jieyinren.lua", "enter_shiliantang_callback", {PlayerIndex});
else 
tbDungeonManager:EnterDungeon(tbDungeon.nDungeonId, PlayerIndex); 
end 
end
