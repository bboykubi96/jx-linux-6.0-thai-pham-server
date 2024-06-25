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
tbDailog.szTitleMsg = "<#><npc> ��i hi�p th�t l� du ly , ng��i c� th� luy�n c�m � th�n , � tr�n giang h� nh�t ��nh l� m�t v� h�o ki�t . m�t h�i sau th� luy�n ���ng �em m� ra , �ang ��i h�n , ta gi�i th�ch cho ng��i m�t c�i th� luy�n ���ng ��ch m�t �t quy ��nh . " 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 

local tbDungeon = tbDungeonManager:GetMineDungeon("Th� luy�n ���ng ", 1); 

tbDailog:AddOptEntry("Xin/m�i tr��ng l�o ch� gi�o .",readRule); 

if (tbDungeon ~= nil and tbDungeon:IsBattleOver() ~= 1 and tbDungeon:IsPrepareTime() ~= 1) then 
tbDailog:AddOptEntry("Ta mu�n ��i m�t l�n cho g�i cung ti�n th� ��ch c� h�i ",buyChance); 
end 

tbDailog:AddOptEntry("T�i nh�n l�y cho g�i ph� ",getCallItem); 

if (tbDungeon ~= nil and tbDungeon:IsBattleOver() ~= 1 and tbDungeon:IsPrepareTime() == 1) then 
tbDailog:AddOptEntry("Nh�y qu� chu�n b� b��c ",skipPrepareTime); 
end 

tbDailog:AddOptEntry("Nh�n n�y ��i phi�n th�nh t�ch ",queryKillCount); 
tbDailog:AddOptEntry("Nh�n ��t ���c bao nhi�u huy ch��ng ",queryMedalCount); 

if (tbDungeon ~= nil and tbDungeon:IsBattleOver() == 1) then 
tbDailog:AddOptEntry("Ta t�i d�n t��ng ",getAward); 
end 

tbDailog:AddOptEntry("Ta mu�n r�i �i th� luy�n ���ng ",leave); 

-- script viet hoa By http://tranhba.com  b�n ra ��i tho�i khu�ng 
tbDailog:Show() 
end 

function buyChance() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Th� luy�n ���ng ", 1); 
if (tbDungeon ~= nil) then 
tbDungeon:BuyChance(); 
end 
end 

function getAward() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Th� luy�n ���ng ", 1); 
if (tbDungeon ~= nil) then 
tbDungeon:GetAward(); 
end 
end 

function leave() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Th� luy�n ���ng ", 1); 
if (tbDungeon ~= nil) then 
tbDungeonManager:LeaveDungeon(tbDungeon.nDungeonId, PlayerIndex); 
end 
end 

function getCallItem() 
if (CalcEquiproomItemCount(6,1,2315,-1) >= 1) then 
Talk(1,"","Ng��i �� c� cho g�i ph� ."); 
return 
end 

if (PlayerFunLib:CheckFreeBagCell(1, "default") == 1) then 
PlayerFunLib:GetItem("return {tbProp={6,1,2315,1,0,0},}",1,"Nh�n l�y th� luy�n ���ng cho g�i ph� ") 
end 
end 

function skipPrepareTime() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Th� luy�n ���ng ", 1); 
if (tbDungeon ~= nil) then 
tbDungeon:SkipPrepare(); 
end 
end 

function queryMedalCount() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Th� luy�n ���ng ", 1); 
if (tbDungeon ~= nil) then 
Talk(1,"",format("Tr��c m�t c�c h� c� <color=green>%d<color> th� luy�n ���ng huy ch��ng .", tbDungeon:GetMedal())); 
end 
end 

function queryKillCount() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Th� luy�n ���ng ", 1); 
if (tbDungeon ~= nil) then 
Talk(1,"",format("Ng��i �� ��nh l�i <color=green>%d<color> th�ch kh�ch ", tbDungeon:GetKillCount())); 
end 
end 

function readRule() 
local szTitle = "<npc> ��i hi�p c� th� xem tr��c m�t ch�t v�n ���ng ��ch quang c�nh , m�t h�i sau s�p xu�t hi�n hi�n m�t nh�m th�ch kh�ch . c�ng vi�c c�a ng��i ch�nh l� �i�u binh t�i ph�ng th� . v�n ���ng c� 10 c� b� m�t c� quan , c�c h� ch� c�n ��n g�n cho g�i cung ti�n th� ��ch ��a ph��ng t�m xin gi�p �� l� ���c , m�i l�n m� ra m�t c� quan c�n 100 �i�m tinh luy�n th�ch tr� gi� c�ng 5 c� th� luy�n huy ch��ng . ng��i c�n c� th� �i�u ��n nh�ng v� tr� kh�c �� ph�t huy t�c d�ng , m�i l�n �i�u ��ng t�n hao 2 c� huy ch��ng . c� h� m�i t�i th�ch kh�ch ��u c� th� luy�n huy ch��ng , ��nh b�i b�n h� c� c� h�i ��t ���c . 100 t�n th�ch kh�ch xu�t hi�n sau , ��nh b�i c�ng nhi�u , t��ng th��ng c�ng phong ph� , l�o phu c�ng �em chu�n b� c�ng th�m phong ph� t��ng th��ng . <enter> ��nh b�i 1-49 c� th�ch kh�ch ��t ���c b�ng g� b�o h�p <enter> ��nh b�i 50-69 c� th�ch kh�ch , ��t ���c ��ng ch�t b�o h�p <enter> ��nh b�i 70-89 c� th�ch kh�ch , ��t ���c ng�n ch�t b�o h�p <enter> ��nh b�i 90-99 c� th�ch kh�ch ��t ���c ho�ng kim b�o h�p <enter> ��nh b�i 100 c� tr� l�n th�ch kh�ch c� th� ��t ���c th�p b�o h�p <enter> li�n quan t�i b�o h�p trong c� c�i g� , s� ph�i xem ng��i v�n kh� ?#." 
local tbOpt = {} 
tinsert(tbOpt, {"�a t� tr��ng l�o ch� gi�o ."}) 
CreateNewSayEx(szTitle, tbOpt); 
end 


function OnExit() 

end; 
