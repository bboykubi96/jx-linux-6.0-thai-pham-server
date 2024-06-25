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
tbDailog.szTitleMsg = "<#><npc> ®¹i hiÖp thËt lµ du ly , ng­¬i cã thö luyÖn c¾m ë th©n , ë trªn giang hå nhÊt ®Þnh lµ mét vÞ hµo kiÖt . mét håi sau thö luyÖn ®­êng ®em më ra , ®ang ®îi h¬n , ta gi¶i thÝch cho ng­¬i mét c¸i thö luyÖn ®­êng ®Ých mét Ýt quy ®Þnh . " 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 

local tbDungeon = tbDungeonManager:GetMineDungeon("Thö luyÖn ®­êng ", 1); 

tbDailog:AddOptEntry("Xin/mêi tr­ëng l·o chØ gi¸o .",readRule); 

if (tbDungeon ~= nil and tbDungeon:IsBattleOver() ~= 1 and tbDungeon:IsPrepareTime() ~= 1) then 
tbDailog:AddOptEntry("Ta muèn ®æi mét lÇn cho gäi cung tiÕn thñ ®Ých c¬ héi ",buyChance); 
end 

tbDailog:AddOptEntry("Tíi nhËn lÊy cho gäi phï ",getCallItem); 

if (tbDungeon ~= nil and tbDungeon:IsBattleOver() ~= 1 and tbDungeon:IsPrepareTime() == 1) then 
tbDailog:AddOptEntry("Nh¶y qu¸ chuÈn bÞ b­íc ",skipPrepareTime); 
end 

tbDailog:AddOptEntry("Nh×n nµy ®æi phiªn thµnh tÝch ",queryKillCount); 
tbDailog:AddOptEntry("Nh×n ®¹t ®­îc bao nhiªu huy ch­¬ng ",queryMedalCount); 

if (tbDungeon ~= nil and tbDungeon:IsBattleOver() == 1) then 
tbDailog:AddOptEntry("Ta tíi dÉn t­ëng ",getAward); 
end 

tbDailog:AddOptEntry("Ta muèn rêi ®i thö luyÖn ®­êng ",leave); 

-- script viet hoa By http://tranhba.com  b¾n ra ®èi tho¹i khu«ng 
tbDailog:Show() 
end 

function buyChance() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Thö luyÖn ®­êng ", 1); 
if (tbDungeon ~= nil) then 
tbDungeon:BuyChance(); 
end 
end 

function getAward() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Thö luyÖn ®­êng ", 1); 
if (tbDungeon ~= nil) then 
tbDungeon:GetAward(); 
end 
end 

function leave() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Thö luyÖn ®­êng ", 1); 
if (tbDungeon ~= nil) then 
tbDungeonManager:LeaveDungeon(tbDungeon.nDungeonId, PlayerIndex); 
end 
end 

function getCallItem() 
if (CalcEquiproomItemCount(6,1,2315,-1) >= 1) then 
Talk(1,"","Ng­¬i ®· cã cho gäi phï ."); 
return 
end 

if (PlayerFunLib:CheckFreeBagCell(1, "default") == 1) then 
PlayerFunLib:GetItem("return {tbProp={6,1,2315,1,0,0},}",1,"NhËn lÊy thö luyÖn ®­êng cho gäi phï ") 
end 
end 

function skipPrepareTime() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Thö luyÖn ®­êng ", 1); 
if (tbDungeon ~= nil) then 
tbDungeon:SkipPrepare(); 
end 
end 

function queryMedalCount() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Thö luyÖn ®­êng ", 1); 
if (tbDungeon ~= nil) then 
Talk(1,"",format("Tr­íc m¾t c¸c h¹ cã <color=green>%d<color> thö luyÖn ®­êng huy ch­¬ng .", tbDungeon:GetMedal())); 
end 
end 

function queryKillCount() 
local tbDungeon = tbDungeonManager:GetMineDungeon("Thö luyÖn ®­êng ", 1); 
if (tbDungeon ~= nil) then 
Talk(1,"",format("Ng­¬i ®· ®¸nh lïi <color=green>%d<color> thÝch kh¸ch ", tbDungeon:GetKillCount())); 
end 
end 

function readRule() 
local szTitle = "<npc> ®¹i hiÖp cã thÓ xem tr­íc mét chót vèn ®­êng ®Ých quang c¶nh , mét håi sau s¾p xuÊt hiÖn hiÖn mét nhãm thÝch kh¸ch . c«ng viÖc cña ng­¬i chÝnh lµ ®iÒu binh tíi phßng thñ . vèn ®­êng cã 10 c¸ bÝ mËt c¬ quan , c¸c h¹ chØ cÇn ®Õn gÇn cho gäi cung tiÕn thñ ®Ých ®Þa ph­¬ng t×m xin gióp ®ë lµ ®­îc , mçi lÇn më ra mét c¬ quan cÇn 100 ®iÓm tinh luyÖn th¹ch trÞ gi¸ cïng 5 c¸ thö luyÖn huy ch­¬ng . ng­¬i cßn cã thÓ ®iÒu ®Õn nh÷ng vÞ trÝ kh¸c ®Ó ph¸t huy t¸c dông , mçi lÇn ®iÒu ®éng tèn hao 2 c¸ huy ch­¬ng . c¬ hå mçi tíi thÝch kh¸ch ®Òu cã thö luyÖn huy ch­¬ng , ®¸nh b¹i bän hä cã c¬ héi ®¹t ®­îc . 100 tªn thÝch kh¸ch xuÊt hiÖn sau , ®¸nh b¹i cµng nhiÒu , t­ëng th­ëng cµng phong phó , l·o phu còng ®em chuÈn bÞ cµng thªm phong phó t­ëng th­ëng . <enter> ®¸nh b¹i 1-49 c¸ thÝch kh¸ch ®¹t ®­îc b»ng gç b¶o hép <enter> ®¸nh b¹i 50-69 c¸ thÝch kh¸ch , ®¹t ®­îc ®ång chÊt b¶o hép <enter> ®¸nh b¹i 70-89 c¸ thÝch kh¸ch , ®¹t ®­îc ng©n chÊt b¶o hép <enter> ®¸nh b¹i 90-99 c¸ thÝch kh¸ch ®¹t ®­îc hoµng kim b¶o hép <enter> ®¸nh b¹i 100 c¸ trë lªn thÝch kh¸ch cã thÓ ®¹t ®­îc thÐp b¶o hép <enter> liªn quan tíi b¶o hép trong cã c¸i g× , sÏ ph¶i xem ng­¬i vËn khÝ ?#." 
local tbOpt = {} 
tinsert(tbOpt, {"§a t¹ tr­ëng l·o chØ gi¸o ."}) 
CreateNewSayEx(szTitle, tbOpt); 
end 


function OnExit() 

end; 
