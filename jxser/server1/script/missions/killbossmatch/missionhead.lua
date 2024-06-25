Include("\\script\\missions\\killbossmatch\\class.lua")
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 

tbKillBossMatch:JoinGame(PlayerIndex, tbKillBossMatch:GetGroupId(), SubWorldIdx2ID(SubWorld)) 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
if tbKillBossMatch:GetMissionState(SubWorldIdx2ID(SubWorld)) == 0 then 
tbKillBossMatch:LeaveGame() -- script viet hoa By http://tranhba.com  s� t� ��ng �i�u d�ng OnLevel , nh�ng khi kh�ng c� mission ��ch th�i �i�m s� kh�ng �i�u d�ng 
end 
OnLeaveWorldDefault(szParam) 
end 


function OnTimer() 
tbKillBossMatch:OnTimer() 
end; 

function InitMission() 

tbKillBossMatch:Init(); 

end; 

function EndMission() 

tbKillBossMatch:Close(); 

end; 


function RunMission() 
tbKillBossMatch:Run(); 
end 

function OnLeave(nPlayerIndex) 
doFunByPlayer(nPlayerIndex, tbKillBossMatch.LeaveGame, tbKillBossMatch) 
end 
