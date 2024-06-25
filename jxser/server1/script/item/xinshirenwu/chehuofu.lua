function GetDesc(nItem) 
return "" 
end 

-- script viet hoa By http://tranhba.com  ®iÒu thÝ l¸ bïa ®èi víi bao nhiªu trong ph¹m vi ®Ých tr¸ch t¹o t¸c dông 
function testAround(nDist) 
local tbList,nCount = GetAroundNpcList(nDist, 8) 
for i = 1,nCount do 
local nNpcIndex = tbList[i] 
local nNpcId = GetNpcSettingIdx(nNpcIndex) 
if nNpcId == 849 then 
local szNpcName = GetNpcName(nNpcIndex) 
Msg2Player(format("%s trong ph¹m vi %d", szNpcName, nDist)) 
end 
end 
end 

function main(nItem) 
local nMapId, nX, nY = GetWorldPos() 
if nMapId ~= 395 then 
Msg2Player("Nªn vËt phÈm chØ cã thÓ ë ngµy b¶o kho b¶n ®å bªn trong sö dông ") 
return 1 
end 

local tbList,nCount = GetAroundNpcList(20, 8)-- script viet hoa By http://tranhba.com  kho¶ng c¸ch 20 ®¹i kh¸i lµm mét b×nh ph¹m vi 
for i = 1,nCount do 
local nNpcIndex = tbList[i] 
local nNpcId = GetNpcSettingIdx(nNpcIndex) 
if nNpcId == 849 then 
local szNpcName = GetNpcName(nNpcIndex) 
Msg2Player(szNpcName.." kh¸ng löa ®· gi¶m xuèng ") 
AddNpcSkillState(nNpcIndex, 1041, 1, 1, 18 * 60 * 60) 
end 
end 

Msg2Player("Ngµi sö dông mét rót lui löa phï ") 
WriteLog(format("Account:%s[Name:%s] sö dông rót lui löa phï ", 
GetAccount(), 
GetName()) 
); 
return 
end 
