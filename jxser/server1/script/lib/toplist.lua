-- script viet hoa By http://tranhba.com  ®øng hµng wangbin 2010.5.25 
Include("\\script\\lib\\common.lua")

TopList = { 
m_Map = {}, 
m_List = {}, 
m_MaxCount = 10, 
m_CurCount = 0, 
} 

function TopList:New(maxcount) 
local tb = clone(TopList) 
if (maxcount ~= nil and maxcount > 1) then 
tb.m_MaxCount = maxcount 
end 
return tb 
end 

function TopList.Sort(a, b) 
return a[2] > b[2] 
end 

function TopList:GetList() 
return self.m_List 
end 

-- script viet hoa By http://tranhba.com  nÕu nh­ ®øng hµng cã biÕn hãa lµ trë vÒ 1 , nÕu kh«ng trë vÒ 0 
function TopList:Set(key, val) 
local item = self.m_Map[key] 
if (item ~= nil) then 
item[2] = val 
sort(self.m_List, TopList.Sort) 
elseif (self.m_CurCount == 0) then 
local item = {key, val} 
tinsert(self.m_List, item) 
self.m_Map[key] = item 
self.m_CurCount = 1 
elseif (self.m_CurCount < self.m_MaxCount) then 
item = {key, val} 
self.m_Map[key] = item 
tinsert(self.m_List, item) 
		self.m_CurCount = self.m_CurCount + 1
sort(self.m_List, TopList.Sort) 
else 
local last = self.m_List[self.m_CurCount] 
if (last[2] < val) then 
self.m_Map[last[1]] = nil 
self.m_Map[key] = last 
last[1] = key 
last[2] = val 
sort(self.m_List, TopList.Sort) 
else 
return 0 
end 
end 
return 1 
end 
