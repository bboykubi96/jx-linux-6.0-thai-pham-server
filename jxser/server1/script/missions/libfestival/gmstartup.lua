if (not _H_STARTUP_) then 
_H_STARTUP_ = 1; 
Include([[\script\missions\libfestival\head.lua]]); 

function startmission() 
-- local nW = tonumber(date("%w"))
-- if mod(nW,2) ~= 0 then
-- return
-- end
local nMapIndex = SubWorldID2Idx(CO_MAPID[1]); 
if (nMapIndex < 0) then -- script viet hoa By http://tranhba.com  kiÓm tra b¶n ®å 
return 
end; 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CO_MAPID[2]); 
CloseMission(CO_MISSIONID); 

SubWorld = nMapIndex; 
CloseMission(CO_PREPAREMISSIONID); 
OpenMission(CO_PREPAREMISSIONID); 
SubWorld = OldSubWorld; 
startmission_add(); 
end; 

end; -- script viet hoa By http://tranhba.com  end of _H_STARTUP_
