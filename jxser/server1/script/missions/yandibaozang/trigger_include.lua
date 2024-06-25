
function YDBZ_ready_missions(map, mission)
	local oldsubworld = SubWorld
	for i = 1, getn(map) do
		index = SubWorldID2Idx(map[i]);
		if (index >= 0) then
			SubWorld = index;
			OpenMission(mission);
		end
	end
	SubWorld = oldsubworld
end

function YDBZ_ready_close_missions(map, mission, status)
	local oldsubworld = SubWorld
	for i = 1, getn(map) do
		index = SubWorldID2Idx(map[i]);
		if (index >= 0) then
			SubWorld = index;
				CloseMission(mission);
		end
	end
	SubWorld = oldsubworld
end
