-- script viet hoa By http://tranhba.com  th�y kh�i c�a b�n binh kh� �� t� ��i tho�i 
Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main(sel) 
Uworld36 = GetByte(GetTask(36),2) 
if (GetFaction() == "cuiyan") or (Uworld36 == 127) or (GetLastFactionNumber() == 5) then 
local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 

local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 

local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> b�n m�n c�ng phu : th�i gian tr�ng y�u l� bi�n h�a v� c�ng , kh�ng gi�ng m�t lo�i v� c�ng ." 
tbDailog:AddOptEntry("Giao d�ch ", yes) 
tbDailog:AddOptEntry("Kh�ng giao d�ch ", no) 
G_TASK:OnMessage("Th�y kh�i ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
else 
Talk(1,"","M�n ch� c� l�nh , b�n m�n binh kh� ch� c� th� b�n cho ��ng m�n t� mu�i .") 
end 
end; 

function yes() 
Sale(66) 
end; 

function no() 
end; 
