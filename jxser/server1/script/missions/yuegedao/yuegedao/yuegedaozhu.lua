Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main() 
local TSK_LV150_SKILL = 2885 
local YUEGEDAO_150SKILL_TASKSTATE = 14 
local nNpcIndex = GetLastDiagNpc() 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
local nTaskStep = floor(GetTask(TSK_LV150_SKILL)/100) 
if nTaskStep < YUEGEDAO_150SKILL_TASKSTATE then 
tbDailog.szTitleMsg = "<npc> n�u nh� ��i hi�p kh�ng s� , v�y th� c�ng ta t� th� m�t ch�t , v� n�i ti�ng thi�n h� , luy�n ���c tuy�t th� v� c�ng , v�n b� v�y � ch� n�y , t� b�n tr�ng t� th� quy�t ��nh . " 
else 
tbDailog.szTitleMsg = "<npc> n�u c� duy�n , l� c� th� n�a g�p l�i , n�u nh� v� duy�n , c�ng c� th� l�n nhau t� ni�m , ��i hi�p mau r�i �i ��o �i , giang h� ���ng , xin b�o tr�ng . " 
end 
G_TASK:OnMessage("Th�ng ca ��o ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end