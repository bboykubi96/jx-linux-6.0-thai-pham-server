-- script viet hoa By http://tranhba.com  ®Þnh lóc khÝ wangbin 2010.5.25 
TimerList = { 
m_Index = 1, 
m_List = {} 
} 

-- script viet hoa By http://tranhba.com  cùc kú lóc xóc ph¸t timer:OnTime(param) , nÕu nh­ nªn hµm sè trë vÒ 1 lµ ®Þnh lóc khÝ tiÕp tôc chê ®îi xóc ph¸t , trë vÒ 0 lµ ®Þnh lóc khÝ kÕt thóc . 
-- script viet hoa By http://tranhba.com  timeout ®¬n vÞ v× tr¸nh 
function TimerList:AddTimer(timer, timeout, param) 
local index = self.m_Index 
local id = AddTimer(timeout, "TimerList:OnTime", index) 
self.m_List[index] = { 
m_Pack = curpack(), 
m_TimerId = id, 
m_Timer = timer, 
m_Param = param, 
m_Timeout = timeout 
} 
	self.m_Index = self.m_Index + 1
return index 
end 

function TimerList:DelTimer(index) 
local tb = self.m_List[index] 
if (tb ~= nil) then 
DelTimer(tb.m_TimerId) 
self.m_List[index] = nil 
end 
end 

function TimerList:SuspendTimer(index) 
local tb = self.m_List[index] 
if (tb ~= nil) then 
SuspendTimer(tb.m_TimerId) 
end 
end 

function TimerList:ResumeTimer(index) 
local tb = self.m_List[index] 
if (tb ~= nil) then 
ResumeTimer(tb.m_TimerId) 
end 
end 

function TimerList:FindTimer(index) 
return self.m_List[index] 
end 

function TimerList:OnTime(index) 
local tb = self.m_List[index] 
if (not tb) then 
return 0 
end 
if (not tb.m_Timer) then 
self.m_List[index] = nil 
return 0 
end 
local pack = usepack(tb.m_Pack) 
local res = tb.m_Timer:OnTime(tb.m_Param, index) 
usepack(pack) 
if (res == 1) then 
return tb.m_Timeout, index 
else 
self.m_List[index] = nil 
return 0 
end 
end 
