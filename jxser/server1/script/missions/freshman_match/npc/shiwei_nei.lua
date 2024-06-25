Include("\\script\\missions\\freshman_match\\head.lua")
-- script viet hoa By http://tranhba.com  héi tr­êng thÞ vÖ 
RUN_A_TIME = 5 
UP_A_TIME = 20 
function main() 
local mm = RUN_A_TIME - GetMissionV( 5 ) 
if ( mm < 0 ) then 
local mm = UP_A_TIME - GetMissionV( 5 ) 
Say("<#> héi tr­êng thÞ vÖ # vèn ®æi phiªn tranh tµi cßn l¹i "..mm.."<#> phót , ng­¬i cßn cã chuyÖn g× sao ?", 3,"Trî gióp vâ l©m t©n tó liªn cuéc so tµi /help_freshmanmatch","Ta muèn rêi ®i c¸i nµy !/out_trap","Kh«ng cÇn !/OnCancel") 
return 
end 
Say("<#> héi tr­êng thÞ vÖ # vèn ®æi phiªn tranh tµi cßn l¹i "..mm.."<#> phót sau b¾t ®Çu , ng­¬i cã chuyÖn g× kh«ng ?", 3,"Trî gióp vâ l©m t©n tó liªn cuéc so tµi /help_freshmanmatch","Ta muèn rêi ®i c¸i nµy !/out_trap","Kh«ng cÇn !/OnCancel") 
end 

function out_trap() 
local mm = RUN_A_TIME - GetMissionV(5) 
if(mm < 0) then 
Say("<#> héi tr­êng thÞ vÖ : b©y giê rêi ®i cÇn ®îi ®Õn , ng­¬i x¸c ®Þnh muèn rêi ®i sao ? ", 2,"Ta muèn rêi ®i !/sure_trap","Kh«ng cÇn !/OnCancel") 
return 
end 
Say("Héi tr­êng thÞ vÖ : tranh tµi s¾p b¾t ®Çu , ng­¬i x¸c ®Þnh muèn rêi ®i sao ?", 2,"Ta muèn rêi ®i !/sure_trap","Kh«ng cÇn !/OnCancel") 
end; 

function sure_trap() 
if ( nt_gettask( CP_TASKID_ENEMY ) > 0 ) then 
return 
end 
WL_clear_pl_state() 
tryout_mapid = SubWorldIdx2ID( SubWorld ) 
Msg2Player("Ng­¬i ®· rêi ®i vâ l©m t©n tó liªn cuéc so tµi khu vùc !" ) 
DelMSPlayer( MISSIONID_OUTER, PlayerIndex, 1 ) 
SetLogoutRV(0); 
NewWorld( tryout_mapid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2] ) 
end 
