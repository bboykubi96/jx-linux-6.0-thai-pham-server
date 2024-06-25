Include("\\script\\missions\\killbossmatch\\ready.lua")
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 

tbKillBossMatch_ready:JoinGame(PlayerIndex, tbKillBossMatch_ready:GetGroupId(), SubWorldIdx2ID(SubWorld)) 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
if tbKillBossMatch_ready:GetMissionState(SubWorldIdx2ID(SubWorld)) == 0 then 
tbKillBossMatch_ready:LeaveGame() -- script viet hoa By http://tranhba.com  sÏ tù ®éng ®iÒu dông OnLevel , nh­ng khi kh«ng cã mission ®Ých thêi ®iÓm sÏ kh«ng ®iÒu dông 
end 
OnLeaveWorldDefault(szParam) 
end 


function OnTimer() 
tbKillBossMatch_ready:OnTimer() 
end; 

function InitMission() 

tbKillBossMatch_ready:Init(); 

end; 

function EndMission() 

tbKillBossMatch_ready:Close(); 

end; 


function RunMission() 
tbKillBossMatch_ready:Run(); 
end 

function OnLeave(nPlayerIndex) 
doFunByPlayer(nPlayerIndex, tbKillBossMatch_ready.LeaveGame, tbKillBossMatch_ready) 
end 
