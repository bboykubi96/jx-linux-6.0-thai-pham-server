Include("\\script\\missions\\datusha\\datusha.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
local tbEgg = {szName=" ng� th�i may m�n ��n ", tbProp={6, 1, 1714, 1, 0, 0}, nCount = 10, nExpiredTime = 30} 
local pDungeon = DungeonList[MAP_ID] 
if not pDungeon then 
return 
end 
local pData = pDungeon.tbPlayer[GetName()] 
if not pData then 
return 
end 
if CalcFreeItemCellCount() < 1 then 
return Talk(1, "","Xin/m�i s�a sang l�i t�i �eo l�ng ") 
end 
if not pData.bIsGetEgg then 
tbAwardTemplet:Give(tbEgg, 1, {" lo�n chi�n C�u ch�u c�c ","Nh�n l�y may m�n ��n "}) 
pData.bIsGetEgg = 1 
else 
Talk(1, "","Ng��i �� d�n t��ng li�u ") 
end 
end 

function OnCancel() 

end