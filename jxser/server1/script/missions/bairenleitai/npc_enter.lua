-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n ��i l�c b�n - 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##npc_enter.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-05-03 16:50:24 

-- script viet hoa By http://tranhba.com  ====================================================== 
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\log.lua")

function bairen_dialog() 

local tbOpt = {}; 
tinsert(tbOpt, {"Ta mu�n �i ho�ng th�nh ti l�i ��i ",onEnterHunbredArena}); 
tinsert(tbOpt, {" li�n quan t�i ho�ng th�nh ti l�i ��i ",onHelpHunbredArena}) 
tinsert(tbOpt, {"K�t th�c ��i tho�i ", oncancel}) 
CreateNewSayEx("<npc> ho�ng th�nh ti l�i ��i cho giang h� cao th� m�t n�i ti�ng thi�n h� ��ch c� h�i . n�u nh� l�m ��i ch� li�n t�c ��nh b�i ng��i khi�u chi�n s� n�i danh thi�n h� , th�m ch� c� th� tr�c ti�p ��n ho�ng th�nh ra s�c v� n��c . ", tbOpt) 
end 

function onEnterHunbredArena() 

	DynamicExecuteByPlayer(PlayerIndex, "\\script\\missions\\bairenleitai\\hundred_arena.lua", "HundredArena:NpcEnter")	
tbLog:PlayerActionLog("TinhNangKey","BaoDanhBachNhanLoiDai") 
end 

function onHelpHunbredArena() 
local tbOpt = {}; 
tinsert(tbOpt, {"Ta mu�n �i ho�ng th�nh ti l�i ��i ",onEnterHunbredArena}); 
tinsert(tbOpt, {"K�t th�c ��i tho�i ", oncancel}); 

CreateNewSayEx("<npc> ho�ng th�nh ti l�i ��i {{ �em v�i m�i ng�y 12:00 khai kh�i , ��n 0:00 k�t th�c }}. <enter> ho�ng th�nh ti l�i ��i t�m th�i thi�t c� 5 c� l�i ��i , trong �� {{ l�i ��i 1 }} l� ch� l�i ��i , ch� c� � n�i n�y tr�n l�i ��i l�y ���c th�ng l�i m�i c� th� l�y ���c v� l�m nh�n s� ��ch th�a nh�n ." 
.." m�i l�n l�n ��i l� {{3 ph�t }}, n�u nh� trong l�c � ch� n�y song ph��ng b�t ph�n th�ng ph� , ��n l�c �� {{ �em �i b� gi�t th��ng gi�c khinh ��ch nh�t ph��ng }} l�m ��i ch� , ti�p t�c ti�p nh�n nh�ng kh�c cao th� khi�u chi�n ." 
.." n�u nh� kh�ng c� cao th� d�m khi�u chi�n ��i ch� , ho�ng th�nh ti s� ph�i ra th�p ��i m�n ph�i cao th� l�n ��i khi�u chi�n , ��i ch� mu�n � {{ 3 ph�t }} b�n trong ��nh b�i , n�u kh�ng c�ng s� b� nh�n ��nh v� th�t b�i " 
.."<enter> ch� � # mu�n d�ng khinh c�ng ch�y l�n l�i ��i t� v� ", 
tbOpt); 
end 
