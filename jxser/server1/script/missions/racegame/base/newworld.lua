Include("\\script\\maps\\newworldscript_default.lua")
function OnNewWorld(szParam) 
tbMissionClass:JoinGame(PlayerIndex, 0) 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
tbMissionClass:LeaveGame() -- script viet hoa By http://tranhba.com  s� t� ��ng �i�u d�ng OnLevel , nh�ng khi kh�ng c� mission ��ch th�i �i�m s� kh�ng �i�u d�ng 
OnLeaveWorldDefault(szParam) 
end
