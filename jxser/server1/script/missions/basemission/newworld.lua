Include("\\script\\maps\\newworldscript_default.lua")
function OnNewWorld(szParam) 

tbMissionClass:JoinGame(PlayerIndex, tbMissionClass:GetGroupId(), SubWorldIdx2ID(SubWorld)) 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
if tbMissionClass:GetMissionState(SubWorldIdx2ID(SubWorld)) == 0 then 
tbMissionClass:LeaveGame() -- script viet hoa By http://tranhba.com  s� t� ��ng �i�u d�ng OnLevel , nh�ng khi kh�ng c� mission ��ch th�i �i�m s� kh�ng �i�u d�ng 
end 
OnLeaveWorldDefault(szParam) 
end
