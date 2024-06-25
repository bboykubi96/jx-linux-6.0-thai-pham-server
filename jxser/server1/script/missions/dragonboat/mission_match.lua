-- script viet hoa By http://tranhba.com  description : tranh tµi nhiÖm vô 
-- script viet hoa By http://tranhba.com  author : wangbin 
-- script viet hoa By http://tranhba.com  datetime : 2005-06-04 

Include("\\script\\missions\\dragonboat\\include.lua")

-- script viet hoa By http://tranhba.com  khëi ®éng tranh tµi ®Þnh lóc khÝ 
function start_match_timer() 
-- script viet hoa By http://tranhba.com  10 phót sau khëi ®éng tranh tµi nhiÖm vô 
StartMissionTimer(MISSION_MATCH, TIMER_MATCH, LIMIT_SIGNUP * 18); 
end 

-- script viet hoa By http://tranhba.com  kÕt thóc tranh tµi 
function close_match() 
-- script viet hoa By http://tranhba.com  ®em nhµ ch¬i ®¸ ra b¶n ®å 
kickout(); 

-- script viet hoa By http://tranhba.com  dän dÑp b¶n ®å 
world = SubWorldIdx2ID(SubWorld); 
ClearMapNpc(world, 1); -- script viet hoa By http://tranhba.com  còng dän dÑp nhµ ch¬i 
ClearMapTrap(world); 
ClearMapObj(world); 
end 

-- script viet hoa By http://tranhba.com  b¾t ®Çu ghi danh 
function start_signup() 
-- script viet hoa By http://tranhba.com  thiÕt trÝ v× ghi danh tr¹ng th¸i 
SetMissionV(VARV_STATE, 1); 
SetMissionV(VARV_BOARD_TIMER, 0); 
SetMissionS(VARS_TEAM_NAME, ""); 
-- script viet hoa By http://tranhba.com  th«ng b¸o long chu tranh tµi ghi danh b¾t ®Çu 
local min = floor(LIMIT_SIGNUP / 60); 
broadcast("<#> tiÕt ®oan ngä cuéc so tµi long chu tranh tµi b¾t ®Çu ghi danh , xin mäi ng­êi nhanh ®Õn lÔ quan chç ghi danh , tiÓu tæ tõ ®éi tr­ëng ghi danh , ghi danh thêi gian lµ " .. min .. " phót "); 
end 

function InitMission() 
start_signup(); 
start_match_timer(); 
end 

function EndMission() 
close_match(); 
close_board_timer(); 
end 

-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra 
function OnLeave(index) 
local old_index = PlayerIndex; 
PlayerIndex = index; 

SetCurCamp(GetCamp()); 
SetTaskTemp(200,0) 
SetFightState(0); 
SetPunish(1); 
SetCreateTeam(1); 
SetPKFlag(0) 
ForbidChangePK(0); 
SetDeathScript(""); 

SetTask(1505, 0) 
DisabledUseTownP(0) 

str = GetName().." rêi ®i long chu " 
Msg2MSAll(MISSION_MATCH,str); 

PlayerIndex = old_index; 
end 

function JoinMission(RoleIndex, camp) 
PlayerIndex = RoleIndex; 
if (camp ~= 1) then 
return 
end 

LeaveTeam() 
AddMSPlayer(MISSION_MATCH,camp); 
SetCurCamp(camp); 
SetTaskTemp(200,1) 
SetFightState(1); 
SetLogoutRV(1); 
SetPunish(0); 
str = GetName().." gia nhËp nªn long chu " 
local sf_mapid = SubWorldIdx2ID(SubWorld) 
NewWorld(sf_mapid, BOAT_POSX,BOAT_POSY); 
SetCreateTeam(0); 
Msg2MSAll(MISSION_MATCH,str); 
SetPKFlag(1) 
ForbidChangePK(1); 
	SetDeathScript("\\script\\missions\\dragonboat\\player_death.lua");
SetTask(1505, 1) 
DisabledUseTownP(1) 
end
