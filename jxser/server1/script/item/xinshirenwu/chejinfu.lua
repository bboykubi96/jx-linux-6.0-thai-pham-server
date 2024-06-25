function GetDesc(nItem) 
return "" 
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
Msg2Player(szNpcName.." kh¸ng vËt lý ®· h¹ xuèng ") 
AddNpcSkillState(nNpcIndex, 1038, 1, 1, 18 * 60 * 60) 
end 
end 

Msg2Player("Ngµi chØ cã thÓ sö dông 1 c¸ rót lui kim phï ") 
WriteLog(format("Account:%s[Name:%s] sö dông rót lui kim phï ", 
GetAccount(), 
GetName()) 
); 
return 
end 
