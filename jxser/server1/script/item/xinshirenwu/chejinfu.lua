function GetDesc(nItem) 
return "" 
end 

function main(nItem) 
local nMapId, nX, nY = GetWorldPos() 
if nMapId ~= 395 then 
Msg2Player("N�n v�t ph�m ch� c� th� � ng�y b�o kho b�n �� b�n trong s� d�ng ") 
return 1 
end 

local tbList,nCount = GetAroundNpcList(20, 8)-- script viet hoa By http://tranhba.com  kho�ng c�ch 20 ��i kh�i l�m m�t b�nh ph�m vi 
for i = 1,nCount do 
local nNpcIndex = tbList[i] 
local nNpcId = GetNpcSettingIdx(nNpcIndex) 
if nNpcId == 849 then 
local szNpcName = GetNpcName(nNpcIndex) 
Msg2Player(szNpcName.." kh�ng v�t l� �� h� xu�ng ") 
AddNpcSkillState(nNpcIndex, 1038, 1, 1, 18 * 60 * 60) 
end 
end 

Msg2Player("Ng�i ch� c� th� s� d�ng 1 c� r�t lui kim ph� ") 
WriteLog(format("Account:%s[Name:%s] s� d�ng r�t lui kim ph� ", 
GetAccount(), 
GetName()) 
); 
return 
end 
