Include("\\script\\maps\\newworldscript_default.lua")
function OnNewWorld(szParam) 

tbMissionClass:JoinGame(PlayerIndex, tbMissionClass:GetGroupId(), SubWorldIdx2ID(SubWorld)) 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
if tbMissionClass:GetMissionState(SubWorldIdx2ID(SubWorld)) == 0 then 
tbMissionClass:LeaveGame() -- script viet hoa By http://tranhba.com  sÏ tù ®éng ®iÒu dông OnLevel , nh­ng khi kh«ng cã mission ®Ých thêi ®iÓm sÏ kh«ng ®iÒu dông 
end 
OnLeaveWorldDefault(szParam) 
end
