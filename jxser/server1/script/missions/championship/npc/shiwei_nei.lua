Include("\\script\\missions\\championship\\head.lua")
-- script viet hoa By http://tranhba.com  h�i tr��ng th� v� 
RUN_A_TIME = 5 
UP_A_TIME = 15 
function main() 
local mm = RUN_A_TIME - GetMissionV(5) 
if (mm < 0) then 
local mm = UP_A_TIME - GetMissionV(5) 
Say("<#> h�i tr��ng th� v� : v�n n�y tranh t�i c�n c� "..mm.."<#> ph�n , ng��i c�n c� chuy�n g� sao ?", 3,"M�n ph�i d� ch�n cu�c so t�i tr� gi�p /help_tryout","Ta mu�n r�i �i n�i n�y !/out_trap","Kh�ng c�n !/OnCancel") 
return 
end 
Say("<#> h�i tr��ng th� v� : v�n n�y tranh t�i c�n c� "..mm.."<#> ph�n �em b�t ��u , ng��i c�n c� chuy�n g� sao ?", 3,"M�n ph�i d� ch�n cu�c so t�i tr� gi�p /help_tryout","Ta mu�n r�i �i n�i n�y !/out_trap","Kh�ng c�n !/OnCancel") 
end 

function out_trap() 
local mm = RUN_A_TIME - GetMissionV(5) 
if(mm < 0) then 
Say("<#> h�i tr��ng th� v� : b�y gi� r�i �i l�i c�a ph�i ch� t�i cu�c k� ti�p , ng��i nh�t ��nh ph�i r�i �i sao ? ", 2,"Ta mu�n r�i �i !/sure_trap","Kh�ng c�n !/OnCancel") 
return 
end 
Say("V�n n�y tranh t�i l�p t�c b�t ��u , ng��i c�n ph�i b� cu�c sao ?", 2,"Ta mu�n r�i �i !/sure_trap","Kh�ng c�n !/OnCancel") 
end; 

function sure_trap() 
if (nt_gettask(CP_TASKID_ENEMY) > 0) then 
return 
end 
camp = GetCamp(); 
SetCurCamp(camp); 
SetLogoutRV(0); 
SetCreateTeam(1); 
SetFightState(0) 
SetPunish(1) 
ForbidChangePK(0); 
SetPKFlag(0) 
tryout_mapid = SubWorldIdx2ID(SubWorld) 
Msg2Player("Ng��i �� r�i �i d� ch�n cu�c so t�i ") 
DelMSPlayer(18, PlayerIndex, 1) 
NewWorld(tryout_mapid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
