Include("\\script\\missions\\championship\\head.lua")
-- script viet hoa By http://tranhba.com  héi tr­êng thÞ vÖ 
RUN_A_TIME = 5 
UP_A_TIME = 15 
function main() 
local mm = RUN_A_TIME - GetMissionV(5) 
if (mm < 0) then 
local mm = UP_A_TIME - GetMissionV(5) 
Say("<#> héi tr­êng thÞ vÖ : v¸n nµy tranh tµi cßn cã "..mm.."<#> ph©n , ng­¬i cßn cã chuyÖn g× sao ?", 3,"M«n ph¸i dù chän cuéc so tµi trî gióp /help_tryout","Ta muèn rêi ®i n¬i nµy !/out_trap","Kh«ng cÇn !/OnCancel") 
return 
end 
Say("<#> héi tr­êng thÞ vÖ : v¸n nµy tranh tµi cßn cã "..mm.."<#> ph©n ®em b¾t ®Çu , ng­¬i cßn cã chuyÖn g× sao ?", 3,"M«n ph¸i dù chän cuéc so tµi trî gióp /help_tryout","Ta muèn rêi ®i n¬i nµy !/out_trap","Kh«ng cÇn !/OnCancel") 
end 

function out_trap() 
local mm = RUN_A_TIME - GetMissionV(5) 
if(mm < 0) then 
Say("<#> héi tr­êng thÞ vÖ : b©y giê rêi ®i lêi cña ph¶i chê tíi cuéc kÕ tiÕp , ng­¬i nhÊt ®Þnh ph¶i rêi ®i sao ? ", 2,"Ta muèn rêi ®i !/sure_trap","Kh«ng cÇn !/OnCancel") 
return 
end 
Say("V¸n nµy tranh tµi lËp tøc b¾t ®Çu , ng­¬i cßn ph¶i bá cuéc sao ?", 2,"Ta muèn rêi ®i !/sure_trap","Kh«ng cÇn !/OnCancel") 
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
Msg2Player("Ng­¬i ®· rêi ®i dù chän cuéc so tµi ") 
DelMSPlayer(18, PlayerIndex, 1) 
NewWorld(tryout_mapid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
