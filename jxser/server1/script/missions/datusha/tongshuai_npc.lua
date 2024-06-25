Include("\\script\\missions\\datusha\\datusha.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
local tbEgg = {szName=" ngò th¶i may m¾n ®¶n ", tbProp={6, 1, 1714, 1, 0, 0}, nCount = 10, nExpiredTime = 30} 
local pDungeon = DungeonList[MAP_ID] 
if not pDungeon then 
return 
end 
local pData = pDungeon.tbPlayer[GetName()] 
if not pData then 
return 
end 
if CalcFreeItemCellCount() < 1 then 
return Talk(1, "","Xin/mêi söa sang l¹i tói ®eo l­ng ") 
end 
if not pData.bIsGetEgg then 
tbAwardTemplet:Give(tbEgg, 1, {" lo¹n chiÕn Cöu ch©u cèc ","NhËn lÊy may m¾n ®¶n "}) 
pData.bIsGetEgg = 1 
else 
Talk(1, "","Ng­¬i ®· dÉn t­ëng liÔu ") 
end 
end 

function OnCancel() 

end