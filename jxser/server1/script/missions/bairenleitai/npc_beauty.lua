-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n ��i l�c b�n - l�i ��i m� n� 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##npc_beauty.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-05-03 10:26:19 

-- script viet hoa By http://tranhba.com  ====================================================== 
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function main(nNpcIndex) 
local szName = GetName(); 

local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
local nParam1 = GetNpcParam(nNpcIndex, 1); 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> b�n h� n�i ch� c�n nghe ta t�u ho�n b�i h�t n�y s� c�m gi�c tinh th�n ph�n ch�n , tu luy�n th�i �i�m c�ng c� th� �� cao m�t �t c�ng l�c , ng��i nghe m�t ch�t nh�n c� ph�i hay kh�ng qu� th�t gi�ng nh� truy�n thuy�t k� qu�i nh� th� ?" 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 

tinsert(tbDailog, {" l�i h�i nh� v�y , nh� v�y ta ph�i nghe nghe nh�n .", onBeautyState, {szName, nParam1}}); 
tinsert(tbDailog, {"T�nh / ch�n , ta ��i v�i nh�ng th� kia c��i gi�n kh�ng c� h�ng th� ."}) 
CreateNewSayEx(tbDailog.szTitleMsg, tbDailog) 

end 

function onBeautyState(szName, nParam1) 
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\missions\\bairenleitai\\hundred_arena.lua", "HundredArena:AddDoubleState", szName, nParam1);
end 

function OnTimer(nNpcIndex) 
DelNpc(nNpcIndex); 
end 
