function GetSkillLevelData(levelname, data, level)
	if (levelname == "fasthitrecover_v") then
		return Param2String(100,3*18,0)
	end;
	if (levelname == "ignoredamage") then
		return Param2String(1,3*18,0)
	end
	if (levelname == "forbit_attack") then
		return Param2String(1,3*18,0)
	end
	if (levelname == "stuntimereduce_p") then
		return Param2String(100,3*18,0)
	end
	if (levelname == "freezetimereduce_p") then
		return Param2String(200,3*18,0)
	end

	return ""
end;


function Param2String(Param1, Param2, Param3)
	return Param1..","..Param2..","..Param3
end;
