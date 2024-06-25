Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")

local tbEnterNpc = 
{ 
szName = " hoµng thµnh ti chØ ®iÓm quan ", 
nNpcId = 1747, 
nLevel = 95, 
nMapId = 176, 
		szPosPath = "\\settings\\maps\\chrismas\\enternpc.txt",
		szScriptPath = "\\script\\missions\\zhaojingling\\enternpc.lua",
} 

function main() 
local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 

local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> v× huÊn luyÖn míi ®¹i néi cao thñ , ®Ò cao giang hå chÝ sÜ , ta hoµng thµnh ti chiªu mé thiªn h¹ hµo kiÖt . nÕu nh­ ng­¬i cã ý h­íng muèn b¸o tiªu triÒu ®×nh , xin/mêi tham gia ghi danh ho¹t ®éng . häc thµnh vâ nghÖ , bang chñ ®Õ v­¬ng . c¸c h¹ vâ nghÖ siªu quÇn . ." 
tbDailog:AddOptEntry("Hoµng thµnh ti huÊn luyÖn cung ", xunlianying) 
EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex) 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog) 
tbDailog:Show() 
end 

function xunlianying() 
local tbOpt = {} 
tinsert(tbOpt, {"HuÊn luyÖn méc nh©n ", zhaojingling}) 
tinsert(tbOpt, {"KÕt thóc ®èi tho¹i ", oncancel}) 
CreateNewSayEx("<npc> nªn huÊn luyÖn cung dïng cho huÊn luyÖn ng­êi n¨ng lùc ®Þa ph­¬ng , ®em huÊn luyÖn trë thµnh ®¹i néi cao thñ , ®¹t ®­îc triÒu ®×nh ®Ých t­ëng th­ëng . ", tbOpt) 
end 

function zhaojingling() 
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\missions\\zhaojingling\\enterdialog.lua", "dialogmain")
tbLog:PlayerActionLog("TinhNangKey","BaoDanhTruyTimMocNhan") 
end 

function addenternpc() 
if (TabFile_Load(%tbEnterNpc.szPosPath, %tbEnterNpc.szPosPath) == 0) then 
print("Load TabFile Error!"..%tbEnterNpc.szPosPath) 
return 0 
end 
%tbEnterNpc.nPosX = TabFile_GetCell(%tbEnterNpc.szPosPath, 2, "POSX") 
%tbEnterNpc.nPosY = TabFile_GetCell(%tbEnterNpc.szPosPath, 2, "POSY") 

basemission_CallNpc(%tbEnterNpc) 
end 

function initialize() 
addenternpc() 
	DynamicExecute("\\script\\missions\\zhaojingling\\prepare\\preparegame.lua", "PrepareGame:Start")
end 

AutoFunctions:Add(initialize) 