Include("\\script\\missions\\freshman_match\\tryout\\head.lua")

function InitMission() 
for i = 1, 100 do 
SetMissionV( i , 0 ); 
end; 
SetMissionS( 1, "" ) 
SetMissionS( 2, "" ) 
StartMissionTimer( MISSIONID, TIMERID_SMALL_OUTER, TRYOUT_TIMER_1 ); 
StartMissionTimer( MISSIONID, TIMERID_TOTAL_OUTER, TRYOUT_TIMER_2 ); 

SetMissionV( MS_STATE,1 );-- script viet hoa By http://tranhba.com  cho phÐp b¸o danh 
RunMission( MISSIONID ) 
end; 

function RunMission() 
end; 

function EndMission() 
StopMissionTimer( MISSIONID, TIMERID_SMALL_OUTER) ; 
StopMissionTimer( MISSIONID, TIMERID_TOTAL_OUTER ); 
GameOver(); 
for i = 1, 100 do 
SetMissionV( i , 0 ); 
end; 
if(tonumber(date("%y%m%d%H")) >= CP_END_TRYOUT) then 
resultstr = " vâ l©m t©n tó liªn cuéc so tµi kÕt thóc , xin/mêi c¸c vÞ tuyÓn thñ ®Õn tr­íc khi an thÊy vâ l©m t©n tó liªn cuéc so tµi quan viªn (182, 202) nh×n vâ l©m t©n tó danh s¸ch . ®øng hµng tr­íc n¨m ®Ých cã thÓ ®Õn vâ l©m t©n tó liªn cuéc so tµi quan viªn chç (182, 202) dÉn t­ëng ." 
else 
resultstr = " vâ l©m t©n tó liªn cuéc so tµi h«m nay ngµy kÕt thóc , dù thi tuyÓn thñ xin/mêi ngµy mai t¸i chiÕn ." 
end 
AddGlobalNews(resultstr) 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
WL_clear_pl_state() 
end; 
