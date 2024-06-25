Include("\\script\\missions\\yandibaozang\\head.lua")

function broadcast(msg)
	AddGlobalNews(msg);
end

function YDBZ_clearitem()
	for i=1,getn(YDBZ_ZUANYONG_ITEM) do
		local g = YDBZ_ZUANYONG_ITEM[i][2]
		local d = YDBZ_ZUANYONG_ITEM[i][3]
		local p = YDBZ_ZUANYONG_ITEM[i][4]
		local numzimu = CalcItemCount(-1,g,d,p,-1)
		if numzimu > 0 then
				ConsumeItem(-1,numzimu,g,d,p,-1)
		end
	end
end

function YDBZ_restore(player_index,mission,nteam)
	local old_index = PlayerIndex;
	PlayerIndex = player_index;
	AddSkillState(461,1, 1,0,1)
	AddSkillState(458,2,0,0,1)
	AddSkillState(459,2,0,0,1)
	LeaveTeam()
	YDBZ_clearitem()
	SetCurCamp(GetCamp());
	SetFightState(0);
	SetPunish(1);
	SetCreateTeam(1);
	SetPKFlag(0)
	ForbidChangePK(0);
	SetDeathScript("");
	--SetTask(YDBZ_TEAMS_TASKID, 0)
	DisabledUseTownP(0)
	ForbitTrade(0)
	ForbidEnmity(0)
	SetTaskTemp(200,0)
	SetDeathType(0)
	PlayerIndex = old_index;
end

function YDBZ_kickout()
	local index = 0;
	local player = 0;
	local players = {}
	local i = 1
	while (1) do
		index, player = GetNextPlayer(YDBZ_MISSION_MATCH, index, 0);
		if (player > 0) then
			players[i] = player
			i = i + 1
		end
		if (index == 0) then
			break;
		end	
	end
	
	local world = GetMissionV(YDBZ_SIGNUP_WORLD);
	local pos_x = GetMissionV(YDBZ_SIGNUP_POSX);
	local pos_y = GetMissionV(YDBZ_SIGNUP_POSY); 
	local OldPlayerIndex = PlayerIndex;
	for i = 1, getn(players) do 
		PlayerIndex = players[i];
		local nteam = GetCurCamp()
		DelMSPlayer(YDBZ_MISSION_MATCH,PlayerIndex,nteam)
		NewWorld(world, pos_x, pos_y);
		SetLogoutRV(0);
	end
	PlayerIndex = OldPlayerIndex;
end

function YDBZ_close_match()
	local oldsubworld = SubWorld
	YDBZ_kickout();
	SubWorld = oldsubworld
	world = SubWorldIdx2ID(SubWorld);
	ClearMapNpc(world, 1);
	ClearMapTrap(world); 
	ClearMapObj(world);
end

function YDBZ_get_file_pos(file, line, column)
	x = YDBZ_GetTabFileData(file, line, column);
	y = YDBZ_GetTabFileData(file, line, column + 1);
	return x, y;
end
function YDBZ_GetTabFileData(mapfile, row, col)
	if (TabFile_Load(mapfile, mapfile) == 0) then
		print("Load TabFile Error!"..mapfile)
		return 0
	else
		return tonumber(TabFile_GetCell(mapfile, row, col))
	end
end
	
function YDBZ_bt_addtrap(trapfile, scriptfile)
	local count = YDBZ_GetTabFileHeight(trapfile);
	local ID = SubWorldIdx2ID(SubWorld);
	
	for i = 1, count - 1 do
		local x = YDBZ_GetTabFileData(trapfile, i + 1, 1); 
		local y = YDBZ_GetTabFileData(trapfile, i + 1, 2);
		AddMapTrap(ID, x,y, scriptfile)
	end;
end;	

function YDBZ_bt_addZhangai(trapfile)
	local count = YDBZ_GetTabFileHeight(trapfile);
	local ID = SubWorldIdx2ID(SubWorld);
	
	for i = 1, count - 1 do
		local x = YDBZ_GetTabFileData(trapfile, i + 1, 1); 
		local y = YDBZ_GetTabFileData(trapfile, i + 1, 2);
		AddObstacleObj(469,ID, x,y)
	end;
end

function YDBZ_bt_clearzhangai(trapfile)
	local count = YDBZ_GetTabFileHeight(trapfile);
	local ID = SubWorldIdx2ID(SubWorld);
	for i = 1, count - 1 do
		local x = YDBZ_GetTabFileData(trapfile, i + 1, 1); 
		local y = YDBZ_GetTabFileData(trapfile, i + 1, 2);
		ClearObstacleObj(ID,x,y)
	end;
end;	

function YDBZ_GetTabFileHeight(mapfile)
	if (TabFile_Load(mapfile, mapfile) == 0) then
		print("Load TabFileError!"..mapfile);
		return 0
	end
	return TabFile_GetRowCount(mapfile)
end;

function YDBZ_sdl_addTaskByte(The_Task_ID,theByte,Inc_Num)
	SetTask(The_Task_ID,SetByte(GetTask(The_Task_ID),theByte,GetByte(GetTask(The_Task_ID),theByte)+Inc_Num));
end

function YDBZ_sdl_getTaskByte(The_Task_ID,theByte)
	return GetByte(GetTask(The_Task_ID),theByte);
end

function YDBZ_sdl_setTaskByte(The_Task_ID,theByte,nValue)
	SetTask(The_Task_ID,SetByte(GetTask(The_Task_ID),theByte,nValue));
end

function YDBZ_return_onlymap(map)
	for i = 1, getn(map) do
		index = SubWorldID2Idx(map[i]);
		if (index >= 0) then
			return index
		end
	end
end