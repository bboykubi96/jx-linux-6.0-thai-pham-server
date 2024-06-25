-- script viet hoa By http://tranhba.com  description : tranh t�i nhi�m v� 
-- script viet hoa By http://tranhba.com  author : wangbin 
-- script viet hoa By http://tranhba.com  datetime : 2005-06-04 

Include("\\script\\missions\\dragonboat\\include.lua")

-- script viet hoa By http://tranhba.com  kh�i ��ng tranh t�i ��nh l�c kh� 
function start_match_timer() 
-- script viet hoa By http://tranhba.com  10 ph�t sau kh�i ��ng tranh t�i nhi�m v� 
StartMissionTimer(MISSION_MATCH, TIMER_MATCH, LIMIT_SIGNUP * 18); 
end 

-- script viet hoa By http://tranhba.com  k�t th�c tranh t�i 
function close_match() 
-- script viet hoa By http://tranhba.com  �em nh� ch�i �� ra b�n �� 
kickout(); 

-- script viet hoa By http://tranhba.com  d�n d�p b�n �� 
world = SubWorldIdx2ID(SubWorld); 
ClearMapNpc(world, 1); -- script viet hoa By http://tranhba.com  c�ng d�n d�p nh� ch�i 
ClearMapTrap(world); 
ClearMapObj(world); 
end 

-- script viet hoa By http://tranhba.com  b�t ��u ghi danh 
function start_signup() 
-- script viet hoa By http://tranhba.com  thi�t tr� v� ghi danh tr�ng th�i 
SetMissionV(VARV_STATE, 1); 
SetMissionV(VARV_BOARD_TIMER, 0); 
SetMissionS(VARS_TEAM_NAME, ""); 
-- script viet hoa By http://tranhba.com  th�ng b�o long chu tranh t�i ghi danh b�t ��u 
local min = floor(LIMIT_SIGNUP / 60); 
broadcast("<#> ti�t �oan ng� cu�c so t�i long chu tranh t�i b�t ��u ghi danh , xin m�i ng��i nhanh ��n l� quan ch� ghi danh , ti�u t� t� ��i tr��ng ghi danh , ghi danh th�i gian l� " .. min .. " ph�t "); 
end 

function InitMission() 
start_signup(); 
start_match_timer(); 
end 

function EndMission() 
close_match(); 
close_board_timer(); 
end 

-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra 
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

str = GetName().." r�i �i long chu " 
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
str = GetName().." gia nh�p n�n long chu " 
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
