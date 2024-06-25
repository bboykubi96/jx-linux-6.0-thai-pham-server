Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")

local tbEnterNpc = 
{ 
szName = " ho�ng th�nh ti ch� �i�m quan ", 
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
tbDailog.szTitleMsg = "<npc> v� hu�n luy�n m�i ��i n�i cao th� , �� cao giang h� ch� s� , ta ho�ng th�nh ti chi�u m� thi�n h� h�o ki�t . n�u nh� ng��i c� � h��ng mu�n b�o ti�u tri�u ��nh , xin/m�i tham gia ghi danh ho�t ��ng . h�c th�nh v� ngh� , bang ch� �� v��ng . c�c h� v� ngh� si�u qu�n . ." 
tbDailog:AddOptEntry("Ho�ng th�nh ti hu�n luy�n cung ", xunlianying) 
EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex) 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog) 
tbDailog:Show() 
end 

function xunlianying() 
local tbOpt = {} 
tinsert(tbOpt, {"Hu�n luy�n m�c nh�n ", zhaojingling}) 
tinsert(tbOpt, {"K�t th�c ��i tho�i ", oncancel}) 
CreateNewSayEx("<npc> n�n hu�n luy�n cung d�ng cho hu�n luy�n ng��i n�ng l�c ��a ph��ng , �em hu�n luy�n tr� th�nh ��i n�i cao th� , ��t ���c tri�u ��nh ��ch t��ng th��ng . ", tbOpt) 
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