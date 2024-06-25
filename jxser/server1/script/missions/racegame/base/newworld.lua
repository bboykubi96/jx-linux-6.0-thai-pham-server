Include("\\script\\maps\\newworldscript_default.lua")
function OnNewWorld(szParam) 
tbMissionClass:JoinGame(PlayerIndex, 0) 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
tbMissionClass:LeaveGame() -- script viet hoa By http://tranhba.com  sÏ tù ®éng ®iÒu dông OnLevel , nh­ng khi kh«ng cã mission ®Ých thêi ®iÓm sÏ kh«ng ®iÒu dông 
OnLeaveWorldDefault(szParam) 
end
