Include("\\script\\missions\\freshman_match\\head.lua")
-- script viet hoa By http://tranhba.com  h�i tr��ng th� v� 
RUN_A_TIME = 5 
UP_A_TIME = 20 
function main() 
local mm = RUN_A_TIME - GetMissionV( 5 ) 
if ( mm < 0 ) then 
local mm = UP_A_TIME - GetMissionV( 5 ) 
Say("<#> h�i tr��ng th� v� # v�n ��i phi�n tranh t�i c�n l�i "..mm.."<#> ph�t , ng��i c�n c� chuy�n g� sao ?", 3,"Tr� gi�p v� l�m t�n t� li�n cu�c so t�i /help_freshmanmatch","Ta mu�n r�i �i c�i n�y !/out_trap","Kh�ng c�n !/OnCancel") 
return 
end 
Say("<#> h�i tr��ng th� v� # v�n ��i phi�n tranh t�i c�n l�i "..mm.."<#> ph�t sau b�t ��u , ng��i c� chuy�n g� kh�ng ?", 3,"Tr� gi�p v� l�m t�n t� li�n cu�c so t�i /help_freshmanmatch","Ta mu�n r�i �i c�i n�y !/out_trap","Kh�ng c�n !/OnCancel") 
end 

function out_trap() 
local mm = RUN_A_TIME - GetMissionV(5) 
if(mm < 0) then 
Say("<#> h�i tr��ng th� v� : b�y gi� r�i �i c�n ��i ��n , ng��i x�c ��nh mu�n r�i �i sao ? ", 2,"Ta mu�n r�i �i !/sure_trap","Kh�ng c�n !/OnCancel") 
return 
end 
Say("H�i tr��ng th� v� : tranh t�i s�p b�t ��u , ng��i x�c ��nh mu�n r�i �i sao ?", 2,"Ta mu�n r�i �i !/sure_trap","Kh�ng c�n !/OnCancel") 
end; 

function sure_trap() 
if ( nt_gettask( CP_TASKID_ENEMY ) > 0 ) then 
return 
end 
WL_clear_pl_state() 
tryout_mapid = SubWorldIdx2ID( SubWorld ) 
Msg2Player("Ng��i �� r�i �i v� l�m t�n t� li�n cu�c so t�i khu v�c !" ) 
DelMSPlayer( MISSIONID_OUTER, PlayerIndex, 1 ) 
SetLogoutRV(0); 
NewWorld( tryout_mapid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2] ) 
end 
