YueGeDaoPlayer = {} 

function YueGeDaoPlayer:OnLeaveMap() 
SetTmpCamp(0) 
DisabledStall(0) -- script viet hoa By http://tranhba.com  bµy s¹p 
SetFightState(0) 
end 

function YueGeDaoPlayer:OnEnterMap() 
SetLogoutRV(1) 
SetTmpCamp(1) 
DisabledStall(1) -- script viet hoa By http://tranhba.com  bµy s¹p 
SetFightState(1) 
end 

function YueGeDaoPlayer:OnDeath() 
end 
