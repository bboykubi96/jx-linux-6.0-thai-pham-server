if (not __TONG_SF_GMSCRIPT_H__) then 
__TONG_SF_GMSCRIPT_H__ = 1; 

function tong_openspringfestival(nMapID) 
local nMapIndex = SubWorldID2Idx(nMapID); 
if (nMapIndex < 0) then -- script viet hoa By http://tranhba.com  kiÓm tra b¶n ®å 
return 
end; 
local GAMEMAPID = 824; 
local PREPAREMISSIONID = 39; 
local MISSIONID = 40; 
local GLOBALVALUE = 853; 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(GAMEMAPID); 
CloseMission(MISSIONID); 

SubWorld = nMapIndex; 
CloseMission(PREPAREMISSIONID); 

OpenMission(PREPAREMISSIONID); 
SubWorld = OldSubWorld; 
end; 

end; -- script viet hoa By http://tranhba.com // end of __TONG_SF_GMSCRIPT_H__
