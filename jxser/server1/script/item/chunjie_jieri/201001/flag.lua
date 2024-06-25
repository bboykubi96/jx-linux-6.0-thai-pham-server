Include("\\script\\item\\activityitem.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\gb_taskfuncs.lua")

tbFlag_Level10 = {}; 

function tbFlag_Level10:Award() 

local bTop10 = 0; 
local nCount = gb_GetTask("SpringFestival_Flag_Level10", 1); 

if nCount < 10 then 
bTop10 = 1; 
end 

if bTop10 == 1 then 
tbAwardTemplet:GiveAwardByList({ 
tbProp={6,1,2127,1,0,0}, 
nExpiredTime=43200, 
},"S� d�ng c�t c� (10 c�p ) ph�i b�c ��u luy�n kim thu�t ( cu�n 1)"); 
gb_AppendTask("SpringFestival_Flag_Level10", 1, 1); 

else 
tbAwardTemplet:GiveAwardByList({ 
tbProp={6,1,2126,1,0,0}, 
nExpiredTime=43200, 
},"S� d�ng c�t c� (10 c�p ) ph�i m�t k� c�n kh�n ph� "); 
gb_AppendTask("SpringFestival_Flag_Level10", 1, 1); 
end 

end 