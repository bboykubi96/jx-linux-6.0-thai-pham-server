Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main() 
local nNpcIndex = GetLastDiagNpc() 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> l� kh�ng ph�i l� th�nh b�i quay ��u v� �ch , bao nhi�u v� l�m cao th� b� ch�n � ch� n�y , ti�c nu�i l� , lu�n ki�m l�c , ch� v� mu�n ��t t�i tuy�t th� v� h�c , kh�ng �t hi�p s� kh�ng s� nguy hi�m . ng��i c�n tr� , xin/m�i th�n tr�ng l�m vi�c . " 
G_TASK:OnMessage("Th�ng ca ��o ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end